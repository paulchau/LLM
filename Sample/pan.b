	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 4
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
		
	case 8: // STATE 3
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
		
	case 10: // STATE 5
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
		
	case 12: // STATE 7
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
		
	case 14: // STATE 9
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
		
	case 16: // STATE 11
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
		
	case 19: // STATE 17
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 20: // STATE 18
		goto R999;

	case 21: // STATE 24
		;
		now.L1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 24: // STATE 28
		;
		now.L1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 27: // STATE 32
		;
		now.START_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 30: // STATE 36
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 31: // STATE 40
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 33: // STATE 46
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
		
	case 35: // STATE 48
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
		
	case 37: // STATE 50
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
		
	case 39: // STATE 52
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
		
	case 41: // STATE 54
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
		
	case 44: // STATE 60
		goto R999;

	case 45: // STATE 67
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 68
		;
		now.L1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 49: // STATE 72
		;
		now.L2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 52: // STATE 76
		;
		now.L2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 55: // STATE 80
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 57: // STATE 84
		goto R999;

	case 58: // STATE 92
		;
		now.L1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 61: // STATE 96
		;
		now.L2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 64: // STATE 100
		goto R999;

	case 65: // STATE 107
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 68: // STATE 112
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 69: // STATE 116
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 71: // STATE 122
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
		
	case 73: // STATE 124
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
		
	case 75: // STATE 126
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
		
	case 77: // STATE 128
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
		
	case 79: // STATE 130
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
		
	case 82: // STATE 136
		goto R999;

	case 83: // STATE 143
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 144
		;
		now.L2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 87: // STATE 148
		;
		now.L3_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 90: // STATE 152
		;
		now.L3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 93: // STATE 156
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 95: // STATE 160
		goto R999;

	case 96: // STATE 168
		;
		now.L2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 99: // STATE 172
		;
		now.L3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 102: // STATE 176
		goto R999;

	case 103: // STATE 183
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 106: // STATE 188
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 107: // STATE 192
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 109: // STATE 198
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
		
	case 111: // STATE 200
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
		
	case 113: // STATE 202
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
		
	case 115: // STATE 204
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
		
	case 117: // STATE 206
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
		
	case 120: // STATE 212
		goto R999;

	case 121: // STATE 219
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 220
		;
		now.L3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 125: // STATE 224
		;
		now.CW1_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 128: // STATE 228
		;
		now.CW1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 131: // STATE 232
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 133: // STATE 236
		goto R999;

	case 134: // STATE 244
		;
		now.L3_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 137: // STATE 248
		;
		now.CW1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 140: // STATE 252
		goto R999;

	case 141: // STATE 259
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 144: // STATE 264
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 145: // STATE 268
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 147: // STATE 274
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
		
	case 149: // STATE 276
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
		
	case 151: // STATE 278
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
		
	case 153: // STATE 280
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
		
	case 155: // STATE 282
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
		
	case 158: // STATE 288
		goto R999;

	case 159: // STATE 295
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 160: // STATE 296
		;
		now.L4_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 163: // STATE 300
		;
		now.L5_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 166: // STATE 304
		;
		now.L5_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 169: // STATE 308
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 171: // STATE 312
		goto R999;

	case 172: // STATE 320
		;
		now.L4_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 175: // STATE 324
		;
		now.L5_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 178: // STATE 328
		goto R999;

	case 179: // STATE 335
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 182: // STATE 340
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 183: // STATE 344
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 185: // STATE 350
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
		
	case 187: // STATE 352
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
		
	case 189: // STATE 354
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
		
	case 191: // STATE 356
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
		
	case 193: // STATE 358
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
		
	case 196: // STATE 364
		goto R999;

	case 197: // STATE 371
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 198: // STATE 372
		;
		now.L5_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 201: // STATE 376
		;
		now.L6_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 204: // STATE 380
		;
		now.L6_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 207: // STATE 384
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 209: // STATE 388
		goto R999;

	case 210: // STATE 396
		;
		now.L5_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 213: // STATE 400
		;
		now.L6_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 216: // STATE 404
		goto R999;

	case 217: // STATE 411
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 220: // STATE 416
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 221: // STATE 420
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 223: // STATE 426
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
		
	case 225: // STATE 428
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
		
	case 227: // STATE 430
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
		
	case 229: // STATE 432
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
		
	case 231: // STATE 434
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
		
	case 234: // STATE 440
		goto R999;

	case 235: // STATE 447
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 236: // STATE 448
		;
		now.L6_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 239: // STATE 452
		;
		now.CW2_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 242: // STATE 456
		;
		now.CW2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 245: // STATE 460
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 247: // STATE 464
		goto R999;

	case 248: // STATE 472
		;
		now.L6_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 251: // STATE 476
		;
		now.CW2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 254: // STATE 480
		goto R999;

	case 255: // STATE 487
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 258: // STATE 492
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 259: // STATE 496
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 261: // STATE 502
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
		
	case 263: // STATE 504
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
		
	case 265: // STATE 506
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
		
	case 267: // STATE 508
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
		
	case 269: // STATE 510
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
		
	case 272: // STATE 516
		goto R999;

	case 273: // STATE 523
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 274: // STATE 524
		;
		now.L7_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 277: // STATE 528
		;
		now.EXAM_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 280: // STATE 532
		;
		now.EXAM_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 283: // STATE 536
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 285: // STATE 540
		goto R999;

	case 286: // STATE 548
		;
		now.L7_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 289: // STATE 552
		;
		now.EXAM_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 292: // STATE 556
		goto R999;

	case 293: // STATE 563
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 296: // STATE 568
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 297: // STATE 572
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 299: // STATE 578
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
		
	case 301: // STATE 580
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
		
	case 303: // STATE 582
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
		
	case 305: // STATE 584
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
		
	case 307: // STATE 586
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
		
	case 310: // STATE 592
		goto R999;

	case 311: // STATE 599
		;
		now.CwCount = trpt->bup.oval;
		;
		goto R999;

	case 312: // STATE 600
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 313: // STATE 601
		;
		now.CW1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 316: // STATE 605
		;
		now.L4_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 319: // STATE 609
		;
		now.L4_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 323: // STATE 614
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 325: // STATE 618
		goto R999;

	case 326: // STATE 626
		;
		now.L4_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 329: // STATE 630
		;
		now.CW1_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 332: // STATE 634
		goto R999;

	case 333: // STATE 641
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 334: // STATE 642
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 337: // STATE 647
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 338: // STATE 651
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 340: // STATE 657
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
		
	case 342: // STATE 659
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
		
	case 344: // STATE 661
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
		
	case 346: // STATE 663
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
		
	case 348: // STATE 665
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
		
	case 351: // STATE 671
		goto R999;

	case 352: // STATE 678
		;
		now.CwCount = trpt->bup.oval;
		;
		goto R999;

	case 353: // STATE 679
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 354: // STATE 680
		;
		now.CW2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 357: // STATE 684
		;
		now.L7_bo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 360: // STATE 688
		;
		now.L7_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 364: // STATE 693
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 366: // STATE 697
		goto R999;

	case 367: // STATE 705
		;
		now.EXAM_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 370: // STATE 709
		;
		now.CW2_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 373: // STATE 713
		goto R999;

	case 374: // STATE 720
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 375: // STATE 721
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 378: // STATE 726
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 379: // STATE 730
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 381: // STATE 736
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
		
	case 383: // STATE 738
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
		
	case 385: // STATE 740
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
		
	case 387: // STATE 742
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
		
	case 389: // STATE 744
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
		
	case 392: // STATE 750
		goto R999;

	case 393: // STATE 757
		;
		now.ExamCount = trpt->bup.oval;
		;
		goto R999;

	case 394: // STATE 758
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 395: // STATE 759
		;
		now.EXAM_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 398: // STATE 763
		goto R999;

	case 399: // STATE 770
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 401: // STATE 774
		goto R999;

	case 402: // STATE 782
		;
		now.EXAM_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 405: // STATE 786
		goto R999;

	case 406: // STATE 793
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 407: // STATE 794
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 410: // STATE 799
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 411: // STATE 803
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 412: // STATE 811
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LEG */

	case 413: // STATE 1
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 414: // STATE 3
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 415: // STATE 4
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 416: // STATE 6
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
	case 417: // STATE 14
		sv_restor();
		goto R999;
	case 418: // STATE 23
		sv_restor();
		goto R999;
	case 419: // STATE 32
		sv_restor();
		goto R999;
	case 420: // STATE 41
		sv_restor();
		goto R999;
	case 421: // STATE 50
		sv_restor();
		goto R999;
	case 422: // STATE 59
		sv_restor();
		goto R999;
	case 423: // STATE 68
		sv_restor();
		goto R999;
	case 424: // STATE 77
		sv_restor();
		goto R999;
	case 425: // STATE 86
		sv_restor();
		goto R999;
	case 426: // STATE 95
		sv_restor();
		goto R999;
	case 427: // STATE 104
		sv_restor();
		goto R999;
