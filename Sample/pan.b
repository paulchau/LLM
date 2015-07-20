	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: /* STATE 1 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: /* STATE 2 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: /* STATE 4 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CRM */
;
		;
		;
		;
		
	case 8: /* STATE 3 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 10: /* STATE 5 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 12: /* STATE 7 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: /* STATE 9 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 15: /* STATE 13 */
		goto R999;
;
		;
		
	case 17: /* STATE 16 */
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 18: /* STATE 17 */
		goto R999;

	case 19: /* STATE 24 */
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 22: /* STATE 28 */
		;
		now.RegReq_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 25: /* STATE 32 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 27: /* STATE 36 */
		goto R999;

	case 28: /* STATE 44 */
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 31: /* STATE 48 */
		;
		now.RegReq_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 34: /* STATE 52 */
		goto R999;

	case 35: /* STATE 59 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 36: /* STATE 63 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 38: /* STATE 69 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 40: /* STATE 71 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 42: /* STATE 73 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 44: /* STATE 75 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 47: /* STATE 81 */
		goto R999;

	case 48: /* STATE 88 */
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 49: /* STATE 89 */
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 52: /* STATE 93 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 55: /* STATE 97 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 58: /* STATE 101 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 61: /* STATE 105 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 63: /* STATE 109 */
		goto R999;

	case 64: /* STATE 117 */
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 67: /* STATE 121 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 70: /* STATE 125 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 73: /* STATE 129 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 76: /* STATE 133 */
		goto R999;

	case 77: /* STATE 140 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 78: /* STATE 144 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 80: /* STATE 150 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 82: /* STATE 152 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 84: /* STATE 154 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 86: /* STATE 156 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 89: /* STATE 162 */
		goto R999;

	case 90: /* STATE 169 */
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 91: /* STATE 170 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 94: /* STATE 174 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 97: /* STATE 178 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 100: /* STATE 182 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 103: /* STATE 186 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 106: /* STATE 190 */
		;
		now.choose1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 108: /* STATE 192 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 110: /* STATE 196 */
		goto R999;

	case 111: /* STATE 204 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 114: /* STATE 208 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 117: /* STATE 212 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 120: /* STATE 216 */
		goto R999;

	case 121: /* STATE 223 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 124: /* STATE 228 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 125: /* STATE 232 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 127: /* STATE 238 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 129: /* STATE 240 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 131: /* STATE 242 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 133: /* STATE 244 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 136: /* STATE 250 */
		goto R999;

	case 137: /* STATE 257 */
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 138: /* STATE 258 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 141: /* STATE 262 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 144: /* STATE 266 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 147: /* STATE 270 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 150: /* STATE 274 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 153: /* STATE 278 */
		;
		now.choose2 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 155: /* STATE 280 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 157: /* STATE 284 */
		goto R999;

	case 158: /* STATE 292 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 161: /* STATE 296 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 164: /* STATE 300 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 167: /* STATE 304 */
		goto R999;

	case 168: /* STATE 311 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 171: /* STATE 316 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 172: /* STATE 320 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 174: /* STATE 326 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 176: /* STATE 328 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 178: /* STATE 330 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 180: /* STATE 332 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 183: /* STATE 338 */
		goto R999;

	case 184: /* STATE 345 */
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 185: /* STATE 346 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 188: /* STATE 350 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 191: /* STATE 354 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 194: /* STATE 358 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 197: /* STATE 362 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 200: /* STATE 366 */
		;
		now.choose3 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 202: /* STATE 368 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 204: /* STATE 372 */
		goto R999;

	case 205: /* STATE 380 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 208: /* STATE 384 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 211: /* STATE 388 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 214: /* STATE 392 */
		goto R999;

	case 215: /* STATE 399 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 218: /* STATE 404 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 219: /* STATE 408 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 221: /* STATE 414 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 223: /* STATE 416 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 225: /* STATE 418 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 227: /* STATE 420 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 230: /* STATE 426 */
		goto R999;

	case 231: /* STATE 433 */
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 232: /* STATE 434 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 235: /* STATE 438 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 238: /* STATE 442 */
		goto R999;

	case 239: /* STATE 449 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 241: /* STATE 453 */
		goto R999;

	case 242: /* STATE 461 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 245: /* STATE 465 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 248: /* STATE 469 */
		goto R999;

	case 249: /* STATE 476 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 250: /* STATE 480 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 252: /* STATE 486 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 254: /* STATE 488 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 256: /* STATE 490 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 258: /* STATE 492 */
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 261: /* STATE 498 */
		goto R999;

	case 262: /* STATE 505 */
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 263: /* STATE 506 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 266: /* STATE 510 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 270: /* STATE 515 */
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 274: /* STATE 520 */
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 278: /* STATE 525 */
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 281: /* STATE 529 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 282: /* STATE 531 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 285: /* STATE 538 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 289: /* STATE 545 */
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 293: /* STATE 550 */
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 296: /* STATE 554 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 297: /* STATE 556 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 300: /* STATE 563 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 304: /* STATE 570 */
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 308: /* STATE 575 */
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 312: /* STATE 580 */
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 315: /* STATE 584 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 316: /* STATE 586 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 319: /* STATE 593 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 323: /* STATE 600 */
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 327: /* STATE 605 */
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 330: /* STATE 609 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 331: /* STATE 611 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 334: /* STATE 618 */
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 338: /* STATE 625 */
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 342: /* STATE 630 */
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 346: /* STATE 635 */
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 349: /* STATE 639 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 350: /* STATE 641 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 353: /* STATE 648 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 357: /* STATE 655 */
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 361: /* STATE 660 */
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 364: /* STATE 664 */
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 365: /* STATE 666 */
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 368: /* STATE 673 */
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 371: /* STATE 681 */
		goto R999;
