import hashlib

import pytest

from garaga.definitions import CurveID, G2Point
from garaga.drand.client import (
    DrandNetwork,
    digest_func,
    get_randomness,
    print_all_chain_info,
)
from garaga.signature import hash_to_curve


@pytest.mark.parametrize("round_number", list(range(1, 5)) + list(range(1000, 1005)))
def test_drand_sig_verification(round_number: int):
    chain_infos = print_all_chain_info()

    network = DrandNetwork.quicknet
    chain = chain_infos[network]

    round = get_randomness(chain.hash, round_number)
    print(f"Randomness for round {round_number}:", round)
    sha256 = hashlib.sha256()
    sha256.update(bytes.fromhex(round.signature))
    print("randomness", sha256.hexdigest())
    print("random beacon", hex(round.randomness))

    msg_point = hash_to_curve(
        digest_func(round.round_number), CurveID.BLS12_381, "sha256"
    )
    print("message", msg_point)

    from garaga.definitions import G1G2Pair

    # Temp fix before we figure out correct deserialization of message point.
    if (
        G1G2Pair.pair(
            [
                G1G2Pair(
                    p=round.signature_point, q=G2Point.get_nG(CurveID.BLS12_381, 1)
                ),
                G1G2Pair(p=msg_point, q=-chain.public_key),
            ],
            curve_id=CurveID.BLS12_381,
        ).value_coeffs
        == [1] + [0] * 11
    ):
        print("Signature verification passed")
    elif (
        G1G2Pair.pair(
            [
                G1G2Pair(
                    p=round.signature_point, q=G2Point.get_nG(CurveID.BLS12_381, 1)
                ),
                G1G2Pair(p=msg_point, q=chain.public_key),
            ],
            curve_id=CurveID.BLS12_381,
        ).value_coeffs
        == [1] + [0] * 11
    ):
        print("Signature verification passed")
    else:
        print("Signature verification failed")