;
		;
		
	case 429: // STATE 108
		;
		now.START_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 430: // STATE 109
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 431: // STATE 111
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 432: // STATE 114
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 433: // STATE 117
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 434: // STATE 120
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 435: // STATE 123
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 436: // STATE 126
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 437: // STATE 129
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 438: // STATE 132
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 439: // STATE 135
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 440: // STATE 138
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 441: // STATE 141
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 442: // STATE 144
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 443: // STATE 147
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 445: // STATE 154
		;
		now.L1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 446: // STATE 155
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 447: // STATE 157
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 448: // STATE 160
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 449: // STATE 163
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 450: // STATE 166
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 451: // STATE 169
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 452: // STATE 172
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 453: // STATE 175
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 454: // STATE 178
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 455: // STATE 181
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 456: // STATE 184
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 457: // STATE 187
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 458: // STATE 190
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 459: // STATE 193
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 461: // STATE 200
		;
		now.L1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 462: // STATE 201
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 463: // STATE 203
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 464: // STATE 206
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 465: // STATE 209
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 466: // STATE 212
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 467: // STATE 215
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 468: // STATE 218
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 469: // STATE 221
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 470: // STATE 224
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 471: // STATE 227
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 472: // STATE 230
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 473: // STATE 233
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 474: // STATE 236
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 475: // STATE 239
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 477: // STATE 246
		;
		now.L1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 478: // STATE 247
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 479: // STATE 249
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 480: // STATE 252
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 481: // STATE 255
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 482: // STATE 258
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 483: // STATE 261
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 484: // STATE 264
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 485: // STATE 267
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 486: // STATE 270
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 487: // STATE 273
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 488: // STATE 276
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 489: // STATE 279
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 490: // STATE 282
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 491: // STATE 285
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 493: // STATE 292
		;
		now.L2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 494: // STATE 293
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 495: // STATE 295
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 496: // STATE 298
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 497: // STATE 301
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 498: // STATE 304
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 499: // STATE 307
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 500: // STATE 310
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 501: // STATE 313
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 502: // STATE 316
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 503: // STATE 319
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 504: // STATE 322
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 505: // STATE 325
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 506: // STATE 328
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 507: // STATE 331
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 509: // STATE 338
		;
		now.L2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 510: // STATE 339
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 511: // STATE 341
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 512: // STATE 344
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 513: // STATE 347
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 514: // STATE 350
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 515: // STATE 353
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 516: // STATE 356
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 517: // STATE 359
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 518: // STATE 362
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 519: // STATE 365
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 520: // STATE 368
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 521: // STATE 371
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 522: // STATE 374
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 523: // STATE 377
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 525: // STATE 384
		;
		now.L2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 526: // STATE 385
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 527: // STATE 387
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 528: // STATE 390
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 529: // STATE 393
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 530: // STATE 396
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 531: // STATE 399
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 532: // STATE 402
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 533: // STATE 405
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 534: // STATE 408
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 535: // STATE 411
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 536: // STATE 414
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 537: // STATE 417
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 538: // STATE 420
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 539: // STATE 423
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 541: // STATE 430
		;
		now.L3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 542: // STATE 431
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 543: // STATE 433
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 544: // STATE 436
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 545: // STATE 439
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 546: // STATE 442
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 547: // STATE 445
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 548: // STATE 448
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 549: // STATE 451
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 550: // STATE 454
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 551: // STATE 457
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 552: // STATE 460
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 553: // STATE 463
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 554: // STATE 466
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 555: // STATE 469
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 557: // STATE 476
		;
		now.L3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 558: // STATE 477
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 559: // STATE 479
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 560: // STATE 482
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 561: // STATE 485
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 562: // STATE 488
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 563: // STATE 491
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 564: // STATE 494
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 565: // STATE 497
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 566: // STATE 500
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 567: // STATE 503
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 568: // STATE 506
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 569: // STATE 509
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 570: // STATE 512
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 571: // STATE 515
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 573: // STATE 522
		;
		now.L3_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 574: // STATE 523
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 575: // STATE 525
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 576: // STATE 528
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 577: // STATE 531
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 578: // STATE 534
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 579: // STATE 537
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 580: // STATE 540
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 581: // STATE 543
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 582: // STATE 546
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 583: // STATE 549
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 584: // STATE 552
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 585: // STATE 555
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 586: // STATE 558
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 587: // STATE 561
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 589: // STATE 568
		;
		now.L4_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 590: // STATE 569
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 591: // STATE 571
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 592: // STATE 574
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 593: // STATE 577
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 594: // STATE 580
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 595: // STATE 583
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 596: // STATE 586
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 597: // STATE 589
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 598: // STATE 592
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 599: // STATE 595
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 600: // STATE 598
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 601: // STATE 601
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 602: // STATE 604
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 603: // STATE 607
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 605: // STATE 614
		;
		now.L4_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 606: // STATE 615
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 607: // STATE 617
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 608: // STATE 620
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 609: // STATE 623
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 610: // STATE 626
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 611: // STATE 629
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 612: // STATE 632
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 613: // STATE 635
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 614: // STATE 638
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 615: // STATE 641
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 616: // STATE 644
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 617: // STATE 647
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 618: // STATE 650
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 619: // STATE 653
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 621: // STATE 660
		;
		now.L4_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 622: // STATE 661
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 623: // STATE 663
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 624: // STATE 666
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 625: // STATE 669
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 626: // STATE 672
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 627: // STATE 675
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 628: // STATE 678
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 629: // STATE 681
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 630: // STATE 684
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 631: // STATE 687
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 632: // STATE 690
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 633: // STATE 693
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 634: // STATE 696
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 635: // STATE 699
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 637: // STATE 706
		;
		now.L5_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 638: // STATE 707
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 639: // STATE 709
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 640: // STATE 712
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 641: // STATE 715
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 642: // STATE 718
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 643: // STATE 721
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 644: // STATE 724
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 645: // STATE 727
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 646: // STATE 730
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 647: // STATE 733
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 648: // STATE 736
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 649: // STATE 739
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 650: // STATE 742
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 651: // STATE 745
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 653: // STATE 752
		;
		now.L5_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 654: // STATE 753
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 655: // STATE 755
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 656: // STATE 758
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 657: // STATE 761
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 658: // STATE 764
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 659: // STATE 767
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 660: // STATE 770
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 661: // STATE 773
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 662: // STATE 776
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 663: // STATE 779
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 664: // STATE 782
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 665: // STATE 785
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 666: // STATE 788
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 667: // STATE 791
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 669: // STATE 798
		;
		now.L5_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 670: // STATE 799
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 671: // STATE 801
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 672: // STATE 804
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 673: // STATE 807
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 674: // STATE 810
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 675: // STATE 813
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 676: // STATE 816
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 677: // STATE 819
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 678: // STATE 822
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 679: // STATE 825
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 680: // STATE 828
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 681: // STATE 831
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 682: // STATE 834
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 683: // STATE 837
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 685: // STATE 844
		;
		now.L6_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 686: // STATE 845
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 687: // STATE 847
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 688: // STATE 850
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 689: // STATE 853
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 690: // STATE 856
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 691: // STATE 859
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 692: // STATE 862
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 693: // STATE 865
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 694: // STATE 868
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 695: // STATE 871
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 696: // STATE 874
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 697: // STATE 877
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 698: // STATE 880
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 699: // STATE 883
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 701: // STATE 890
		;
		now.L6_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 702: // STATE 891
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 703: // STATE 893
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 704: // STATE 896
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 705: // STATE 899
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 706: // STATE 902
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 707: // STATE 905
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 708: // STATE 908
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 709: // STATE 911
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 710: // STATE 914
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 711: // STATE 917
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 712: // STATE 920
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 713: // STATE 923
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 714: // STATE 926
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 715: // STATE 929
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 717: // STATE 936
		;
		now.L6_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 718: // STATE 937
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 719: // STATE 939
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 720: // STATE 942
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 721: // STATE 945
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 722: // STATE 948
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 723: // STATE 951
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 724: // STATE 954
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 725: // STATE 957
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 726: // STATE 960
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 727: // STATE 963
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 728: // STATE 966
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 729: // STATE 969
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 730: // STATE 972
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 731: // STATE 975
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 733: // STATE 982
		;
		now.L7_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 734: // STATE 983
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 735: // STATE 985
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 736: // STATE 988
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 737: // STATE 991
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 738: // STATE 994
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 739: // STATE 997
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 740: // STATE 1000
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 741: // STATE 1003
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 742: // STATE 1006
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 743: // STATE 1009
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 744: // STATE 1012
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 745: // STATE 1015
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 746: // STATE 1018
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 747: // STATE 1021
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 749: // STATE 1028
		;
		now.L7_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 750: // STATE 1029
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 751: // STATE 1031
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 752: // STATE 1034
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 753: // STATE 1037
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 754: // STATE 1040
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 755: // STATE 1043
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 756: // STATE 1046
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 757: // STATE 1049
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 758: // STATE 1052
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 759: // STATE 1055
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 760: // STATE 1058
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 761: // STATE 1061
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 762: // STATE 1064
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 763: // STATE 1067
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 765: // STATE 1074
		;
		now.L7_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 766: // STATE 1075
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 767: // STATE 1077
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 768: // STATE 1080
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 769: // STATE 1083
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 770: // STATE 1086
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 771: // STATE 1089
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 772: // STATE 1092
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 773: // STATE 1095
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 774: // STATE 1098
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 775: // STATE 1101
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 776: // STATE 1104
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 777: // STATE 1107
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 778: // STATE 1110
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 779: // STATE 1113
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 781: // STATE 1120
		;
		now.CW1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 782: // STATE 1121
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 783: // STATE 1123
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 784: // STATE 1126
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 785: // STATE 1129
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 786: // STATE 1132
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 787: // STATE 1135
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 788: // STATE 1138
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 789: // STATE 1141
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 790: // STATE 1144
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 791: // STATE 1147
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 792: // STATE 1150
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 793: // STATE 1153
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 794: // STATE 1156
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 795: // STATE 1159
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 797: // STATE 1166
		;
		now.CW1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 798: // STATE 1167
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 799: // STATE 1169
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 800: // STATE 1172
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 801: // STATE 1175
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 802: // STATE 1178
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 803: // STATE 1181
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 804: // STATE 1184
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 805: // STATE 1187
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 806: // STATE 1190
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 807: // STATE 1193
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 808: // STATE 1196
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 809: // STATE 1199
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 810: // STATE 1202
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 811: // STATE 1205
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 813: // STATE 1212
		;
		now.CW1_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 814: // STATE 1213
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 815: // STATE 1215
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 816: // STATE 1218
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 817: // STATE 1221
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 818: // STATE 1224
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 819: // STATE 1227
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 820: // STATE 1230
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 821: // STATE 1233
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 822: // STATE 1236
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 823: // STATE 1239
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 824: // STATE 1242
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 825: // STATE 1245
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 826: // STATE 1248
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 827: // STATE 1251
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 829: // STATE 1258
		;
		now.CW2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 830: // STATE 1259
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 831: // STATE 1261
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 832: // STATE 1264
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 833: // STATE 1267
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 834: // STATE 1270
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 835: // STATE 1273
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 836: // STATE 1276
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 837: // STATE 1279
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 838: // STATE 1282
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 839: // STATE 1285
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 840: // STATE 1288
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 841: // STATE 1291
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 842: // STATE 1294
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 843: // STATE 1297
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 845: // STATE 1304
		;
		now.CW2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 846: // STATE 1305
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 847: // STATE 1307
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 848: // STATE 1310
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 849: // STATE 1313
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 850: // STATE 1316
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 851: // STATE 1319
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 852: // STATE 1322
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 853: // STATE 1325
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 854: // STATE 1328
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 855: // STATE 1331
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 856: // STATE 1334
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 857: // STATE 1337
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 858: // STATE 1340
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 859: // STATE 1343
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 861: // STATE 1350
		;
		now.CW2_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 862: // STATE 1351
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 863: // STATE 1353
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 864: // STATE 1356
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 865: // STATE 1359
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 866: // STATE 1362
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 867: // STATE 1365
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 868: // STATE 1368
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 869: // STATE 1371
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 870: // STATE 1374
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 871: // STATE 1377
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 872: // STATE 1380
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 873: // STATE 1383
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 874: // STATE 1386
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 875: // STATE 1389
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 877: // STATE 1396
		;
		now.EXAM_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 878: // STATE 1397
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 879: // STATE 1399
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 880: // STATE 1402
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 881: // STATE 1405
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 882: // STATE 1408
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 883: // STATE 1411
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 884: // STATE 1414
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 885: // STATE 1417
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 886: // STATE 1420
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 887: // STATE 1423
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 888: // STATE 1426
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 889: // STATE 1429
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 890: // STATE 1432
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 891: // STATE 1435
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 893: // STATE 1442
		;
		now.EXAM_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 894: // STATE 1443
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 895: // STATE 1445
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 896: // STATE 1448
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 897: // STATE 1451
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 898: // STATE 1454
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 899: // STATE 1457
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 900: // STATE 1460
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 901: // STATE 1463
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 902: // STATE 1466
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 903: // STATE 1469
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 904: // STATE 1472
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 905: // STATE 1475
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 906: // STATE 1478
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 907: // STATE 1481
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 909: // STATE 1488
		;
		now.EXAM_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 910: // STATE 1489
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 911: // STATE 1491
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 912: // STATE 1494
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 913: // STATE 1497
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 914: // STATE 1500
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 915: // STATE 1503
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 916: // STATE 1506
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 917: // STATE 1509
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 918: // STATE 1512
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 919: // STATE 1515
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 920: // STATE 1518
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 921: // STATE 1521
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 922: // STATE 1524
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 923: // STATE 1527
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 924: // STATE 1536
		;
		p_restor(II);
		;
		;
		goto R999;
	}

