use core::circuit::{
    CircuitElement as CE, CircuitInput as CI, CircuitInputs, CircuitOutputsTrait, EvalCircuitTrait,
    circuit_add, circuit_inverse, circuit_mul, circuit_sub, u384,
};
use garaga::core::circuit::{AddInputResultTrait2, u288IntoCircuitInputValue};
use garaga::definitions::{G1Point, get_BN254_modulus, get_GRUMPKIN_modulus};
use garaga::ec_ops::FunctionFelt;

#[inline(always)]
pub fn run_GRUMPKIN_HONK_SUMCHECK_SIZE_5_PUB_1_circuit(
    p_public_inputs: Span<u256>,
    p_public_inputs_offset: u384,
    sumcheck_univariates_flat: Span<u256>,
    sumcheck_evaluations: Span<u256>,
    tp_sum_check_u_challenges: Span<u128>,
    tp_gate_challenges: Span<u128>,
    tp_eta_1: u128,
    tp_eta_2: u128,
    tp_eta_3: u128,
    tp_beta: u128,
    tp_gamma: u128,
    tp_base_rlc: u384,
    tp_alphas: Span<u128>,
) -> (u384, u384) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x1
    let in1 = CE::<CI<1>> {}; // 0x20
    let in2 = CE::<CI<2>> {}; // 0x0
    let in3 = CE::<CI<3>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593efffec51
    let in4 = CE::<CI<4>> {}; // 0x2d0
    let in5 = CE::<CI<5>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593efffff11
    let in6 = CE::<CI<6>> {}; // 0x90
    let in7 = CE::<CI<7>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593efffff71
    let in8 = CE::<CI<8>> {}; // 0xf0
    let in9 = CE::<CI<9>> {}; // 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593effffd31
    let in10 = CE::<CI<10>> {}; // 0x13b0
    let in11 = CE::<CI<11>> {}; // 0x2
    let in12 = CE::<CI<12>> {}; // 0x3
    let in13 = CE::<CI<13>> {}; // 0x4
    let in14 = CE::<CI<14>> {}; // 0x5
    let in15 = CE::<CI<15>> {}; // 0x6
    let in16 = CE::<CI<16>> {}; // 0x7
    let in17 = CE::<
        CI<17>,
    > {}; // 0x183227397098d014dc2822db40c0ac2e9419f4243cdcb848a1f0fac9f8000000
    let in18 = CE::<CI<18>> {}; // -0x1 % p
    let in19 = CE::<CI<19>> {}; // -0x2 % p
    let in20 = CE::<CI<20>> {}; // -0x3 % p
    let in21 = CE::<CI<21>> {}; // 0x11
    let in22 = CE::<CI<22>> {}; // 0x9
    let in23 = CE::<CI<23>> {}; // 0x100000000000000000
    let in24 = CE::<CI<24>> {}; // 0x4000
    let in25 = CE::<
        CI<25>,
    > {}; // 0x10dc6e9c006ea38b04b1e03b4bd9490c0d03f98929ca1d7fb56821fd19d3b6e7
    let in26 = CE::<CI<26>> {}; // 0xc28145b6a44df3e0149b3d0a30b3bb599df9756d4dd9b84a86b38cfb45a740b
    let in27 = CE::<CI<27>> {}; // 0x544b8338791518b2c7645a50392798b21f75bb60e3596170067d00141cac15
    let in28 = CE::<
        CI<28>,
    > {}; // 0x222c01175718386f2e2e82eb122789e352e105a3b8fa852613bc534433ee428b

    // INPUT stack
    let (in29, in30, in31) = (CE::<CI<29>> {}, CE::<CI<30>> {}, CE::<CI<31>> {});
    let (in32, in33, in34) = (CE::<CI<32>> {}, CE::<CI<33>> {}, CE::<CI<34>> {});
    let (in35, in36, in37) = (CE::<CI<35>> {}, CE::<CI<36>> {}, CE::<CI<37>> {});
    let (in38, in39, in40) = (CE::<CI<38>> {}, CE::<CI<39>> {}, CE::<CI<40>> {});
    let (in41, in42, in43) = (CE::<CI<41>> {}, CE::<CI<42>> {}, CE::<CI<43>> {});
    let (in44, in45, in46) = (CE::<CI<44>> {}, CE::<CI<45>> {}, CE::<CI<46>> {});
    let (in47, in48, in49) = (CE::<CI<47>> {}, CE::<CI<48>> {}, CE::<CI<49>> {});
    let (in50, in51, in52) = (CE::<CI<50>> {}, CE::<CI<51>> {}, CE::<CI<52>> {});
    let (in53, in54, in55) = (CE::<CI<53>> {}, CE::<CI<54>> {}, CE::<CI<55>> {});
    let (in56, in57, in58) = (CE::<CI<56>> {}, CE::<CI<57>> {}, CE::<CI<58>> {});
    let (in59, in60, in61) = (CE::<CI<59>> {}, CE::<CI<60>> {}, CE::<CI<61>> {});
    let (in62, in63, in64) = (CE::<CI<62>> {}, CE::<CI<63>> {}, CE::<CI<64>> {});
    let (in65, in66, in67) = (CE::<CI<65>> {}, CE::<CI<66>> {}, CE::<CI<67>> {});
    let (in68, in69, in70) = (CE::<CI<68>> {}, CE::<CI<69>> {}, CE::<CI<70>> {});
    let (in71, in72, in73) = (CE::<CI<71>> {}, CE::<CI<72>> {}, CE::<CI<73>> {});
    let (in74, in75, in76) = (CE::<CI<74>> {}, CE::<CI<75>> {}, CE::<CI<76>> {});
    let (in77, in78, in79) = (CE::<CI<77>> {}, CE::<CI<78>> {}, CE::<CI<79>> {});
    let (in80, in81, in82) = (CE::<CI<80>> {}, CE::<CI<81>> {}, CE::<CI<82>> {});
    let (in83, in84, in85) = (CE::<CI<83>> {}, CE::<CI<84>> {}, CE::<CI<85>> {});
    let (in86, in87, in88) = (CE::<CI<86>> {}, CE::<CI<87>> {}, CE::<CI<88>> {});
    let (in89, in90, in91) = (CE::<CI<89>> {}, CE::<CI<90>> {}, CE::<CI<91>> {});
    let (in92, in93, in94) = (CE::<CI<92>> {}, CE::<CI<93>> {}, CE::<CI<94>> {});
    let (in95, in96, in97) = (CE::<CI<95>> {}, CE::<CI<96>> {}, CE::<CI<97>> {});
    let (in98, in99, in100) = (CE::<CI<98>> {}, CE::<CI<99>> {}, CE::<CI<100>> {});
    let (in101, in102, in103) = (CE::<CI<101>> {}, CE::<CI<102>> {}, CE::<CI<103>> {});
    let (in104, in105, in106) = (CE::<CI<104>> {}, CE::<CI<105>> {}, CE::<CI<106>> {});
    let (in107, in108, in109) = (CE::<CI<107>> {}, CE::<CI<108>> {}, CE::<CI<109>> {});
    let (in110, in111, in112) = (CE::<CI<110>> {}, CE::<CI<111>> {}, CE::<CI<112>> {});
    let (in113, in114, in115) = (CE::<CI<113>> {}, CE::<CI<114>> {}, CE::<CI<115>> {});
    let (in116, in117, in118) = (CE::<CI<116>> {}, CE::<CI<117>> {}, CE::<CI<118>> {});
    let (in119, in120, in121) = (CE::<CI<119>> {}, CE::<CI<120>> {}, CE::<CI<121>> {});
    let (in122, in123, in124) = (CE::<CI<122>> {}, CE::<CI<123>> {}, CE::<CI<124>> {});
    let (in125, in126, in127) = (CE::<CI<125>> {}, CE::<CI<126>> {}, CE::<CI<127>> {});
    let (in128, in129, in130) = (CE::<CI<128>> {}, CE::<CI<129>> {}, CE::<CI<130>> {});
    let (in131, in132, in133) = (CE::<CI<131>> {}, CE::<CI<132>> {}, CE::<CI<133>> {});
    let (in134, in135, in136) = (CE::<CI<134>> {}, CE::<CI<135>> {}, CE::<CI<136>> {});
    let (in137, in138, in139) = (CE::<CI<137>> {}, CE::<CI<138>> {}, CE::<CI<139>> {});
    let (in140, in141, in142) = (CE::<CI<140>> {}, CE::<CI<141>> {}, CE::<CI<142>> {});
    let (in143, in144, in145) = (CE::<CI<143>> {}, CE::<CI<144>> {}, CE::<CI<145>> {});
    let (in146, in147, in148) = (CE::<CI<146>> {}, CE::<CI<147>> {}, CE::<CI<148>> {});
    let (in149, in150, in151) = (CE::<CI<149>> {}, CE::<CI<150>> {}, CE::<CI<151>> {});
    let t0 = circuit_add(in1, in30);
    let t1 = circuit_mul(in124, t0);
    let t2 = circuit_add(in125, t1);
    let t3 = circuit_add(in30, in0);
    let t4 = circuit_mul(in124, t3);
    let t5 = circuit_sub(in125, t4);
    let t6 = circuit_add(t2, in29);
    let t7 = circuit_mul(in0, t6);
    let t8 = circuit_add(t5, in29);
    let t9 = circuit_mul(in0, t8);
    let t10 = circuit_inverse(t9);
    let t11 = circuit_mul(t7, t10);
    let t12 = circuit_add(in31, in32);
    let t13 = circuit_sub(t12, in2);
    let t14 = circuit_mul(t13, in126);
    let t15 = circuit_add(in2, t14);
    let t16 = circuit_mul(in126, in126);
    let t17 = circuit_sub(in111, in2);
    let t18 = circuit_mul(in0, t17);
    let t19 = circuit_sub(in111, in2);
    let t20 = circuit_mul(in3, t19);
    let t21 = circuit_inverse(t20);
    let t22 = circuit_mul(in31, t21);
    let t23 = circuit_add(in2, t22);
    let t24 = circuit_sub(in111, in0);
    let t25 = circuit_mul(t18, t24);
    let t26 = circuit_sub(in111, in0);
    let t27 = circuit_mul(in4, t26);
    let t28 = circuit_inverse(t27);
    let t29 = circuit_mul(in32, t28);
    let t30 = circuit_add(t23, t29);
    let t31 = circuit_sub(in111, in11);
    let t32 = circuit_mul(t25, t31);
    let t33 = circuit_sub(in111, in11);
    let t34 = circuit_mul(in5, t33);
    let t35 = circuit_inverse(t34);
    let t36 = circuit_mul(in33, t35);
    let t37 = circuit_add(t30, t36);
    let t38 = circuit_sub(in111, in12);
    let t39 = circuit_mul(t32, t38);
    let t40 = circuit_sub(in111, in12);
    let t41 = circuit_mul(in6, t40);
    let t42 = circuit_inverse(t41);
    let t43 = circuit_mul(in34, t42);
    let t44 = circuit_add(t37, t43);
    let t45 = circuit_sub(in111, in13);
    let t46 = circuit_mul(t39, t45);
    let t47 = circuit_sub(in111, in13);
    let t48 = circuit_mul(in7, t47);
    let t49 = circuit_inverse(t48);
    let t50 = circuit_mul(in35, t49);
    let t51 = circuit_add(t44, t50);
    let t52 = circuit_sub(in111, in14);
    let t53 = circuit_mul(t46, t52);
    let t54 = circuit_sub(in111, in14);
    let t55 = circuit_mul(in8, t54);
    let t56 = circuit_inverse(t55);
    let t57 = circuit_mul(in36, t56);
    let t58 = circuit_add(t51, t57);
    let t59 = circuit_sub(in111, in15);
    let t60 = circuit_mul(t53, t59);
    let t61 = circuit_sub(in111, in15);
    let t62 = circuit_mul(in9, t61);
    let t63 = circuit_inverse(t62);
    let t64 = circuit_mul(in37, t63);
    let t65 = circuit_add(t58, t64);
    let t66 = circuit_sub(in111, in16);
    let t67 = circuit_mul(t60, t66);
    let t68 = circuit_sub(in111, in16);
    let t69 = circuit_mul(in10, t68);
    let t70 = circuit_inverse(t69);
    let t71 = circuit_mul(in38, t70);
    let t72 = circuit_add(t65, t71);
    let t73 = circuit_mul(t72, t67);
    let t74 = circuit_sub(in116, in0);
    let t75 = circuit_mul(in111, t74);
    let t76 = circuit_add(in0, t75);
    let t77 = circuit_mul(in0, t76);
    let t78 = circuit_add(in39, in40);
    let t79 = circuit_sub(t78, t73);
    let t80 = circuit_mul(t79, t16);
    let t81 = circuit_add(t15, t80);
    let t82 = circuit_mul(t16, in126);
    let t83 = circuit_sub(in112, in2);
    let t84 = circuit_mul(in0, t83);
    let t85 = circuit_sub(in112, in2);
    let t86 = circuit_mul(in3, t85);
    let t87 = circuit_inverse(t86);
    let t88 = circuit_mul(in39, t87);
    let t89 = circuit_add(in2, t88);
    let t90 = circuit_sub(in112, in0);
    let t91 = circuit_mul(t84, t90);
    let t92 = circuit_sub(in112, in0);
    let t93 = circuit_mul(in4, t92);
    let t94 = circuit_inverse(t93);
    let t95 = circuit_mul(in40, t94);
    let t96 = circuit_add(t89, t95);
    let t97 = circuit_sub(in112, in11);
    let t98 = circuit_mul(t91, t97);
    let t99 = circuit_sub(in112, in11);
    let t100 = circuit_mul(in5, t99);
    let t101 = circuit_inverse(t100);
    let t102 = circuit_mul(in41, t101);
    let t103 = circuit_add(t96, t102);
    let t104 = circuit_sub(in112, in12);
    let t105 = circuit_mul(t98, t104);
    let t106 = circuit_sub(in112, in12);
    let t107 = circuit_mul(in6, t106);
    let t108 = circuit_inverse(t107);
    let t109 = circuit_mul(in42, t108);
    let t110 = circuit_add(t103, t109);
    let t111 = circuit_sub(in112, in13);
    let t112 = circuit_mul(t105, t111);
    let t113 = circuit_sub(in112, in13);
    let t114 = circuit_mul(in7, t113);
    let t115 = circuit_inverse(t114);
    let t116 = circuit_mul(in43, t115);
    let t117 = circuit_add(t110, t116);
    let t118 = circuit_sub(in112, in14);
    let t119 = circuit_mul(t112, t118);
    let t120 = circuit_sub(in112, in14);
    let t121 = circuit_mul(in8, t120);
    let t122 = circuit_inverse(t121);
    let t123 = circuit_mul(in44, t122);
    let t124 = circuit_add(t117, t123);
    let t125 = circuit_sub(in112, in15);
    let t126 = circuit_mul(t119, t125);
    let t127 = circuit_sub(in112, in15);
    let t128 = circuit_mul(in9, t127);
    let t129 = circuit_inverse(t128);
    let t130 = circuit_mul(in45, t129);
    let t131 = circuit_add(t124, t130);
    let t132 = circuit_sub(in112, in16);
    let t133 = circuit_mul(t126, t132);
    let t134 = circuit_sub(in112, in16);
    let t135 = circuit_mul(in10, t134);
    let t136 = circuit_inverse(t135);
    let t137 = circuit_mul(in46, t136);
    let t138 = circuit_add(t131, t137);
    let t139 = circuit_mul(t138, t133);
    let t140 = circuit_sub(in117, in0);
    let t141 = circuit_mul(in112, t140);
    let t142 = circuit_add(in0, t141);
    let t143 = circuit_mul(t77, t142);
    let t144 = circuit_add(in47, in48);
    let t145 = circuit_sub(t144, t139);
    let t146 = circuit_mul(t145, t82);
    let t147 = circuit_add(t81, t146);
    let t148 = circuit_mul(t82, in126);
    let t149 = circuit_sub(in113, in2);
    let t150 = circuit_mul(in0, t149);
    let t151 = circuit_sub(in113, in2);
    let t152 = circuit_mul(in3, t151);
    let t153 = circuit_inverse(t152);
    let t154 = circuit_mul(in47, t153);
    let t155 = circuit_add(in2, t154);
    let t156 = circuit_sub(in113, in0);
    let t157 = circuit_mul(t150, t156);
    let t158 = circuit_sub(in113, in0);
    let t159 = circuit_mul(in4, t158);
    let t160 = circuit_inverse(t159);
    let t161 = circuit_mul(in48, t160);
    let t162 = circuit_add(t155, t161);
    let t163 = circuit_sub(in113, in11);
    let t164 = circuit_mul(t157, t163);
    let t165 = circuit_sub(in113, in11);
    let t166 = circuit_mul(in5, t165);
    let t167 = circuit_inverse(t166);
    let t168 = circuit_mul(in49, t167);
    let t169 = circuit_add(t162, t168);
    let t170 = circuit_sub(in113, in12);
    let t171 = circuit_mul(t164, t170);
    let t172 = circuit_sub(in113, in12);
    let t173 = circuit_mul(in6, t172);
    let t174 = circuit_inverse(t173);
    let t175 = circuit_mul(in50, t174);
    let t176 = circuit_add(t169, t175);
    let t177 = circuit_sub(in113, in13);
    let t178 = circuit_mul(t171, t177);
    let t179 = circuit_sub(in113, in13);
    let t180 = circuit_mul(in7, t179);
    let t181 = circuit_inverse(t180);
    let t182 = circuit_mul(in51, t181);
    let t183 = circuit_add(t176, t182);
    let t184 = circuit_sub(in113, in14);
    let t185 = circuit_mul(t178, t184);
    let t186 = circuit_sub(in113, in14);
    let t187 = circuit_mul(in8, t186);
    let t188 = circuit_inverse(t187);
    let t189 = circuit_mul(in52, t188);
    let t190 = circuit_add(t183, t189);
    let t191 = circuit_sub(in113, in15);
    let t192 = circuit_mul(t185, t191);
    let t193 = circuit_sub(in113, in15);
    let t194 = circuit_mul(in9, t193);
    let t195 = circuit_inverse(t194);
    let t196 = circuit_mul(in53, t195);
    let t197 = circuit_add(t190, t196);
    let t198 = circuit_sub(in113, in16);
    let t199 = circuit_mul(t192, t198);
    let t200 = circuit_sub(in113, in16);
    let t201 = circuit_mul(in10, t200);
    let t202 = circuit_inverse(t201);
    let t203 = circuit_mul(in54, t202);
    let t204 = circuit_add(t197, t203);
    let t205 = circuit_mul(t204, t199);
    let t206 = circuit_sub(in118, in0);
    let t207 = circuit_mul(in113, t206);
    let t208 = circuit_add(in0, t207);
    let t209 = circuit_mul(t143, t208);
    let t210 = circuit_add(in55, in56);
    let t211 = circuit_sub(t210, t205);
    let t212 = circuit_mul(t211, t148);
    let t213 = circuit_add(t147, t212);
    let t214 = circuit_mul(t148, in126);
    let t215 = circuit_sub(in114, in2);
    let t216 = circuit_mul(in0, t215);
    let t217 = circuit_sub(in114, in2);
    let t218 = circuit_mul(in3, t217);
    let t219 = circuit_inverse(t218);
    let t220 = circuit_mul(in55, t219);
    let t221 = circuit_add(in2, t220);
    let t222 = circuit_sub(in114, in0);
    let t223 = circuit_mul(t216, t222);
    let t224 = circuit_sub(in114, in0);
    let t225 = circuit_mul(in4, t224);
    let t226 = circuit_inverse(t225);
    let t227 = circuit_mul(in56, t226);
    let t228 = circuit_add(t221, t227);
    let t229 = circuit_sub(in114, in11);
    let t230 = circuit_mul(t223, t229);
    let t231 = circuit_sub(in114, in11);
    let t232 = circuit_mul(in5, t231);
    let t233 = circuit_inverse(t232);
    let t234 = circuit_mul(in57, t233);
    let t235 = circuit_add(t228, t234);
    let t236 = circuit_sub(in114, in12);
    let t237 = circuit_mul(t230, t236);
    let t238 = circuit_sub(in114, in12);
    let t239 = circuit_mul(in6, t238);
    let t240 = circuit_inverse(t239);
    let t241 = circuit_mul(in58, t240);
    let t242 = circuit_add(t235, t241);
    let t243 = circuit_sub(in114, in13);
    let t244 = circuit_mul(t237, t243);
    let t245 = circuit_sub(in114, in13);
    let t246 = circuit_mul(in7, t245);
    let t247 = circuit_inverse(t246);
    let t248 = circuit_mul(in59, t247);
    let t249 = circuit_add(t242, t248);
    let t250 = circuit_sub(in114, in14);
    let t251 = circuit_mul(t244, t250);
    let t252 = circuit_sub(in114, in14);
    let t253 = circuit_mul(in8, t252);
    let t254 = circuit_inverse(t253);
    let t255 = circuit_mul(in60, t254);
    let t256 = circuit_add(t249, t255);
    let t257 = circuit_sub(in114, in15);
    let t258 = circuit_mul(t251, t257);
    let t259 = circuit_sub(in114, in15);
    let t260 = circuit_mul(in9, t259);
    let t261 = circuit_inverse(t260);
    let t262 = circuit_mul(in61, t261);
    let t263 = circuit_add(t256, t262);
    let t264 = circuit_sub(in114, in16);
    let t265 = circuit_mul(t258, t264);
    let t266 = circuit_sub(in114, in16);
    let t267 = circuit_mul(in10, t266);
    let t268 = circuit_inverse(t267);
    let t269 = circuit_mul(in62, t268);
    let t270 = circuit_add(t263, t269);
    let t271 = circuit_mul(t270, t265);
    let t272 = circuit_sub(in119, in0);
    let t273 = circuit_mul(in114, t272);
    let t274 = circuit_add(in0, t273);
    let t275 = circuit_mul(t209, t274);
    let t276 = circuit_add(in63, in64);
    let t277 = circuit_sub(t276, t271);
    let t278 = circuit_mul(t277, t214);
    let t279 = circuit_add(t213, t278);
    let t280 = circuit_sub(in115, in2);
    let t281 = circuit_mul(in0, t280);
    let t282 = circuit_sub(in115, in2);
    let t283 = circuit_mul(in3, t282);
    let t284 = circuit_inverse(t283);
    let t285 = circuit_mul(in63, t284);
    let t286 = circuit_add(in2, t285);
    let t287 = circuit_sub(in115, in0);
    let t288 = circuit_mul(t281, t287);
    let t289 = circuit_sub(in115, in0);
    let t290 = circuit_mul(in4, t289);
    let t291 = circuit_inverse(t290);
    let t292 = circuit_mul(in64, t291);
    let t293 = circuit_add(t286, t292);
    let t294 = circuit_sub(in115, in11);
    let t295 = circuit_mul(t288, t294);
    let t296 = circuit_sub(in115, in11);
    let t297 = circuit_mul(in5, t296);
    let t298 = circuit_inverse(t297);
    let t299 = circuit_mul(in65, t298);
    let t300 = circuit_add(t293, t299);
    let t301 = circuit_sub(in115, in12);
    let t302 = circuit_mul(t295, t301);
    let t303 = circuit_sub(in115, in12);
    let t304 = circuit_mul(in6, t303);
    let t305 = circuit_inverse(t304);
    let t306 = circuit_mul(in66, t305);
    let t307 = circuit_add(t300, t306);
    let t308 = circuit_sub(in115, in13);
    let t309 = circuit_mul(t302, t308);
    let t310 = circuit_sub(in115, in13);
    let t311 = circuit_mul(in7, t310);
    let t312 = circuit_inverse(t311);
    let t313 = circuit_mul(in67, t312);
    let t314 = circuit_add(t307, t313);
    let t315 = circuit_sub(in115, in14);
    let t316 = circuit_mul(t309, t315);
    let t317 = circuit_sub(in115, in14);
    let t318 = circuit_mul(in8, t317);
    let t319 = circuit_inverse(t318);
    let t320 = circuit_mul(in68, t319);
    let t321 = circuit_add(t314, t320);
    let t322 = circuit_sub(in115, in15);
    let t323 = circuit_mul(t316, t322);
    let t324 = circuit_sub(in115, in15);
    let t325 = circuit_mul(in9, t324);
    let t326 = circuit_inverse(t325);
    let t327 = circuit_mul(in69, t326);
    let t328 = circuit_add(t321, t327);
    let t329 = circuit_sub(in115, in16);
    let t330 = circuit_mul(t323, t329);
    let t331 = circuit_sub(in115, in16);
    let t332 = circuit_mul(in10, t331);
    let t333 = circuit_inverse(t332);
    let t334 = circuit_mul(in70, t333);
    let t335 = circuit_add(t328, t334);
    let t336 = circuit_mul(t335, t330);
    let t337 = circuit_sub(in120, in0);
    let t338 = circuit_mul(in115, t337);
    let t339 = circuit_add(in0, t338);
    let t340 = circuit_mul(t275, t339);
    let t341 = circuit_sub(in78, in12);
    let t342 = circuit_mul(t341, in71);
    let t343 = circuit_mul(t342, in99);
    let t344 = circuit_mul(t343, in98);
    let t345 = circuit_mul(t344, in17);
    let t346 = circuit_mul(in73, in98);
    let t347 = circuit_mul(in74, in99);
    let t348 = circuit_mul(in75, in100);
    let t349 = circuit_mul(in76, in101);
    let t350 = circuit_add(t345, t346);
    let t351 = circuit_add(t350, t347);
    let t352 = circuit_add(t351, t348);
    let t353 = circuit_add(t352, t349);
    let t354 = circuit_add(t353, in72);
    let t355 = circuit_sub(in78, in0);
    let t356 = circuit_mul(t355, in109);
    let t357 = circuit_add(t354, t356);
    let t358 = circuit_mul(t357, in78);
    let t359 = circuit_mul(t358, t340);
    let t360 = circuit_add(in98, in101);
    let t361 = circuit_add(t360, in71);
    let t362 = circuit_sub(t361, in106);
    let t363 = circuit_sub(in78, in11);
    let t364 = circuit_mul(t362, t363);
    let t365 = circuit_sub(in78, in0);
    let t366 = circuit_mul(t364, t365);
    let t367 = circuit_mul(t366, in78);
    let t368 = circuit_mul(t367, t340);
    let t369 = circuit_mul(in88, in124);
    let t370 = circuit_add(in98, t369);
    let t371 = circuit_add(t370, in125);
    let t372 = circuit_mul(in89, in124);
    let t373 = circuit_add(in99, t372);
    let t374 = circuit_add(t373, in125);
    let t375 = circuit_mul(t371, t374);
    let t376 = circuit_mul(in90, in124);
    let t377 = circuit_add(in100, t376);
    let t378 = circuit_add(t377, in125);
    let t379 = circuit_mul(t375, t378);
    let t380 = circuit_mul(in91, in124);
    let t381 = circuit_add(in101, t380);
    let t382 = circuit_add(t381, in125);
    let t383 = circuit_mul(t379, t382);
    let t384 = circuit_mul(in84, in124);
    let t385 = circuit_add(in98, t384);
    let t386 = circuit_add(t385, in125);
    let t387 = circuit_mul(in85, in124);
    let t388 = circuit_add(in99, t387);
    let t389 = circuit_add(t388, in125);
    let t390 = circuit_mul(t386, t389);
    let t391 = circuit_mul(in86, in124);
    let t392 = circuit_add(in100, t391);
    let t393 = circuit_add(t392, in125);
    let t394 = circuit_mul(t390, t393);
    let t395 = circuit_mul(in87, in124);
    let t396 = circuit_add(in101, t395);
    let t397 = circuit_add(t396, in125);
    let t398 = circuit_mul(t394, t397);
    let t399 = circuit_add(in102, in96);
    let t400 = circuit_mul(t383, t399);
    let t401 = circuit_mul(in97, t11);
    let t402 = circuit_add(in110, t401);
    let t403 = circuit_mul(t398, t402);
    let t404 = circuit_sub(t400, t403);
    let t405 = circuit_mul(t404, t340);
    let t406 = circuit_mul(in97, in110);
    let t407 = circuit_mul(t406, t340);
    let t408 = circuit_mul(in93, in121);
    let t409 = circuit_mul(in94, in122);
    let t410 = circuit_mul(in95, in123);
    let t411 = circuit_add(in92, in125);
    let t412 = circuit_add(t411, t408);
    let t413 = circuit_add(t412, t409);
    let t414 = circuit_add(t413, t410);
    let t415 = circuit_mul(in74, in106);
    let t416 = circuit_add(in98, in125);
    let t417 = circuit_add(t416, t415);
    let t418 = circuit_mul(in71, in107);
    let t419 = circuit_add(in99, t418);
    let t420 = circuit_mul(in72, in108);
    let t421 = circuit_add(in100, t420);
    let t422 = circuit_mul(t419, in121);
    let t423 = circuit_mul(t421, in122);
    let t424 = circuit_mul(in75, in123);
    let t425 = circuit_add(t417, t422);
    let t426 = circuit_add(t425, t423);
    let t427 = circuit_add(t426, t424);
    let t428 = circuit_mul(in103, t414);
    let t429 = circuit_mul(in103, t427);
    let t430 = circuit_add(in105, in77);
    let t431 = circuit_mul(in105, in77);
    let t432 = circuit_sub(t430, t431);
    let t433 = circuit_mul(t427, t414);
    let t434 = circuit_mul(t433, in103);
    let t435 = circuit_sub(t434, t432);
    let t436 = circuit_mul(t435, t340);
    let t437 = circuit_mul(in77, t428);
    let t438 = circuit_mul(in104, t429);
    let t439 = circuit_sub(t437, t438);
    let t440 = circuit_sub(in99, in98);
    let t441 = circuit_sub(in100, in99);
    let t442 = circuit_sub(in101, in100);
    let t443 = circuit_sub(in106, in101);
    let t444 = circuit_add(t440, in18);
    let t445 = circuit_add(t440, in19);
    let t446 = circuit_add(t440, in20);
    let t447 = circuit_mul(t440, t444);
    let t448 = circuit_mul(t447, t445);
    let t449 = circuit_mul(t448, t446);
    let t450 = circuit_mul(t449, in79);
    let t451 = circuit_mul(t450, t340);
    let t452 = circuit_add(t441, in18);
    let t453 = circuit_add(t441, in19);
    let t454 = circuit_add(t441, in20);
    let t455 = circuit_mul(t441, t452);
    let t456 = circuit_mul(t455, t453);
    let t457 = circuit_mul(t456, t454);
    let t458 = circuit_mul(t457, in79);
    let t459 = circuit_mul(t458, t340);
    let t460 = circuit_add(t442, in18);
    let t461 = circuit_add(t442, in19);
    let t462 = circuit_add(t442, in20);
    let t463 = circuit_mul(t442, t460);
    let t464 = circuit_mul(t463, t461);
    let t465 = circuit_mul(t464, t462);
    let t466 = circuit_mul(t465, in79);
    let t467 = circuit_mul(t466, t340);
    let t468 = circuit_add(t443, in18);
    let t469 = circuit_add(t443, in19);
    let t470 = circuit_add(t443, in20);
    let t471 = circuit_mul(t443, t468);
    let t472 = circuit_mul(t471, t469);
    let t473 = circuit_mul(t472, t470);
    let t474 = circuit_mul(t473, in79);
    let t475 = circuit_mul(t474, t340);
    let t476 = circuit_sub(in106, in99);
    let t477 = circuit_mul(in100, in100);
    let t478 = circuit_mul(in109, in109);
    let t479 = circuit_mul(in100, in109);
    let t480 = circuit_mul(t479, in73);
    let t481 = circuit_add(in107, in106);
    let t482 = circuit_add(t481, in99);
    let t483 = circuit_mul(t482, t476);
    let t484 = circuit_mul(t483, t476);
    let t485 = circuit_sub(t484, t478);
    let t486 = circuit_sub(t485, t477);
    let t487 = circuit_add(t486, t480);
    let t488 = circuit_add(t487, t480);
    let t489 = circuit_sub(in0, in71);
    let t490 = circuit_mul(t488, t340);
    let t491 = circuit_mul(t490, in80);
    let t492 = circuit_mul(t491, t489);
    let t493 = circuit_add(in100, in108);
    let t494 = circuit_mul(in109, in73);
    let t495 = circuit_sub(t494, in100);
    let t496 = circuit_mul(t493, t476);
    let t497 = circuit_sub(in107, in99);
    let t498 = circuit_mul(t497, t495);
    let t499 = circuit_add(t496, t498);
    let t500 = circuit_mul(t499, t340);
    let t501 = circuit_mul(t500, in80);
    let t502 = circuit_mul(t501, t489);
    let t503 = circuit_add(t477, in21);
    let t504 = circuit_mul(t503, in99);
    let t505 = circuit_add(t477, t477);
    let t506 = circuit_add(t505, t505);
    let t507 = circuit_mul(t504, in22);
    let t508 = circuit_add(in107, in99);
    let t509 = circuit_add(t508, in99);
    let t510 = circuit_mul(t509, t506);
    let t511 = circuit_sub(t510, t507);
    let t512 = circuit_mul(t511, t340);
    let t513 = circuit_mul(t512, in80);
    let t514 = circuit_mul(t513, in71);
    let t515 = circuit_add(t492, t514);
    let t516 = circuit_add(in99, in99);
    let t517 = circuit_add(t516, in99);
    let t518 = circuit_mul(t517, in99);
    let t519 = circuit_sub(in99, in107);
    let t520 = circuit_mul(t518, t519);
    let t521 = circuit_add(in100, in100);
    let t522 = circuit_add(in100, in108);
    let t523 = circuit_mul(t521, t522);
    let t524 = circuit_sub(t520, t523);
    let t525 = circuit_mul(t524, t340);
    let t526 = circuit_mul(t525, in80);
    let t527 = circuit_mul(t526, in71);
    let t528 = circuit_add(t502, t527);
    let t529 = circuit_mul(in98, in107);
    let t530 = circuit_mul(in106, in99);
    let t531 = circuit_add(t529, t530);
    let t532 = circuit_mul(in98, in101);
    let t533 = circuit_mul(in99, in100);
    let t534 = circuit_add(t532, t533);
    let t535 = circuit_sub(t534, in108);
    let t536 = circuit_mul(t535, in23);
    let t537 = circuit_sub(t536, in109);
    let t538 = circuit_add(t537, t531);
    let t539 = circuit_mul(t538, in76);
    let t540 = circuit_mul(t531, in23);
    let t541 = circuit_mul(in106, in107);
    let t542 = circuit_add(t540, t541);
    let t543 = circuit_add(in100, in101);
    let t544 = circuit_sub(t542, t543);
    let t545 = circuit_mul(t544, in75);
    let t546 = circuit_add(t542, in101);
    let t547 = circuit_add(in108, in109);
    let t548 = circuit_sub(t546, t547);
    let t549 = circuit_mul(t548, in71);
    let t550 = circuit_add(t545, t539);
    let t551 = circuit_add(t550, t549);
    let t552 = circuit_mul(t551, in74);
    let t553 = circuit_mul(in107, in24);
    let t554 = circuit_add(t553, in106);
    let t555 = circuit_mul(t554, in24);
    let t556 = circuit_add(t555, in100);
    let t557 = circuit_mul(t556, in24);
    let t558 = circuit_add(t557, in99);
    let t559 = circuit_mul(t558, in24);
    let t560 = circuit_add(t559, in98);
    let t561 = circuit_sub(t560, in101);
    let t562 = circuit_mul(t561, in76);
    let t563 = circuit_mul(in108, in24);
    let t564 = circuit_add(t563, in107);
    let t565 = circuit_mul(t564, in24);
    let t566 = circuit_add(t565, in106);
    let t567 = circuit_mul(t566, in24);
    let t568 = circuit_add(t567, in101);
    let t569 = circuit_mul(t568, in24);
    let t570 = circuit_add(t569, in100);
    let t571 = circuit_sub(t570, in109);
    let t572 = circuit_mul(t571, in71);
    let t573 = circuit_add(t562, t572);
    let t574 = circuit_mul(t573, in75);
    let t575 = circuit_mul(in100, in123);
    let t576 = circuit_mul(in99, in122);
    let t577 = circuit_mul(in98, in121);
    let t578 = circuit_add(t575, t576);
    let t579 = circuit_add(t578, t577);
    let t580 = circuit_add(t579, in72);
    let t581 = circuit_sub(t580, in101);
    let t582 = circuit_sub(in106, in98);
    let t583 = circuit_sub(in109, in101);
    let t584 = circuit_mul(t582, t582);
    let t585 = circuit_sub(t584, t582);
    let t586 = circuit_sub(in2, t582);
    let t587 = circuit_add(t586, in0);
    let t588 = circuit_mul(t587, t583);
    let t589 = circuit_mul(in73, in74);
    let t590 = circuit_mul(t589, in81);
    let t591 = circuit_mul(t590, t340);
    let t592 = circuit_mul(t588, t591);
    let t593 = circuit_mul(t585, t591);
    let t594 = circuit_mul(t581, t589);
    let t595 = circuit_sub(in101, t580);
    let t596 = circuit_mul(t595, t595);
    let t597 = circuit_sub(t596, t595);
    let t598 = circuit_mul(in108, in123);
    let t599 = circuit_mul(in107, in122);
    let t600 = circuit_mul(in106, in121);
    let t601 = circuit_add(t598, t599);
    let t602 = circuit_add(t601, t600);
    let t603 = circuit_sub(in109, t602);
    let t604 = circuit_sub(in108, in100);
    let t605 = circuit_sub(in2, t582);
    let t606 = circuit_add(t605, in0);
    let t607 = circuit_sub(in2, t603);
    let t608 = circuit_add(t607, in0);
    let t609 = circuit_mul(t604, t608);
    let t610 = circuit_mul(t606, t609);
    let t611 = circuit_mul(t603, t603);
    let t612 = circuit_sub(t611, t603);
    let t613 = circuit_mul(in78, in81);
    let t614 = circuit_mul(t613, t340);
    let t615 = circuit_mul(t610, t614);
    let t616 = circuit_mul(t585, t614);
    let t617 = circuit_mul(t612, t614);
    let t618 = circuit_mul(t597, in78);
    let t619 = circuit_sub(in107, in99);
    let t620 = circuit_sub(in2, t582);
    let t621 = circuit_add(t620, in0);
    let t622 = circuit_mul(t621, t619);
    let t623 = circuit_sub(t622, in100);
    let t624 = circuit_mul(t623, in76);
    let t625 = circuit_mul(t624, in73);
    let t626 = circuit_add(t594, t625);
    let t627 = circuit_mul(t581, in71);
    let t628 = circuit_mul(t627, in73);
    let t629 = circuit_add(t626, t628);
    let t630 = circuit_add(t629, t618);
    let t631 = circuit_add(t630, t552);
    let t632 = circuit_add(t631, t574);
    let t633 = circuit_mul(t632, in81);
    let t634 = circuit_mul(t633, t340);
    let t635 = circuit_add(in98, in73);
    let t636 = circuit_add(in99, in74);
    let t637 = circuit_add(in100, in75);
    let t638 = circuit_add(in101, in76);
    let t639 = circuit_mul(t635, t635);
    let t640 = circuit_mul(t639, t639);
    let t641 = circuit_mul(t640, t635);
    let t642 = circuit_mul(t636, t636);
    let t643 = circuit_mul(t642, t642);
    let t644 = circuit_mul(t643, t636);
    let t645 = circuit_mul(t637, t637);
    let t646 = circuit_mul(t645, t645);
    let t647 = circuit_mul(t646, t637);
    let t648 = circuit_mul(t638, t638);
    let t649 = circuit_mul(t648, t648);
    let t650 = circuit_mul(t649, t638);
    let t651 = circuit_add(t641, t644);
    let t652 = circuit_add(t647, t650);
    let t653 = circuit_add(t644, t644);
    let t654 = circuit_add(t653, t652);
    let t655 = circuit_add(t650, t650);
    let t656 = circuit_add(t655, t651);
    let t657 = circuit_add(t652, t652);
    let t658 = circuit_add(t657, t657);
    let t659 = circuit_add(t658, t656);
    let t660 = circuit_add(t651, t651);
    let t661 = circuit_add(t660, t660);
    let t662 = circuit_add(t661, t654);
    let t663 = circuit_add(t656, t662);
    let t664 = circuit_add(t654, t659);
    let t665 = circuit_mul(in82, t340);
    let t666 = circuit_sub(t663, in106);
    let t667 = circuit_mul(t665, t666);
    let t668 = circuit_sub(t662, in107);
    let t669 = circuit_mul(t665, t668);
    let t670 = circuit_sub(t664, in108);
    let t671 = circuit_mul(t665, t670);
    let t672 = circuit_sub(t659, in109);
    let t673 = circuit_mul(t665, t672);
    let t674 = circuit_add(in98, in73);
    let t675 = circuit_mul(t674, t674);
    let t676 = circuit_mul(t675, t675);
    let t677 = circuit_mul(t676, t674);
    let t678 = circuit_add(t677, in99);
    let t679 = circuit_add(t678, in100);
    let t680 = circuit_add(t679, in101);
    let t681 = circuit_mul(in83, t340);
    let t682 = circuit_mul(t677, in25);
    let t683 = circuit_add(t682, t680);
    let t684 = circuit_sub(t683, in106);
    let t685 = circuit_mul(t681, t684);
    let t686 = circuit_mul(in99, in26);
    let t687 = circuit_add(t686, t680);
    let t688 = circuit_sub(t687, in107);
    let t689 = circuit_mul(t681, t688);
    let t690 = circuit_mul(in100, in27);
    let t691 = circuit_add(t690, t680);
    let t692 = circuit_sub(t691, in108);
    let t693 = circuit_mul(t681, t692);
    let t694 = circuit_mul(in101, in28);
    let t695 = circuit_add(t694, t680);
    let t696 = circuit_sub(t695, in109);
    let t697 = circuit_mul(t681, t696);
    let t698 = circuit_mul(t368, in127);
    let t699 = circuit_add(t359, t698);
    let t700 = circuit_mul(t405, in128);
    let t701 = circuit_add(t699, t700);
    let t702 = circuit_mul(t407, in129);
    let t703 = circuit_add(t701, t702);
    let t704 = circuit_mul(t436, in130);
    let t705 = circuit_add(t703, t704);
    let t706 = circuit_mul(t439, in131);
    let t707 = circuit_add(t705, t706);
    let t708 = circuit_mul(t451, in132);
    let t709 = circuit_add(t707, t708);
    let t710 = circuit_mul(t459, in133);
    let t711 = circuit_add(t709, t710);
    let t712 = circuit_mul(t467, in134);
    let t713 = circuit_add(t711, t712);
    let t714 = circuit_mul(t475, in135);
    let t715 = circuit_add(t713, t714);
    let t716 = circuit_mul(t515, in136);
    let t717 = circuit_add(t715, t716);
    let t718 = circuit_mul(t528, in137);
    let t719 = circuit_add(t717, t718);
    let t720 = circuit_mul(t634, in138);
    let t721 = circuit_add(t719, t720);
    let t722 = circuit_mul(t592, in139);
    let t723 = circuit_add(t721, t722);
    let t724 = circuit_mul(t593, in140);
    let t725 = circuit_add(t723, t724);
    let t726 = circuit_mul(t615, in141);
    let t727 = circuit_add(t725, t726);
    let t728 = circuit_mul(t616, in142);
    let t729 = circuit_add(t727, t728);
    let t730 = circuit_mul(t617, in143);
    let t731 = circuit_add(t729, t730);
    let t732 = circuit_mul(t667, in144);
    let t733 = circuit_add(t731, t732);
    let t734 = circuit_mul(t669, in145);
    let t735 = circuit_add(t733, t734);
    let t736 = circuit_mul(t671, in146);
    let t737 = circuit_add(t735, t736);
    let t738 = circuit_mul(t673, in147);
    let t739 = circuit_add(t737, t738);
    let t740 = circuit_mul(t685, in148);
    let t741 = circuit_add(t739, t740);
    let t742 = circuit_mul(t689, in149);
    let t743 = circuit_add(t741, t742);
    let t744 = circuit_mul(t693, in150);
    let t745 = circuit_add(t743, t744);
    let t746 = circuit_mul(t697, in151);
    let t747 = circuit_add(t745, t746);
    let t748 = circuit_sub(t747, t336);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (t279, t748).new_inputs();
    // Prefill constants:

    circuit_inputs = circuit_inputs
        .next_span(HONK_SUMCHECK_SIZE_5_PUB_1_GRUMPKIN_CONSTANTS.span()); // in0 - in28

    // Fill inputs:

    for val in p_public_inputs {
        circuit_inputs = circuit_inputs.next_u256(*val);
    } // in29 - in29

    circuit_inputs = circuit_inputs.next_2(p_public_inputs_offset); // in30

    for val in sumcheck_univariates_flat {
        circuit_inputs = circuit_inputs.next_u256(*val);
    } // in31 - in70

    for val in sumcheck_evaluations {
        circuit_inputs = circuit_inputs.next_u256(*val);
    } // in71 - in110

    for val in tp_sum_check_u_challenges {
        circuit_inputs = circuit_inputs.next_u128(*val);
    } // in111 - in115

    for val in tp_gate_challenges {
        circuit_inputs = circuit_inputs.next_u128(*val);
    } // in116 - in120

    circuit_inputs = circuit_inputs.next_u128(tp_eta_1); // in121
    circuit_inputs = circuit_inputs.next_u128(tp_eta_2); // in122
    circuit_inputs = circuit_inputs.next_u128(tp_eta_3); // in123
    circuit_inputs = circuit_inputs.next_u128(tp_beta); // in124
    circuit_inputs = circuit_inputs.next_u128(tp_gamma); // in125
    circuit_inputs = circuit_inputs.next_2(tp_base_rlc); // in126

    for val in tp_alphas {
        circuit_inputs = circuit_inputs.next_u128(*val);
    } // in127 - in151

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let check_rlc: u384 = outputs.get_output(t279);
    let check: u384 = outputs.get_output(t748);
    return (check_rlc, check);
}
const HONK_SUMCHECK_SIZE_5_PUB_1_GRUMPKIN_CONSTANTS: [u384; 29] = [
    u384 { limb0: 0x1, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x20, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593efffec51,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x2d0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593efffff11,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x90, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593efffff71,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0xf0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 {
        limb0: 0x79b9709143e1f593effffd31,
        limb1: 0xb85045b68181585d2833e848,
        limb2: 0x30644e72e131a029,
        limb3: 0x0,
    },
    u384 { limb0: 0x13b0, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x2, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x3, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x4, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x5, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x6, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
    u384 { limb0: 0x7, limb1: 0x0, limb2: 0x0, limb3: 0x0 },
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
pub fn run_GRUMPKIN_HONK_PREP_MSM_SCALARS_SIZE_5_circuit(
    p_sumcheck_evaluations: Span<u256>,
    p_gemini_a_evaluations: Span<u256>,
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
) {
    // CONSTANT stack
    let in0 = CE::<CI<0>> {}; // 0x0
    let in1 = CE::<CI<1>> {}; // 0x1

    // INPUT stack
    let (in2, in3, in4) = (CE::<CI<2>> {}, CE::<CI<3>> {}, CE::<CI<4>> {});
    let (in5, in6, in7) = (CE::<CI<5>> {}, CE::<CI<6>> {}, CE::<CI<7>> {});
    let (in8, in9, in10) = (CE::<CI<8>> {}, CE::<CI<9>> {}, CE::<CI<10>> {});
    let (in11, in12, in13) = (CE::<CI<11>> {}, CE::<CI<12>> {}, CE::<CI<13>> {});
    let (in14, in15, in16) = (CE::<CI<14>> {}, CE::<CI<15>> {}, CE::<CI<16>> {});
    let (in17, in18, in19) = (CE::<CI<17>> {}, CE::<CI<18>> {}, CE::<CI<19>> {});
    let (in20, in21, in22) = (CE::<CI<20>> {}, CE::<CI<21>> {}, CE::<CI<22>> {});
    let (in23, in24, in25) = (CE::<CI<23>> {}, CE::<CI<24>> {}, CE::<CI<25>> {});
    let (in26, in27, in28) = (CE::<CI<26>> {}, CE::<CI<27>> {}, CE::<CI<28>> {});
    let (in29, in30, in31) = (CE::<CI<29>> {}, CE::<CI<30>> {}, CE::<CI<31>> {});
    let (in32, in33, in34) = (CE::<CI<32>> {}, CE::<CI<33>> {}, CE::<CI<34>> {});
    let (in35, in36, in37) = (CE::<CI<35>> {}, CE::<CI<36>> {}, CE::<CI<37>> {});
    let (in38, in39, in40) = (CE::<CI<38>> {}, CE::<CI<39>> {}, CE::<CI<40>> {});
    let (in41, in42, in43) = (CE::<CI<41>> {}, CE::<CI<42>> {}, CE::<CI<43>> {});
    let (in44, in45, in46) = (CE::<CI<44>> {}, CE::<CI<45>> {}, CE::<CI<46>> {});
    let (in47, in48, in49) = (CE::<CI<47>> {}, CE::<CI<48>> {}, CE::<CI<49>> {});
    let (in50, in51, in52) = (CE::<CI<50>> {}, CE::<CI<51>> {}, CE::<CI<52>> {});
    let (in53, in54, in55) = (CE::<CI<53>> {}, CE::<CI<54>> {}, CE::<CI<55>> {});
    let t0 = circuit_mul(in47, in47);
    let t1 = circuit_mul(t0, t0);
    let t2 = circuit_mul(t1, t1);
    let t3 = circuit_mul(t2, t2);
    let t4 = circuit_sub(in49, in47);
    let t5 = circuit_inverse(t4);
    let t6 = circuit_add(in49, in47);
    let t7 = circuit_inverse(t6);
    let t8 = circuit_mul(in50, t7);
    let t9 = circuit_add(t5, t8);
    let t10 = circuit_sub(in0, t9);
    let t11 = circuit_inverse(in47);
    let t12 = circuit_mul(in50, t7);
    let t13 = circuit_sub(t5, t12);
    let t14 = circuit_mul(t11, t13);
    let t15 = circuit_sub(in0, t14);
    let t16 = circuit_mul(t10, in1);
    let t17 = circuit_mul(in2, in1);
    let t18 = circuit_add(in0, t17);
    let t19 = circuit_mul(in1, in48);
    let t20 = circuit_mul(t10, t19);
    let t21 = circuit_mul(in3, t19);
    let t22 = circuit_add(t18, t21);
    let t23 = circuit_mul(t19, in48);
    let t24 = circuit_mul(t10, t23);
    let t25 = circuit_mul(in4, t23);
    let t26 = circuit_add(t22, t25);
    let t27 = circuit_mul(t23, in48);
    let t28 = circuit_mul(t10, t27);
    let t29 = circuit_mul(in5, t27);
    let t30 = circuit_add(t26, t29);
    let t31 = circuit_mul(t27, in48);
    let t32 = circuit_mul(t10, t31);
    let t33 = circuit_mul(in6, t31);
    let t34 = circuit_add(t30, t33);
    let t35 = circuit_mul(t31, in48);
    let t36 = circuit_mul(t10, t35);
    let t37 = circuit_mul(in7, t35);
    let t38 = circuit_add(t34, t37);
    let t39 = circuit_mul(t35, in48);
    let t40 = circuit_mul(t10, t39);
    let t41 = circuit_mul(in8, t39);
    let t42 = circuit_add(t38, t41);
    let t43 = circuit_mul(t39, in48);
    let t44 = circuit_mul(t10, t43);
    let t45 = circuit_mul(in9, t43);
    let t46 = circuit_add(t42, t45);
    let t47 = circuit_mul(t43, in48);
    let t48 = circuit_mul(t10, t47);
    let t49 = circuit_mul(in10, t47);
    let t50 = circuit_add(t46, t49);
    let t51 = circuit_mul(t47, in48);
    let t52 = circuit_mul(t10, t51);
    let t53 = circuit_mul(in11, t51);
    let t54 = circuit_add(t50, t53);
    let t55 = circuit_mul(t51, in48);
    let t56 = circuit_mul(t10, t55);
    let t57 = circuit_mul(in12, t55);
    let t58 = circuit_add(t54, t57);
    let t59 = circuit_mul(t55, in48);
    let t60 = circuit_mul(t10, t59);
    let t61 = circuit_mul(in13, t59);
    let t62 = circuit_add(t58, t61);
    let t63 = circuit_mul(t59, in48);
    let t64 = circuit_mul(t10, t63);
    let t65 = circuit_mul(in14, t63);
    let t66 = circuit_add(t62, t65);
    let t67 = circuit_mul(t63, in48);
    let t68 = circuit_mul(t10, t67);
    let t69 = circuit_mul(in15, t67);
    let t70 = circuit_add(t66, t69);
    let t71 = circuit_mul(t67, in48);
    let t72 = circuit_mul(t10, t71);
    let t73 = circuit_mul(in16, t71);
    let t74 = circuit_add(t70, t73);
    let t75 = circuit_mul(t71, in48);
    let t76 = circuit_mul(t10, t75);
    let t77 = circuit_mul(in17, t75);
    let t78 = circuit_add(t74, t77);
    let t79 = circuit_mul(t75, in48);
    let t80 = circuit_mul(t10, t79);
    let t81 = circuit_mul(in18, t79);
    let t82 = circuit_add(t78, t81);
    let t83 = circuit_mul(t79, in48);
    let t84 = circuit_mul(t10, t83);
    let t85 = circuit_mul(in19, t83);
    let t86 = circuit_add(t82, t85);
    let t87 = circuit_mul(t83, in48);
    let t88 = circuit_mul(t10, t87);
    let t89 = circuit_mul(in20, t87);
    let t90 = circuit_add(t86, t89);
    let t91 = circuit_mul(t87, in48);
    let t92 = circuit_mul(t10, t91);
    let t93 = circuit_mul(in21, t91);
    let t94 = circuit_add(t90, t93);
    let t95 = circuit_mul(t91, in48);
    let t96 = circuit_mul(t10, t95);
    let t97 = circuit_mul(in22, t95);
    let t98 = circuit_add(t94, t97);
    let t99 = circuit_mul(t95, in48);
    let t100 = circuit_mul(t10, t99);
    let t101 = circuit_mul(in23, t99);
    let t102 = circuit_add(t98, t101);
    let t103 = circuit_mul(t99, in48);
    let t104 = circuit_mul(t10, t103);
    let t105 = circuit_mul(in24, t103);
    let t106 = circuit_add(t102, t105);
    let t107 = circuit_mul(t103, in48);
    let t108 = circuit_mul(t10, t107);
    let t109 = circuit_mul(in25, t107);
    let t110 = circuit_add(t106, t109);
    let t111 = circuit_mul(t107, in48);
    let t112 = circuit_mul(t10, t111);
    let t113 = circuit_mul(in26, t111);
    let t114 = circuit_add(t110, t113);
    let t115 = circuit_mul(t111, in48);
    let t116 = circuit_mul(t10, t115);
    let t117 = circuit_mul(in27, t115);
    let t118 = circuit_add(t114, t117);
    let t119 = circuit_mul(t115, in48);
    let t120 = circuit_mul(t10, t119);
    let t121 = circuit_mul(in28, t119);
    let t122 = circuit_add(t118, t121);
    let t123 = circuit_mul(t119, in48);
    let t124 = circuit_mul(t10, t123);
    let t125 = circuit_mul(in29, t123);
    let t126 = circuit_add(t122, t125);
    let t127 = circuit_mul(t123, in48);
    let t128 = circuit_mul(t10, t127);
    let t129 = circuit_mul(in30, t127);
    let t130 = circuit_add(t126, t129);
    let t131 = circuit_mul(t127, in48);
    let t132 = circuit_mul(t10, t131);
    let t133 = circuit_mul(in31, t131);
    let t134 = circuit_add(t130, t133);
    let t135 = circuit_mul(t131, in48);
    let t136 = circuit_mul(t10, t135);
    let t137 = circuit_mul(in32, t135);
    let t138 = circuit_add(t134, t137);
    let t139 = circuit_mul(t135, in48);
    let t140 = circuit_mul(t10, t139);
    let t141 = circuit_mul(in33, t139);
    let t142 = circuit_add(t138, t141);
    let t143 = circuit_mul(t139, in48);
    let t144 = circuit_mul(t10, t143);
    let t145 = circuit_mul(in34, t143);
    let t146 = circuit_add(t142, t145);
    let t147 = circuit_mul(t143, in48);
    let t148 = circuit_mul(t10, t147);
    let t149 = circuit_mul(in35, t147);
    let t150 = circuit_add(t146, t149);
    let t151 = circuit_mul(t147, in48);
    let t152 = circuit_mul(t10, t151);
    let t153 = circuit_mul(in36, t151);
    let t154 = circuit_add(t150, t153);
    let t155 = circuit_mul(t151, in48);
    let t156 = circuit_mul(t15, t155);
    let t157 = circuit_mul(in37, t155);
    let t158 = circuit_add(t154, t157);
    let t159 = circuit_mul(t155, in48);
    let t160 = circuit_mul(t15, t159);
    let t161 = circuit_mul(in38, t159);
    let t162 = circuit_add(t158, t161);
    let t163 = circuit_mul(t159, in48);
    let t164 = circuit_mul(t15, t163);
    let t165 = circuit_mul(in39, t163);
    let t166 = circuit_add(t162, t165);
    let t167 = circuit_mul(t163, in48);
    let t168 = circuit_mul(t15, t167);
    let t169 = circuit_mul(in40, t167);
    let t170 = circuit_add(t166, t169);
    let t171 = circuit_mul(t167, in48);
    let t172 = circuit_mul(t15, t171);
    let t173 = circuit_mul(in41, t171);
    let t174 = circuit_add(t170, t173);
    let t175 = circuit_sub(in1, in55);
    let t176 = circuit_mul(t3, t175);
    let t177 = circuit_mul(t3, t174);
    let t178 = circuit_add(t177, t177);
    let t179 = circuit_sub(t176, in55);
    let t180 = circuit_mul(in46, t179);
    let t181 = circuit_sub(t178, t180);
    let t182 = circuit_add(t176, in55);
    let t183 = circuit_inverse(t182);
    let t184 = circuit_mul(t181, t183);
    let t185 = circuit_sub(in1, in54);
    let t186 = circuit_mul(t2, t185);
    let t187 = circuit_mul(t2, t184);
    let t188 = circuit_add(t187, t187);
    let t189 = circuit_sub(t186, in54);
    let t190 = circuit_mul(in45, t189);
    let t191 = circuit_sub(t188, t190);
    let t192 = circuit_add(t186, in54);
    let t193 = circuit_inverse(t192);
    let t194 = circuit_mul(t191, t193);
    let t195 = circuit_sub(in1, in53);
    let t196 = circuit_mul(t1, t195);
    let t197 = circuit_mul(t1, t194);
    let t198 = circuit_add(t197, t197);
    let t199 = circuit_sub(t196, in53);
    let t200 = circuit_mul(in44, t199);
    let t201 = circuit_sub(t198, t200);
    let t202 = circuit_add(t196, in53);
    let t203 = circuit_inverse(t202);
    let t204 = circuit_mul(t201, t203);
    let t205 = circuit_sub(in1, in52);
    let t206 = circuit_mul(t0, t205);
    let t207 = circuit_mul(t0, t204);
    let t208 = circuit_add(t207, t207);
    let t209 = circuit_sub(t206, in52);
    let t210 = circuit_mul(in43, t209);
    let t211 = circuit_sub(t208, t210);
    let t212 = circuit_add(t206, in52);
    let t213 = circuit_inverse(t212);
    let t214 = circuit_mul(t211, t213);
    let t215 = circuit_sub(in1, in51);
    let t216 = circuit_mul(in47, t215);
    let t217 = circuit_mul(in47, t214);
    let t218 = circuit_add(t217, t217);
    let t219 = circuit_sub(t216, in51);
    let t220 = circuit_mul(in42, t219);
    let t221 = circuit_sub(t218, t220);
    let t222 = circuit_add(t216, in51);
    let t223 = circuit_inverse(t222);
    let t224 = circuit_mul(t221, t223);
    let t225 = circuit_mul(t224, t5);
    let t226 = circuit_mul(in42, in50);
    let t227 = circuit_mul(t226, t7);
    let t228 = circuit_add(t225, t227);
    let t229 = circuit_mul(in50, in50);
    let t230 = circuit_sub(in49, t0);
    let t231 = circuit_inverse(t230);
    let t232 = circuit_add(in49, t0);
    let t233 = circuit_inverse(t232);
    let t234 = circuit_mul(t229, t231);
    let t235 = circuit_mul(in50, t233);
    let t236 = circuit_mul(t229, t235);
    let t237 = circuit_add(t236, t234);
    let t238 = circuit_sub(in0, t237);
    let t239 = circuit_mul(t236, in43);
    let t240 = circuit_mul(t234, t214);
    let t241 = circuit_add(t239, t240);
    let t242 = circuit_add(t228, t241);
    let t243 = circuit_mul(in50, in50);
    let t244 = circuit_mul(t229, t243);
    let t245 = circuit_sub(in49, t1);
    let t246 = circuit_inverse(t245);
    let t247 = circuit_add(in49, t1);
    let t248 = circuit_inverse(t247);
    let t249 = circuit_mul(t244, t246);
    let t250 = circuit_mul(in50, t248);
    let t251 = circuit_mul(t244, t250);
    let t252 = circuit_add(t251, t249);
    let t253 = circuit_sub(in0, t252);
    let t254 = circuit_mul(t251, in44);
    let t255 = circuit_mul(t249, t204);
    let t256 = circuit_add(t254, t255);
    let t257 = circuit_add(t242, t256);
    let t258 = circuit_mul(in50, in50);
    let t259 = circuit_mul(t244, t258);
    let t260 = circuit_sub(in49, t2);
    let t261 = circuit_inverse(t260);
    let t262 = circuit_add(in49, t2);
    let t263 = circuit_inverse(t262);
    let t264 = circuit_mul(t259, t261);
    let t265 = circuit_mul(in50, t263);
    let t266 = circuit_mul(t259, t265);
    let t267 = circuit_add(t266, t264);
    let t268 = circuit_sub(in0, t267);
    let t269 = circuit_mul(t266, in45);
    let t270 = circuit_mul(t264, t194);
    let t271 = circuit_add(t269, t270);
    let t272 = circuit_add(t257, t271);
    let t273 = circuit_mul(in50, in50);
    let t274 = circuit_mul(t259, t273);
    let t275 = circuit_sub(in49, t3);
    let t276 = circuit_inverse(t275);
    let t277 = circuit_add(in49, t3);
    let t278 = circuit_inverse(t277);
    let t279 = circuit_mul(t274, t276);
    let t280 = circuit_mul(in50, t278);
    let t281 = circuit_mul(t274, t280);
    let t282 = circuit_add(t281, t279);
    let t283 = circuit_sub(in0, t282);
    let t284 = circuit_mul(t281, in46);
    let t285 = circuit_mul(t279, t184);
    let t286 = circuit_add(t284, t285);
    let t287 = circuit_add(t272, t286);
    let t288 = circuit_add(t124, t156);
    let t289 = circuit_add(t128, t160);
    let t290 = circuit_add(t132, t164);
    let t291 = circuit_add(t136, t168);
    let t292 = circuit_add(t140, t172);

    let modulus = get_GRUMPKIN_modulus(); // GRUMPKIN prime field modulus

    let mut circuit_inputs = (
        t16,
        t20,
        t24,
        t28,
        t32,
        t36,
        t40,
        t44,
        t48,
        t52,
        t56,
        t60,
        t64,
        t68,
        t72,
        t76,
        t80,
        t84,
        t88,
        t92,
        t96,
        t100,
        t104,
        t108,
        t112,
        t116,
        t120,
        t288,
        t289,
        t290,
        t291,
        t292,
        t144,
        t148,
        t152,
        t238,
        t253,
        t268,
        t283,
        t287,
    )
        .new_inputs();
    // Prefill constants:
    circuit_inputs = circuit_inputs.next_2([0x0, 0x0, 0x0, 0x0]); // in0
    circuit_inputs = circuit_inputs.next_2([0x1, 0x0, 0x0, 0x0]); // in1
    // Fill inputs:

    for val in p_sumcheck_evaluations {
        circuit_inputs = circuit_inputs.next_u256(*val);
    } // in2 - in41

    for val in p_gemini_a_evaluations {
        circuit_inputs = circuit_inputs.next_u256(*val);
    } // in42 - in46

    circuit_inputs = circuit_inputs.next_2(tp_gemini_r); // in47
    circuit_inputs = circuit_inputs.next_2(tp_rho); // in48
    circuit_inputs = circuit_inputs.next_2(tp_shplonk_z); // in49
    circuit_inputs = circuit_inputs.next_2(tp_shplonk_nu); // in50

    for val in tp_sum_check_u_challenges {
        circuit_inputs = circuit_inputs.next_u128(*val);
    } // in51 - in55

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let scalar_1: u384 = outputs.get_output(t16);
    let scalar_2: u384 = outputs.get_output(t20);
    let scalar_3: u384 = outputs.get_output(t24);
    let scalar_4: u384 = outputs.get_output(t28);
    let scalar_5: u384 = outputs.get_output(t32);
    let scalar_6: u384 = outputs.get_output(t36);
    let scalar_7: u384 = outputs.get_output(t40);
    let scalar_8: u384 = outputs.get_output(t44);
    let scalar_9: u384 = outputs.get_output(t48);
    let scalar_10: u384 = outputs.get_output(t52);
    let scalar_11: u384 = outputs.get_output(t56);
    let scalar_12: u384 = outputs.get_output(t60);
    let scalar_13: u384 = outputs.get_output(t64);
    let scalar_14: u384 = outputs.get_output(t68);
    let scalar_15: u384 = outputs.get_output(t72);
    let scalar_16: u384 = outputs.get_output(t76);
    let scalar_17: u384 = outputs.get_output(t80);
    let scalar_18: u384 = outputs.get_output(t84);
    let scalar_19: u384 = outputs.get_output(t88);
    let scalar_20: u384 = outputs.get_output(t92);
    let scalar_21: u384 = outputs.get_output(t96);
    let scalar_22: u384 = outputs.get_output(t100);
    let scalar_23: u384 = outputs.get_output(t104);
    let scalar_24: u384 = outputs.get_output(t108);
    let scalar_25: u384 = outputs.get_output(t112);
    let scalar_26: u384 = outputs.get_output(t116);
    let scalar_27: u384 = outputs.get_output(t120);
    let scalar_28: u384 = outputs.get_output(t288);
    let scalar_29: u384 = outputs.get_output(t289);
    let scalar_30: u384 = outputs.get_output(t290);
    let scalar_31: u384 = outputs.get_output(t291);
    let scalar_32: u384 = outputs.get_output(t292);
    let scalar_33: u384 = outputs.get_output(t144);
    let scalar_34: u384 = outputs.get_output(t148);
    let scalar_35: u384 = outputs.get_output(t152);
    let scalar_41: u384 = outputs.get_output(t238);
    let scalar_42: u384 = outputs.get_output(t253);
    let scalar_43: u384 = outputs.get_output(t268);
    let scalar_44: u384 = outputs.get_output(t283);
    let scalar_68: u384 = outputs.get_output(t287);
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
        scalar_41,
        scalar_42,
        scalar_43,
        scalar_44,
        scalar_68,
    );
}
pub fn run_BN254_EVAL_FN_CHALLENGE_SING_41P_RLC_circuit(
    A: G1Point, coeff: u384, SumDlogDivBatched: FunctionFelt,
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
    let (in183, in184) = (CE::<CI<183>> {}, CE::<CI<184>> {});
    let t0 = circuit_mul(in46, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t1 = circuit_add(in45, t0); // Eval sumdlogdiv_a_num Horner step: add coefficient_42
    let t2 = circuit_mul(t1, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t3 = circuit_add(in44, t2); // Eval sumdlogdiv_a_num Horner step: add coefficient_41
    let t4 = circuit_mul(t3, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t5 = circuit_add(in43, t4); // Eval sumdlogdiv_a_num Horner step: add coefficient_40
    let t6 = circuit_mul(t5, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t7 = circuit_add(in42, t6); // Eval sumdlogdiv_a_num Horner step: add coefficient_39
    let t8 = circuit_mul(t7, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t9 = circuit_add(in41, t8); // Eval sumdlogdiv_a_num Horner step: add coefficient_38
    let t10 = circuit_mul(t9, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t11 = circuit_add(in40, t10); // Eval sumdlogdiv_a_num Horner step: add coefficient_37
    let t12 = circuit_mul(t11, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t13 = circuit_add(in39, t12); // Eval sumdlogdiv_a_num Horner step: add coefficient_36
    let t14 = circuit_mul(t13, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t15 = circuit_add(in38, t14); // Eval sumdlogdiv_a_num Horner step: add coefficient_35
    let t16 = circuit_mul(t15, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t17 = circuit_add(in37, t16); // Eval sumdlogdiv_a_num Horner step: add coefficient_34
    let t18 = circuit_mul(t17, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t19 = circuit_add(in36, t18); // Eval sumdlogdiv_a_num Horner step: add coefficient_33
    let t20 = circuit_mul(t19, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t21 = circuit_add(in35, t20); // Eval sumdlogdiv_a_num Horner step: add coefficient_32
    let t22 = circuit_mul(t21, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t23 = circuit_add(in34, t22); // Eval sumdlogdiv_a_num Horner step: add coefficient_31
    let t24 = circuit_mul(t23, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t25 = circuit_add(in33, t24); // Eval sumdlogdiv_a_num Horner step: add coefficient_30
    let t26 = circuit_mul(t25, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t27 = circuit_add(in32, t26); // Eval sumdlogdiv_a_num Horner step: add coefficient_29
    let t28 = circuit_mul(t27, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t29 = circuit_add(in31, t28); // Eval sumdlogdiv_a_num Horner step: add coefficient_28
    let t30 = circuit_mul(t29, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t31 = circuit_add(in30, t30); // Eval sumdlogdiv_a_num Horner step: add coefficient_27
    let t32 = circuit_mul(t31, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t33 = circuit_add(in29, t32); // Eval sumdlogdiv_a_num Horner step: add coefficient_26
    let t34 = circuit_mul(t33, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t35 = circuit_add(in28, t34); // Eval sumdlogdiv_a_num Horner step: add coefficient_25
    let t36 = circuit_mul(t35, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t37 = circuit_add(in27, t36); // Eval sumdlogdiv_a_num Horner step: add coefficient_24
    let t38 = circuit_mul(t37, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t39 = circuit_add(in26, t38); // Eval sumdlogdiv_a_num Horner step: add coefficient_23
    let t40 = circuit_mul(t39, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t41 = circuit_add(in25, t40); // Eval sumdlogdiv_a_num Horner step: add coefficient_22
    let t42 = circuit_mul(t41, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t43 = circuit_add(in24, t42); // Eval sumdlogdiv_a_num Horner step: add coefficient_21
    let t44 = circuit_mul(t43, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t45 = circuit_add(in23, t44); // Eval sumdlogdiv_a_num Horner step: add coefficient_20
    let t46 = circuit_mul(t45, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t47 = circuit_add(in22, t46); // Eval sumdlogdiv_a_num Horner step: add coefficient_19
    let t48 = circuit_mul(t47, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t49 = circuit_add(in21, t48); // Eval sumdlogdiv_a_num Horner step: add coefficient_18
    let t50 = circuit_mul(t49, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t51 = circuit_add(in20, t50); // Eval sumdlogdiv_a_num Horner step: add coefficient_17
    let t52 = circuit_mul(t51, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t53 = circuit_add(in19, t52); // Eval sumdlogdiv_a_num Horner step: add coefficient_16
    let t54 = circuit_mul(t53, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t55 = circuit_add(in18, t54); // Eval sumdlogdiv_a_num Horner step: add coefficient_15
    let t56 = circuit_mul(t55, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t57 = circuit_add(in17, t56); // Eval sumdlogdiv_a_num Horner step: add coefficient_14
    let t58 = circuit_mul(t57, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t59 = circuit_add(in16, t58); // Eval sumdlogdiv_a_num Horner step: add coefficient_13
    let t60 = circuit_mul(t59, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t61 = circuit_add(in15, t60); // Eval sumdlogdiv_a_num Horner step: add coefficient_12
    let t62 = circuit_mul(t61, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t63 = circuit_add(in14, t62); // Eval sumdlogdiv_a_num Horner step: add coefficient_11
    let t64 = circuit_mul(t63, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t65 = circuit_add(in13, t64); // Eval sumdlogdiv_a_num Horner step: add coefficient_10
    let t66 = circuit_mul(t65, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t67 = circuit_add(in12, t66); // Eval sumdlogdiv_a_num Horner step: add coefficient_9
    let t68 = circuit_mul(t67, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t69 = circuit_add(in11, t68); // Eval sumdlogdiv_a_num Horner step: add coefficient_8
    let t70 = circuit_mul(t69, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t71 = circuit_add(in10, t70); // Eval sumdlogdiv_a_num Horner step: add coefficient_7
    let t72 = circuit_mul(t71, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t73 = circuit_add(in9, t72); // Eval sumdlogdiv_a_num Horner step: add coefficient_6
    let t74 = circuit_mul(t73, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t75 = circuit_add(in8, t74); // Eval sumdlogdiv_a_num Horner step: add coefficient_5
    let t76 = circuit_mul(t75, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t77 = circuit_add(in7, t76); // Eval sumdlogdiv_a_num Horner step: add coefficient_4
    let t78 = circuit_mul(t77, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t79 = circuit_add(in6, t78); // Eval sumdlogdiv_a_num Horner step: add coefficient_3
    let t80 = circuit_mul(t79, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t81 = circuit_add(in5, t80); // Eval sumdlogdiv_a_num Horner step: add coefficient_2
    let t82 = circuit_mul(t81, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t83 = circuit_add(in4, t82); // Eval sumdlogdiv_a_num Horner step: add coefficient_1
    let t84 = circuit_mul(t83, in0); // Eval sumdlogdiv_a_num Horner step: multiply by xA
    let t85 = circuit_add(in3, t84); // Eval sumdlogdiv_a_num Horner step: add coefficient_0
    let t86 = circuit_mul(in91, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t87 = circuit_add(in90, t86); // Eval sumdlogdiv_a_den Horner step: add coefficient_43
    let t88 = circuit_mul(t87, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t89 = circuit_add(in89, t88); // Eval sumdlogdiv_a_den Horner step: add coefficient_42
    let t90 = circuit_mul(t89, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t91 = circuit_add(in88, t90); // Eval sumdlogdiv_a_den Horner step: add coefficient_41
    let t92 = circuit_mul(t91, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t93 = circuit_add(in87, t92); // Eval sumdlogdiv_a_den Horner step: add coefficient_40
    let t94 = circuit_mul(t93, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t95 = circuit_add(in86, t94); // Eval sumdlogdiv_a_den Horner step: add coefficient_39
    let t96 = circuit_mul(t95, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t97 = circuit_add(in85, t96); // Eval sumdlogdiv_a_den Horner step: add coefficient_38
    let t98 = circuit_mul(t97, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t99 = circuit_add(in84, t98); // Eval sumdlogdiv_a_den Horner step: add coefficient_37
    let t100 = circuit_mul(t99, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t101 = circuit_add(in83, t100); // Eval sumdlogdiv_a_den Horner step: add coefficient_36
    let t102 = circuit_mul(t101, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t103 = circuit_add(in82, t102); // Eval sumdlogdiv_a_den Horner step: add coefficient_35
    let t104 = circuit_mul(t103, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t105 = circuit_add(in81, t104); // Eval sumdlogdiv_a_den Horner step: add coefficient_34
    let t106 = circuit_mul(t105, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t107 = circuit_add(in80, t106); // Eval sumdlogdiv_a_den Horner step: add coefficient_33
    let t108 = circuit_mul(t107, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t109 = circuit_add(in79, t108); // Eval sumdlogdiv_a_den Horner step: add coefficient_32
    let t110 = circuit_mul(t109, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t111 = circuit_add(in78, t110); // Eval sumdlogdiv_a_den Horner step: add coefficient_31
    let t112 = circuit_mul(t111, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t113 = circuit_add(in77, t112); // Eval sumdlogdiv_a_den Horner step: add coefficient_30
    let t114 = circuit_mul(t113, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t115 = circuit_add(in76, t114); // Eval sumdlogdiv_a_den Horner step: add coefficient_29
    let t116 = circuit_mul(t115, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t117 = circuit_add(in75, t116); // Eval sumdlogdiv_a_den Horner step: add coefficient_28
    let t118 = circuit_mul(t117, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t119 = circuit_add(in74, t118); // Eval sumdlogdiv_a_den Horner step: add coefficient_27
    let t120 = circuit_mul(t119, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t121 = circuit_add(in73, t120); // Eval sumdlogdiv_a_den Horner step: add coefficient_26
    let t122 = circuit_mul(t121, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t123 = circuit_add(in72, t122); // Eval sumdlogdiv_a_den Horner step: add coefficient_25
    let t124 = circuit_mul(t123, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t125 = circuit_add(in71, t124); // Eval sumdlogdiv_a_den Horner step: add coefficient_24
    let t126 = circuit_mul(t125, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t127 = circuit_add(in70, t126); // Eval sumdlogdiv_a_den Horner step: add coefficient_23
    let t128 = circuit_mul(t127, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t129 = circuit_add(in69, t128); // Eval sumdlogdiv_a_den Horner step: add coefficient_22
    let t130 = circuit_mul(t129, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t131 = circuit_add(in68, t130); // Eval sumdlogdiv_a_den Horner step: add coefficient_21
    let t132 = circuit_mul(t131, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t133 = circuit_add(in67, t132); // Eval sumdlogdiv_a_den Horner step: add coefficient_20
    let t134 = circuit_mul(t133, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t135 = circuit_add(in66, t134); // Eval sumdlogdiv_a_den Horner step: add coefficient_19
    let t136 = circuit_mul(t135, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t137 = circuit_add(in65, t136); // Eval sumdlogdiv_a_den Horner step: add coefficient_18
    let t138 = circuit_mul(t137, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t139 = circuit_add(in64, t138); // Eval sumdlogdiv_a_den Horner step: add coefficient_17
    let t140 = circuit_mul(t139, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t141 = circuit_add(in63, t140); // Eval sumdlogdiv_a_den Horner step: add coefficient_16
    let t142 = circuit_mul(t141, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t143 = circuit_add(in62, t142); // Eval sumdlogdiv_a_den Horner step: add coefficient_15
    let t144 = circuit_mul(t143, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t145 = circuit_add(in61, t144); // Eval sumdlogdiv_a_den Horner step: add coefficient_14
    let t146 = circuit_mul(t145, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t147 = circuit_add(in60, t146); // Eval sumdlogdiv_a_den Horner step: add coefficient_13
    let t148 = circuit_mul(t147, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t149 = circuit_add(in59, t148); // Eval sumdlogdiv_a_den Horner step: add coefficient_12
    let t150 = circuit_mul(t149, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t151 = circuit_add(in58, t150); // Eval sumdlogdiv_a_den Horner step: add coefficient_11
    let t152 = circuit_mul(t151, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t153 = circuit_add(in57, t152); // Eval sumdlogdiv_a_den Horner step: add coefficient_10
    let t154 = circuit_mul(t153, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t155 = circuit_add(in56, t154); // Eval sumdlogdiv_a_den Horner step: add coefficient_9
    let t156 = circuit_mul(t155, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t157 = circuit_add(in55, t156); // Eval sumdlogdiv_a_den Horner step: add coefficient_8
    let t158 = circuit_mul(t157, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t159 = circuit_add(in54, t158); // Eval sumdlogdiv_a_den Horner step: add coefficient_7
    let t160 = circuit_mul(t159, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t161 = circuit_add(in53, t160); // Eval sumdlogdiv_a_den Horner step: add coefficient_6
    let t162 = circuit_mul(t161, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t163 = circuit_add(in52, t162); // Eval sumdlogdiv_a_den Horner step: add coefficient_5
    let t164 = circuit_mul(t163, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t165 = circuit_add(in51, t164); // Eval sumdlogdiv_a_den Horner step: add coefficient_4
    let t166 = circuit_mul(t165, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t167 = circuit_add(in50, t166); // Eval sumdlogdiv_a_den Horner step: add coefficient_3
    let t168 = circuit_mul(t167, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t169 = circuit_add(in49, t168); // Eval sumdlogdiv_a_den Horner step: add coefficient_2
    let t170 = circuit_mul(t169, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t171 = circuit_add(in48, t170); // Eval sumdlogdiv_a_den Horner step: add coefficient_1
    let t172 = circuit_mul(t171, in0); // Eval sumdlogdiv_a_den Horner step: multiply by xA
    let t173 = circuit_add(in47, t172); // Eval sumdlogdiv_a_den Horner step: add coefficient_0
    let t174 = circuit_inverse(t173);
    let t175 = circuit_mul(t85, t174);
    let t176 = circuit_mul(in136, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t177 = circuit_add(in135, t176); // Eval sumdlogdiv_b_num Horner step: add coefficient_43
    let t178 = circuit_mul(t177, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t179 = circuit_add(in134, t178); // Eval sumdlogdiv_b_num Horner step: add coefficient_42
    let t180 = circuit_mul(t179, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t181 = circuit_add(in133, t180); // Eval sumdlogdiv_b_num Horner step: add coefficient_41
    let t182 = circuit_mul(t181, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t183 = circuit_add(in132, t182); // Eval sumdlogdiv_b_num Horner step: add coefficient_40
    let t184 = circuit_mul(t183, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t185 = circuit_add(in131, t184); // Eval sumdlogdiv_b_num Horner step: add coefficient_39
    let t186 = circuit_mul(t185, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t187 = circuit_add(in130, t186); // Eval sumdlogdiv_b_num Horner step: add coefficient_38
    let t188 = circuit_mul(t187, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t189 = circuit_add(in129, t188); // Eval sumdlogdiv_b_num Horner step: add coefficient_37
    let t190 = circuit_mul(t189, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t191 = circuit_add(in128, t190); // Eval sumdlogdiv_b_num Horner step: add coefficient_36
    let t192 = circuit_mul(t191, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t193 = circuit_add(in127, t192); // Eval sumdlogdiv_b_num Horner step: add coefficient_35
    let t194 = circuit_mul(t193, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t195 = circuit_add(in126, t194); // Eval sumdlogdiv_b_num Horner step: add coefficient_34
    let t196 = circuit_mul(t195, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t197 = circuit_add(in125, t196); // Eval sumdlogdiv_b_num Horner step: add coefficient_33
    let t198 = circuit_mul(t197, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t199 = circuit_add(in124, t198); // Eval sumdlogdiv_b_num Horner step: add coefficient_32
    let t200 = circuit_mul(t199, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t201 = circuit_add(in123, t200); // Eval sumdlogdiv_b_num Horner step: add coefficient_31
    let t202 = circuit_mul(t201, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t203 = circuit_add(in122, t202); // Eval sumdlogdiv_b_num Horner step: add coefficient_30
    let t204 = circuit_mul(t203, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t205 = circuit_add(in121, t204); // Eval sumdlogdiv_b_num Horner step: add coefficient_29
    let t206 = circuit_mul(t205, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t207 = circuit_add(in120, t206); // Eval sumdlogdiv_b_num Horner step: add coefficient_28
    let t208 = circuit_mul(t207, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t209 = circuit_add(in119, t208); // Eval sumdlogdiv_b_num Horner step: add coefficient_27
    let t210 = circuit_mul(t209, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t211 = circuit_add(in118, t210); // Eval sumdlogdiv_b_num Horner step: add coefficient_26
    let t212 = circuit_mul(t211, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t213 = circuit_add(in117, t212); // Eval sumdlogdiv_b_num Horner step: add coefficient_25
    let t214 = circuit_mul(t213, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t215 = circuit_add(in116, t214); // Eval sumdlogdiv_b_num Horner step: add coefficient_24
    let t216 = circuit_mul(t215, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t217 = circuit_add(in115, t216); // Eval sumdlogdiv_b_num Horner step: add coefficient_23
    let t218 = circuit_mul(t217, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t219 = circuit_add(in114, t218); // Eval sumdlogdiv_b_num Horner step: add coefficient_22
    let t220 = circuit_mul(t219, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t221 = circuit_add(in113, t220); // Eval sumdlogdiv_b_num Horner step: add coefficient_21
    let t222 = circuit_mul(t221, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t223 = circuit_add(in112, t222); // Eval sumdlogdiv_b_num Horner step: add coefficient_20
    let t224 = circuit_mul(t223, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t225 = circuit_add(in111, t224); // Eval sumdlogdiv_b_num Horner step: add coefficient_19
    let t226 = circuit_mul(t225, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t227 = circuit_add(in110, t226); // Eval sumdlogdiv_b_num Horner step: add coefficient_18
    let t228 = circuit_mul(t227, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t229 = circuit_add(in109, t228); // Eval sumdlogdiv_b_num Horner step: add coefficient_17
    let t230 = circuit_mul(t229, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t231 = circuit_add(in108, t230); // Eval sumdlogdiv_b_num Horner step: add coefficient_16
    let t232 = circuit_mul(t231, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t233 = circuit_add(in107, t232); // Eval sumdlogdiv_b_num Horner step: add coefficient_15
    let t234 = circuit_mul(t233, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t235 = circuit_add(in106, t234); // Eval sumdlogdiv_b_num Horner step: add coefficient_14
    let t236 = circuit_mul(t235, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t237 = circuit_add(in105, t236); // Eval sumdlogdiv_b_num Horner step: add coefficient_13
    let t238 = circuit_mul(t237, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t239 = circuit_add(in104, t238); // Eval sumdlogdiv_b_num Horner step: add coefficient_12
    let t240 = circuit_mul(t239, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t241 = circuit_add(in103, t240); // Eval sumdlogdiv_b_num Horner step: add coefficient_11
    let t242 = circuit_mul(t241, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t243 = circuit_add(in102, t242); // Eval sumdlogdiv_b_num Horner step: add coefficient_10
    let t244 = circuit_mul(t243, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t245 = circuit_add(in101, t244); // Eval sumdlogdiv_b_num Horner step: add coefficient_9
    let t246 = circuit_mul(t245, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t247 = circuit_add(in100, t246); // Eval sumdlogdiv_b_num Horner step: add coefficient_8
    let t248 = circuit_mul(t247, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t249 = circuit_add(in99, t248); // Eval sumdlogdiv_b_num Horner step: add coefficient_7
    let t250 = circuit_mul(t249, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t251 = circuit_add(in98, t250); // Eval sumdlogdiv_b_num Horner step: add coefficient_6
    let t252 = circuit_mul(t251, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t253 = circuit_add(in97, t252); // Eval sumdlogdiv_b_num Horner step: add coefficient_5
    let t254 = circuit_mul(t253, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t255 = circuit_add(in96, t254); // Eval sumdlogdiv_b_num Horner step: add coefficient_4
    let t256 = circuit_mul(t255, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t257 = circuit_add(in95, t256); // Eval sumdlogdiv_b_num Horner step: add coefficient_3
    let t258 = circuit_mul(t257, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t259 = circuit_add(in94, t258); // Eval sumdlogdiv_b_num Horner step: add coefficient_2
    let t260 = circuit_mul(t259, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t261 = circuit_add(in93, t260); // Eval sumdlogdiv_b_num Horner step: add coefficient_1
    let t262 = circuit_mul(t261, in0); // Eval sumdlogdiv_b_num Horner step: multiply by xA
    let t263 = circuit_add(in92, t262); // Eval sumdlogdiv_b_num Horner step: add coefficient_0
    let t264 = circuit_mul(in184, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t265 = circuit_add(in183, t264); // Eval sumdlogdiv_b_den Horner step: add coefficient_46
    let t266 = circuit_mul(t265, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t267 = circuit_add(in182, t266); // Eval sumdlogdiv_b_den Horner step: add coefficient_45
    let t268 = circuit_mul(t267, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t269 = circuit_add(in181, t268); // Eval sumdlogdiv_b_den Horner step: add coefficient_44
    let t270 = circuit_mul(t269, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t271 = circuit_add(in180, t270); // Eval sumdlogdiv_b_den Horner step: add coefficient_43
    let t272 = circuit_mul(t271, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t273 = circuit_add(in179, t272); // Eval sumdlogdiv_b_den Horner step: add coefficient_42
    let t274 = circuit_mul(t273, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t275 = circuit_add(in178, t274); // Eval sumdlogdiv_b_den Horner step: add coefficient_41
    let t276 = circuit_mul(t275, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t277 = circuit_add(in177, t276); // Eval sumdlogdiv_b_den Horner step: add coefficient_40
    let t278 = circuit_mul(t277, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t279 = circuit_add(in176, t278); // Eval sumdlogdiv_b_den Horner step: add coefficient_39
    let t280 = circuit_mul(t279, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t281 = circuit_add(in175, t280); // Eval sumdlogdiv_b_den Horner step: add coefficient_38
    let t282 = circuit_mul(t281, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t283 = circuit_add(in174, t282); // Eval sumdlogdiv_b_den Horner step: add coefficient_37
    let t284 = circuit_mul(t283, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t285 = circuit_add(in173, t284); // Eval sumdlogdiv_b_den Horner step: add coefficient_36
    let t286 = circuit_mul(t285, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t287 = circuit_add(in172, t286); // Eval sumdlogdiv_b_den Horner step: add coefficient_35
    let t288 = circuit_mul(t287, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t289 = circuit_add(in171, t288); // Eval sumdlogdiv_b_den Horner step: add coefficient_34
    let t290 = circuit_mul(t289, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t291 = circuit_add(in170, t290); // Eval sumdlogdiv_b_den Horner step: add coefficient_33
    let t292 = circuit_mul(t291, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t293 = circuit_add(in169, t292); // Eval sumdlogdiv_b_den Horner step: add coefficient_32
    let t294 = circuit_mul(t293, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t295 = circuit_add(in168, t294); // Eval sumdlogdiv_b_den Horner step: add coefficient_31
    let t296 = circuit_mul(t295, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t297 = circuit_add(in167, t296); // Eval sumdlogdiv_b_den Horner step: add coefficient_30
    let t298 = circuit_mul(t297, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t299 = circuit_add(in166, t298); // Eval sumdlogdiv_b_den Horner step: add coefficient_29
    let t300 = circuit_mul(t299, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t301 = circuit_add(in165, t300); // Eval sumdlogdiv_b_den Horner step: add coefficient_28
    let t302 = circuit_mul(t301, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t303 = circuit_add(in164, t302); // Eval sumdlogdiv_b_den Horner step: add coefficient_27
    let t304 = circuit_mul(t303, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t305 = circuit_add(in163, t304); // Eval sumdlogdiv_b_den Horner step: add coefficient_26
    let t306 = circuit_mul(t305, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t307 = circuit_add(in162, t306); // Eval sumdlogdiv_b_den Horner step: add coefficient_25
    let t308 = circuit_mul(t307, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t309 = circuit_add(in161, t308); // Eval sumdlogdiv_b_den Horner step: add coefficient_24
    let t310 = circuit_mul(t309, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t311 = circuit_add(in160, t310); // Eval sumdlogdiv_b_den Horner step: add coefficient_23
    let t312 = circuit_mul(t311, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t313 = circuit_add(in159, t312); // Eval sumdlogdiv_b_den Horner step: add coefficient_22
    let t314 = circuit_mul(t313, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t315 = circuit_add(in158, t314); // Eval sumdlogdiv_b_den Horner step: add coefficient_21
    let t316 = circuit_mul(t315, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t317 = circuit_add(in157, t316); // Eval sumdlogdiv_b_den Horner step: add coefficient_20
    let t318 = circuit_mul(t317, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t319 = circuit_add(in156, t318); // Eval sumdlogdiv_b_den Horner step: add coefficient_19
    let t320 = circuit_mul(t319, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t321 = circuit_add(in155, t320); // Eval sumdlogdiv_b_den Horner step: add coefficient_18
    let t322 = circuit_mul(t321, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t323 = circuit_add(in154, t322); // Eval sumdlogdiv_b_den Horner step: add coefficient_17
    let t324 = circuit_mul(t323, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t325 = circuit_add(in153, t324); // Eval sumdlogdiv_b_den Horner step: add coefficient_16
    let t326 = circuit_mul(t325, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t327 = circuit_add(in152, t326); // Eval sumdlogdiv_b_den Horner step: add coefficient_15
    let t328 = circuit_mul(t327, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t329 = circuit_add(in151, t328); // Eval sumdlogdiv_b_den Horner step: add coefficient_14
    let t330 = circuit_mul(t329, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t331 = circuit_add(in150, t330); // Eval sumdlogdiv_b_den Horner step: add coefficient_13
    let t332 = circuit_mul(t331, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t333 = circuit_add(in149, t332); // Eval sumdlogdiv_b_den Horner step: add coefficient_12
    let t334 = circuit_mul(t333, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t335 = circuit_add(in148, t334); // Eval sumdlogdiv_b_den Horner step: add coefficient_11
    let t336 = circuit_mul(t335, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t337 = circuit_add(in147, t336); // Eval sumdlogdiv_b_den Horner step: add coefficient_10
    let t338 = circuit_mul(t337, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t339 = circuit_add(in146, t338); // Eval sumdlogdiv_b_den Horner step: add coefficient_9
    let t340 = circuit_mul(t339, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t341 = circuit_add(in145, t340); // Eval sumdlogdiv_b_den Horner step: add coefficient_8
    let t342 = circuit_mul(t341, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t343 = circuit_add(in144, t342); // Eval sumdlogdiv_b_den Horner step: add coefficient_7
    let t344 = circuit_mul(t343, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t345 = circuit_add(in143, t344); // Eval sumdlogdiv_b_den Horner step: add coefficient_6
    let t346 = circuit_mul(t345, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t347 = circuit_add(in142, t346); // Eval sumdlogdiv_b_den Horner step: add coefficient_5
    let t348 = circuit_mul(t347, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t349 = circuit_add(in141, t348); // Eval sumdlogdiv_b_den Horner step: add coefficient_4
    let t350 = circuit_mul(t349, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t351 = circuit_add(in140, t350); // Eval sumdlogdiv_b_den Horner step: add coefficient_3
    let t352 = circuit_mul(t351, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t353 = circuit_add(in139, t352); // Eval sumdlogdiv_b_den Horner step: add coefficient_2
    let t354 = circuit_mul(t353, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t355 = circuit_add(in138, t354); // Eval sumdlogdiv_b_den Horner step: add coefficient_1
    let t356 = circuit_mul(t355, in0); // Eval sumdlogdiv_b_den Horner step: multiply by xA
    let t357 = circuit_add(in137, t356); // Eval sumdlogdiv_b_den Horner step: add coefficient_0
    let t358 = circuit_inverse(t357);
    let t359 = circuit_mul(t263, t358);
    let t360 = circuit_mul(in1, t359);
    let t361 = circuit_add(t175, t360);
    let t362 = circuit_mul(in2, t361);

    let modulus = get_BN254_modulus(); // BN254 prime field modulus

    let mut circuit_inputs = (t362,).new_inputs();
    // Prefill constants:

    // Fill inputs:
    circuit_inputs = circuit_inputs.next_2(A.x); // in0
    circuit_inputs = circuit_inputs.next_2(A.y); // in1
    circuit_inputs = circuit_inputs.next_2(coeff); // in2

    for val in SumDlogDivBatched.a_num {
        circuit_inputs = circuit_inputs.next_2(*val);
    }

    for val in SumDlogDivBatched.a_den {
        circuit_inputs = circuit_inputs.next_2(*val);
    }

    for val in SumDlogDivBatched.b_num {
        circuit_inputs = circuit_inputs.next_2(*val);
    }

    for val in SumDlogDivBatched.b_den {
        circuit_inputs = circuit_inputs.next_2(*val);
    }
    // in3 - in184

    let outputs = circuit_inputs.done_2().eval(modulus).unwrap();
    let res: u384 = outputs.get_output(t362);
    return (res,);
}

impl CircuitDefinition40<
    E0,
    E1,
    E2,
    E3,
    E4,
    E5,
    E6,
    E7,
    E8,
    E9,
    E10,
    E11,
    E12,
    E13,
    E14,
    E15,
    E16,
    E17,
    E18,
    E19,
    E20,
    E21,
    E22,
    E23,
    E24,
    E25,
    E26,
    E27,
    E28,
    E29,
    E30,
    E31,
    E32,
    E33,
    E34,
    E35,
    E36,
    E37,
    E38,
    E39,
> of core::circuit::CircuitDefinition<
    (
        CE<E0>,
        CE<E1>,
        CE<E2>,
        CE<E3>,
        CE<E4>,
        CE<E5>,
        CE<E6>,
        CE<E7>,
        CE<E8>,
        CE<E9>,
        CE<E10>,
        CE<E11>,
        CE<E12>,
        CE<E13>,
        CE<E14>,
        CE<E15>,
        CE<E16>,
        CE<E17>,
        CE<E18>,
        CE<E19>,
        CE<E20>,
        CE<E21>,
        CE<E22>,
        CE<E23>,
        CE<E24>,
        CE<E25>,
        CE<E26>,
        CE<E27>,
        CE<E28>,
        CE<E29>,
        CE<E30>,
        CE<E31>,
        CE<E32>,
        CE<E33>,
        CE<E34>,
        CE<E35>,
        CE<E36>,
        CE<E37>,
        CE<E38>,
        CE<E39>,
    ),
> {
    type CircuitType =
        core::circuit::Circuit<
            (
                E0,
                E1,
                E2,
                E3,
                E4,
                E5,
                E6,
                E7,
                E8,
                E9,
                E10,
                E11,
                E12,
                E13,
                E14,
                E15,
                E16,
                E17,
                E18,
                E19,
                E20,
                E21,
                E22,
                E23,
                E24,
                E25,
                E26,
                E27,
                E28,
                E29,
                E30,
                E31,
                E32,
                E33,
                E34,
                E35,
                E36,
                E37,
                E38,
                E39,
            ),
        >;
}
impl MyDrp_40<
    E0,
    E1,
    E2,
    E3,
    E4,
    E5,
    E6,
    E7,
    E8,
    E9,
    E10,
    E11,
    E12,
    E13,
    E14,
    E15,
    E16,
    E17,
    E18,
    E19,
    E20,
    E21,
    E22,
    E23,
    E24,
    E25,
    E26,
    E27,
    E28,
    E29,
    E30,
    E31,
    E32,
    E33,
    E34,
    E35,
    E36,
    E37,
    E38,
    E39,
> of Drop<
    (
        CE<E0>,
        CE<E1>,
        CE<E2>,
        CE<E3>,
        CE<E4>,
        CE<E5>,
        CE<E6>,
        CE<E7>,
        CE<E8>,
        CE<E9>,
        CE<E10>,
        CE<E11>,
        CE<E12>,
        CE<E13>,
        CE<E14>,
        CE<E15>,
        CE<E16>,
        CE<E17>,
        CE<E18>,
        CE<E19>,
        CE<E20>,
        CE<E21>,
        CE<E22>,
        CE<E23>,
        CE<E24>,
        CE<E25>,
        CE<E26>,
        CE<E27>,
        CE<E28>,
        CE<E29>,
        CE<E30>,
        CE<E31>,
        CE<E32>,
        CE<E33>,
        CE<E34>,
        CE<E35>,
        CE<E36>,
        CE<E37>,
        CE<E38>,
        CE<E39>,
    ),
>;