;
		;
		;
		;
		
	case 374: /* STATE 690 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 375: /* STATE 693 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 377: /* STATE 699 */
		goto R999;

	case 378: /* STATE 707 */
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 381: /* STATE 711 */
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 384: /* STATE 715 */
		goto R999;

	case 385: /* STATE 722 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 386: /* STATE 726 */
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 387: /* STATE 734 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LEG */

	case 388: /* STATE 1 */
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 389: /* STATE 3 */
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 390: /* STATE 4 */
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 391: /* STATE 6 */
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
	case 392: /* STATE 14 */
		sv_restor();
		goto R999;
	case 393: /* STATE 23 */
		sv_restor();
		goto R999;
	case 394: /* STATE 32 */
		sv_restor();
		goto R999;
	case 395: /* STATE 41 */
		sv_restor();
		goto R999;
	case 396: /* STATE 50 */
		sv_restor();
		goto R999;
	case 397: /* STATE 59 */
		sv_restor();
		goto R999;
	case 398: /* STATE 68 */
		sv_restor();
		goto R999;
;
		;
		
	case 400: /* STATE 72 */
		;
		now.RegReq_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 401: /* STATE 73 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 402: /* STATE 75 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 403: /* STATE 78 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 404: /* STATE 81 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 405: /* STATE 84 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 406: /* STATE 87 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 407: /* STATE 90 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 408: /* STATE 93 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 409: /* STATE 96 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 410: /* STATE 99 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 411: /* STATE 102 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 412: /* STATE 105 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 413: /* STATE 108 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 414: /* STATE 111 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 416: /* STATE 118 */
		;
		now.RegReq_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 417: /* STATE 119 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 418: /* STATE 121 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 419: /* STATE 124 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 420: /* STATE 127 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 421: /* STATE 130 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 422: /* STATE 133 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 423: /* STATE 136 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 424: /* STATE 139 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 425: /* STATE 142 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 426: /* STATE 145 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 427: /* STATE 148 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 428: /* STATE 151 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 429: /* STATE 154 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 430: /* STATE 157 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 432: /* STATE 164 */
		;
		now.RegReply_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 433: /* STATE 165 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 434: /* STATE 167 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 435: /* STATE 170 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 436: /* STATE 173 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 437: /* STATE 176 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 438: /* STATE 179 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 439: /* STATE 182 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 440: /* STATE 185 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 441: /* STATE 188 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 442: /* STATE 191 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 443: /* STATE 194 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 444: /* STATE 197 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 445: /* STATE 200 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 446: /* STATE 203 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 448: /* STATE 210 */
		;
		now.RegReply_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 449: /* STATE 211 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 450: /* STATE 213 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 451: /* STATE 216 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 452: /* STATE 219 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 453: /* STATE 222 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 454: /* STATE 225 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 455: /* STATE 228 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 456: /* STATE 231 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 457: /* STATE 234 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 458: /* STATE 237 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 459: /* STATE 240 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 460: /* STATE 243 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 461: /* STATE 246 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 462: /* STATE 249 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 464: /* STATE 256 */
		;
		now.C1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 465: /* STATE 257 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 466: /* STATE 259 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 467: /* STATE 262 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 468: /* STATE 265 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 469: /* STATE 268 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 470: /* STATE 271 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 471: /* STATE 274 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 472: /* STATE 277 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 473: /* STATE 280 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 474: /* STATE 283 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 475: /* STATE 286 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 476: /* STATE 289 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 477: /* STATE 292 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 478: /* STATE 295 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 480: /* STATE 302 */
		;
		now.C1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 481: /* STATE 303 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 482: /* STATE 305 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 483: /* STATE 308 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 484: /* STATE 311 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 485: /* STATE 314 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 486: /* STATE 317 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 487: /* STATE 320 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 488: /* STATE 323 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 489: /* STATE 326 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 490: /* STATE 329 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 491: /* STATE 332 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 492: /* STATE 335 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 493: /* STATE 338 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 494: /* STATE 341 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 496: /* STATE 348 */
		;
		now.C2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 497: /* STATE 349 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 498: /* STATE 351 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 499: /* STATE 354 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 500: /* STATE 357 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 501: /* STATE 360 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 502: /* STATE 363 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 503: /* STATE 366 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 504: /* STATE 369 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 505: /* STATE 372 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 506: /* STATE 375 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 507: /* STATE 378 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 508: /* STATE 381 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 509: /* STATE 384 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 510: /* STATE 387 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 512: /* STATE 394 */
		;
		now.C2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 513: /* STATE 395 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 514: /* STATE 397 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 515: /* STATE 400 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 516: /* STATE 403 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 517: /* STATE 406 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 518: /* STATE 409 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 519: /* STATE 412 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 520: /* STATE 415 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 521: /* STATE 418 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 522: /* STATE 421 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 523: /* STATE 424 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 524: /* STATE 427 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 525: /* STATE 430 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 526: /* STATE 433 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 528: /* STATE 440 */
		;
		now.C3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 529: /* STATE 441 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 530: /* STATE 443 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 531: /* STATE 446 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 532: /* STATE 449 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 533: /* STATE 452 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 534: /* STATE 455 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 535: /* STATE 458 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 536: /* STATE 461 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 537: /* STATE 464 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 538: /* STATE 467 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 539: /* STATE 470 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 540: /* STATE 473 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 541: /* STATE 476 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 542: /* STATE 479 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 544: /* STATE 486 */
		;
		now.C3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 545: /* STATE 487 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 546: /* STATE 489 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 547: /* STATE 492 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 548: /* STATE 495 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 549: /* STATE 498 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 550: /* STATE 501 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 551: /* STATE 504 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 552: /* STATE 507 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 553: /* STATE 510 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 554: /* STATE 513 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 555: /* STATE 516 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 556: /* STATE 519 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 557: /* STATE 522 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 558: /* STATE 525 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 560: /* STATE 532 */
		;
		now.ChooseAccept_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 561: /* STATE 533 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 562: /* STATE 535 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 563: /* STATE 538 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 564: /* STATE 541 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 565: /* STATE 544 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 566: /* STATE 547 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 567: /* STATE 550 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 568: /* STATE 553 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 569: /* STATE 556 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 570: /* STATE 559 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 571: /* STATE 562 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 572: /* STATE 565 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 573: /* STATE 568 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 574: /* STATE 571 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 576: /* STATE 578 */
		;
		now.ChooseAccept_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 577: /* STATE 579 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 578: /* STATE 581 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 579: /* STATE 584 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 580: /* STATE 587 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 581: /* STATE 590 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 582: /* STATE 593 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 583: /* STATE 596 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 584: /* STATE 599 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 585: /* STATE 602 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 586: /* STATE 605 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 587: /* STATE 608 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 588: /* STATE 611 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 589: /* STATE 614 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 590: /* STATE 617 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 592: /* STATE 624 */
		;
		now.ChooseReject_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 593: /* STATE 625 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 594: /* STATE 627 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 595: /* STATE 630 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 596: /* STATE 633 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 597: /* STATE 636 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 598: /* STATE 639 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 599: /* STATE 642 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 600: /* STATE 645 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 601: /* STATE 648 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 602: /* STATE 651 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 603: /* STATE 654 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 604: /* STATE 657 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 605: /* STATE 660 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 606: /* STATE 663 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 608: /* STATE 670 */
		;
		now.ChooseReject_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 609: /* STATE 671 */
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 610: /* STATE 673 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 611: /* STATE 676 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 612: /* STATE 679 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 613: /* STATE 682 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 614: /* STATE 685 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 615: /* STATE 688 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 616: /* STATE 691 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 617: /* STATE 694 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 618: /* STATE 697 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 619: /* STATE 700 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 620: /* STATE 703 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 621: /* STATE 706 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 622: /* STATE 709 */
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 623: /* STATE 718 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

