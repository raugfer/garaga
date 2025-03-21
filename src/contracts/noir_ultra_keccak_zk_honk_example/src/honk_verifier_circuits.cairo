use core::circuit::{
    u384, circuit_add, circuit_sub, circuit_mul, circuit_inverse, EvalCircuitTrait,
    CircuitOutputsTrait, CircuitInputs,
};
use garaga::core::circuit::AddInputResultTrait2;
use garaga::ec_ops::FunctionFelt;
use core::circuit::CircuitElement as CE;
use core::circuit::CircuitInput as CI;
use garaga::definitions::{G1Point, get_GRUMPKIN_modulus, get_BN254_modulus};
use core::option::Option;

#[inline(always)]
pub fn run_GRUMPKIN_ZK_HONK_SUMCHECK_SIZE_5_PUB_1_circuit(
    p_public_inputs: Span<u256>,
    p_public_inputs_offset: u384,
    libra_sum: u384,
    sumcheck_univariates_flat: Span<u256>,
    sumcheck_evaluations: Span<u256>,
    libra_evaluation: u384,
    tp_sum_check_u_challenges: Span<u128>,
    tp_gate_challenges: Span<u128>,
    tp_eta_1: u384,
    tp_eta_2: u384,
    tp_eta_3: u384,
    tp_beta: u384,
    tp_gamma: u384,
    tp_base_rlc: u384,
    tp_alphas: Span<u128>,
    tp_libra_challenge: u384,
) -> (u384, u384) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x1
    let in1 = CE::<CI<1>> {}; // 0x20
    let in2 = CE::<CI<2>> {}; // 0x0
    let in3 = CE::<CI<3>> {}; // 0x9d80
    let in4 = CE::<CI<4>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593efffec51
    let in5 = CE::<CI<5>> {}; // 0x5a0
    let in6 = CE::<CI<6>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593effffd31
    let in7 = CE::<CI<7>> {}; // 0x240
    let in8 = CE::<CI<8>> {}; // 0x2
    let in9 = CE::<CI<9>> {}; // 0x3
    let in10 = CE::<CI<10>> {}; // 0x4
    let in11 = CE::<CI<11>> {}; // 0x5
    let in12 = CE::<CI<12>> {}; // 0x6
    let in13 = CE::<CI<13>> {}; // 0x7
    let in14 = CE::<CI<14>> {}; // 0x8
    let in15 = CE::<
        CI<15>,
    > {}; // 0x183227397098d014dc2822db40c0ac2e9419f4243cdcb848a1f0fac9f8000000
    let in16 = CE::<CI<16>> {}; // -0x1 % p
    let in17 = CE::<CI<17>> {}; // -0x2 % p
    let in18 = CE::<CI<18>> {}; // -0x3 % p
    let in19 = CE::<CI<19>> {}; // 0x11
    let in20 = CE::<CI<20>> {}; // 0x9
    let in21 = CE::<CI<21>> {}; // 0x100000000000000000
    let in22 = CE::<CI<22>> {}; // 0x4000
    let in23 = CE::<
        CI<23>,
    > {}; // 0x10dc6e9c006ea38b04b1e03b4bd9490c0d03f98929ca1d7fb56821fd19d3b6e7
    let in24 = CE::<CI<24>> {}; // 0xc28145b6a44df3e0149b3d0a30b3bb599df9756d4dd9b84a86b38cfb45a740b
    let in25 = CE::<CI<25>> {}; // 0x544b8338791518b2c7645a50392798b21f75bb60e3596170067d00141cac15
    let in26 = CE::<
        CI<26>,
    > {}; // 0x222c01175718386f2e2e82eb122789e352e105a3b8fa852613bc534433ee428b

    // INPUT stack
    let (in27, in28, in29) = (CE::<CI<27>> {}, CE::<CI<28>> {}, CE::<CI<29>> {});
    let (in30, in31, in32) = (CE::<CI<30>> {}, CE::<CI<31>> {}, CE::<CI<32>> {});
    let (in33, in34, in35) = (CE::<CI<33>> {}, CE::<CI<34>> {}, CE::<CI<35>> {});
    let (in36, in37, in38) = (CE::<CI<36>> {}, CE::<CI<37>> {}, CE::<CI<38>> {});
    let (in39, in40, in41) = (CE::<CI<39>> {}, CE::<CI<40>> {}, CE::<CI<41>> {});
    let (in42, in43, in44) = (CE::<CI<42>> {}, CE::<CI<43>> {}, CE::<CI<44>> {});
    let (in45, in46, in47) = (CE::<CI<45>> {}, CE::<CI<46>> {}, CE::<CI<47>> {});
    let (in48, in49, in50) = (CE::<CI<48>> {}, CE::<CI<49>> {}, CE::<CI<50>> {});
    let (in51, in52, in53) = (CE::<CI<51>> {}, CE::<CI<52>> {}, CE::<CI<53>> {});
    let (in54, in55, in56) = (CE::<CI<54>> {}, CE::<CI<55>> {}, CE::<CI<56>> {});
    let (in57, in58, in59) = (CE::<CI<57>> {}, CE::<CI<58>> {}, CE::<CI<59>> {});
    let (in60, in61, in62) = (CE::<CI<60>> {}, CE::<CI<61>> {}, CE::<CI<62>> {});
    let (in63, in64, in65) = (CE::<CI<63>> {}, CE::<CI<64>> {}, CE::<CI<65>> {});
    let (in66, in67, in68) = (CE::<CI<66>> {}, CE::<CI<67>> {}, CE::<CI<68>> {});
    let (in69, in70, in71) = (CE::<CI<69>> {}, CE::<CI<70>> {}, CE::<CI<71>> {});
    let (in72, in73, in74) = (CE::<CI<72>> {}, CE::<CI<73>> {}, CE::<CI<74>> {});
    let (in75, in76, in77) = (CE::<CI<75>> {}, CE::<CI<76>> {}, CE::<CI<77>> {});
    let (in78, in79, in80) = (CE::<CI<78>> {}, CE::<CI<79>> {}, CE::<CI<80>> {});
    let (in81, in82, in83) = (CE::<CI<81>> {}, CE::<CI<82>> {}, CE::<CI<83>> {});
    let (in84, in85, in86) = (CE::<CI<84>> {}, CE::<CI<85>> {}, CE::<CI<86>> {});
    let (in87, in88, in89) = (CE::<CI<87>> {}, CE::<CI<88>> {}, CE::<CI<89>> {});
    let (in90, in91, in92) = (CE::<CI<90>> {}, CE::<CI<91>> {}, CE::<CI<92>> {});
    let (in93, in94, in95) = (CE::<CI<93>> {}, CE::<CI<94>> {}, CE::<CI<95>> {});
    let (in96, in97, in98) = (CE::<CI<96>> {}, CE::<CI<97>> {}, CE::<CI<98>> {});
    let (in99, in100, in101) = (CE::<CI<99>> {}, CE::<CI<100>> {}, CE::<CI<101>> {});
    let (in102, in103, in104) = (CE::<CI<102>> {}, CE::<CI<103>> {}, CE::<CI<104>> {});
    let (in105, in106, in107) = (CE::<CI<105>> {}, CE::<CI<106>> {}, CE::<CI<107>> {});
    let (in108, in109, in110) = (CE::<CI<108>> {}, CE::<CI<109>> {}, CE::<CI<110>> {});
    let (in111, in112, in113) = (CE::<CI<111>> {}, CE::<CI<112>> {}, CE::<CI<113>> {});
    let (in114, in115, in116) = (CE::<CI<114>> {}, CE::<CI<115>> {}, CE::<CI<116>> {});
    let (in117, in118, in119) = (CE::<CI<117>> {}, CE::<CI<118>> {}, CE::<CI<119>> {});
    let (in120, in121, in122) = (CE::<CI<120>> {}, CE::<CI<121>> {}, CE::<CI<122>> {});
    let (in123, in124, in125) = (CE::<CI<123>> {}, CE::<CI<124>> {}, CE::<CI<125>> {});
    let (in126, in127, in128) = (CE::<CI<126>> {}, CE::<CI<127>> {}, CE::<CI<128>> {});
    let (in129, in130, in131) = (CE::<CI<129>> {}, CE::<CI<130>> {}, CE::<CI<131>> {});
    let (in132, in133, in134) = (CE::<CI<132>> {}, CE::<CI<133>> {}, CE::<CI<134>> {});
    let (in135, in136, in137) = (CE::<CI<135>> {}, CE::<CI<136>> {}, CE::<CI<137>> {});
    let (in138, in139, in140) = (CE::<CI<138>> {}, CE::<CI<139>> {}, CE::<CI<140>> {});
    let (in141, in142, in143) = (CE::<CI<141>> {}, CE::<CI<142>> {}, CE::<CI<143>> {});
    let (in144, in145, in146) = (CE::<CI<144>> {}, CE::<CI<145>> {}, CE::<CI<146>> {});
    let (in147, in148, in149) = (CE::<CI<147>> {}, CE::<CI<148>> {}, CE::<CI<149>> {});
    let (in150, in151, in152) = (CE::<CI<150>> {}, CE::<CI<151>> {}, CE::<CI<152>> {});
    let (in153, in154, in155) = (CE::<CI<153>> {}, CE::<CI<154>> {}, CE::<CI<155>> {});
    let (in156, in157) = (CE::<CI<156>> {}, CE::<CI<157>> {});
    let t0 = circuit_add(in1, in28);
    let t1 = circuit_mul(in129, t0);
    let t2 = circuit_add(in130, t1);
    let t3 = circuit_add(in28, in0);
    let t4 = circuit_mul(in129, t3);
    let t5 = circuit_sub(in130, t4);
    let t6 = circuit_add(t2, in27);
    let t7 = circuit_mul(in0, t6);
    let t8 = circuit_add(t5, in27);
    let t9 = circuit_mul(in0, t8);
    let t10 = circuit_inverse(t9);
    let t11 = circuit_mul(t7, t10);
    let t12 = circuit_mul(in157, in29);
    let t13 = circuit_add(in30, in31);
    let t14 = circuit_sub(t13, t12);
    let t15 = circuit_mul(t14, in131);
    let t16 = circuit_add(in2, t15);
    let t17 = circuit_mul(in131, in131);
    let t18 = circuit_sub(in116, in2);
    let t19 = circuit_mul(in0, t18);
    let t20 = circuit_sub(in116, in2);
    let t21 = circuit_mul(in3, t20);
    let t22 = circuit_inverse(t21);
    let t23 = circuit_mul(in30, t22);
    let t24 = circuit_add(in2, t23);
    let t25 = circuit_sub(in116, in0);
    let t26 = circuit_mul(t19, t25);
    let t27 = circuit_sub(in116, in0);
    let t28 = circuit_mul(in4, t27);
    let t29 = circuit_inverse(t28);
    let t30 = circuit_mul(in31, t29);
    let t31 = circuit_add(t24, t30);
    let t32 = circuit_sub(in116, in8);
    let t33 = circuit_mul(t26, t32);
    let t34 = circuit_sub(in116, in8);
    let t35 = circuit_mul(in5, t34);
    let t36 = circuit_inverse(t35);
    let t37 = circuit_mul(in32, t36);
    let t38 = circuit_add(t31, t37);
    let t39 = circuit_sub(in116, in9);
    let t40 = circuit_mul(t33, t39);
    let t41 = circuit_sub(in116, in9);
    let t42 = circuit_mul(in6, t41);
    let t43 = circuit_inverse(t42);
    let t44 = circuit_mul(in33, t43);
    let t45 = circuit_add(t38, t44);
    let t46 = circuit_sub(in116, in10);
    let t47 = circuit_mul(t40, t46);
    let t48 = circuit_sub(in116, in10);
    let t49 = circuit_mul(in7, t48);
    let t50 = circuit_inverse(t49);
    let t51 = circuit_mul(in34, t50);
    let t52 = circuit_add(t45, t51);
    let t53 = circuit_sub(in116, in11);
    let t54 = circuit_mul(t47, t53);
    let t55 = circuit_sub(in116, in11);
    let t56 = circuit_mul(in6, t55);
    let t57 = circuit_inverse(t56);
    let t58 = circuit_mul(in35, t57);
    let t59 = circuit_add(t52, t58);
    let t60 = circuit_sub(in116, in12);
    let t61 = circuit_mul(t54, t60);
    let t62 = circuit_sub(in116, in12);
    let t63 = circuit_mul(in5, t62);
    let t64 = circuit_inverse(t63);
    let t65 = circuit_mul(in36, t64);
    let t66 = circuit_add(t59, t65);
    let t67 = circuit_sub(in116, in13);
    let t68 = circuit_mul(t61, t67);
    let t69 = circuit_sub(in116, in13);
    let t70 = circuit_mul(in4, t69);
    let t71 = circuit_inverse(t70);
    let t72 = circuit_mul(in37, t71);
    let t73 = circuit_add(t66, t72);
    let t74 = circuit_sub(in116, in14);
    let t75 = circuit_mul(t68, t74);
    let t76 = circuit_sub(in116, in14);
    let t77 = circuit_mul(in3, t76);
    let t78 = circuit_inverse(t77);
    let t79 = circuit_mul(in38, t78);
    let t80 = circuit_add(t73, t79);
    let t81 = circuit_mul(t80, t75);
    let t82 = circuit_sub(in121, in0);
    let t83 = circuit_mul(in116, t82);
    let t84 = circuit_add(in0, t83);
    let t85 = circuit_mul(in0, t84);
    let t86 = circuit_add(in39, in40);
    let t87 = circuit_sub(t86, t81);
    let t88 = circuit_mul(t87, t17);
    let t89 = circuit_add(t16, t88);
    let t90 = circuit_mul(t17, in131);
    let t91 = circuit_sub(in117, in2);
    let t92 = circuit_mul(in0, t91);
    let t93 = circuit_sub(in117, in2);
    let t94 = circuit_mul(in3, t93);
    let t95 = circuit_inverse(t94);
    let t96 = circuit_mul(in39, t95);
    let t97 = circuit_add(in2, t96);
    let t98 = circuit_sub(in117, in0);
    let t99 = circuit_mul(t92, t98);
    let t100 = circuit_sub(in117, in0);
    let t101 = circuit_mul(in4, t100);
    let t102 = circuit_inverse(t101);
    let t103 = circuit_mul(in40, t102);
    let t104 = circuit_add(t97, t103);
    let t105 = circuit_sub(in117, in8);
    let t106 = circuit_mul(t99, t105);
    let t107 = circuit_sub(in117, in8);
    let t108 = circuit_mul(in5, t107);
    let t109 = circuit_inverse(t108);
    let t110 = circuit_mul(in41, t109);
    let t111 = circuit_add(t104, t110);
    let t112 = circuit_sub(in117, in9);
    let t113 = circuit_mul(t106, t112);
    let t114 = circuit_sub(in117, in9);
    let t115 = circuit_mul(in6, t114);
    let t116 = circuit_inverse(t115);
    let t117 = circuit_mul(in42, t116);
    let t118 = circuit_add(t111, t117);
    let t119 = circuit_sub(in117, in10);
    let t120 = circuit_mul(t113, t119);
    let t121 = circuit_sub(in117, in10);
    let t122 = circuit_mul(in7, t121);
    let t123 = circuit_inverse(t122);
    let t124 = circuit_mul(in43, t123);
    let t125 = circuit_add(t118, t124);
    let t126 = circuit_sub(in117, in11);
    let t127 = circuit_mul(t120, t126);
    let t128 = circuit_sub(in117, in11);
    let t129 = circuit_mul(in6, t128);
    let t130 = circuit_inverse(t129);
    let t131 = circuit_mul(in44, t130);
    let t132 = circuit_add(t125, t131);
    let t133 = circuit_sub(in117, in12);
    let t134 = circuit_mul(t127, t133);
    let t135 = circuit_sub(in117, in12);
    let t136 = circuit_mul(in5, t135);
    let t137 = circuit_inverse(t136);
    let t138 = circuit_mul(in45, t137);
    let t139 = circuit_add(t132, t138);
    let t140 = circuit_sub(in117, in13);
    let t141 = circuit_mul(t134, t140);
    let t142 = circuit_sub(in117, in13);
    let t143 = circuit_mul(in4, t142);
    let t144 = circuit_inverse(t143);
    let t145 = circuit_mul(in46, t144);
    let t146 = circuit_add(t139, t145);
    let t147 = circuit_sub(in117, in14);
    let t148 = circuit_mul(t141, t147);
    let t149 = circuit_sub(in117, in14);
    let t150 = circuit_mul(in3, t149);
    let t151 = circuit_inverse(t150);
    let t152 = circuit_mul(in47, t151);
    let t153 = circuit_add(t146, t152);
    let t154 = circuit_mul(t153, t148);
    let t155 = circuit_sub(in122, in0);
    let t156 = circuit_mul(in117, t155);
    let t157 = circuit_add(in0, t156);
    let t158 = circuit_mul(t85, t157);
    let t159 = circuit_add(in48, in49);
    let t160 = circuit_sub(t159, t154);
    let t161 = circuit_mul(t160, t90);
    let t162 = circuit_add(t89, t161);
    let t163 = circuit_mul(t90, in131);
    let t164 = circuit_sub(in118, in2);
    let t165 = circuit_mul(in0, t164);
    let t166 = circuit_sub(in118, in2);
    let t167 = circuit_mul(in3, t166);
    let t168 = circuit_inverse(t167);
    let t169 = circuit_mul(in48, t168);
    let t170 = circuit_add(in2, t169);
    let t171 = circuit_sub(in118, in0);
    let t172 = circuit_mul(t165, t171);
    let t173 = circuit_sub(in118, in0);
    let t174 = circuit_mul(in4, t173);
    let t175 = circuit_inverse(t174);
    let t176 = circuit_mul(in49, t175);
    let t177 = circuit_add(t170, t176);
    let t178 = circuit_sub(in118, in8);
    let t179 = circuit_mul(t172, t178);
    let t180 = circuit_sub(in118, in8);
    let t181 = circuit_mul(in5, t180);
    let t182 = circuit_inverse(t181);
    let t183 = circuit_mul(in50, t182);
    let t184 = circuit_add(t177, t183);
    let t185 = circuit_sub(in118, in9);
    let t186 = circuit_mul(t179, t185);
    let t187 = circuit_sub(in118, in9);
    let t188 = circuit_mul(in6, t187);
    let t189 = circuit_inverse(t188);
    let t190 = circuit_mul(in51, t189);
    let t191 = circuit_add(t184, t190);
    let t192 = circuit_sub(in118, in10);
    let t193 = circuit_mul(t186, t192);
    let t194 = circuit_sub(in118, in10);
    let t195 = circuit_mul(in7, t194);
    let t196 = circuit_inverse(t195);
    let t197 = circuit_mul(in52, t196);
    let t198 = circuit_add(t191, t197);
    let t199 = circuit_sub(in118, in11);
    let t200 = circuit_mul(t193, t199);
    let t201 = circuit_sub(in118, in11);
    let t202 = circuit_mul(in6, t201);
    let t203 = circuit_inverse(t202);
    let t204 = circuit_mul(in53, t203);
    let t205 = circuit_add(t198, t204);
    let t206 = circuit_sub(in118, in12);
    let t207 = circuit_mul(t200, t206);
    let t208 = circuit_sub(in118, in12);
    let t209 = circuit_mul(in5, t208);
    let t210 = circuit_inverse(t209);
    let t211 = circuit_mul(in54, t210);
    let t212 = circuit_add(t205, t211);
    let t213 = circuit_sub(in118, in13);
    let t214 = circuit_mul(t207, t213);
    let t215 = circuit_sub(in118, in13);
    let t216 = circuit_mul(in4, t215);
    let t217 = circuit_inverse(t216);
    let t218 = circuit_mul(in55, t217);
    let t219 = circuit_add(t212, t218);
    let t220 = circuit_sub(in118, in14);
    let t221 = circuit_mul(t214, t220);
    let t222 = circuit_sub(in118, in14);
    let t223 = circuit_mul(in3, t222);
    let t224 = circuit_inverse(t223);
    let t225 = circuit_mul(in56, t224);
    let t226 = circuit_add(t219, t225);
    let t227 = circuit_mul(t226, t221);
    let t228 = circuit_sub(in123, in0);
    let t229 = circuit_mul(in118, t228);
    let t230 = circuit_add(in0, t229);
    let t231 = circuit_mul(t158, t230);
    let t232 = circuit_add(in57, in58);
    let t233 = circuit_sub(t232, t227);
    let t234 = circuit_mul(t233, t163);
    let t235 = circuit_add(t162, t234);
    let t236 = circuit_mul(t163, in131);
    let t237 = circuit_sub(in119, in2);
    let t238 = circuit_mul(in0, t237);
    let t239 = circuit_sub(in119, in2);
    let t240 = circuit_mul(in3, t239);
    let t241 = circuit_inverse(t240);
    let t242 = circuit_mul(in57, t241);
    let t243 = circuit_add(in2, t242);
    let t244 = circuit_sub(in119, in0);
    let t245 = circuit_mul(t238, t244);
    let t246 = circuit_sub(in119, in0);
    let t247 = circuit_mul(in4, t246);
    let t248 = circuit_inverse(t247);
    let t249 = circuit_mul(in58, t248);
    let t250 = circuit_add(t243, t249);
    let t251 = circuit_sub(in119, in8);
    let t252 = circuit_mul(t245, t251);
    let t253 = circuit_sub(in119, in8);
    let t254 = circuit_mul(in5, t253);
    let t255 = circuit_inverse(t254);
    let t256 = circuit_mul(in59, t255);
    let t257 = circuit_add(t250, t256);
    let t258 = circuit_sub(in119, in9);
    let t259 = circuit_mul(t252, t258);
    let t260 = circuit_sub(in119, in9);
    let t261 = circuit_mul(in6, t260);
    let t262 = circuit_inverse(t261);
    let t263 = circuit_mul(in60, t262);
    let t264 = circuit_add(t257, t263);
    let t265 = circuit_sub(in119, in10);
    let t266 = circuit_mul(t259, t265);
    let t267 = circuit_sub(in119, in10);
    let t268 = circuit_mul(in7, t267);
    let t269 = circuit_inverse(t268);
    let t270 = circuit_mul(in61, t269);
    let t271 = circuit_add(t264, t270);
    let t272 = circuit_sub(in119, in11);
    let t273 = circuit_mul(t266, t272);
    let t274 = circuit_sub(in119, in11);
    let t275 = circuit_mul(in6, t274);
    let t276 = circuit_inverse(t275);
    let t277 = circuit_mul(in62, t276);
    let t278 = circuit_add(t271, t277);
    let t279 = circuit_sub(in119, in12);
    let t280 = circuit_mul(t273, t279);
    let t281 = circuit_sub(in119, in12);
    let t282 = circuit_mul(in5, t281);
    let t283 = circuit_inverse(t282);
    let t284 = circuit_mul(in63, t283);
    let t285 = circuit_add(t278, t284);
    let t286 = circuit_sub(in119, in13);
    let t287 = circuit_mul(t280, t286);
    let t288 = circuit_sub(in119, in13);
    let t289 = circuit_mul(in4, t288);
    let t290 = circuit_inverse(t289);
    let t291 = circuit_mul(in64, t290);
    let t292 = circuit_add(t285, t291);
    let t293 = circuit_sub(in119, in14);
    let t294 = circuit_mul(t287, t293);
    let t295 = circuit_sub(in119, in14);
    let t296 = circuit_mul(in3, t295);
    let t297 = circuit_inverse(t296);
    let t298 = circuit_mul(in65, t297);
    let t299 = circuit_add(t292, t298);
    let t300 = circuit_mul(t299, t294);
    let t301 = circuit_sub(in124, in0);
    let t302 = circuit_mul(in119, t301);
    let t303 = circuit_add(in0, t302);
    let t304 = circuit_mul(t231, t303);
    let t305 = circuit_add(in66, in67);
    let t306 = circuit_sub(t305, t300);
    let t307 = circuit_mul(t306, t236);
    let t308 = circuit_add(t235, t307);
    let t309 = circuit_sub(in120, in2);
    let t310 = circuit_mul(in0, t309);
    let t311 = circuit_sub(in120, in2);
    let t312 = circuit_mul(in3, t311);
    let t313 = circuit_inverse(t312);
    let t314 = circuit_mul(in66, t313);
    let t315 = circuit_add(in2, t314);
    let t316 = circuit_sub(in120, in0);
    let t317 = circuit_mul(t310, t316);
    let t318 = circuit_sub(in120, in0);
    let t319 = circuit_mul(in4, t318);
    let t320 = circuit_inverse(t319);
    let t321 = circuit_mul(in67, t320);
    let t322 = circuit_add(t315, t321);
    let t323 = circuit_sub(in120, in8);
    let t324 = circuit_mul(t317, t323);
    let t325 = circuit_sub(in120, in8);
    let t326 = circuit_mul(in5, t325);
    let t327 = circuit_inverse(t326);
    let t328 = circuit_mul(in68, t327);
    let t329 = circuit_add(t322, t328);
    let t330 = circuit_sub(in120, in9);
    let t331 = circuit_mul(t324, t330);
    let t332 = circuit_sub(in120, in9);
    let t333 = circuit_mul(in6, t332);
    let t334 = circuit_inverse(t333);
    let t335 = circuit_mul(in69, t334);
    let t336 = circuit_add(t329, t335);
    let t337 = circuit_sub(in120, in10);
    let t338 = circuit_mul(t331, t337);
    let t339 = circuit_sub(in120, in10);
    let t340 = circuit_mul(in7, t339);
    let t341 = circuit_inverse(t340);
    let t342 = circuit_mul(in70, t341);
    let t343 = circuit_add(t336, t342);
    let t344 = circuit_sub(in120, in11);
    let t345 = circuit_mul(t338, t344);
    let t346 = circuit_sub(in120, in11);
    let t347 = circuit_mul(in6, t346);
    let t348 = circuit_inverse(t347);
    let t349 = circuit_mul(in71, t348);
    let t350 = circuit_add(t343, t349);
    let t351 = circuit_sub(in120, in12);
    let t352 = circuit_mul(t345, t351);
    let t353 = circuit_sub(in120, in12);
    let t354 = circuit_mul(in5, t353);
    let t355 = circuit_inverse(t354);
    let t356 = circuit_mul(in72, t355);
    let t357 = circuit_add(t350, t356);
    let t358 = circuit_sub(in120, in13);
    let t359 = circuit_mul(t352, t358);
    let t360 = circuit_sub(in120, in13);
    let t361 = circuit_mul(in4, t360);
    let t362 = circuit_inverse(t361);
    let t363 = circuit_mul(in73, t362);
    let t364 = circuit_add(t357, t363);
    let t365 = circuit_sub(in120, in14);
    let t366 = circuit_mul(t359, t365);
    let t367 = circuit_sub(in120, in14);
    let t368 = circuit_mul(in3, t367);
    let t369 = circuit_inverse(t368);
    let t370 = circuit_mul(in74, t369);
    let t371 = circuit_add(t364, t370);
    let t372 = circuit_mul(t371, t366);
    let t373 = circuit_sub(in125, in0);
    let t374 = circuit_mul(in120, t373);
    let t375 = circuit_add(in0, t374);
    let t376 = circuit_mul(t304, t375);
    let t377 = circuit_sub(in82, in9);
    let t378 = circuit_mul(t377, in75);
    let t379 = circuit_mul(t378, in103);
    let t380 = circuit_mul(t379, in102);
    let t381 = circuit_mul(t380, in15);
    let t382 = circuit_mul(in77, in102);
    let t383 = circuit_mul(in78, in103);
    let t384 = circuit_mul(in79, in104);
    let t385 = circuit_mul(in80, in105);
    let t386 = circuit_add(t381, t382);
    let t387 = circuit_add(t386, t383);
    let t388 = circuit_add(t387, t384);
    let t389 = circuit_add(t388, t385);
    let t390 = circuit_add(t389, in76);
    let t391 = circuit_sub(in82, in0);
    let t392 = circuit_mul(t391, in113);
    let t393 = circuit_add(t390, t392);
    let t394 = circuit_mul(t393, in82);
    let t395 = circuit_mul(t394, t376);
    let t396 = circuit_add(in102, in105);
    let t397 = circuit_add(t396, in75);
    let t398 = circuit_sub(t397, in110);
    let t399 = circuit_sub(in82, in8);
    let t400 = circuit_mul(t398, t399);
    let t401 = circuit_sub(in82, in0);
    let t402 = circuit_mul(t400, t401);
    let t403 = circuit_mul(t402, in82);
    let t404 = circuit_mul(t403, t376);
    let t405 = circuit_mul(in92, in129);
    let t406 = circuit_add(in102, t405);
    let t407 = circuit_add(t406, in130);
    let t408 = circuit_mul(in93, in129);
    let t409 = circuit_add(in103, t408);
    let t410 = circuit_add(t409, in130);
    let t411 = circuit_mul(t407, t410);
    let t412 = circuit_mul(in94, in129);
    let t413 = circuit_add(in104, t412);
    let t414 = circuit_add(t413, in130);
    let t415 = circuit_mul(t411, t414);
    let t416 = circuit_mul(in95, in129);
    let t417 = circuit_add(in105, t416);
    let t418 = circuit_add(t417, in130);
    let t419 = circuit_mul(t415, t418);
    let t420 = circuit_mul(in88, in129);
    let t421 = circuit_add(in102, t420);
    let t422 = circuit_add(t421, in130);
    let t423 = circuit_mul(in89, in129);
    let t424 = circuit_add(in103, t423);
    let t425 = circuit_add(t424, in130);
    let t426 = circuit_mul(t422, t425);
    let t427 = circuit_mul(in90, in129);
    let t428 = circuit_add(in104, t427);
    let t429 = circuit_add(t428, in130);
    let t430 = circuit_mul(t426, t429);
    let t431 = circuit_mul(in91, in129);
    let t432 = circuit_add(in105, t431);
    let t433 = circuit_add(t432, in130);
    let t434 = circuit_mul(t430, t433);
    let t435 = circuit_add(in106, in100);
    let t436 = circuit_mul(t419, t435);
    let t437 = circuit_mul(in101, t11);
    let t438 = circuit_add(in114, t437);
    let t439 = circuit_mul(t434, t438);
    let t440 = circuit_sub(t436, t439);
    let t441 = circuit_mul(t440, t376);
    let t442 = circuit_mul(in101, in114);
    let t443 = circuit_mul(t442, t376);
    let t444 = circuit_mul(in97, in126);
    let t445 = circuit_mul(in98, in127);
    let t446 = circuit_mul(in99, in128);
    let t447 = circuit_add(in96, in130);
    let t448 = circuit_add(t447, t444);
    let t449 = circuit_add(t448, t445);
    let t450 = circuit_add(t449, t446);
    let t451 = circuit_mul(in78, in110);
    let t452 = circuit_add(in102, in130);
    let t453 = circuit_add(t452, t451);
    let t454 = circuit_mul(in75, in111);
    let t455 = circuit_add(in103, t454);
    let t456 = circuit_mul(in76, in112);
    let t457 = circuit_add(in104, t456);
    let t458 = circuit_mul(t455, in126);
    let t459 = circuit_mul(t457, in127);
    let t460 = circuit_mul(in79, in128);
    let t461 = circuit_add(t453, t458);
    let t462 = circuit_add(t461, t459);
    let t463 = circuit_add(t462, t460);
    let t464 = circuit_mul(in107, t450);
    let t465 = circuit_mul(in107, t463);
    let t466 = circuit_add(in109, in81);
    let t467 = circuit_mul(in109, in81);
    let t468 = circuit_sub(t466, t467);
    let t469 = circuit_mul(t463, t450);
    let t470 = circuit_mul(t469, in107);
    let t471 = circuit_sub(t470, t468);
    let t472 = circuit_mul(t471, t376);
    let t473 = circuit_mul(in81, t464);
    let t474 = circuit_mul(in108, t465);
    let t475 = circuit_sub(t473, t474);
    let t476 = circuit_sub(in103, in102);
    let t477 = circuit_sub(in104, in103);
    let t478 = circuit_sub(in105, in104);
    let t479 = circuit_sub(in110, in105);
    let t480 = circuit_add(t476, in16);
    let t481 = circuit_add(t476, in17);
    let t482 = circuit_add(t476, in18);
    let t483 = circuit_mul(t476, t480);
    let t484 = circuit_mul(t483, t481);
    let t485 = circuit_mul(t484, t482);
    let t486 = circuit_mul(t485, in83);
    let t487 = circuit_mul(t486, t376);
    let t488 = circuit_add(t477, in16);
    let t489 = circuit_add(t477, in17);
    let t490 = circuit_add(t477, in18);
    let t491 = circuit_mul(t477, t488);
    let t492 = circuit_mul(t491, t489);
    let t493 = circuit_mul(t492, t490);
    let t494 = circuit_mul(t493, in83);
    let t495 = circuit_mul(t494, t376);
    let t496 = circuit_add(t478, in16);
    let t497 = circuit_add(t478, in17);
    let t498 = circuit_add(t478, in18);
    let t499 = circuit_mul(t478, t496);
    let t500 = circuit_mul(t499, t497);
    let t501 = circuit_mul(t500, t498);
    let t502 = circuit_mul(t501, in83);
    let t503 = circuit_mul(t502, t376);
    let t504 = circuit_add(t479, in16);
    let t505 = circuit_add(t479, in17);
    let t506 = circuit_add(t479, in18);
    let t507 = circuit_mul(t479, t504);
    let t508 = circuit_mul(t507, t505);
    let t509 = circuit_mul(t508, t506);
    let t510 = circuit_mul(t509, in83);
    let t511 = circuit_mul(t510, t376);
    let t512 = circuit_sub(in110, in103);
    let t513 = circuit_mul(in104, in104);
    let t514 = circuit_mul(in113, in113);
    let t515 = circuit_mul(in104, in113);
    let t516 = circuit_mul(t515, in77);
    let t517 = circuit_add(in111, in110);
    let t518 = circuit_add(t517, in103);
    let t519 = circuit_mul(t518, t512);
    let t520 = circuit_mul(t519, t512);
    let t521 = circuit_sub(t520, t514);
    let t522 = circuit_sub(t521, t513);
    let t523 = circuit_add(t522, t516);
    let t524 = circuit_add(t523, t516);
    let t525 = circuit_sub(in0, in75);
    let t526 = circuit_mul(t524, t376);
    let t527 = circuit_mul(t526, in84);
    let t528 = circuit_mul(t527, t525);
    let t529 = circuit_add(in104, in112);
    let t530 = circuit_mul(in113, in77);
    let t531 = circuit_sub(t530, in104);
    let t532 = circuit_mul(t529, t512);
    let t533 = circuit_sub(in111, in103);
    let t534 = circuit_mul(t533, t531);
    let t535 = circuit_add(t532, t534);
    let t536 = circuit_mul(t535, t376);
    let t537 = circuit_mul(t536, in84);
    let t538 = circuit_mul(t537, t525);
    let t539 = circuit_add(t513, in19);
    let t540 = circuit_mul(t539, in103);
    let t541 = circuit_add(t513, t513);
    let t542 = circuit_add(t541, t541);
    let t543 = circuit_mul(t540, in20);
    let t544 = circuit_add(in111, in103);
    let t545 = circuit_add(t544, in103);
    let t546 = circuit_mul(t545, t542);
    let t547 = circuit_sub(t546, t543);
    let t548 = circuit_mul(t547, t376);
    let t549 = circuit_mul(t548, in84);
    let t550 = circuit_mul(t549, in75);
    let t551 = circuit_add(t528, t550);
    let t552 = circuit_add(in103, in103);
    let t553 = circuit_add(t552, in103);
    let t554 = circuit_mul(t553, in103);
    let t555 = circuit_sub(in103, in111);
    let t556 = circuit_mul(t554, t555);
    let t557 = circuit_add(in104, in104);
    let t558 = circuit_add(in104, in112);
    let t559 = circuit_mul(t557, t558);
    let t560 = circuit_sub(t556, t559);
    let t561 = circuit_mul(t560, t376);
    let t562 = circuit_mul(t561, in84);
    let t563 = circuit_mul(t562, in75);
    let t564 = circuit_add(t538, t563);
    let t565 = circuit_mul(in102, in111);
    let t566 = circuit_mul(in110, in103);
    let t567 = circuit_add(t565, t566);
    let t568 = circuit_mul(in102, in105);
    let t569 = circuit_mul(in103, in104);
    let t570 = circuit_add(t568, t569);
    let t571 = circuit_sub(t570, in112);
    let t572 = circuit_mul(t571, in21);
    let t573 = circuit_sub(t572, in113);
    let t574 = circuit_add(t573, t567);
    let t575 = circuit_mul(t574, in80);
    let t576 = circuit_mul(t567, in21);
    let t577 = circuit_mul(in110, in111);
    let t578 = circuit_add(t576, t577);
    let t579 = circuit_add(in104, in105);
    let t580 = circuit_sub(t578, t579);
    let t581 = circuit_mul(t580, in79);
    let t582 = circuit_add(t578, in105);
    let t583 = circuit_add(in112, in113);
    let t584 = circuit_sub(t582, t583);
    let t585 = circuit_mul(t584, in75);
    let t586 = circuit_add(t581, t575);
    let t587 = circuit_add(t586, t585);
    let t588 = circuit_mul(t587, in78);
    let t589 = circuit_mul(in111, in22);
    let t590 = circuit_add(t589, in110);
    let t591 = circuit_mul(t590, in22);
    let t592 = circuit_add(t591, in104);
    let t593 = circuit_mul(t592, in22);
    let t594 = circuit_add(t593, in103);
    let t595 = circuit_mul(t594, in22);
    let t596 = circuit_add(t595, in102);
    let t597 = circuit_sub(t596, in105);
    let t598 = circuit_mul(t597, in80);
    let t599 = circuit_mul(in112, in22);
    let t600 = circuit_add(t599, in111);
    let t601 = circuit_mul(t600, in22);
    let t602 = circuit_add(t601, in110);
    let t603 = circuit_mul(t602, in22);
    let t604 = circuit_add(t603, in105);
    let t605 = circuit_mul(t604, in22);
    let t606 = circuit_add(t605, in104);
    let t607 = circuit_sub(t606, in113);
    let t608 = circuit_mul(t607, in75);
    let t609 = circuit_add(t598, t608);
    let t610 = circuit_mul(t609, in79);
    let t611 = circuit_mul(in104, in128);
    let t612 = circuit_mul(in103, in127);
    let t613 = circuit_mul(in102, in126);
    let t614 = circuit_add(t611, t612);
    let t615 = circuit_add(t614, t613);
    let t616 = circuit_add(t615, in76);
    let t617 = circuit_sub(t616, in105);
    let t618 = circuit_sub(in110, in102);
    let t619 = circuit_sub(in113, in105);
    let t620 = circuit_mul(t618, t618);
    let t621 = circuit_sub(t620, t618);
    let t622 = circuit_sub(in2, t618);
    let t623 = circuit_add(t622, in0);
    let t624 = circuit_mul(t623, t619);
    let t625 = circuit_mul(in77, in78);
    let t626 = circuit_mul(t625, in85);
    let t627 = circuit_mul(t626, t376);
    let t628 = circuit_mul(t624, t627);
    let t629 = circuit_mul(t621, t627);
    let t630 = circuit_mul(t617, t625);
    let t631 = circuit_sub(in105, t616);
    let t632 = circuit_mul(t631, t631);
    let t633 = circuit_sub(t632, t631);
    let t634 = circuit_mul(in112, in128);
    let t635 = circuit_mul(in111, in127);
    let t636 = circuit_mul(in110, in126);
    let t637 = circuit_add(t634, t635);
    let t638 = circuit_add(t637, t636);
    let t639 = circuit_sub(in113, t638);
    let t640 = circuit_sub(in112, in104);
    let t641 = circuit_sub(in2, t618);
    let t642 = circuit_add(t641, in0);
    let t643 = circuit_sub(in2, t639);
    let t644 = circuit_add(t643, in0);
    let t645 = circuit_mul(t640, t644);
    let t646 = circuit_mul(t642, t645);
    let t647 = circuit_mul(t639, t639);
    let t648 = circuit_sub(t647, t639);
    let t649 = circuit_mul(in82, in85);
    let t650 = circuit_mul(t649, t376);
    let t651 = circuit_mul(t646, t650);
    let t652 = circuit_mul(t621, t650);
    let t653 = circuit_mul(t648, t650);
    let t654 = circuit_mul(t633, in82);
    let t655 = circuit_sub(in111, in103);
    let t656 = circuit_sub(in2, t618);
    let t657 = circuit_add(t656, in0);
    let t658 = circuit_mul(t657, t655);
    let t659 = circuit_sub(t658, in104);
    let t660 = circuit_mul(t659, in80);
    let t661 = circuit_mul(t660, in77);
    let t662 = circuit_add(t630, t661);
    let t663 = circuit_mul(t617, in75);
    let t664 = circuit_mul(t663, in77);
    let t665 = circuit_add(t662, t664);
    let t666 = circuit_add(t665, t654);
    let t667 = circuit_add(t666, t588);
    let t668 = circuit_add(t667, t610);
    let t669 = circuit_mul(t668, in85);
    let t670 = circuit_mul(t669, t376);
    let t671 = circuit_add(in102, in77);
    let t672 = circuit_add(in103, in78);
    let t673 = circuit_add(in104, in79);
    let t674 = circuit_add(in105, in80);
    let t675 = circuit_mul(t671, t671);
    let t676 = circuit_mul(t675, t675);
    let t677 = circuit_mul(t676, t671);
    let t678 = circuit_mul(t672, t672);
    let t679 = circuit_mul(t678, t678);
    let t680 = circuit_mul(t679, t672);
    let t681 = circuit_mul(t673, t673);
    let t682 = circuit_mul(t681, t681);
    let t683 = circuit_mul(t682, t673);
    let t684 = circuit_mul(t674, t674);
    let t685 = circuit_mul(t684, t684);
    let t686 = circuit_mul(t685, t674);
    let t687 = circuit_add(t677, t680);
    let t688 = circuit_add(t683, t686);
    let t689 = circuit_add(t680, t680);
    let t690 = circuit_add(t689, t688);
    let t691 = circuit_add(t686, t686);
    let t692 = circuit_add(t691, t687);
    let t693 = circuit_add(t688, t688);
    let t694 = circuit_add(t693, t693);
    let t695 = circuit_add(t694, t692);
    let t696 = circuit_add(t687, t687);
    let t697 = circuit_add(t696, t696);
    let t698 = circuit_add(t697, t690);
    let t699 = circuit_add(t692, t698);
    let t700 = circuit_add(t690, t695);
    let t701 = circuit_mul(in86, t376);
    let t702 = circuit_sub(t699, in110);
    let t703 = circuit_mul(t701, t702);
    let t704 = circuit_sub(t698, in111);
    let t705 = circuit_mul(t701, t704);
    let t706 = circuit_sub(t700, in112);
    let t707 = circuit_mul(t701, t706);
    let t708 = circuit_sub(t695, in113);
    let t709 = circuit_mul(t701, t708);
    let t710 = circuit_add(in102, in77);
    let t711 = circuit_mul(t710, t710);
    let t712 = circuit_mul(t711, t711);
    let t713 = circuit_mul(t712, t710);
    let t714 = circuit_add(t713, in103);
    let t715 = circuit_add(t714, in104);
    let t716 = circuit_add(t715, in105);
    let t717 = circuit_mul(in87, t376);
    let t718 = circuit_mul(t713, in23);
    let t719 = circuit_add(t718, t716);
    let t720 = circuit_sub(t719, in110);
    let t721 = circuit_mul(t717, t720);
    let t722 = circuit_mul(in103, in24);
    let t723 = circuit_add(t722, t716);
    let t724 = circuit_sub(t723, in111);
    let t725 = circuit_mul(t717, t724);
    let t726 = circuit_mul(in104, in25);
    let t727 = circuit_add(t726, t716);
    let t728 = circuit_sub(t727, in112);
    let t729 = circuit_mul(t717, t728);
    let t730 = circuit_mul(in105, in26);
    let t731 = circuit_add(t730, t716);
    let t732 = circuit_sub(t731, in113);
    let t733 = circuit_mul(t717, t732);
    let t734 = circuit_mul(t404, in132);
    let t735 = circuit_add(t395, t734);
    let t736 = circuit_mul(t441, in133);
    let t737 = circuit_add(t735, t736);
    let t738 = circuit_mul(t443, in134);
    let t739 = circuit_add(t737, t738);
    let t740 = circuit_mul(t472, in135);
    let t741 = circuit_add(t739, t740);
    let t742 = circuit_mul(t475, in136);
    let t743 = circuit_add(t741, t742);
    let t744 = circuit_mul(t487, in137);
    let t745 = circuit_add(t743, t744);
    let t746 = circuit_mul(t495, in138);
    let t747 = circuit_add(t745, t746);
    let t748 = circuit_mul(t503, in139);
    let t749 = circuit_add(t747, t748);
    let t750 = circuit_mul(t511, in140);
    let t751 = circuit_add(t749, t750);
    let t752 = circuit_mul(t551, in141);
    let t753 = circuit_add(t751, t752);
    let t754 = circuit_mul(t564, in142);
    let t755 = circuit_add(t753, t754);
    let t756 = circuit_mul(t670, in143);
    let t757 = circuit_add(t755, t756);
    let t758 = circuit_mul(t628, in144);
    let t759 = circuit_add(t757, t758);
    let t760 = circuit_mul(t629, in145);
    let t761 = circuit_add(t759, t760);
    let t762 = circuit_mul(t651, in146);
    let t763 = circuit_add(t761, t762);
    let t764 = circuit_mul(t652, in147);
    let t765 = circuit_add(t763, t764);
    let t766 = circuit_mul(t653, in148);
    let t767 = circuit_add(t765, t766);
    let t768 = circuit_mul(t703, in149);
    let t769 = circuit_add(t767, t768);
    let t770 = circuit_mul(t705, in150);
    let t771 = circuit_add(t769, t770);
    let t772 = circuit_mul(t707, in151);
    let t773 = circuit_add(t771, t772);
    let t774 = circuit_mul(t709, in152);
    let t775 = circuit_add(t773, t774);
    let t776 = circuit_mul(t721, in153);
    let t777 = circuit_add(t775, t776);
    let t778 = circuit_mul(t725, in154);
    let t779 = circuit_add(t777, t778);
    let t780 = circuit_mul(t729, in155);
    let t781 = circuit_add(t779, t780);
    let t782 = circuit_mul(t733, in156);
    let t783 = circuit_add(t781, t782);
    let t784 = circuit_mul(in0, in118);
    let t785 = circuit_mul(t784, in119);
    let t786 = circuit_mul(t785, in120);
    let t787 = circuit_sub(in0, t786);
    let t788 = circuit_mul(t783, t787);
    let t789 = circuit_mul(in115, in157);
    let t790 = circuit_add(t788, t789);
    let t791 = circuit_sub(t790, t372);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t308, t791).new_inputs();
    // Prefill constants:

    circuit_inputs = circuit_inputs
        .next_span(ZK_HONK_SUMCHECK_SIZE_5_PUB_1_GRUMPKIN_CONSTANTS.span()); // in0 - in26

    // Fill inputs:

    let mut p_public_inputs = p_public_inputs;
    while let Option::Some(val) = p_public_inputs.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in27 - in27

    circuit_inputs = circuit_inputs.next_2(p_public_inputs_offset); // in28
    circuit_inputs = circuit_inputs.next_2(libra_sum); // in29

    let mut sumcheck_univariates_flat = sumcheck_univariates_flat;
    while let Option::Some(val) = sumcheck_univariates_flat.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in30 - in74

    let mut sumcheck_evaluations = sumcheck_evaluations;
    while let Option::Some(val) = sumcheck_evaluations.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in75 - in114

    circuit_inputs = circuit_inputs.next_2(libra_evaluation); // in115

    let mut tp_sum_check_u_challenges = tp_sum_check_u_challenges;
    while let Option::Some(val) = tp_sum_check_u_challenges.pop_front() {
        circuit_inputs = circuit_inputs.next_u128(*val);
    }; // in116 - in120

    let mut tp_gate_challenges = tp_gate_challenges;
    while let Option::Some(val) = tp_gate_challenges.pop_front() {
        circuit_inputs = circuit_inputs.next_u128(*val);
    }; // in121 - in125

    circuit_inputs = circuit_inputs.next_2(tp_eta_1); // in126
    circuit_inputs = circuit_inputs.next_2(tp_eta_2); // in127
    circuit_inputs = circuit_inputs.next_2(tp_eta_3); // in128
    circuit_inputs = circuit_inputs.next_2(tp_beta); // in129
    circuit_inputs = circuit_inputs.next_2(tp_gamma); // in130
    circuit_inputs = circuit_inputs.next_2(tp_base_rlc); // in131

    let mut tp_alphas = tp_alphas;
    while let Option::Some(val) = tp_alphas.pop_front() {
        circuit_inputs = circuit_inputs.next_u128(*val);
    }; // in132 - in156

    circuit_inputs = circuit_inputs.next_2(tp_libra_challenge); // in157

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let check_rlc: u384 = outputs.get_output(t308);
    let check: u384 = outputs.get_output(t791);
    return (check_rlc, check);
}
const ZK_HONK_SUMCHECK_SIZE_5_PUB_1_GRUMPKIN_CONSTANTS: [u384; 27] = [
    u384 { limb0: 0x1, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x20, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x9d80, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593efffec51,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x5a0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593effffd31,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x240, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x2, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x3, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x4, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x5, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x6, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x7, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x8, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x3cdcb848a1f0fac9f8000000,
        limb1: 0xdc2822db40c0ac2e9419f424,
        limb2: 0x183227397098d014,
        limb3: 0x0,
    },
    u384 {
        limb0: 0x79b9709143e1f593f0000000,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 {
        limb0: 0x79b9709143e1f593efffffff,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 {
        limb0: 0x79b9709143e1f593effffffe,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x11, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x9, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x100000000000000000, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x4000, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x29ca1d7fb56821fd19d3b6e7,
        limb1: 0x4b1e03b4bd9490c0d03f989,
        limb2: 0x10dc6e9c006ea38b,
        limb3: 0x0,
    },
    u384 {
        limb0: 0xd4dd9b84a86b38cfb45a740b,
        limb1: 0x149b3d0a30b3bb599df9756,
        limb2: 0xc28145b6a44df3e,
        limb3: 0x0,
    },
    u384 {
        limb0: 0x60e3596170067d00141cac15,
        limb1: 0xb2c7645a50392798b21f75bb,
        limb2: 0x544b8338791518,
        limb3: 0x0,
    },
    u384 {
        limb0: 0xb8fa852613bc534433ee428b,
        limb1: 0x2e2e82eb122789e352e105a3,
        limb2: 0x222c01175718386f,
        limb3: 0x0,
    },
];
#[inline(always)]
pub fn run_GRUMPKIN_ZK_HONK_PREP_MSM_SCALARS_SIZE_5_circuit(
    p_sumcheck_evaluations: Span<u256>,
    p_gemini_masking_eval: u384,
    p_gemini_a_evaluations: Span<u256>,
    p_libra_poly_evals: Span<u256>,
    tp_gemini_r: u384,
    tp_rho: u384,
    tp_shplonk_z: u384,
    tp_shplonk_nu: u384,
    tp_sum_check_u_challenges: Span<u128>,
) -> (
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
    u384,
) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x0
    let in1 = CE::<CI<1>> {}; // 0x1
    let in2 = CE::<CI<2>> {}; // 0x7b0c561a6148404f086204a9f36ffb0617942546750f230c893619174a57a76

    // INPUT stack
    let (in3, in4, in5) = (CE::<CI<3>> {}, CE::<CI<4>> {}, CE::<CI<5>> {});
    let (in6, in7, in8) = (CE::<CI<6>> {}, CE::<CI<7>> {}, CE::<CI<8>> {});
    let (in9, in10, in11) = (CE::<CI<9>> {}, CE::<CI<10>> {}, CE::<CI<11>> {});
    let (in12, in13, in14) = (CE::<CI<12>> {}, CE::<CI<13>> {}, CE::<CI<14>> {});
    let (in15, in16, in17) = (CE::<CI<15>> {}, CE::<CI<16>> {}, CE::<CI<17>> {});
    let (in18, in19, in20) = (CE::<CI<18>> {}, CE::<CI<19>> {}, CE::<CI<20>> {});
    let (in21, in22, in23) = (CE::<CI<21>> {}, CE::<CI<22>> {}, CE::<CI<23>> {});
    let (in24, in25, in26) = (CE::<CI<24>> {}, CE::<CI<25>> {}, CE::<CI<26>> {});
    let (in27, in28, in29) = (CE::<CI<27>> {}, CE::<CI<28>> {}, CE::<CI<29>> {});
    let (in30, in31, in32) = (CE::<CI<30>> {}, CE::<CI<31>> {}, CE::<CI<32>> {});
    let (in33, in34, in35) = (CE::<CI<33>> {}, CE::<CI<34>> {}, CE::<CI<35>> {});
    let (in36, in37, in38) = (CE::<CI<36>> {}, CE::<CI<37>> {}, CE::<CI<38>> {});
    let (in39, in40, in41) = (CE::<CI<39>> {}, CE::<CI<40>> {}, CE::<CI<41>> {});
    let (in42, in43, in44) = (CE::<CI<42>> {}, CE::<CI<43>> {}, CE::<CI<44>> {});
    let (in45, in46, in47) = (CE::<CI<45>> {}, CE::<CI<46>> {}, CE::<CI<47>> {});
    let (in48, in49, in50) = (CE::<CI<48>> {}, CE::<CI<49>> {}, CE::<CI<50>> {});
    let (in51, in52, in53) = (CE::<CI<51>> {}, CE::<CI<52>> {}, CE::<CI<53>> {});
    let (in54, in55, in56) = (CE::<CI<54>> {}, CE::<CI<55>> {}, CE::<CI<56>> {});
    let (in57, in58, in59) = (CE::<CI<57>> {}, CE::<CI<58>> {}, CE::<CI<59>> {});
    let (in60, in61) = (CE::<CI<60>> {}, CE::<CI<61>> {});
    let t0 = circuit_mul(in53, in53);
    let t1 = circuit_mul(t0, t0);
    let t2 = circuit_mul(t1, t1);
    let t3 = circuit_mul(t2, t2);
    let t4 = circuit_sub(in55, in53);
    let t5 = circuit_inverse(t4);
    let t6 = circuit_add(in55, in53);
    let t7 = circuit_inverse(t6);
    let t8 = circuit_add(in55, t0);
    let t9 = circuit_inverse(t8);
    let t10 = circuit_add(in55, t1);
    let t11 = circuit_inverse(t10);
    let t12 = circuit_add(in55, t2);
    let t13 = circuit_inverse(t12);
    let t14 = circuit_add(in55, t3);
    let t15 = circuit_inverse(t14);
    let t16 = circuit_mul(in56, t7);
    let t17 = circuit_add(t5, t16);
    let t18 = circuit_sub(in0, t17);
    let t19 = circuit_inverse(in53);
    let t20 = circuit_mul(in56, t7);
    let t21 = circuit_sub(t5, t20);
    let t22 = circuit_mul(t19, t21);
    let t23 = circuit_sub(in0, t22);
    let t24 = circuit_mul(t18, in54);
    let t25 = circuit_mul(in3, in54);
    let t26 = circuit_add(in43, t25);
    let t27 = circuit_mul(in54, in54);
    let t28 = circuit_mul(t18, t27);
    let t29 = circuit_mul(in4, t27);
    let t30 = circuit_add(t26, t29);
    let t31 = circuit_mul(t27, in54);
    let t32 = circuit_mul(t18, t31);
    let t33 = circuit_mul(in5, t31);
    let t34 = circuit_add(t30, t33);
    let t35 = circuit_mul(t31, in54);
    let t36 = circuit_mul(t18, t35);
    let t37 = circuit_mul(in6, t35);
    let t38 = circuit_add(t34, t37);
    let t39 = circuit_mul(t35, in54);
    let t40 = circuit_mul(t18, t39);
    let t41 = circuit_mul(in7, t39);
    let t42 = circuit_add(t38, t41);
    let t43 = circuit_mul(t39, in54);
    let t44 = circuit_mul(t18, t43);
    let t45 = circuit_mul(in8, t43);
    let t46 = circuit_add(t42, t45);
    let t47 = circuit_mul(t43, in54);
    let t48 = circuit_mul(t18, t47);
    let t49 = circuit_mul(in9, t47);
    let t50 = circuit_add(t46, t49);
    let t51 = circuit_mul(t47, in54);
    let t52 = circuit_mul(t18, t51);
    let t53 = circuit_mul(in10, t51);
    let t54 = circuit_add(t50, t53);
    let t55 = circuit_mul(t51, in54);
    let t56 = circuit_mul(t18, t55);
    let t57 = circuit_mul(in11, t55);
    let t58 = circuit_add(t54, t57);
    let t59 = circuit_mul(t55, in54);
    let t60 = circuit_mul(t18, t59);
    let t61 = circuit_mul(in12, t59);
    let t62 = circuit_add(t58, t61);
    let t63 = circuit_mul(t59, in54);
    let t64 = circuit_mul(t18, t63);
    let t65 = circuit_mul(in13, t63);
    let t66 = circuit_add(t62, t65);
    let t67 = circuit_mul(t63, in54);
    let t68 = circuit_mul(t18, t67);
    let t69 = circuit_mul(in14, t67);
    let t70 = circuit_add(t66, t69);
    let t71 = circuit_mul(t67, in54);
    let t72 = circuit_mul(t18, t71);
    let t73 = circuit_mul(in15, t71);
    let t74 = circuit_add(t70, t73);
    let t75 = circuit_mul(t71, in54);
    let t76 = circuit_mul(t18, t75);
    let t77 = circuit_mul(in16, t75);
    let t78 = circuit_add(t74, t77);
    let t79 = circuit_mul(t75, in54);
    let t80 = circuit_mul(t18, t79);
    let t81 = circuit_mul(in17, t79);
    let t82 = circuit_add(t78, t81);
    let t83 = circuit_mul(t79, in54);
    let t84 = circuit_mul(t18, t83);
    let t85 = circuit_mul(in18, t83);
    let t86 = circuit_add(t82, t85);
    let t87 = circuit_mul(t83, in54);
    let t88 = circuit_mul(t18, t87);
    let t89 = circuit_mul(in19, t87);
    let t90 = circuit_add(t86, t89);
    let t91 = circuit_mul(t87, in54);
    let t92 = circuit_mul(t18, t91);
    let t93 = circuit_mul(in20, t91);
    let t94 = circuit_add(t90, t93);
    let t95 = circuit_mul(t91, in54);
    let t96 = circuit_mul(t18, t95);
    let t97 = circuit_mul(in21, t95);
    let t98 = circuit_add(t94, t97);
    let t99 = circuit_mul(t95, in54);
    let t100 = circuit_mul(t18, t99);
    let t101 = circuit_mul(in22, t99);
    let t102 = circuit_add(t98, t101);
    let t103 = circuit_mul(t99, in54);
    let t104 = circuit_mul(t18, t103);
    let t105 = circuit_mul(in23, t103);
    let t106 = circuit_add(t102, t105);
    let t107 = circuit_mul(t103, in54);
    let t108 = circuit_mul(t18, t107);
    let t109 = circuit_mul(in24, t107);
    let t110 = circuit_add(t106, t109);
    let t111 = circuit_mul(t107, in54);
    let t112 = circuit_mul(t18, t111);
    let t113 = circuit_mul(in25, t111);
    let t114 = circuit_add(t110, t113);
    let t115 = circuit_mul(t111, in54);
    let t116 = circuit_mul(t18, t115);
    let t117 = circuit_mul(in26, t115);
    let t118 = circuit_add(t114, t117);
    let t119 = circuit_mul(t115, in54);
    let t120 = circuit_mul(t18, t119);
    let t121 = circuit_mul(in27, t119);
    let t122 = circuit_add(t118, t121);
    let t123 = circuit_mul(t119, in54);
    let t124 = circuit_mul(t18, t123);
    let t125 = circuit_mul(in28, t123);
    let t126 = circuit_add(t122, t125);
    let t127 = circuit_mul(t123, in54);
    let t128 = circuit_mul(t18, t127);
    let t129 = circuit_mul(in29, t127);
    let t130 = circuit_add(t126, t129);
    let t131 = circuit_mul(t127, in54);
    let t132 = circuit_mul(t18, t131);
    let t133 = circuit_mul(in30, t131);
    let t134 = circuit_add(t130, t133);
    let t135 = circuit_mul(t131, in54);
    let t136 = circuit_mul(t18, t135);
    let t137 = circuit_mul(in31, t135);
    let t138 = circuit_add(t134, t137);
    let t139 = circuit_mul(t135, in54);
    let t140 = circuit_mul(t18, t139);
    let t141 = circuit_mul(in32, t139);
    let t142 = circuit_add(t138, t141);
    let t143 = circuit_mul(t139, in54);
    let t144 = circuit_mul(t18, t143);
    let t145 = circuit_mul(in33, t143);
    let t146 = circuit_add(t142, t145);
    let t147 = circuit_mul(t143, in54);
    let t148 = circuit_mul(t18, t147);
    let t149 = circuit_mul(in34, t147);
    let t150 = circuit_add(t146, t149);
    let t151 = circuit_mul(t147, in54);
    let t152 = circuit_mul(t18, t151);
    let t153 = circuit_mul(in35, t151);
    let t154 = circuit_add(t150, t153);
    let t155 = circuit_mul(t151, in54);
    let t156 = circuit_mul(t18, t155);
    let t157 = circuit_mul(in36, t155);
    let t158 = circuit_add(t154, t157);
    let t159 = circuit_mul(t155, in54);
    let t160 = circuit_mul(t18, t159);
    let t161 = circuit_mul(in37, t159);
    let t162 = circuit_add(t158, t161);
    let t163 = circuit_mul(t159, in54);
    let t164 = circuit_mul(t23, t163);
    let t165 = circuit_mul(in38, t163);
    let t166 = circuit_add(t162, t165);
    let t167 = circuit_mul(t163, in54);
    let t168 = circuit_mul(t23, t167);
    let t169 = circuit_mul(in39, t167);
    let t170 = circuit_add(t166, t169);
    let t171 = circuit_mul(t167, in54);
    let t172 = circuit_mul(t23, t171);
    let t173 = circuit_mul(in40, t171);
    let t174 = circuit_add(t170, t173);
    let t175 = circuit_mul(t171, in54);
    let t176 = circuit_mul(t23, t175);
    let t177 = circuit_mul(in41, t175);
    let t178 = circuit_add(t174, t177);
    let t179 = circuit_mul(t175, in54);
    let t180 = circuit_mul(t23, t179);
    let t181 = circuit_mul(in42, t179);
    let t182 = circuit_add(t178, t181);
    let t183 = circuit_mul(in56, in56);
    let t184 = circuit_mul(t183, t9);
    let t185 = circuit_sub(in0, t184);
    let t186 = circuit_mul(t184, in45);
    let t187 = circuit_add(in0, t186);
    let t188 = circuit_mul(t183, in56);
    let t189 = circuit_mul(t188, t11);
    let t190 = circuit_sub(in0, t189);
    let t191 = circuit_mul(t189, in46);
    let t192 = circuit_add(t187, t191);
    let t193 = circuit_mul(t188, in56);
    let t194 = circuit_mul(t193, t13);
    let t195 = circuit_sub(in0, t194);
    let t196 = circuit_mul(t194, in47);
    let t197 = circuit_add(t192, t196);
    let t198 = circuit_mul(t193, in56);
    let t199 = circuit_mul(t198, t15);
    let t200 = circuit_sub(in0, t199);
    let t201 = circuit_mul(t199, in48);
    let t202 = circuit_add(t197, t201);
    let t203 = circuit_mul(t198, in56);
    let t204 = circuit_mul(t203, in56);
    let t205 = circuit_mul(t204, in56);
    let t206 = circuit_mul(t205, in56);
    let t207 = circuit_mul(t206, in56);
    let t208 = circuit_mul(t207, in56);
    let t209 = circuit_mul(t208, in56);
    let t210 = circuit_mul(t209, in56);
    let t211 = circuit_mul(t210, in56);
    let t212 = circuit_mul(t211, in56);
    let t213 = circuit_mul(t212, in56);
    let t214 = circuit_mul(t213, in56);
    let t215 = circuit_mul(t214, in56);
    let t216 = circuit_mul(t215, in56);
    let t217 = circuit_mul(t216, in56);
    let t218 = circuit_mul(t217, in56);
    let t219 = circuit_mul(t218, in56);
    let t220 = circuit_mul(t219, in56);
    let t221 = circuit_mul(t220, in56);
    let t222 = circuit_mul(t221, in56);
    let t223 = circuit_mul(t222, in56);
    let t224 = circuit_mul(t223, in56);
    let t225 = circuit_mul(t224, in56);
    let t226 = circuit_mul(t225, in56);
    let t227 = circuit_sub(in1, in61);
    let t228 = circuit_mul(t3, t227);
    let t229 = circuit_mul(t3, t182);
    let t230 = circuit_add(t229, t229);
    let t231 = circuit_sub(t228, in61);
    let t232 = circuit_mul(in48, t231);
    let t233 = circuit_sub(t230, t232);
    let t234 = circuit_add(t228, in61);
    let t235 = circuit_inverse(t234);
    let t236 = circuit_mul(t233, t235);
    let t237 = circuit_sub(in1, in60);
    let t238 = circuit_mul(t2, t237);
    let t239 = circuit_mul(t2, t236);
    let t240 = circuit_add(t239, t239);
    let t241 = circuit_sub(t238, in60);
    let t242 = circuit_mul(in47, t241);
    let t243 = circuit_sub(t240, t242);
    let t244 = circuit_add(t238, in60);
    let t245 = circuit_inverse(t244);
    let t246 = circuit_mul(t243, t245);
    let t247 = circuit_sub(in1, in59);
    let t248 = circuit_mul(t1, t247);
    let t249 = circuit_mul(t1, t246);
    let t250 = circuit_add(t249, t249);
    let t251 = circuit_sub(t248, in59);
    let t252 = circuit_mul(in46, t251);
    let t253 = circuit_sub(t250, t252);
    let t254 = circuit_add(t248, in59);
    let t255 = circuit_inverse(t254);
    let t256 = circuit_mul(t253, t255);
    let t257 = circuit_sub(in1, in58);
    let t258 = circuit_mul(t0, t257);
    let t259 = circuit_mul(t0, t256);
    let t260 = circuit_add(t259, t259);
    let t261 = circuit_sub(t258, in58);
    let t262 = circuit_mul(in45, t261);
    let t263 = circuit_sub(t260, t262);
    let t264 = circuit_add(t258, in58);
    let t265 = circuit_inverse(t264);
    let t266 = circuit_mul(t263, t265);
    let t267 = circuit_sub(in1, in57);
    let t268 = circuit_mul(in53, t267);
    let t269 = circuit_mul(in53, t266);
    let t270 = circuit_add(t269, t269);
    let t271 = circuit_sub(t268, in57);
    let t272 = circuit_mul(in44, t271);
    let t273 = circuit_sub(t270, t272);
    let t274 = circuit_add(t268, in57);
    let t275 = circuit_inverse(t274);
    let t276 = circuit_mul(t273, t275);
    let t277 = circuit_mul(t276, t5);
    let t278 = circuit_add(t202, t277);
    let t279 = circuit_mul(in44, in56);
    let t280 = circuit_mul(t279, t7);
    let t281 = circuit_add(t278, t280);
    let t282 = circuit_sub(in55, in53);
    let t283 = circuit_inverse(t282);
    let t284 = circuit_mul(in1, t283);
    let t285 = circuit_mul(in2, in53);
    let t286 = circuit_sub(in55, t285);
    let t287 = circuit_inverse(t286);
    let t288 = circuit_mul(in1, t287);
    let t289 = circuit_mul(t226, in56);
    let t290 = circuit_mul(t284, t289);
    let t291 = circuit_sub(in0, t290);
    let t292 = circuit_mul(t289, in56);
    let t293 = circuit_mul(t290, in49);
    let t294 = circuit_add(t281, t293);
    let t295 = circuit_mul(t288, t292);
    let t296 = circuit_sub(in0, t295);
    let t297 = circuit_mul(t292, in56);
    let t298 = circuit_mul(t295, in50);
    let t299 = circuit_add(t294, t298);
    let t300 = circuit_mul(t284, t297);
    let t301 = circuit_sub(in0, t300);
    let t302 = circuit_mul(t297, in56);
    let t303 = circuit_mul(t300, in51);
    let t304 = circuit_add(t299, t303);
    let t305 = circuit_mul(t284, t302);
    let t306 = circuit_sub(in0, t305);
    let t307 = circuit_mul(t305, in52);
    let t308 = circuit_add(t304, t307);
    let t309 = circuit_add(t296, t301);
    let t310 = circuit_add(t132, t164);
    let t311 = circuit_add(t136, t168);
    let t312 = circuit_add(t140, t172);
    let t313 = circuit_add(t144, t176);
    let t314 = circuit_add(t18, t24);
    let t315 = circuit_add(t314, t28);
    let t316 = circuit_add(t315, t32);
    let t317 = circuit_add(t316, t36);
    let t318 = circuit_add(t317, t40);
    let t319 = circuit_add(t318, t44);
    let t320 = circuit_add(t319, t48);
    let t321 = circuit_add(t320, t52);
    let t322 = circuit_add(t321, t56);
    let t323 = circuit_add(t322, t60);
    let t324 = circuit_add(t323, t64);
    let t325 = circuit_add(t324, t68);
    let t326 = circuit_add(t325, t72);
    let t327 = circuit_add(t326, t76);
    let t328 = circuit_add(t327, t80);
    let t329 = circuit_add(t328, t84);
    let t330 = circuit_add(t329, t88);
    let t331 = circuit_add(t330, t92);
    let t332 = circuit_add(t331, t96);
    let t333 = circuit_add(t332, t100);
    let t334 = circuit_add(t333, t104);
    let t335 = circuit_add(t334, t108);
    let t336 = circuit_add(t335, t112);
    let t337 = circuit_add(t336, t116);
    let t338 = circuit_add(t337, t120);
    let t339 = circuit_add(t338, t124);
    let t340 = circuit_add(t339, t128);
    let t341 = circuit_add(t340, t310);
    let t342 = circuit_add(t341, t311);
    let t343 = circuit_add(t342, t312);
    let t344 = circuit_add(t343, t313);
    let t345 = circuit_add(t344, t148);
    let t346 = circuit_add(t345, t152);
    let t347 = circuit_add(t346, t156);
    let t348 = circuit_add(t347, t160);
    let t349 = circuit_add(t348, t180);
    let t350 = circuit_add(t349, t185);
    let t351 = circuit_add(t350, t190);
    let t352 = circuit_add(t351, t195);
    let t353 = circuit_add(t352, t200);
    let t354 = circuit_add(t353, t291);
    let t355 = circuit_add(t354, t309);
    let t356 = circuit_add(t355, t306);
    let t357 = circuit_add(t356, t308);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t357,).new_inputs();
    // Prefill constants:
    circuit_inputs = circuit_inputs.next_2([0x0, 0x0, 0x0, 0x0]); // in0
    circuit_inputs = circuit_inputs.next_2([0x1, 0x0, 0x0, 0x0]); // in1
    circuit_inputs = circuit_inputs
        .next_2(
            [0x6750f230c893619174a57a76, 0xf086204a9f36ffb061794254, 0x7b0c561a6148404, 0x0],
        ); // in2
    // Fill inputs:

    let mut p_sumcheck_evaluations = p_sumcheck_evaluations;
    while let Option::Some(val) = p_sumcheck_evaluations.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in3 - in42

    circuit_inputs = circuit_inputs.next_2(p_gemini_masking_eval); // in43

    let mut p_gemini_a_evaluations = p_gemini_a_evaluations;
    while let Option::Some(val) = p_gemini_a_evaluations.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in44 - in48

    let mut p_libra_poly_evals = p_libra_poly_evals;
    while let Option::Some(val) = p_libra_poly_evals.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in49 - in52

    circuit_inputs = circuit_inputs.next_2(tp_gemini_r); // in53
    circuit_inputs = circuit_inputs.next_2(tp_rho); // in54
    circuit_inputs = circuit_inputs.next_2(tp_shplonk_z); // in55
    circuit_inputs = circuit_inputs.next_2(tp_shplonk_nu); // in56

    let mut tp_sum_check_u_challenges = tp_sum_check_u_challenges;
    while let Option::Some(val) = tp_sum_check_u_challenges.pop_front() {
        circuit_inputs = circuit_inputs.next_u128(*val);
    }; // in57 - in61

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let scalar_1: u384 = outputs.get_output(t18);
    let scalar_2: u384 = outputs.get_output(t24);
    let scalar_3: u384 = outputs.get_output(t28);
    let scalar_4: u384 = outputs.get_output(t32);
    let scalar_5: u384 = outputs.get_output(t36);
    let scalar_6: u384 = outputs.get_output(t40);
    let scalar_7: u384 = outputs.get_output(t44);
    let scalar_8: u384 = outputs.get_output(t48);
    let scalar_9: u384 = outputs.get_output(t52);
    let scalar_10: u384 = outputs.get_output(t56);
    let scalar_11: u384 = outputs.get_output(t60);
    let scalar_12: u384 = outputs.get_output(t64);
    let scalar_13: u384 = outputs.get_output(t68);
    let scalar_14: u384 = outputs.get_output(t72);
    let scalar_15: u384 = outputs.get_output(t76);
    let scalar_16: u384 = outputs.get_output(t80);
    let scalar_17: u384 = outputs.get_output(t84);
    let scalar_18: u384 = outputs.get_output(t88);
    let scalar_19: u384 = outputs.get_output(t92);
    let scalar_20: u384 = outputs.get_output(t96);
    let scalar_21: u384 = outputs.get_output(t100);
    let scalar_22: u384 = outputs.get_output(t104);
    let scalar_23: u384 = outputs.get_output(t108);
    let scalar_24: u384 = outputs.get_output(t112);
    let scalar_25: u384 = outputs.get_output(t116);
    let scalar_26: u384 = outputs.get_output(t120);
    let scalar_27: u384 = outputs.get_output(t124);
    let scalar_28: u384 = outputs.get_output(t128);
    let scalar_29: u384 = outputs.get_output(t310);
    let scalar_30: u384 = outputs.get_output(t311);
    let scalar_31: u384 = outputs.get_output(t312);
    let scalar_32: u384 = outputs.get_output(t313);
    let scalar_33: u384 = outputs.get_output(t148);
    let scalar_34: u384 = outputs.get_output(t152);
    let scalar_35: u384 = outputs.get_output(t156);
    let scalar_36: u384 = outputs.get_output(t160);
    let scalar_41: u384 = outputs.get_output(t180);
    let scalar_42: u384 = outputs.get_output(t185);
    let scalar_43: u384 = outputs.get_output(t190);
    let scalar_44: u384 = outputs.get_output(t195);
    let scalar_45: u384 = outputs.get_output(t200);
    let scalar_69: u384 = outputs.get_output(t291);
    let scalar_70: u384 = outputs.get_output(t309);
    let scalar_71: u384 = outputs.get_output(t306);
    let scalar_72: u384 = outputs.get_output(t308);
    let sum_scalars: u384 = outputs.get_output(t357);
    return (
        scalar_1,
        scalar_2,
        scalar_3,
        scalar_4,
        scalar_5,
        scalar_6,
        scalar_7,
        scalar_8,
        scalar_9,
        scalar_10,
        scalar_11,
        scalar_12,
        scalar_13,
        scalar_14,
        scalar_15,
        scalar_16,
        scalar_17,
        scalar_18,
        scalar_19,
        scalar_20,
        scalar_21,
        scalar_22,
        scalar_23,
        scalar_24,
        scalar_25,
        scalar_26,
        scalar_27,
        scalar_28,
        scalar_29,
        scalar_30,
        scalar_31,
        scalar_32,
        scalar_33,
        scalar_34,
        scalar_35,
        scalar_36,
        scalar_41,
        scalar_42,
        scalar_43,
        scalar_44,
        scalar_45,
        scalar_69,
        scalar_70,
        scalar_71,
        scalar_72,
        sum_scalars,
    );
}
#[inline(always)]
pub fn run_GRUMPKIN_ZK_HONK_EVALS_CONS_INIT_SIZE_5_circuit(tp_gemini_r: u384) -> (u384, u384) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x1
    let in1 = CE::<CI<1>> {}; // 0x204bd3277422fad364751ad938e2b5e6a54cf8c68712848a692c553d0329f5d6

    // INPUT stack
    let in2 = CE::<CI<2>> {};
    let t0 = circuit_sub(in2, in0);
    let t1 = circuit_inverse(t0);
    let t2 = circuit_mul(in1, in2);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t1, t2).new_inputs();
    // Prefill constants:
    circuit_inputs = circuit_inputs.next_2([0x1, 0x0, 0x0, 0x0]); // in0
    circuit_inputs = circuit_inputs
        .next_2(
            [0x8712848a692c553d0329f5d6, 0x64751ad938e2b5e6a54cf8c6, 0x204bd3277422fad3, 0x0],
        ); // in1
    // Fill inputs:
    circuit_inputs = circuit_inputs.next_2(tp_gemini_r); // in2

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let challenge_poly_eval: u384 = outputs.get_output(t1);
    let root_power_times_tp_gemini_r: u384 = outputs.get_output(t2);
    return (challenge_poly_eval, root_power_times_tp_gemini_r);
}
#[inline(always)]
pub fn run_GRUMPKIN_ZK_HONK_EVALS_CONS_LOOP_SIZE_5_circuit(
    challenge_poly_eval: u384, root_power_times_tp_gemini_r: u384, tp_sumcheck_u_challenge: u384,
) -> (u384, u384) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x1
    let in1 = CE::<CI<1>> {}; // 0x204bd3277422fad364751ad938e2b5e6a54cf8c68712848a692c553d0329f5d6

    // INPUT stack
    let (in2, in3, in4) = (CE::<CI<2>> {}, CE::<CI<3>> {}, CE::<CI<4>> {});
    let t0 = circuit_sub(in3, in0);
    let t1 = circuit_inverse(t0);
    let t2 = circuit_mul(in0, t1);
    let t3 = circuit_add(in2, t2);
    let t4 = circuit_mul(in3, in1);
    let t5 = circuit_mul(in0, in4);
    let t6 = circuit_sub(t4, in0);
    let t7 = circuit_inverse(t6);
    let t8 = circuit_mul(t5, t7);
    let t9 = circuit_add(t3, t8);
    let t10 = circuit_mul(t4, in1);
    let t11 = circuit_mul(t5, in4);
    let t12 = circuit_sub(t10, in0);
    let t13 = circuit_inverse(t12);
    let t14 = circuit_mul(t11, t13);
    let t15 = circuit_add(t9, t14);
    let t16 = circuit_mul(t10, in1);
    let t17 = circuit_mul(t11, in4);
    let t18 = circuit_sub(t16, in0);
    let t19 = circuit_inverse(t18);
    let t20 = circuit_mul(t17, t19);
    let t21 = circuit_add(t15, t20);
    let t22 = circuit_mul(t16, in1);
    let t23 = circuit_mul(t17, in4);
    let t24 = circuit_sub(t22, in0);
    let t25 = circuit_inverse(t24);
    let t26 = circuit_mul(t23, t25);
    let t27 = circuit_add(t21, t26);
    let t28 = circuit_mul(t22, in1);
    let t29 = circuit_mul(t23, in4);
    let t30 = circuit_sub(t28, in0);
    let t31 = circuit_inverse(t30);
    let t32 = circuit_mul(t29, t31);
    let t33 = circuit_add(t27, t32);
    let t34 = circuit_mul(t28, in1);
    let t35 = circuit_mul(t29, in4);
    let t36 = circuit_sub(t34, in0);
    let t37 = circuit_inverse(t36);
    let t38 = circuit_mul(t35, t37);
    let t39 = circuit_add(t33, t38);
    let t40 = circuit_mul(t34, in1);
    let t41 = circuit_mul(t35, in4);
    let t42 = circuit_sub(t40, in0);
    let t43 = circuit_inverse(t42);
    let t44 = circuit_mul(t41, t43);
    let t45 = circuit_add(t39, t44);
    let t46 = circuit_mul(t40, in1);
    let t47 = circuit_mul(t41, in4);
    let t48 = circuit_sub(t46, in0);
    let t49 = circuit_inverse(t48);
    let t50 = circuit_mul(t47, t49);
    let t51 = circuit_add(t45, t50);
    let t52 = circuit_mul(t46, in1);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t51, t52).new_inputs();
    // Prefill constants:
    circuit_inputs = circuit_inputs.next_2([0x1, 0x0, 0x0, 0x0]); // in0
    circuit_inputs = circuit_inputs
        .next_2(
            [0x8712848a692c553d0329f5d6, 0x64751ad938e2b5e6a54cf8c6, 0x204bd3277422fad3, 0x0],
        ); // in1
    // Fill inputs:
    circuit_inputs = circuit_inputs.next_2(challenge_poly_eval); // in2
    circuit_inputs = circuit_inputs.next_2(root_power_times_tp_gemini_r); // in3
    circuit_inputs = circuit_inputs.next_2(tp_sumcheck_u_challenge); // in4

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let challenge_poly_eval: u384 = outputs.get_output(t51);
    let root_power_times_tp_gemini_r: u384 = outputs.get_output(t52);
    return (challenge_poly_eval, root_power_times_tp_gemini_r);
}
#[inline(always)]
pub fn run_GRUMPKIN_ZK_HONK_EVALS_CONS_DONE_SIZE_5_circuit(
    p_libra_evaluation: u384,
    p_libra_poly_evals: Span<u256>,
    tp_gemini_r: u384,
    challenge_poly_eval: u384,
    root_power_times_tp_gemini_r: u384,
) -> (u384, u384) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x204bd3277422fad364751ad938e2b5e6a54cf8c68712848a692c553d0329f5d6
    let in1 = CE::<CI<1>> {}; // 0x1
    let in2 = CE::<CI<2>> {}; // 0x100

    // INPUT stack
    let (in3, in4, in5) = (CE::<CI<3>> {}, CE::<CI<4>> {}, CE::<CI<5>> {});
    let (in6, in7, in8) = (CE::<CI<6>> {}, CE::<CI<7>> {}, CE::<CI<8>> {});
    let (in9, in10) = (CE::<CI<9>> {}, CE::<CI<10>> {});
    let t0 = circuit_mul(in10, in0);
    let t1 = circuit_mul(t0, in0);
    let t2 = circuit_sub(in8, in1);
    let t3 = circuit_inverse(t2);
    let t4 = circuit_sub(t1, in1);
    let t5 = circuit_inverse(t4);
    let t6 = circuit_mul(in8, in8);
    let t7 = circuit_mul(t6, t6);
    let t8 = circuit_mul(t7, t7);
    let t9 = circuit_mul(t8, t8);
    let t10 = circuit_mul(t9, t9);
    let t11 = circuit_mul(t10, t10);
    let t12 = circuit_mul(t11, t11);
    let t13 = circuit_mul(t12, t12);
    let t14 = circuit_sub(t13, in1);
    let t15 = circuit_inverse(in2);
    let t16 = circuit_mul(t14, t15);
    let t17 = circuit_mul(in9, t16);
    let t18 = circuit_mul(t3, t16);
    let t19 = circuit_mul(t5, t16);
    let t20 = circuit_mul(t18, in6);
    let t21 = circuit_sub(in8, in0);
    let t22 = circuit_sub(in5, in6);
    let t23 = circuit_mul(in4, t17);
    let t24 = circuit_sub(t22, t23);
    let t25 = circuit_mul(t21, t24);
    let t26 = circuit_add(t20, t25);
    let t27 = circuit_sub(in6, in3);
    let t28 = circuit_mul(t19, t27);
    let t29 = circuit_add(t26, t28);
    let t30 = circuit_mul(t14, in7);
    let t31 = circuit_sub(t29, t30);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t14, t31).new_inputs();
    // Prefill constants:
    circuit_inputs = circuit_inputs
        .next_2(
            [0x8712848a692c553d0329f5d6, 0x64751ad938e2b5e6a54cf8c6, 0x204bd3277422fad3, 0x0],
        ); // in0
    circuit_inputs = circuit_inputs.next_2([0x1, 0x0, 0x0, 0x0]); // in1
    circuit_inputs = circuit_inputs.next_2([0x100, 0x0, 0x0, 0x0]); // in2
    // Fill inputs:
    circuit_inputs = circuit_inputs.next_2(p_libra_evaluation); // in3

    let mut p_libra_poly_evals = p_libra_poly_evals;
    while let Option::Some(val) = p_libra_poly_evals.pop_front() {
        circuit_inputs = circuit_inputs.next_u256(*val);
    }; // in4 - in7

    circuit_inputs = circuit_inputs.next_2(tp_gemini_r); // in8
    circuit_inputs = circuit_inputs.next_2(challenge_poly_eval); // in9
    circuit_inputs = circuit_inputs.next_2(root_power_times_tp_gemini_r); // in10

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let vanishing_check: u384 = outputs.get_output(t14);
    let diff_check: u384 = outputs.get_output(t31);
    return (vanishing_check, diff_check);
}
#[inline(always)]
pub fn run_BN254_EVAL_FN_CHALLENGE_DUPL_46P_RLC_circuit(
    A0: G1Point, A2: G1Point, coeff0: u384, coeff2: u384, SumDlogDivBatched: FunctionFelt,
) -> (u384,) {
    // INPUT stack
    let (in0, in1, in2) = (CE::<CI<0>> {}, CE::<CI<1>> {}, CE::<CI<2>> {});
    let (in3, in4, in5) = (CE::<CI<3>> {}, CE::<CI<4>> {}, CE::<CI<5>> {});
    let (in6, in7, in8) = (CE::<CI<6>> {}, CE::<CI<7>> {}, CE::<CI<8>> {});
    let (in9, in10, in11) = (CE::<CI<9>> {}, CE::<CI<10>> {}, CE::<CI<11>> {});
    let (in12, in13, in14) = (CE::<CI<12>> {}, CE::<CI<13>> {}, CE::<CI<14>> {});
    let (in15, in16, in17) = (CE::<CI<15>> {}, CE::<CI<16>> {}, CE::<CI<17>> {});
    let (in18, in19, in20) = (CE::<CI<18>> {}, CE::<CI<19>> {}, CE::<CI<20>> {});
    let (in21, in22, in23) = (CE::<CI<21>> {}, CE::<CI<22>> {}, CE::<CI<23>> {});
    let (in24, in25, in26) = (CE::<CI<24>> {}, CE::<CI<25>> {}, CE::<CI<26>> {});
    let (in27, in28, in29) = (CE::<CI<27>> {}, CE::<CI<28>> {}, CE::<CI<29>> {});
    let (in30, in31, in32) = (CE::<CI<30>> {}, CE::<CI<31>> {}, CE::<CI<32>> {});
    let (in33, in34, in35) = (CE::<CI<33>> {}, CE::<CI<34>> {}, CE::<CI<35>> {});
    let (in36, in37, in38) = (CE::<CI<36>> {}, CE::<CI<37>> {}, CE::<CI<38>> {});
    let (in39, in40, in41) = (CE::<CI<39>> {}, CE::<CI<40>> {}, CE::<CI<41>> {});
    let (in42, in43, in44) = (CE::<CI<42>> {}, CE::<CI<43>> {}, CE::<CI<44>> {});
    let (in45, in46, in47) = (CE::<CI<45>> {}, CE::<CI<46>> {}, CE::<CI<47>> {});
    let (in48, in49, in50) = (CE::<CI<48>> {}, CE::<CI<49>> {}, CE::<CI<50>> {});
    let (in51, in52, in53) = (CE::<CI<51>> {}, CE::<CI<52>> {}, CE::<CI<53>> {});
    let (in54, in55, in56) = (CE::<CI<54>> {}, CE::<CI<55>> {}, CE::<CI<56>> {});
    let (in57, in58, in59) = (CE::<CI<57>> {}, CE::<CI<58>> {}, CE::<CI<59>> {});
    let (in60, in61, in62) = (CE::<CI<60>> {}, CE::<CI<61>> {}, CE::<CI<62>> {});
    let (in63, in64, in65) = (CE::<CI<63>> {}, CE::<CI<64>> {}, CE::<CI<65>> {});
    let (in66, in67, in68) = (CE::<CI<66>> {}, CE::<CI<67>> {}, CE::<CI<68>> {});
    let (in69, in70, in71) = (CE::<CI<69>> {}, CE::<CI<70>> {}, CE::<CI<71>> {});
    let (in72, in73, in74) = (CE::<CI<72>> {}, CE::<CI<73>> {}, CE::<CI<74>> {});
    let (in75, in76, in77) = (CE::<CI<75>> {}, CE::<CI<76>> {}, CE::<CI<77>> {});
    let (in78, in79, in80) = (CE::<CI<78>> {}, CE::<CI<79>> {}, CE::<CI<80>> {});
    let (in81, in82, in83) = (CE::<CI<81>> {}, CE::<CI<82>> {}, CE::<CI<83>> {});
    let (in84, in85, in86) = (CE::<CI<84>> {}, CE::<CI<85>> {}, CE::<CI<86>> {});
    let (in87, in88, in89) = (CE::<CI<87>> {}, CE::<CI<88>> {}, CE::<CI<89>> {});
    let (in90, in91, in92) = (CE::<CI<90>> {}, CE::<CI<91>> {}, CE::<CI<92>> {});
    let (in93, in94, in95) = (CE::<CI<93>> {}, CE::<CI<94>> {}, CE::<CI<95>> {});
    let (in96, in97, in98) = (CE::<CI<96>> {}, CE::<CI<97>> {}, CE::<CI<98>> {});
    let (in99, in100, in101) = (CE::<CI<99>> {}, CE::<CI<100>> {}, CE::<CI<101>> {});
    let (in102, in103, in104) = (CE::<CI<102>> {}, CE::<CI<103>> {}, CE::<CI<104>> {});
    let (in105, in106, in107) = (CE::<CI<105>> {}, CE::<CI<106>> {}, CE::<CI<107>> {});
    let (in108, in109, in110) = (CE::<CI<108>> {}, CE::<CI<109>> {}, CE::<CI<110>> {});
    let (in111, in112, in113) = (CE::<CI<111>> {}, CE::<CI<112>> {}, CE::<CI<113>> {});
    let (in114, in115, in116) = (CE::<CI<114>> {}, CE::<CI<115>> {}, CE::<CI<116>> {});
    let (in117, in118, in119) = (CE::<CI<117>> {}, CE::<CI<118>> {}, CE::<CI<119>> {});
    let (in120, in121, in122) = (CE::<CI<120>> {}, CE::<CI<121>> {}, CE::<CI<122>> {});
    let (in123, in124, in125) = (CE::<CI<123>> {}, CE::<CI<124>> {}, CE::<CI<125>> {});
    let (in126, in127, in128) = (CE::<CI<126>> {}, CE::<CI<127>> {}, CE::<CI<128>> {});
    let (in129, in130, in131) = (CE::<CI<129>> {}, CE::<CI<130>> {}, CE::<CI<131>> {});
    let (in132, in133, in134) = (CE::<CI<132>> {}, CE::<CI<133>> {}, CE::<CI<134>> {});
    let (in135, in136, in137) = (CE::<CI<135>> {}, CE::<CI<136>> {}, CE::<CI<137>> {});
    let (in138, in139, in140) = (CE::<CI<138>> {}, CE::<CI<139>> {}, CE::<CI<140>> {});
    let (in141, in142, in143) = (CE::<CI<141>> {}, CE::<CI<142>> {}, CE::<CI<143>> {});
    let (in144, in145, in146) = (CE::<CI<144>> {}, CE::<CI<145>> {}, CE::<CI<146>> {});
    let (in147, in148, in149) = (CE::<CI<147>> {}, CE::<CI<148>> {}, CE::<CI<149>> {});
    let (in150, in151, in152) = (CE::<CI<150>> {}, CE::<CI<151>> {}, CE::<CI<152>> {});
    let (in153, in154, in155) = (CE::<CI<153>> {}, CE::<CI<154>> {}, CE::<CI<155>> {});
    let (in156, in157, in158) = (CE::<CI<156>> {}, CE::<CI<157>> {}, CE::<CI<158>> {});
    let (in159, in160, in161) = (CE::<CI<159>> {}, CE::<CI<160>> {}, CE::<CI<161>> {});
    let (in162, in163, in164) = (CE::<CI<162>> {}, CE::<CI<163>> {}, CE::<CI<164>> {});
    let (in165, in166, in167) = (CE::<CI<165>> {}, CE::<CI<166>> {}, CE::<CI<167>> {});
    let (in168, in169, in170) = (CE::<CI<168>> {}, CE::<CI<169>> {}, CE::<CI<170>> {});
    let (in171, in172, in173) = (CE::<CI<171>> {}, CE::<CI<172>> {}, CE::<CI<173>> {});
    let (in174, in175, in176) = (CE::<CI<174>> {}, CE::<CI<175>> {}, CE::<CI<176>> {});
    let (in177, in178, in179) = (CE::<CI<177>> {}, CE::<CI<178>> {}, CE::<CI<179>> {});
    let (in180, in181, in182) = (CE::<CI<180>> {}, CE::<CI<181>> {}, CE::<CI<182>> {});
    let (in183, in184, in185) = (CE::<CI<183>> {}, CE::<CI<184>> {}, CE::<CI<185>> {});
    let (in186, in187, in188) = (CE::<CI<186>> {}, CE::<CI<187>> {}, CE::<CI<188>> {});
    let (in189, in190, in191) = (CE::<CI<189>> {}, CE::<CI<190>> {}, CE::<CI<191>> {});
    let (in192, in193, in194) = (CE::<CI<192>> {}, CE::<CI<193>> {}, CE::<CI<194>> {});
    let (in195, in196, in197) = (CE::<CI<195>> {}, CE::<CI<196>> {}, CE::<CI<197>> {});
    let (in198, in199, in200) = (CE::<CI<198>> {}, CE::<CI<199>> {}, CE::<CI<200>> {});
    let (in201, in202, in203) = (CE::<CI<201>> {}, CE::<CI<202>> {}, CE::<CI<203>> {});
    let (in204, in205, in206) = (CE::<CI<204>> {}, CE::<CI<205>> {}, CE::<CI<206>> {});
    let in207 = CE::<CI<207>> {};
    let t0 = circuit_mul(in54, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t1 = circuit_add(in53, t0); // Eval sumdlogdiv_a_num Horner step: add coefficient_47
    let t2 = circuit_mul(t1, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t3 = circuit_add(in52, t2); // Eval sumdlogdiv_a_num Horner step: add coefficient_46
    let t4 = circuit_mul(t3, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t5 = circuit_add(in51, t4); // Eval sumdlogdiv_a_num Horner step: add coefficient_45
    let t6 = circuit_mul(t5, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t7 = circuit_add(in50, t6); // Eval sumdlogdiv_a_num Horner step: add coefficient_44
    let t8 = circuit_mul(t7, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t9 = circuit_add(in49, t8); // Eval sumdlogdiv_a_num Horner step: add coefficient_43
    let t10 = circuit_mul(t9, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t11 = circuit_add(in48, t10); // Eval sumdlogdiv_a_num Horner step: add coefficient_42
    let t12 = circuit_mul(t11, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t13 = circuit_add(in47, t12); // Eval sumdlogdiv_a_num Horner step: add coefficient_41
    let t14 = circuit_mul(t13, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t15 = circuit_add(in46, t14); // Eval sumdlogdiv_a_num Horner step: add coefficient_40
    let t16 = circuit_mul(t15, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t17 = circuit_add(in45, t16); // Eval sumdlogdiv_a_num Horner step: add coefficient_39
    let t18 = circuit_mul(t17, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t19 = circuit_add(in44, t18); // Eval sumdlogdiv_a_num Horner step: add coefficient_38
    let t20 = circuit_mul(t19, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t21 = circuit_add(in43, t20); // Eval sumdlogdiv_a_num Horner step: add coefficient_37
    let t22 = circuit_mul(t21, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t23 = circuit_add(in42, t22); // Eval sumdlogdiv_a_num Horner step: add coefficient_36
    let t24 = circuit_mul(t23, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t25 = circuit_add(in41, t24); // Eval sumdlogdiv_a_num Horner step: add coefficient_35
    let t26 = circuit_mul(t25, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t27 = circuit_add(in40, t26); // Eval sumdlogdiv_a_num Horner step: add coefficient_34
    let t28 = circuit_mul(t27, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t29 = circuit_add(in39, t28); // Eval sumdlogdiv_a_num Horner step: add coefficient_33
    let t30 = circuit_mul(t29, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t31 = circuit_add(in38, t30); // Eval sumdlogdiv_a_num Horner step: add coefficient_32
    let t32 = circuit_mul(t31, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t33 = circuit_add(in37, t32); // Eval sumdlogdiv_a_num Horner step: add coefficient_31
    let t34 = circuit_mul(t33, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t35 = circuit_add(in36, t34); // Eval sumdlogdiv_a_num Horner step: add coefficient_30
    let t36 = circuit_mul(t35, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t37 = circuit_add(in35, t36); // Eval sumdlogdiv_a_num Horner step: add coefficient_29
    let t38 = circuit_mul(t37, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t39 = circuit_add(in34, t38); // Eval sumdlogdiv_a_num Horner step: add coefficient_28
    let t40 = circuit_mul(t39, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t41 = circuit_add(in33, t40); // Eval sumdlogdiv_a_num Horner step: add coefficient_27
    let t42 = circuit_mul(t41, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t43 = circuit_add(in32, t42); // Eval sumdlogdiv_a_num Horner step: add coefficient_26
    let t44 = circuit_mul(t43, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t45 = circuit_add(in31, t44); // Eval sumdlogdiv_a_num Horner step: add coefficient_25
    let t46 = circuit_mul(t45, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t47 = circuit_add(in30, t46); // Eval sumdlogdiv_a_num Horner step: add coefficient_24
    let t48 = circuit_mul(t47, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t49 = circuit_add(in29, t48); // Eval sumdlogdiv_a_num Horner step: add coefficient_23
    let t50 = circuit_mul(t49, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t51 = circuit_add(in28, t50); // Eval sumdlogdiv_a_num Horner step: add coefficient_22
    let t52 = circuit_mul(t51, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t53 = circuit_add(in27, t52); // Eval sumdlogdiv_a_num Horner step: add coefficient_21
    let t54 = circuit_mul(t53, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t55 = circuit_add(in26, t54); // Eval sumdlogdiv_a_num Horner step: add coefficient_20
    let t56 = circuit_mul(t55, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t57 = circuit_add(in25, t56); // Eval sumdlogdiv_a_num Horner step: add coefficient_19
    let t58 = circuit_mul(t57, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t59 = circuit_add(in24, t58); // Eval sumdlogdiv_a_num Horner step: add coefficient_18
    let t60 = circuit_mul(t59, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t61 = circuit_add(in23, t60); // Eval sumdlogdiv_a_num Horner step: add coefficient_17
    let t62 = circuit_mul(t61, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t63 = circuit_add(in22, t62); // Eval sumdlogdiv_a_num Horner step: add coefficient_16
    let t64 = circuit_mul(t63, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t65 = circuit_add(in21, t64); // Eval sumdlogdiv_a_num Horner step: add coefficient_15
    let t66 = circuit_mul(t65, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t67 = circuit_add(in20, t66); // Eval sumdlogdiv_a_num Horner step: add coefficient_14
    let t68 = circuit_mul(t67, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t69 = circuit_add(in19, t68); // Eval sumdlogdiv_a_num Horner step: add coefficient_13
    let t70 = circuit_mul(t69, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t71 = circuit_add(in18, t70); // Eval sumdlogdiv_a_num Horner step: add coefficient_12
    let t72 = circuit_mul(t71, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t73 = circuit_add(in17, t72); // Eval sumdlogdiv_a_num Horner step: add coefficient_11
    let t74 = circuit_mul(t73, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t75 = circuit_add(in16, t74); // Eval sumdlogdiv_a_num Horner step: add coefficient_10
    let t76 = circuit_mul(t75, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t77 = circuit_add(in15, t76); // Eval sumdlogdiv_a_num Horner step: add coefficient_9
    let t78 = circuit_mul(t77, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t79 = circuit_add(in14, t78); // Eval sumdlogdiv_a_num Horner step: add coefficient_8
    let t80 = circuit_mul(t79, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t81 = circuit_add(in13, t80); // Eval sumdlogdiv_a_num Horner step: add coefficient_7
    let t82 = circuit_mul(t81, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t83 = circuit_add(in12, t82); // Eval sumdlogdiv_a_num Horner step: add coefficient_6
    let t84 = circuit_mul(t83, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t85 = circuit_add(in11, t84); // Eval sumdlogdiv_a_num Horner step: add coefficient_5
    let t86 = circuit_mul(t85, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t87 = circuit_add(in10, t86); // Eval sumdlogdiv_a_num Horner step: add coefficient_4
    let t88 = circuit_mul(t87, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t89 = circuit_add(in9, t88); // Eval sumdlogdiv_a_num Horner step: add coefficient_3
    let t90 = circuit_mul(t89, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t91 = circuit_add(in8, t90); // Eval sumdlogdiv_a_num Horner step: add coefficient_2
    let t92 = circuit_mul(t91, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t93 = circuit_add(in7, t92); // Eval sumdlogdiv_a_num Horner step: add coefficient_1
    let t94 = circuit_mul(t93, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA0
    let t95 = circuit_add(in6, t94); // Eval sumdlogdiv_a_num Horner step: add coefficient_0
    let t96 = circuit_mul(in104, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t97 = circuit_add(in103, t96); // Eval sumdlogdiv_a_den Horner step: add coefficient_48
    let t98 = circuit_mul(t97, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t99 = circuit_add(in102, t98); // Eval sumdlogdiv_a_den Horner step: add coefficient_47
    let t100 = circuit_mul(t99, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t101 = circuit_add(in101, t100); // Eval sumdlogdiv_a_den Horner step: add coefficient_46
    let t102 = circuit_mul(t101, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t103 = circuit_add(in100, t102); // Eval sumdlogdiv_a_den Horner step: add coefficient_45
    let t104 = circuit_mul(t103, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t105 = circuit_add(in99, t104); // Eval sumdlogdiv_a_den Horner step: add coefficient_44
    let t106 = circuit_mul(t105, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t107 = circuit_add(in98, t106); // Eval sumdlogdiv_a_den Horner step: add coefficient_43
    let t108 = circuit_mul(t107, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t109 = circuit_add(in97, t108); // Eval sumdlogdiv_a_den Horner step: add coefficient_42
    let t110 = circuit_mul(t109, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t111 = circuit_add(in96, t110); // Eval sumdlogdiv_a_den Horner step: add coefficient_41
    let t112 = circuit_mul(t111, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t113 = circuit_add(in95, t112); // Eval sumdlogdiv_a_den Horner step: add coefficient_40
    let t114 = circuit_mul(t113, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t115 = circuit_add(in94, t114); // Eval sumdlogdiv_a_den Horner step: add coefficient_39
    let t116 = circuit_mul(t115, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t117 = circuit_add(in93, t116); // Eval sumdlogdiv_a_den Horner step: add coefficient_38
    let t118 = circuit_mul(t117, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t119 = circuit_add(in92, t118); // Eval sumdlogdiv_a_den Horner step: add coefficient_37
    let t120 = circuit_mul(t119, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t121 = circuit_add(in91, t120); // Eval sumdlogdiv_a_den Horner step: add coefficient_36
    let t122 = circuit_mul(t121, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t123 = circuit_add(in90, t122); // Eval sumdlogdiv_a_den Horner step: add coefficient_35
    let t124 = circuit_mul(t123, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t125 = circuit_add(in89, t124); // Eval sumdlogdiv_a_den Horner step: add coefficient_34
    let t126 = circuit_mul(t125, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t127 = circuit_add(in88, t126); // Eval sumdlogdiv_a_den Horner step: add coefficient_33
    let t128 = circuit_mul(t127, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t129 = circuit_add(in87, t128); // Eval sumdlogdiv_a_den Horner step: add coefficient_32
    let t130 = circuit_mul(t129, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t131 = circuit_add(in86, t130); // Eval sumdlogdiv_a_den Horner step: add coefficient_31
    let t132 = circuit_mul(t131, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t133 = circuit_add(in85, t132); // Eval sumdlogdiv_a_den Horner step: add coefficient_30
    let t134 = circuit_mul(t133, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t135 = circuit_add(in84, t134); // Eval sumdlogdiv_a_den Horner step: add coefficient_29
    let t136 = circuit_mul(t135, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t137 = circuit_add(in83, t136); // Eval sumdlogdiv_a_den Horner step: add coefficient_28
    let t138 = circuit_mul(t137, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t139 = circuit_add(in82, t138); // Eval sumdlogdiv_a_den Horner step: add coefficient_27
    let t140 = circuit_mul(t139, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t141 = circuit_add(in81, t140); // Eval sumdlogdiv_a_den Horner step: add coefficient_26
    let t142 = circuit_mul(t141, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t143 = circuit_add(in80, t142); // Eval sumdlogdiv_a_den Horner step: add coefficient_25
    let t144 = circuit_mul(t143, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t145 = circuit_add(in79, t144); // Eval sumdlogdiv_a_den Horner step: add coefficient_24
    let t146 = circuit_mul(t145, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t147 = circuit_add(in78, t146); // Eval sumdlogdiv_a_den Horner step: add coefficient_23
    let t148 = circuit_mul(t147, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t149 = circuit_add(in77, t148); // Eval sumdlogdiv_a_den Horner step: add coefficient_22
    let t150 = circuit_mul(t149, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t151 = circuit_add(in76, t150); // Eval sumdlogdiv_a_den Horner step: add coefficient_21
    let t152 = circuit_mul(t151, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t153 = circuit_add(in75, t152); // Eval sumdlogdiv_a_den Horner step: add coefficient_20
    let t154 = circuit_mul(t153, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t155 = circuit_add(in74, t154); // Eval sumdlogdiv_a_den Horner step: add coefficient_19
    let t156 = circuit_mul(t155, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t157 = circuit_add(in73, t156); // Eval sumdlogdiv_a_den Horner step: add coefficient_18
    let t158 = circuit_mul(t157, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t159 = circuit_add(in72, t158); // Eval sumdlogdiv_a_den Horner step: add coefficient_17
    let t160 = circuit_mul(t159, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t161 = circuit_add(in71, t160); // Eval sumdlogdiv_a_den Horner step: add coefficient_16
    let t162 = circuit_mul(t161, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t163 = circuit_add(in70, t162); // Eval sumdlogdiv_a_den Horner step: add coefficient_15
    let t164 = circuit_mul(t163, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t165 = circuit_add(in69, t164); // Eval sumdlogdiv_a_den Horner step: add coefficient_14
    let t166 = circuit_mul(t165, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t167 = circuit_add(in68, t166); // Eval sumdlogdiv_a_den Horner step: add coefficient_13
    let t168 = circuit_mul(t167, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t169 = circuit_add(in67, t168); // Eval sumdlogdiv_a_den Horner step: add coefficient_12
    let t170 = circuit_mul(t169, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t171 = circuit_add(in66, t170); // Eval sumdlogdiv_a_den Horner step: add coefficient_11
    let t172 = circuit_mul(t171, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t173 = circuit_add(in65, t172); // Eval sumdlogdiv_a_den Horner step: add coefficient_10
    let t174 = circuit_mul(t173, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t175 = circuit_add(in64, t174); // Eval sumdlogdiv_a_den Horner step: add coefficient_9
    let t176 = circuit_mul(t175, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t177 = circuit_add(in63, t176); // Eval sumdlogdiv_a_den Horner step: add coefficient_8
    let t178 = circuit_mul(t177, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t179 = circuit_add(in62, t178); // Eval sumdlogdiv_a_den Horner step: add coefficient_7
    let t180 = circuit_mul(t179, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t181 = circuit_add(in61, t180); // Eval sumdlogdiv_a_den Horner step: add coefficient_6
    let t182 = circuit_mul(t181, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t183 = circuit_add(in60, t182); // Eval sumdlogdiv_a_den Horner step: add coefficient_5
    let t184 = circuit_mul(t183, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t185 = circuit_add(in59, t184); // Eval sumdlogdiv_a_den Horner step: add coefficient_4
    let t186 = circuit_mul(t185, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t187 = circuit_add(in58, t186); // Eval sumdlogdiv_a_den Horner step: add coefficient_3
    let t188 = circuit_mul(t187, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t189 = circuit_add(in57, t188); // Eval sumdlogdiv_a_den Horner step: add coefficient_2
    let t190 = circuit_mul(t189, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t191 = circuit_add(in56, t190); // Eval sumdlogdiv_a_den Horner step: add coefficient_1
    let t192 = circuit_mul(t191, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA0
    let t193 = circuit_add(in55, t192); // Eval sumdlogdiv_a_den Horner step: add coefficient_0
    let t194 = circuit_inverse(t193);
    let t195 = circuit_mul(t95, t194);
    let t196 = circuit_mul(in154, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t197 = circuit_add(in153, t196); // Eval sumdlogdiv_b_num Horner step: add coefficient_48
    let t198 = circuit_mul(t197, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t199 = circuit_add(in152, t198); // Eval sumdlogdiv_b_num Horner step: add coefficient_47
    let t200 = circuit_mul(t199, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t201 = circuit_add(in151, t200); // Eval sumdlogdiv_b_num Horner step: add coefficient_46
    let t202 = circuit_mul(t201, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t203 = circuit_add(in150, t202); // Eval sumdlogdiv_b_num Horner step: add coefficient_45
    let t204 = circuit_mul(t203, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t205 = circuit_add(in149, t204); // Eval sumdlogdiv_b_num Horner step: add coefficient_44
    let t206 = circuit_mul(t205, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t207 = circuit_add(in148, t206); // Eval sumdlogdiv_b_num Horner step: add coefficient_43
    let t208 = circuit_mul(t207, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t209 = circuit_add(in147, t208); // Eval sumdlogdiv_b_num Horner step: add coefficient_42
    let t210 = circuit_mul(t209, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t211 = circuit_add(in146, t210); // Eval sumdlogdiv_b_num Horner step: add coefficient_41
    let t212 = circuit_mul(t211, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t213 = circuit_add(in145, t212); // Eval sumdlogdiv_b_num Horner step: add coefficient_40
    let t214 = circuit_mul(t213, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t215 = circuit_add(in144, t214); // Eval sumdlogdiv_b_num Horner step: add coefficient_39
    let t216 = circuit_mul(t215, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t217 = circuit_add(in143, t216); // Eval sumdlogdiv_b_num Horner step: add coefficient_38
    let t218 = circuit_mul(t217, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t219 = circuit_add(in142, t218); // Eval sumdlogdiv_b_num Horner step: add coefficient_37
    let t220 = circuit_mul(t219, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t221 = circuit_add(in141, t220); // Eval sumdlogdiv_b_num Horner step: add coefficient_36
    let t222 = circuit_mul(t221, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t223 = circuit_add(in140, t222); // Eval sumdlogdiv_b_num Horner step: add coefficient_35
    let t224 = circuit_mul(t223, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t225 = circuit_add(in139, t224); // Eval sumdlogdiv_b_num Horner step: add coefficient_34
    let t226 = circuit_mul(t225, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t227 = circuit_add(in138, t226); // Eval sumdlogdiv_b_num Horner step: add coefficient_33
    let t228 = circuit_mul(t227, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t229 = circuit_add(in137, t228); // Eval sumdlogdiv_b_num Horner step: add coefficient_32
    let t230 = circuit_mul(t229, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t231 = circuit_add(in136, t230); // Eval sumdlogdiv_b_num Horner step: add coefficient_31
    let t232 = circuit_mul(t231, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t233 = circuit_add(in135, t232); // Eval sumdlogdiv_b_num Horner step: add coefficient_30
    let t234 = circuit_mul(t233, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t235 = circuit_add(in134, t234); // Eval sumdlogdiv_b_num Horner step: add coefficient_29
    let t236 = circuit_mul(t235, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t237 = circuit_add(in133, t236); // Eval sumdlogdiv_b_num Horner step: add coefficient_28
    let t238 = circuit_mul(t237, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t239 = circuit_add(in132, t238); // Eval sumdlogdiv_b_num Horner step: add coefficient_27
    let t240 = circuit_mul(t239, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t241 = circuit_add(in131, t240); // Eval sumdlogdiv_b_num Horner step: add coefficient_26
    let t242 = circuit_mul(t241, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t243 = circuit_add(in130, t242); // Eval sumdlogdiv_b_num Horner step: add coefficient_25
    let t244 = circuit_mul(t243, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t245 = circuit_add(in129, t244); // Eval sumdlogdiv_b_num Horner step: add coefficient_24
    let t246 = circuit_mul(t245, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t247 = circuit_add(in128, t246); // Eval sumdlogdiv_b_num Horner step: add coefficient_23
    let t248 = circuit_mul(t247, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t249 = circuit_add(in127, t248); // Eval sumdlogdiv_b_num Horner step: add coefficient_22
    let t250 = circuit_mul(t249, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t251 = circuit_add(in126, t250); // Eval sumdlogdiv_b_num Horner step: add coefficient_21
    let t252 = circuit_mul(t251, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t253 = circuit_add(in125, t252); // Eval sumdlogdiv_b_num Horner step: add coefficient_20
    let t254 = circuit_mul(t253, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t255 = circuit_add(in124, t254); // Eval sumdlogdiv_b_num Horner step: add coefficient_19
    let t256 = circuit_mul(t255, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t257 = circuit_add(in123, t256); // Eval sumdlogdiv_b_num Horner step: add coefficient_18
    let t258 = circuit_mul(t257, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t259 = circuit_add(in122, t258); // Eval sumdlogdiv_b_num Horner step: add coefficient_17
    let t260 = circuit_mul(t259, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t261 = circuit_add(in121, t260); // Eval sumdlogdiv_b_num Horner step: add coefficient_16
    let t262 = circuit_mul(t261, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t263 = circuit_add(in120, t262); // Eval sumdlogdiv_b_num Horner step: add coefficient_15
    let t264 = circuit_mul(t263, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t265 = circuit_add(in119, t264); // Eval sumdlogdiv_b_num Horner step: add coefficient_14
    let t266 = circuit_mul(t265, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t267 = circuit_add(in118, t266); // Eval sumdlogdiv_b_num Horner step: add coefficient_13
    let t268 = circuit_mul(t267, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t269 = circuit_add(in117, t268); // Eval sumdlogdiv_b_num Horner step: add coefficient_12
    let t270 = circuit_mul(t269, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t271 = circuit_add(in116, t270); // Eval sumdlogdiv_b_num Horner step: add coefficient_11
    let t272 = circuit_mul(t271, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t273 = circuit_add(in115, t272); // Eval sumdlogdiv_b_num Horner step: add coefficient_10
    let t274 = circuit_mul(t273, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t275 = circuit_add(in114, t274); // Eval sumdlogdiv_b_num Horner step: add coefficient_9
    let t276 = circuit_mul(t275, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t277 = circuit_add(in113, t276); // Eval sumdlogdiv_b_num Horner step: add coefficient_8
    let t278 = circuit_mul(t277, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t279 = circuit_add(in112, t278); // Eval sumdlogdiv_b_num Horner step: add coefficient_7
    let t280 = circuit_mul(t279, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t281 = circuit_add(in111, t280); // Eval sumdlogdiv_b_num Horner step: add coefficient_6
    let t282 = circuit_mul(t281, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t283 = circuit_add(in110, t282); // Eval sumdlogdiv_b_num Horner step: add coefficient_5
    let t284 = circuit_mul(t283, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t285 = circuit_add(in109, t284); // Eval sumdlogdiv_b_num Horner step: add coefficient_4
    let t286 = circuit_mul(t285, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t287 = circuit_add(in108, t286); // Eval sumdlogdiv_b_num Horner step: add coefficient_3
    let t288 = circuit_mul(t287, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t289 = circuit_add(in107, t288); // Eval sumdlogdiv_b_num Horner step: add coefficient_2
    let t290 = circuit_mul(t289, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t291 = circuit_add(in106, t290); // Eval sumdlogdiv_b_num Horner step: add coefficient_1
    let t292 = circuit_mul(t291, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA0
    let t293 = circuit_add(in105, t292); // Eval sumdlogdiv_b_num Horner step: add coefficient_0
    let t294 = circuit_mul(in207, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t295 = circuit_add(in206, t294); // Eval sumdlogdiv_b_den Horner step: add coefficient_51
    let t296 = circuit_mul(t295, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t297 = circuit_add(in205, t296); // Eval sumdlogdiv_b_den Horner step: add coefficient_50
    let t298 = circuit_mul(t297, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t299 = circuit_add(in204, t298); // Eval sumdlogdiv_b_den Horner step: add coefficient_49
    let t300 = circuit_mul(t299, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t301 = circuit_add(in203, t300); // Eval sumdlogdiv_b_den Horner step: add coefficient_48
    let t302 = circuit_mul(t301, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t303 = circuit_add(in202, t302); // Eval sumdlogdiv_b_den Horner step: add coefficient_47
    let t304 = circuit_mul(t303, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t305 = circuit_add(in201, t304); // Eval sumdlogdiv_b_den Horner step: add coefficient_46
    let t306 = circuit_mul(t305, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t307 = circuit_add(in200, t306); // Eval sumdlogdiv_b_den Horner step: add coefficient_45
    let t308 = circuit_mul(t307, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t309 = circuit_add(in199, t308); // Eval sumdlogdiv_b_den Horner step: add coefficient_44
    let t310 = circuit_mul(t309, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t311 = circuit_add(in198, t310); // Eval sumdlogdiv_b_den Horner step: add coefficient_43
    let t312 = circuit_mul(t311, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t313 = circuit_add(in197, t312); // Eval sumdlogdiv_b_den Horner step: add coefficient_42
    let t314 = circuit_mul(t313, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t315 = circuit_add(in196, t314); // Eval sumdlogdiv_b_den Horner step: add coefficient_41
    let t316 = circuit_mul(t315, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t317 = circuit_add(in195, t316); // Eval sumdlogdiv_b_den Horner step: add coefficient_40
    let t318 = circuit_mul(t317, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t319 = circuit_add(in194, t318); // Eval sumdlogdiv_b_den Horner step: add coefficient_39
    let t320 = circuit_mul(t319, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t321 = circuit_add(in193, t320); // Eval sumdlogdiv_b_den Horner step: add coefficient_38
    let t322 = circuit_mul(t321, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t323 = circuit_add(in192, t322); // Eval sumdlogdiv_b_den Horner step: add coefficient_37
    let t324 = circuit_mul(t323, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t325 = circuit_add(in191, t324); // Eval sumdlogdiv_b_den Horner step: add coefficient_36
    let t326 = circuit_mul(t325, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t327 = circuit_add(in190, t326); // Eval sumdlogdiv_b_den Horner step: add coefficient_35
    let t328 = circuit_mul(t327, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t329 = circuit_add(in189, t328); // Eval sumdlogdiv_b_den Horner step: add coefficient_34
    let t330 = circuit_mul(t329, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t331 = circuit_add(in188, t330); // Eval sumdlogdiv_b_den Horner step: add coefficient_33
    let t332 = circuit_mul(t331, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t333 = circuit_add(in187, t332); // Eval sumdlogdiv_b_den Horner step: add coefficient_32
    let t334 = circuit_mul(t333, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t335 = circuit_add(in186, t334); // Eval sumdlogdiv_b_den Horner step: add coefficient_31
    let t336 = circuit_mul(t335, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t337 = circuit_add(in185, t336); // Eval sumdlogdiv_b_den Horner step: add coefficient_30
    let t338 = circuit_mul(t337, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t339 = circuit_add(in184, t338); // Eval sumdlogdiv_b_den Horner step: add coefficient_29
    let t340 = circuit_mul(t339, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t341 = circuit_add(in183, t340); // Eval sumdlogdiv_b_den Horner step: add coefficient_28
    let t342 = circuit_mul(t341, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t343 = circuit_add(in182, t342); // Eval sumdlogdiv_b_den Horner step: add coefficient_27
    let t344 = circuit_mul(t343, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t345 = circuit_add(in181, t344); // Eval sumdlogdiv_b_den Horner step: add coefficient_26
    let t346 = circuit_mul(t345, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t347 = circuit_add(in180, t346); // Eval sumdlogdiv_b_den Horner step: add coefficient_25
    let t348 = circuit_mul(t347, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t349 = circuit_add(in179, t348); // Eval sumdlogdiv_b_den Horner step: add coefficient_24
    let t350 = circuit_mul(t349, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t351 = circuit_add(in178, t350); // Eval sumdlogdiv_b_den Horner step: add coefficient_23
    let t352 = circuit_mul(t351, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t353 = circuit_add(in177, t352); // Eval sumdlogdiv_b_den Horner step: add coefficient_22
    let t354 = circuit_mul(t353, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t355 = circuit_add(in176, t354); // Eval sumdlogdiv_b_den Horner step: add coefficient_21
    let t356 = circuit_mul(t355, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t357 = circuit_add(in175, t356); // Eval sumdlogdiv_b_den Horner step: add coefficient_20
    let t358 = circuit_mul(t357, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t359 = circuit_add(in174, t358); // Eval sumdlogdiv_b_den Horner step: add coefficient_19
    let t360 = circuit_mul(t359, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t361 = circuit_add(in173, t360); // Eval sumdlogdiv_b_den Horner step: add coefficient_18
    let t362 = circuit_mul(t361, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t363 = circuit_add(in172, t362); // Eval sumdlogdiv_b_den Horner step: add coefficient_17
    let t364 = circuit_mul(t363, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t365 = circuit_add(in171, t364); // Eval sumdlogdiv_b_den Horner step: add coefficient_16
    let t366 = circuit_mul(t365, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t367 = circuit_add(in170, t366); // Eval sumdlogdiv_b_den Horner step: add coefficient_15
    let t368 = circuit_mul(t367, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t369 = circuit_add(in169, t368); // Eval sumdlogdiv_b_den Horner step: add coefficient_14
    let t370 = circuit_mul(t369, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t371 = circuit_add(in168, t370); // Eval sumdlogdiv_b_den Horner step: add coefficient_13
    let t372 = circuit_mul(t371, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t373 = circuit_add(in167, t372); // Eval sumdlogdiv_b_den Horner step: add coefficient_12
    let t374 = circuit_mul(t373, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t375 = circuit_add(in166, t374); // Eval sumdlogdiv_b_den Horner step: add coefficient_11
    let t376 = circuit_mul(t375, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t377 = circuit_add(in165, t376); // Eval sumdlogdiv_b_den Horner step: add coefficient_10
    let t378 = circuit_mul(t377, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t379 = circuit_add(in164, t378); // Eval sumdlogdiv_b_den Horner step: add coefficient_9
    let t380 = circuit_mul(t379, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t381 = circuit_add(in163, t380); // Eval sumdlogdiv_b_den Horner step: add coefficient_8
    let t382 = circuit_mul(t381, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t383 = circuit_add(in162, t382); // Eval sumdlogdiv_b_den Horner step: add coefficient_7
    let t384 = circuit_mul(t383, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t385 = circuit_add(in161, t384); // Eval sumdlogdiv_b_den Horner step: add coefficient_6
    let t386 = circuit_mul(t385, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t387 = circuit_add(in160, t386); // Eval sumdlogdiv_b_den Horner step: add coefficient_5
    let t388 = circuit_mul(t387, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t389 = circuit_add(in159, t388); // Eval sumdlogdiv_b_den Horner step: add coefficient_4
    let t390 = circuit_mul(t389, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t391 = circuit_add(in158, t390); // Eval sumdlogdiv_b_den Horner step: add coefficient_3
    let t392 = circuit_mul(t391, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t393 = circuit_add(in157, t392); // Eval sumdlogdiv_b_den Horner step: add coefficient_2
    let t394 = circuit_mul(t393, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t395 = circuit_add(in156, t394); // Eval sumdlogdiv_b_den Horner step: add coefficient_1
    let t396 = circuit_mul(t395, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA0
    let t397 = circuit_add(in155, t396); // Eval sumdlogdiv_b_den Horner step: add coefficient_0
    let t398 = circuit_inverse(t397);
    let t399 = circuit_mul(t293, t398);
    let t400 = circuit_mul(in1, t399);
    let t401 = circuit_add(t195, t400);
    let t402 = circuit_mul(in54, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t403 = circuit_add(in53, t402); // Eval sumdlogdiv_a_num Horner step: add coefficient_47
    let t404 = circuit_mul(t403, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t405 = circuit_add(in52, t404); // Eval sumdlogdiv_a_num Horner step: add coefficient_46
    let t406 = circuit_mul(t405, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t407 = circuit_add(in51, t406); // Eval sumdlogdiv_a_num Horner step: add coefficient_45
    let t408 = circuit_mul(t407, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t409 = circuit_add(in50, t408); // Eval sumdlogdiv_a_num Horner step: add coefficient_44
    let t410 = circuit_mul(t409, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t411 = circuit_add(in49, t410); // Eval sumdlogdiv_a_num Horner step: add coefficient_43
    let t412 = circuit_mul(t411, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t413 = circuit_add(in48, t412); // Eval sumdlogdiv_a_num Horner step: add coefficient_42
    let t414 = circuit_mul(t413, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t415 = circuit_add(in47, t414); // Eval sumdlogdiv_a_num Horner step: add coefficient_41
    let t416 = circuit_mul(t415, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t417 = circuit_add(in46, t416); // Eval sumdlogdiv_a_num Horner step: add coefficient_40
    let t418 = circuit_mul(t417, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t419 = circuit_add(in45, t418); // Eval sumdlogdiv_a_num Horner step: add coefficient_39
    let t420 = circuit_mul(t419, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t421 = circuit_add(in44, t420); // Eval sumdlogdiv_a_num Horner step: add coefficient_38
    let t422 = circuit_mul(t421, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t423 = circuit_add(in43, t422); // Eval sumdlogdiv_a_num Horner step: add coefficient_37
    let t424 = circuit_mul(t423, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t425 = circuit_add(in42, t424); // Eval sumdlogdiv_a_num Horner step: add coefficient_36
    let t426 = circuit_mul(t425, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t427 = circuit_add(in41, t426); // Eval sumdlogdiv_a_num Horner step: add coefficient_35
    let t428 = circuit_mul(t427, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t429 = circuit_add(in40, t428); // Eval sumdlogdiv_a_num Horner step: add coefficient_34
    let t430 = circuit_mul(t429, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t431 = circuit_add(in39, t430); // Eval sumdlogdiv_a_num Horner step: add coefficient_33
    let t432 = circuit_mul(t431, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t433 = circuit_add(in38, t432); // Eval sumdlogdiv_a_num Horner step: add coefficient_32
    let t434 = circuit_mul(t433, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t435 = circuit_add(in37, t434); // Eval sumdlogdiv_a_num Horner step: add coefficient_31
    let t436 = circuit_mul(t435, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t437 = circuit_add(in36, t436); // Eval sumdlogdiv_a_num Horner step: add coefficient_30
    let t438 = circuit_mul(t437, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t439 = circuit_add(in35, t438); // Eval sumdlogdiv_a_num Horner step: add coefficient_29
    let t440 = circuit_mul(t439, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t441 = circuit_add(in34, t440); // Eval sumdlogdiv_a_num Horner step: add coefficient_28
    let t442 = circuit_mul(t441, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t443 = circuit_add(in33, t442); // Eval sumdlogdiv_a_num Horner step: add coefficient_27
    let t444 = circuit_mul(t443, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t445 = circuit_add(in32, t444); // Eval sumdlogdiv_a_num Horner step: add coefficient_26
    let t446 = circuit_mul(t445, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t447 = circuit_add(in31, t446); // Eval sumdlogdiv_a_num Horner step: add coefficient_25
    let t448 = circuit_mul(t447, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t449 = circuit_add(in30, t448); // Eval sumdlogdiv_a_num Horner step: add coefficient_24
    let t450 = circuit_mul(t449, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t451 = circuit_add(in29, t450); // Eval sumdlogdiv_a_num Horner step: add coefficient_23
    let t452 = circuit_mul(t451, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t453 = circuit_add(in28, t452); // Eval sumdlogdiv_a_num Horner step: add coefficient_22
    let t454 = circuit_mul(t453, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t455 = circuit_add(in27, t454); // Eval sumdlogdiv_a_num Horner step: add coefficient_21
    let t456 = circuit_mul(t455, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t457 = circuit_add(in26, t456); // Eval sumdlogdiv_a_num Horner step: add coefficient_20
    let t458 = circuit_mul(t457, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t459 = circuit_add(in25, t458); // Eval sumdlogdiv_a_num Horner step: add coefficient_19
    let t460 = circuit_mul(t459, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t461 = circuit_add(in24, t460); // Eval sumdlogdiv_a_num Horner step: add coefficient_18
    let t462 = circuit_mul(t461, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t463 = circuit_add(in23, t462); // Eval sumdlogdiv_a_num Horner step: add coefficient_17
    let t464 = circuit_mul(t463, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t465 = circuit_add(in22, t464); // Eval sumdlogdiv_a_num Horner step: add coefficient_16
    let t466 = circuit_mul(t465, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t467 = circuit_add(in21, t466); // Eval sumdlogdiv_a_num Horner step: add coefficient_15
    let t468 = circuit_mul(t467, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t469 = circuit_add(in20, t468); // Eval sumdlogdiv_a_num Horner step: add coefficient_14
    let t470 = circuit_mul(t469, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t471 = circuit_add(in19, t470); // Eval sumdlogdiv_a_num Horner step: add coefficient_13
    let t472 = circuit_mul(t471, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t473 = circuit_add(in18, t472); // Eval sumdlogdiv_a_num Horner step: add coefficient_12
    let t474 = circuit_mul(t473, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t475 = circuit_add(in17, t474); // Eval sumdlogdiv_a_num Horner step: add coefficient_11
    let t476 = circuit_mul(t475, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t477 = circuit_add(in16, t476); // Eval sumdlogdiv_a_num Horner step: add coefficient_10
    let t478 = circuit_mul(t477, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t479 = circuit_add(in15, t478); // Eval sumdlogdiv_a_num Horner step: add coefficient_9
    let t480 = circuit_mul(t479, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t481 = circuit_add(in14, t480); // Eval sumdlogdiv_a_num Horner step: add coefficient_8
    let t482 = circuit_mul(t481, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t483 = circuit_add(in13, t482); // Eval sumdlogdiv_a_num Horner step: add coefficient_7
    let t484 = circuit_mul(t483, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t485 = circuit_add(in12, t484); // Eval sumdlogdiv_a_num Horner step: add coefficient_6
    let t486 = circuit_mul(t485, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t487 = circuit_add(in11, t486); // Eval sumdlogdiv_a_num Horner step: add coefficient_5
    let t488 = circuit_mul(t487, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t489 = circuit_add(in10, t488); // Eval sumdlogdiv_a_num Horner step: add coefficient_4
    let t490 = circuit_mul(t489, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t491 = circuit_add(in9, t490); // Eval sumdlogdiv_a_num Horner step: add coefficient_3
    let t492 = circuit_mul(t491, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t493 = circuit_add(in8, t492); // Eval sumdlogdiv_a_num Horner step: add coefficient_2
    let t494 = circuit_mul(t493, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t495 = circuit_add(in7, t494); // Eval sumdlogdiv_a_num Horner step: add coefficient_1
    let t496 = circuit_mul(t495, in2); // Eval sumdlogdiv_a_num Horner step: multiply by xA2
    let t497 = circuit_add(in6, t496); // Eval sumdlogdiv_a_num Horner step: add coefficient_0
    let t498 = circuit_mul(in104, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t499 = circuit_add(in103, t498); // Eval sumdlogdiv_a_den Horner step: add coefficient_48
    let t500 = circuit_mul(t499, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t501 = circuit_add(in102, t500); // Eval sumdlogdiv_a_den Horner step: add coefficient_47
    let t502 = circuit_mul(t501, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t503 = circuit_add(in101, t502); // Eval sumdlogdiv_a_den Horner step: add coefficient_46
    let t504 = circuit_mul(t503, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t505 = circuit_add(in100, t504); // Eval sumdlogdiv_a_den Horner step: add coefficient_45
    let t506 = circuit_mul(t505, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t507 = circuit_add(in99, t506); // Eval sumdlogdiv_a_den Horner step: add coefficient_44
    let t508 = circuit_mul(t507, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t509 = circuit_add(in98, t508); // Eval sumdlogdiv_a_den Horner step: add coefficient_43
    let t510 = circuit_mul(t509, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t511 = circuit_add(in97, t510); // Eval sumdlogdiv_a_den Horner step: add coefficient_42
    let t512 = circuit_mul(t511, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t513 = circuit_add(in96, t512); // Eval sumdlogdiv_a_den Horner step: add coefficient_41
    let t514 = circuit_mul(t513, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t515 = circuit_add(in95, t514); // Eval sumdlogdiv_a_den Horner step: add coefficient_40
    let t516 = circuit_mul(t515, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t517 = circuit_add(in94, t516); // Eval sumdlogdiv_a_den Horner step: add coefficient_39
    let t518 = circuit_mul(t517, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t519 = circuit_add(in93, t518); // Eval sumdlogdiv_a_den Horner step: add coefficient_38
    let t520 = circuit_mul(t519, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t521 = circuit_add(in92, t520); // Eval sumdlogdiv_a_den Horner step: add coefficient_37
    let t522 = circuit_mul(t521, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t523 = circuit_add(in91, t522); // Eval sumdlogdiv_a_den Horner step: add coefficient_36
    let t524 = circuit_mul(t523, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t525 = circuit_add(in90, t524); // Eval sumdlogdiv_a_den Horner step: add coefficient_35
    let t526 = circuit_mul(t525, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t527 = circuit_add(in89, t526); // Eval sumdlogdiv_a_den Horner step: add coefficient_34
    let t528 = circuit_mul(t527, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t529 = circuit_add(in88, t528); // Eval sumdlogdiv_a_den Horner step: add coefficient_33
    let t530 = circuit_mul(t529, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t531 = circuit_add(in87, t530); // Eval sumdlogdiv_a_den Horner step: add coefficient_32
    let t532 = circuit_mul(t531, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t533 = circuit_add(in86, t532); // Eval sumdlogdiv_a_den Horner step: add coefficient_31
    let t534 = circuit_mul(t533, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t535 = circuit_add(in85, t534); // Eval sumdlogdiv_a_den Horner step: add coefficient_30
    let t536 = circuit_mul(t535, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t537 = circuit_add(in84, t536); // Eval sumdlogdiv_a_den Horner step: add coefficient_29
    let t538 = circuit_mul(t537, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t539 = circuit_add(in83, t538); // Eval sumdlogdiv_a_den Horner step: add coefficient_28
    let t540 = circuit_mul(t539, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t541 = circuit_add(in82, t540); // Eval sumdlogdiv_a_den Horner step: add coefficient_27
    let t542 = circuit_mul(t541, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t543 = circuit_add(in81, t542); // Eval sumdlogdiv_a_den Horner step: add coefficient_26
    let t544 = circuit_mul(t543, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t545 = circuit_add(in80, t544); // Eval sumdlogdiv_a_den Horner step: add coefficient_25
    let t546 = circuit_mul(t545, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t547 = circuit_add(in79, t546); // Eval sumdlogdiv_a_den Horner step: add coefficient_24
    let t548 = circuit_mul(t547, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t549 = circuit_add(in78, t548); // Eval sumdlogdiv_a_den Horner step: add coefficient_23
    let t550 = circuit_mul(t549, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t551 = circuit_add(in77, t550); // Eval sumdlogdiv_a_den Horner step: add coefficient_22
    let t552 = circuit_mul(t551, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t553 = circuit_add(in76, t552); // Eval sumdlogdiv_a_den Horner step: add coefficient_21
    let t554 = circuit_mul(t553, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t555 = circuit_add(in75, t554); // Eval sumdlogdiv_a_den Horner step: add coefficient_20
    let t556 = circuit_mul(t555, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t557 = circuit_add(in74, t556); // Eval sumdlogdiv_a_den Horner step: add coefficient_19
    let t558 = circuit_mul(t557, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t559 = circuit_add(in73, t558); // Eval sumdlogdiv_a_den Horner step: add coefficient_18
    let t560 = circuit_mul(t559, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t561 = circuit_add(in72, t560); // Eval sumdlogdiv_a_den Horner step: add coefficient_17
    let t562 = circuit_mul(t561, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t563 = circuit_add(in71, t562); // Eval sumdlogdiv_a_den Horner step: add coefficient_16
    let t564 = circuit_mul(t563, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t565 = circuit_add(in70, t564); // Eval sumdlogdiv_a_den Horner step: add coefficient_15
    let t566 = circuit_mul(t565, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t567 = circuit_add(in69, t566); // Eval sumdlogdiv_a_den Horner step: add coefficient_14
    let t568 = circuit_mul(t567, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t569 = circuit_add(in68, t568); // Eval sumdlogdiv_a_den Horner step: add coefficient_13
    let t570 = circuit_mul(t569, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t571 = circuit_add(in67, t570); // Eval sumdlogdiv_a_den Horner step: add coefficient_12
    let t572 = circuit_mul(t571, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t573 = circuit_add(in66, t572); // Eval sumdlogdiv_a_den Horner step: add coefficient_11
    let t574 = circuit_mul(t573, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t575 = circuit_add(in65, t574); // Eval sumdlogdiv_a_den Horner step: add coefficient_10
    let t576 = circuit_mul(t575, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t577 = circuit_add(in64, t576); // Eval sumdlogdiv_a_den Horner step: add coefficient_9
    let t578 = circuit_mul(t577, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t579 = circuit_add(in63, t578); // Eval sumdlogdiv_a_den Horner step: add coefficient_8
    let t580 = circuit_mul(t579, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t581 = circuit_add(in62, t580); // Eval sumdlogdiv_a_den Horner step: add coefficient_7
    let t582 = circuit_mul(t581, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t583 = circuit_add(in61, t582); // Eval sumdlogdiv_a_den Horner step: add coefficient_6
    let t584 = circuit_mul(t583, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t585 = circuit_add(in60, t584); // Eval sumdlogdiv_a_den Horner step: add coefficient_5
    let t586 = circuit_mul(t585, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t587 = circuit_add(in59, t586); // Eval sumdlogdiv_a_den Horner step: add coefficient_4
    let t588 = circuit_mul(t587, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t589 = circuit_add(in58, t588); // Eval sumdlogdiv_a_den Horner step: add coefficient_3
    let t590 = circuit_mul(t589, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t591 = circuit_add(in57, t590); // Eval sumdlogdiv_a_den Horner step: add coefficient_2
    let t592 = circuit_mul(t591, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t593 = circuit_add(in56, t592); // Eval sumdlogdiv_a_den Horner step: add coefficient_1
    let t594 = circuit_mul(t593, in2); // Eval sumdlogdiv_a_den Horner step: multiply by xA2
    let t595 = circuit_add(in55, t594); // Eval sumdlogdiv_a_den Horner step: add coefficient_0
    let t596 = circuit_inverse(t595);
    let t597 = circuit_mul(t497, t596);
    let t598 = circuit_mul(in154, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t599 = circuit_add(in153, t598); // Eval sumdlogdiv_b_num Horner step: add coefficient_48
    let t600 = circuit_mul(t599, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t601 = circuit_add(in152, t600); // Eval sumdlogdiv_b_num Horner step: add coefficient_47
    let t602 = circuit_mul(t601, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t603 = circuit_add(in151, t602); // Eval sumdlogdiv_b_num Horner step: add coefficient_46
    let t604 = circuit_mul(t603, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t605 = circuit_add(in150, t604); // Eval sumdlogdiv_b_num Horner step: add coefficient_45
    let t606 = circuit_mul(t605, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t607 = circuit_add(in149, t606); // Eval sumdlogdiv_b_num Horner step: add coefficient_44
    let t608 = circuit_mul(t607, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t609 = circuit_add(in148, t608); // Eval sumdlogdiv_b_num Horner step: add coefficient_43
    let t610 = circuit_mul(t609, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t611 = circuit_add(in147, t610); // Eval sumdlogdiv_b_num Horner step: add coefficient_42
    let t612 = circuit_mul(t611, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t613 = circuit_add(in146, t612); // Eval sumdlogdiv_b_num Horner step: add coefficient_41
    let t614 = circuit_mul(t613, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t615 = circuit_add(in145, t614); // Eval sumdlogdiv_b_num Horner step: add coefficient_40
    let t616 = circuit_mul(t615, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t617 = circuit_add(in144, t616); // Eval sumdlogdiv_b_num Horner step: add coefficient_39
    let t618 = circuit_mul(t617, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t619 = circuit_add(in143, t618); // Eval sumdlogdiv_b_num Horner step: add coefficient_38
    let t620 = circuit_mul(t619, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t621 = circuit_add(in142, t620); // Eval sumdlogdiv_b_num Horner step: add coefficient_37
    let t622 = circuit_mul(t621, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t623 = circuit_add(in141, t622); // Eval sumdlogdiv_b_num Horner step: add coefficient_36
    let t624 = circuit_mul(t623, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t625 = circuit_add(in140, t624); // Eval sumdlogdiv_b_num Horner step: add coefficient_35
    let t626 = circuit_mul(t625, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t627 = circuit_add(in139, t626); // Eval sumdlogdiv_b_num Horner step: add coefficient_34
    let t628 = circuit_mul(t627, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t629 = circuit_add(in138, t628); // Eval sumdlogdiv_b_num Horner step: add coefficient_33
    let t630 = circuit_mul(t629, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t631 = circuit_add(in137, t630); // Eval sumdlogdiv_b_num Horner step: add coefficient_32
    let t632 = circuit_mul(t631, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t633 = circuit_add(in136, t632); // Eval sumdlogdiv_b_num Horner step: add coefficient_31
    let t634 = circuit_mul(t633, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t635 = circuit_add(in135, t634); // Eval sumdlogdiv_b_num Horner step: add coefficient_30
    let t636 = circuit_mul(t635, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t637 = circuit_add(in134, t636); // Eval sumdlogdiv_b_num Horner step: add coefficient_29
    let t638 = circuit_mul(t637, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t639 = circuit_add(in133, t638); // Eval sumdlogdiv_b_num Horner step: add coefficient_28
    let t640 = circuit_mul(t639, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t641 = circuit_add(in132, t640); // Eval sumdlogdiv_b_num Horner step: add coefficient_27
    let t642 = circuit_mul(t641, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t643 = circuit_add(in131, t642); // Eval sumdlogdiv_b_num Horner step: add coefficient_26
    let t644 = circuit_mul(t643, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t645 = circuit_add(in130, t644); // Eval sumdlogdiv_b_num Horner step: add coefficient_25
    let t646 = circuit_mul(t645, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t647 = circuit_add(in129, t646); // Eval sumdlogdiv_b_num Horner step: add coefficient_24
    let t648 = circuit_mul(t647, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t649 = circuit_add(in128, t648); // Eval sumdlogdiv_b_num Horner step: add coefficient_23
    let t650 = circuit_mul(t649, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t651 = circuit_add(in127, t650); // Eval sumdlogdiv_b_num Horner step: add coefficient_22
    let t652 = circuit_mul(t651, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t653 = circuit_add(in126, t652); // Eval sumdlogdiv_b_num Horner step: add coefficient_21
    let t654 = circuit_mul(t653, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t655 = circuit_add(in125, t654); // Eval sumdlogdiv_b_num Horner step: add coefficient_20
    let t656 = circuit_mul(t655, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t657 = circuit_add(in124, t656); // Eval sumdlogdiv_b_num Horner step: add coefficient_19
    let t658 = circuit_mul(t657, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t659 = circuit_add(in123, t658); // Eval sumdlogdiv_b_num Horner step: add coefficient_18
    let t660 = circuit_mul(t659, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t661 = circuit_add(in122, t660); // Eval sumdlogdiv_b_num Horner step: add coefficient_17
    let t662 = circuit_mul(t661, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t663 = circuit_add(in121, t662); // Eval sumdlogdiv_b_num Horner step: add coefficient_16
    let t664 = circuit_mul(t663, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t665 = circuit_add(in120, t664); // Eval sumdlogdiv_b_num Horner step: add coefficient_15
    let t666 = circuit_mul(t665, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t667 = circuit_add(in119, t666); // Eval sumdlogdiv_b_num Horner step: add coefficient_14
    let t668 = circuit_mul(t667, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t669 = circuit_add(in118, t668); // Eval sumdlogdiv_b_num Horner step: add coefficient_13
    let t670 = circuit_mul(t669, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t671 = circuit_add(in117, t670); // Eval sumdlogdiv_b_num Horner step: add coefficient_12
    let t672 = circuit_mul(t671, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t673 = circuit_add(in116, t672); // Eval sumdlogdiv_b_num Horner step: add coefficient_11
    let t674 = circuit_mul(t673, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t675 = circuit_add(in115, t674); // Eval sumdlogdiv_b_num Horner step: add coefficient_10
    let t676 = circuit_mul(t675, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t677 = circuit_add(in114, t676); // Eval sumdlogdiv_b_num Horner step: add coefficient_9
    let t678 = circuit_mul(t677, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t679 = circuit_add(in113, t678); // Eval sumdlogdiv_b_num Horner step: add coefficient_8
    let t680 = circuit_mul(t679, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t681 = circuit_add(in112, t680); // Eval sumdlogdiv_b_num Horner step: add coefficient_7
    let t682 = circuit_mul(t681, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t683 = circuit_add(in111, t682); // Eval sumdlogdiv_b_num Horner step: add coefficient_6
    let t684 = circuit_mul(t683, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t685 = circuit_add(in110, t684); // Eval sumdlogdiv_b_num Horner step: add coefficient_5
    let t686 = circuit_mul(t685, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t687 = circuit_add(in109, t686); // Eval sumdlogdiv_b_num Horner step: add coefficient_4
    let t688 = circuit_mul(t687, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t689 = circuit_add(in108, t688); // Eval sumdlogdiv_b_num Horner step: add coefficient_3
    let t690 = circuit_mul(t689, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t691 = circuit_add(in107, t690); // Eval sumdlogdiv_b_num Horner step: add coefficient_2
    let t692 = circuit_mul(t691, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t693 = circuit_add(in106, t692); // Eval sumdlogdiv_b_num Horner step: add coefficient_1
    let t694 = circuit_mul(t693, in2); // Eval sumdlogdiv_b_num Horner step: multiply by xA2
    let t695 = circuit_add(in105, t694); // Eval sumdlogdiv_b_num Horner step: add coefficient_0
    let t696 = circuit_mul(in207, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t697 = circuit_add(in206, t696); // Eval sumdlogdiv_b_den Horner step: add coefficient_51
    let t698 = circuit_mul(t697, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t699 = circuit_add(in205, t698); // Eval sumdlogdiv_b_den Horner step: add coefficient_50
    let t700 = circuit_mul(t699, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t701 = circuit_add(in204, t700); // Eval sumdlogdiv_b_den Horner step: add coefficient_49
    let t702 = circuit_mul(t701, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t703 = circuit_add(in203, t702); // Eval sumdlogdiv_b_den Horner step: add coefficient_48
    let t704 = circuit_mul(t703, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t705 = circuit_add(in202, t704); // Eval sumdlogdiv_b_den Horner step: add coefficient_47
    let t706 = circuit_mul(t705, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t707 = circuit_add(in201, t706); // Eval sumdlogdiv_b_den Horner step: add coefficient_46
    let t708 = circuit_mul(t707, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t709 = circuit_add(in200, t708); // Eval sumdlogdiv_b_den Horner step: add coefficient_45
    let t710 = circuit_mul(t709, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t711 = circuit_add(in199, t710); // Eval sumdlogdiv_b_den Horner step: add coefficient_44
    let t712 = circuit_mul(t711, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t713 = circuit_add(in198, t712); // Eval sumdlogdiv_b_den Horner step: add coefficient_43
    let t714 = circuit_mul(t713, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t715 = circuit_add(in197, t714); // Eval sumdlogdiv_b_den Horner step: add coefficient_42
    let t716 = circuit_mul(t715, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t717 = circuit_add(in196, t716); // Eval sumdlogdiv_b_den Horner step: add coefficient_41
    let t718 = circuit_mul(t717, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t719 = circuit_add(in195, t718); // Eval sumdlogdiv_b_den Horner step: add coefficient_40
    let t720 = circuit_mul(t719, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t721 = circuit_add(in194, t720); // Eval sumdlogdiv_b_den Horner step: add coefficient_39
    let t722 = circuit_mul(t721, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t723 = circuit_add(in193, t722); // Eval sumdlogdiv_b_den Horner step: add coefficient_38
    let t724 = circuit_mul(t723, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t725 = circuit_add(in192, t724); // Eval sumdlogdiv_b_den Horner step: add coefficient_37
    let t726 = circuit_mul(t725, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t727 = circuit_add(in191, t726); // Eval sumdlogdiv_b_den Horner step: add coefficient_36
    let t728 = circuit_mul(t727, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t729 = circuit_add(in190, t728); // Eval sumdlogdiv_b_den Horner step: add coefficient_35
    let t730 = circuit_mul(t729, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t731 = circuit_add(in189, t730); // Eval sumdlogdiv_b_den Horner step: add coefficient_34
    let t732 = circuit_mul(t731, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t733 = circuit_add(in188, t732); // Eval sumdlogdiv_b_den Horner step: add coefficient_33
    let t734 = circuit_mul(t733, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t735 = circuit_add(in187, t734); // Eval sumdlogdiv_b_den Horner step: add coefficient_32
    let t736 = circuit_mul(t735, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t737 = circuit_add(in186, t736); // Eval sumdlogdiv_b_den Horner step: add coefficient_31
    let t738 = circuit_mul(t737, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t739 = circuit_add(in185, t738); // Eval sumdlogdiv_b_den Horner step: add coefficient_30
    let t740 = circuit_mul(t739, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t741 = circuit_add(in184, t740); // Eval sumdlogdiv_b_den Horner step: add coefficient_29
    let t742 = circuit_mul(t741, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t743 = circuit_add(in183, t742); // Eval sumdlogdiv_b_den Horner step: add coefficient_28
    let t744 = circuit_mul(t743, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t745 = circuit_add(in182, t744); // Eval sumdlogdiv_b_den Horner step: add coefficient_27
    let t746 = circuit_mul(t745, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t747 = circuit_add(in181, t746); // Eval sumdlogdiv_b_den Horner step: add coefficient_26
    let t748 = circuit_mul(t747, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t749 = circuit_add(in180, t748); // Eval sumdlogdiv_b_den Horner step: add coefficient_25
    let t750 = circuit_mul(t749, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t751 = circuit_add(in179, t750); // Eval sumdlogdiv_b_den Horner step: add coefficient_24
    let t752 = circuit_mul(t751, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t753 = circuit_add(in178, t752); // Eval sumdlogdiv_b_den Horner step: add coefficient_23
    let t754 = circuit_mul(t753, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t755 = circuit_add(in177, t754); // Eval sumdlogdiv_b_den Horner step: add coefficient_22
    let t756 = circuit_mul(t755, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t757 = circuit_add(in176, t756); // Eval sumdlogdiv_b_den Horner step: add coefficient_21
    let t758 = circuit_mul(t757, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t759 = circuit_add(in175, t758); // Eval sumdlogdiv_b_den Horner step: add coefficient_20
    let t760 = circuit_mul(t759, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t761 = circuit_add(in174, t760); // Eval sumdlogdiv_b_den Horner step: add coefficient_19
    let t762 = circuit_mul(t761, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t763 = circuit_add(in173, t762); // Eval sumdlogdiv_b_den Horner step: add coefficient_18
    let t764 = circuit_mul(t763, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t765 = circuit_add(in172, t764); // Eval sumdlogdiv_b_den Horner step: add coefficient_17
    let t766 = circuit_mul(t765, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t767 = circuit_add(in171, t766); // Eval sumdlogdiv_b_den Horner step: add coefficient_16
    let t768 = circuit_mul(t767, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t769 = circuit_add(in170, t768); // Eval sumdlogdiv_b_den Horner step: add coefficient_15
    let t770 = circuit_mul(t769, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t771 = circuit_add(in169, t770); // Eval sumdlogdiv_b_den Horner step: add coefficient_14
    let t772 = circuit_mul(t771, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t773 = circuit_add(in168, t772); // Eval sumdlogdiv_b_den Horner step: add coefficient_13
    let t774 = circuit_mul(t773, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t775 = circuit_add(in167, t774); // Eval sumdlogdiv_b_den Horner step: add coefficient_12
    let t776 = circuit_mul(t775, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t777 = circuit_add(in166, t776); // Eval sumdlogdiv_b_den Horner step: add coefficient_11
    let t778 = circuit_mul(t777, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t779 = circuit_add(in165, t778); // Eval sumdlogdiv_b_den Horner step: add coefficient_10
    let t780 = circuit_mul(t779, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t781 = circuit_add(in164, t780); // Eval sumdlogdiv_b_den Horner step: add coefficient_9
    let t782 = circuit_mul(t781, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t783 = circuit_add(in163, t782); // Eval sumdlogdiv_b_den Horner step: add coefficient_8
    let t784 = circuit_mul(t783, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t785 = circuit_add(in162, t784); // Eval sumdlogdiv_b_den Horner step: add coefficient_7
    let t786 = circuit_mul(t785, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t787 = circuit_add(in161, t786); // Eval sumdlogdiv_b_den Horner step: add coefficient_6
    let t788 = circuit_mul(t787, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t789 = circuit_add(in160, t788); // Eval sumdlogdiv_b_den Horner step: add coefficient_5
    let t790 = circuit_mul(t789, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t791 = circuit_add(in159, t790); // Eval sumdlogdiv_b_den Horner step: add coefficient_4
    let t792 = circuit_mul(t791, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t793 = circuit_add(in158, t792); // Eval sumdlogdiv_b_den Horner step: add coefficient_3
    let t794 = circuit_mul(t793, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t795 = circuit_add(in157, t794); // Eval sumdlogdiv_b_den Horner step: add coefficient_2
    let t796 = circuit_mul(t795, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t797 = circuit_add(in156, t796); // Eval sumdlogdiv_b_den Horner step: add coefficient_1
    let t798 = circuit_mul(t797, in2); // Eval sumdlogdiv_b_den Horner step: multiply by xA2
    let t799 = circuit_add(in155, t798); // Eval sumdlogdiv_b_den Horner step: add coefficient_0
    let t800 = circuit_inverse(t799);
    let t801 = circuit_mul(t695, t800);
    let t802 = circuit_mul(in3, t801);
    let t803 = circuit_add(t597, t802);
    let t804 = circuit_mul(in4, t401);
    let t805 = circuit_mul(in5, t803);
    let t806 = circuit_sub(t804, t805);

    let modulus = get_BN254_modulus(); // BN254 prime field modulus

    let mut circuit_inputs = (t806,).new_inputs();
    // Prefill constants:

    // Fill inputs:
    circuit_inputs = circuit_inputs.next_2(A0.x); // in0
    circuit_inputs = circuit_inputs.next_2(A0.y); // in1
    circuit_inputs = circuit_inputs.next_2(A2.x); // in2
    circuit_inputs = circuit_inputs.next_2(A2.y); // in3
    circuit_inputs = circuit_inputs.next_2(coeff0); // in4
    circuit_inputs = circuit_inputs.next_2(coeff2); // in5
    let mut SumDlogDivBatched_a_num = SumDlogDivBatched.a_num;
    while let Option::Some(val) = SumDlogDivBatched_a_num.pop_front() {
        circuit_inputs = circuit_inputs.next_2(*val);
    };
    let mut SumDlogDivBatched_a_den = SumDlogDivBatched.a_den;
    while let Option::Some(val) = SumDlogDivBatched_a_den.pop_front() {
        circuit_inputs = circuit_inputs.next_2(*val);
    };
    let mut SumDlogDivBatched_b_num = SumDlogDivBatched.b_num;
    while let Option::Some(val) = SumDlogDivBatched_b_num.pop_front() {
        circuit_inputs = circuit_inputs.next_2(*val);
    };
    let mut SumDlogDivBatched_b_den = SumDlogDivBatched.b_den;
    while let Option::Some(val) = SumDlogDivBatched_b_den.pop_front() {
        circuit_inputs = circuit_inputs.next_2(*val);
    };
    // in6 - in207

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let res: u384 = outputs.get_output(t806);
    return (res,);
}
