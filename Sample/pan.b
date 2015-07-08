	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM P1 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 4
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
		
	case 10: // STATE 3
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
		
	case 12: // STATE 5
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
		
	case 14: // STATE 7
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
		
	case 16: // STATE 9
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
		
	case 18: // STATE 11
		;
		XX = 1;
		unrecv(now.LEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.LEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 19: // STATE 15
		goto R999;
;
		;
		
	case 21: // STATE 18
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 22: // STATE 19
		goto R999;

	case 23: // STATE 26
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 26: // STATE 30
		;
		now.RegReq_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 29: // STATE 34
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 31: // STATE 38
		goto R999;

	case 32: // STATE 46
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 35: // STATE 50
		;
		now.RegReq_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 38: // STATE 54
		goto R999;

	case 39: // STATE 61
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 40: // STATE 65
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 42: // STATE 71
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
		
	case 44: // STATE 73
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
		
	case 46: // STATE 75
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
		
	case 48: // STATE 77
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
		
	case 50: // STATE 79
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
		
	case 53: // STATE 85
		goto R999;

	case 54: // STATE 92
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 93
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 58: // STATE 97
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 61: // STATE 101
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 64: // STATE 105
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 67: // STATE 109
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 69: // STATE 113
		goto R999;

	case 70: // STATE 121
		;
		now.RegReply_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 73: // STATE 125
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 76: // STATE 129
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 79: // STATE 133
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 82: // STATE 137
		goto R999;

	case 83: // STATE 144
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 84: // STATE 148
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 86: // STATE 154
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
		
	case 88: // STATE 156
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
		
	case 90: // STATE 158
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
		
	case 92: // STATE 160
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
		
	case 94: // STATE 162
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
		
	case 97: // STATE 168
		goto R999;

	case 98: // STATE 175
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 176
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 102: // STATE 180
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 105: // STATE 184
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 108: // STATE 188
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 111: // STATE 192
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 114: // STATE 196
		;
		now.choose1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 116: // STATE 198
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 118: // STATE 202
		goto R999;

	case 119: // STATE 210
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 122: // STATE 214
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 125: // STATE 218
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 128: // STATE 222
		goto R999;

	case 129: // STATE 229
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 132: // STATE 234
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 133: // STATE 238
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 135: // STATE 244
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
		
	case 137: // STATE 246
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
		
	case 139: // STATE 248
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
		
	case 141: // STATE 250
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
		
	case 143: // STATE 252
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
		
	case 146: // STATE 258
		goto R999;

	case 147: // STATE 265
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 148: // STATE 266
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 151: // STATE 270
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 154: // STATE 274
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 157: // STATE 278
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 160: // STATE 282
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 163: // STATE 286
		;
		now.choose2 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 165: // STATE 288
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 167: // STATE 292
		goto R999;

	case 168: // STATE 300
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 171: // STATE 304
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 174: // STATE 308
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 177: // STATE 312
		goto R999;

	case 178: // STATE 319
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 181: // STATE 324
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 182: // STATE 328
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 184: // STATE 334
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
		
	case 186: // STATE 336
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
		
	case 188: // STATE 338
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
		
	case 190: // STATE 340
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
		
	case 192: // STATE 342
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
		
	case 195: // STATE 348
		goto R999;

	case 196: // STATE 355
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 197: // STATE 356
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 200: // STATE 360
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 203: // STATE 364
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 206: // STATE 368
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 209: // STATE 372
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 212: // STATE 376
		;
		now.choose3 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 214: // STATE 378
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 216: // STATE 382
		goto R999;

	case 217: // STATE 390
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 220: // STATE 394
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 223: // STATE 398
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 226: // STATE 402
		goto R999;

	case 227: // STATE 409
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 230: // STATE 414
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 231: // STATE 418
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 233: // STATE 424
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
		
	case 235: // STATE 426
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
		
	case 237: // STATE 428
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
		
	case 239: // STATE 430
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
		
	case 241: // STATE 432
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
		
	case 244: // STATE 438
		goto R999;

	case 245: // STATE 445
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 246: // STATE 446
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 249: // STATE 450
		goto R999;

	case 250: // STATE 457
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 252: // STATE 461
		goto R999;

	case 253: // STATE 469
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 256: // STATE 473
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 259: // STATE 477
		goto R999;

	case 260: // STATE 484
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 261: // STATE 488
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 263: // STATE 494
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
		
	case 265: // STATE 496
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
		
	case 267: // STATE 498
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
		
	case 269: // STATE 500
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
		
	case 271: // STATE 502
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
		
	case 274: // STATE 508
		goto R999;

	case 275: // STATE 515
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 276: // STATE 516
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 279: // STATE 520
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
		
	case 283: // STATE 525
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
		
	case 287: // STATE 530
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
		
	case 291: // STATE 535
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 294: // STATE 539
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 295: // STATE 541
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 298: // STATE 548
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
		
	case 302: // STATE 555
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
		
	case 306: // STATE 560
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 309: // STATE 564
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 310: // STATE 566
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 313: // STATE 573
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
		
	case 317: // STATE 580
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
		
	case 321: // STATE 585
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
		
	case 325: // STATE 590
		;
		now.C3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 328: // STATE 594
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 329: // STATE 596
		;
		now.C3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 332: // STATE 603
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
		
	case 336: // STATE 610
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
		
	case 340: // STATE 615
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 343: // STATE 619
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 344: // STATE 621
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 347: // STATE 628
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
		
	case 351: // STATE 635
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
		
	case 355: // STATE 640
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
		
	case 359: // STATE 645
		;
		now.C1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 362: // STATE 649
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 363: // STATE 651
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 366: // STATE 658
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
		
	case 370: // STATE 665
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
		
	case 374: // STATE 670
		;
		now.C2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 377: // STATE 674
		;
		now.all = trpt->bup.oval;
		;
		goto R999;

	case 378: // STATE 676
		;
		now.C2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 381: // STATE 683
		;
		now.C1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 384: // STATE 691
		goto R999;
;
		;
		;
		;
		
	case 387: // STATE 700
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 388: // STATE 703
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 390: // STATE 709
		goto R999;

	case 391: // STATE 717
		;
		now.ChooseAccept_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 394: // STATE 721
		;
		now.ChooseReject_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 397: // STATE 725
		goto R999;

	case 398: // STATE 732
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 399: // STATE 736
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 400: // STATE 744
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LEG */

	case 401: // STATE 1
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 402: // STATE 3
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 403: // STATE 4
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 404: // STATE 6
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
	case 405: // STATE 14
		sv_restor();
		goto R999;
	case 406: // STATE 23
		sv_restor();
		goto R999;
	case 407: // STATE 32
		sv_restor();
		goto R999;
	case 408: // STATE 41
		sv_restor();
		goto R999;
	case 409: // STATE 50
		sv_restor();
		goto R999;
	case 410: // STATE 59
		sv_restor();
		goto R999;
	case 411: // STATE 68
		sv_restor();
		goto R999;
;
		;
		
	case 413: // STATE 72
		;
		now.RegReq_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 414: // STATE 73
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 415: // STATE 75
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 416: // STATE 78
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 417: // STATE 81
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 418: // STATE 84
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 419: // STATE 87
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 420: // STATE 90
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 421: // STATE 93
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 422: // STATE 96
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 423: // STATE 99
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 424: // STATE 102
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 425: // STATE 105
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 426: // STATE 108
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 427: // STATE 111
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 429: // STATE 118
		;
		now.RegReq_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 430: // STATE 119
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 431: // STATE 121
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 432: // STATE 124
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 433: // STATE 127
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 434: // STATE 130
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 435: // STATE 133
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 436: // STATE 136
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 437: // STATE 139
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 438: // STATE 142
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 439: // STATE 145
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 440: // STATE 148
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 441: // STATE 151
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 442: // STATE 154
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 443: // STATE 157
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 445: // STATE 164
		;
		now.RegReply_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 446: // STATE 165
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 447: // STATE 167
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 448: // STATE 170
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 449: // STATE 173
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 450: // STATE 176
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 451: // STATE 179
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 452: // STATE 182
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 453: // STATE 185
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 454: // STATE 188
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 455: // STATE 191
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 456: // STATE 194
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 457: // STATE 197
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 458: // STATE 200
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 459: // STATE 203
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 461: // STATE 210
		;
		now.RegReply_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 462: // STATE 211
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 463: // STATE 213
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 464: // STATE 216
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 465: // STATE 219
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 466: // STATE 222
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 467: // STATE 225
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 468: // STATE 228
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 469: // STATE 231
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 470: // STATE 234
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 471: // STATE 237
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 472: // STATE 240
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 473: // STATE 243
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 474: // STATE 246
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 475: // STATE 249
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 477: // STATE 256
		;
		now.C1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 478: // STATE 257
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 479: // STATE 259
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 480: // STATE 262
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 481: // STATE 265
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 482: // STATE 268
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 483: // STATE 271
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 484: // STATE 274
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 485: // STATE 277
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 486: // STATE 280
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 487: // STATE 283
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 488: // STATE 286
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 489: // STATE 289
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 490: // STATE 292
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 491: // STATE 295
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 493: // STATE 302
		;
		now.C1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 494: // STATE 303
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 495: // STATE 305
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 496: // STATE 308
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 497: // STATE 311
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 498: // STATE 314
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 499: // STATE 317
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 500: // STATE 320
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 501: // STATE 323
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 502: // STATE 326
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 503: // STATE 329
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 504: // STATE 332
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 505: // STATE 335
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 506: // STATE 338
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 507: // STATE 341
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 509: // STATE 348
		;
		now.C1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 510: // STATE 349
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 511: // STATE 351
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 512: // STATE 354
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 513: // STATE 357
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 514: // STATE 360
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 515: // STATE 363
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 516: // STATE 366
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 517: // STATE 369
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 518: // STATE 372
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 519: // STATE 375
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 520: // STATE 378
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 521: // STATE 381
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 522: // STATE 384
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 523: // STATE 387
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 525: // STATE 394
		;
		now.C2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 526: // STATE 395
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 527: // STATE 397
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 528: // STATE 400
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 529: // STATE 403
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 530: // STATE 406
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 531: // STATE 409
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 532: // STATE 412
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 533: // STATE 415
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 534: // STATE 418
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 535: // STATE 421
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 536: // STATE 424
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 537: // STATE 427
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 538: // STATE 430
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 539: // STATE 433
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 541: // STATE 440
		;
		now.C2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 542: // STATE 441
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 543: // STATE 443
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 544: // STATE 446
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 545: // STATE 449
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 546: // STATE 452
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 547: // STATE 455
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 548: // STATE 458
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 549: // STATE 461
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 550: // STATE 464
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 551: // STATE 467
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 552: // STATE 470
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 553: // STATE 473
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 554: // STATE 476
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 555: // STATE 479
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 557: // STATE 486
		;
		now.C2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 558: // STATE 487
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 559: // STATE 489
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 560: // STATE 492
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 561: // STATE 495
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 562: // STATE 498
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 563: // STATE 501
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 564: // STATE 504
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 565: // STATE 507
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 566: // STATE 510
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 567: // STATE 513
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 568: // STATE 516
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 569: // STATE 519
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 570: // STATE 522
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 571: // STATE 525
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 573: // STATE 532
		;
		now.C3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 574: // STATE 533
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 575: // STATE 535
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 576: // STATE 538
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 577: // STATE 541
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 578: // STATE 544
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 579: // STATE 547
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 580: // STATE 550
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 581: // STATE 553
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 582: // STATE 556
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 583: // STATE 559
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 584: // STATE 562
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 585: // STATE 565
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 586: // STATE 568
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 587: // STATE 571
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 589: // STATE 578
		;
		now.C3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 590: // STATE 579
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 591: // STATE 581
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 592: // STATE 584
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 593: // STATE 587
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 594: // STATE 590
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 595: // STATE 593
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 596: // STATE 596
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 597: // STATE 599
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 598: // STATE 602
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 599: // STATE 605
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 600: // STATE 608
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 601: // STATE 611
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 602: // STATE 614
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 603: // STATE 617
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 605: // STATE 624
		;
		now.C3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 606: // STATE 625
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 607: // STATE 627
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 608: // STATE 630
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 609: // STATE 633
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 610: // STATE 636
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 611: // STATE 639
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 612: // STATE 642
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 613: // STATE 645
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 614: // STATE 648
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 615: // STATE 651
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 616: // STATE 654
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 617: // STATE 657
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 618: // STATE 660
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 619: // STATE 663
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 621: // STATE 670
		;
		now.ChooseAccept_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 622: // STATE 671
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 623: // STATE 673
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 624: // STATE 676
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 625: // STATE 679
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 626: // STATE 682
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 627: // STATE 685
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 628: // STATE 688
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 629: // STATE 691
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 630: // STATE 694
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 631: // STATE 697
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 632: // STATE 700
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 633: // STATE 703
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 634: // STATE 706
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 635: // STATE 709
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 637: // STATE 716
		;
		now.ChooseAccept_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 638: // STATE 717
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 639: // STATE 719
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 640: // STATE 722
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 641: // STATE 725
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 642: // STATE 728
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 643: // STATE 731
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 644: // STATE 734
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 645: // STATE 737
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 646: // STATE 740
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 647: // STATE 743
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 648: // STATE 746
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 649: // STATE 749
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 650: // STATE 752
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 651: // STATE 755
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 653: // STATE 762
		;
		now.ChooseReject_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 654: // STATE 763
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 655: // STATE 765
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 656: // STATE 768
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 657: // STATE 771
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 658: // STATE 774
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 659: // STATE 777
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 660: // STATE 780
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 661: // STATE 783
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 662: // STATE 786
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 663: // STATE 789
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 664: // STATE 792
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 665: // STATE 795
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 666: // STATE 798
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 667: // STATE 801
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 669: // STATE 808
		;
		now.ChooseReject_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 670: // STATE 809
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 671: // STATE 811
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 672: // STATE 814
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 673: // STATE 817
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 674: // STATE 820
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 675: // STATE 823
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 676: // STATE 826
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 677: // STATE 829
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 678: // STATE 832
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 679: // STATE 835
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 680: // STATE 838
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 681: // STATE 841
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 682: // STATE 844
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 683: // STATE 847
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 684: // STATE 856
		;
		p_restor(II);
		;
		;
		goto R999;
	}

