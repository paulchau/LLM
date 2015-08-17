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
		;
		;
		
	case 17: // STATE 15
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 16
		;
		now.START_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 19: // STATE 17
		goto R999;

	case 20: // STATE 23
		;
		now.L1_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 23: // STATE 27
		;
		now.L1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 26: // STATE 31
		;
		now.START_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 29: // STATE 35
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 30: // STATE 39
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 32: // STATE 45
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
		
	case 34: // STATE 47
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
		
	case 36: // STATE 49
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
		
	case 38: // STATE 51
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
		
	case 41: // STATE 57
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 58
		;
		now.L1_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 43: // STATE 59
		goto R999;

	case 44: // STATE 66
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 67
		;
		now.L1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 48: // STATE 71
		;
		now.L1_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 51: // STATE 75
		;
		now.L2_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 54: // STATE 79
		;
		now.L2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 57: // STATE 83
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 59: // STATE 87
		goto R999;

	case 60: // STATE 95
		;
		now.L1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 63: // STATE 99
		goto R999;

	case 64: // STATE 106
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 65: // STATE 110
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 67: // STATE 116
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
		
	case 69: // STATE 118
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
		
	case 71: // STATE 120
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
		
	case 73: // STATE 122
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
		
	case 76: // STATE 128
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 129
		;
		now.L2_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 78: // STATE 130
		goto R999;

	case 79: // STATE 137
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 138
		;
		now.L2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 83: // STATE 142
		;
		now.L3_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 86: // STATE 146
		;
		now.L3_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 89: // STATE 150
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 91: // STATE 154
		goto R999;

	case 92: // STATE 162
		;
		now.L2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 95: // STATE 166
		goto R999;

	case 96: // STATE 173
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 99: // STATE 178
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 100: // STATE 182
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 102: // STATE 188
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
		
	case 104: // STATE 190
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
		
	case 106: // STATE 192
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
		
	case 108: // STATE 194
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
		
	case 111: // STATE 200
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 112: // STATE 201
		;
		now.L3_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 113: // STATE 202
		goto R999;

	case 114: // STATE 209
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 210
		;
		now.L3_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 118: // STATE 214
		;
		now.CW1_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 121: // STATE 218
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 124: // STATE 222
		;
		now.L4_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 127: // STATE 226
		;
		now.L4_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 130: // STATE 230
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 132: // STATE 234
		goto R999;

	case 133: // STATE 242
		;
		now.L3_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 136: // STATE 246
		goto R999;

	case 137: // STATE 253
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 140: // STATE 258
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 141: // STATE 262
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 143: // STATE 268
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
		
	case 145: // STATE 270
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
		
	case 147: // STATE 272
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
		
	case 149: // STATE 274
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
		
	case 152: // STATE 280
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 281
		;
		now.L4_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 154: // STATE 282
		goto R999;

	case 155: // STATE 289
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 290
		;
		now.L4_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 159: // STATE 294
		;
		now.L5_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 162: // STATE 298
		;
		now.L5_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 165: // STATE 302
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 167: // STATE 306
		goto R999;

	case 168: // STATE 314
		;
		now.L4_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 171: // STATE 318
		goto R999;

	case 172: // STATE 325
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 175: // STATE 330
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 176: // STATE 334
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 178: // STATE 340
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
		
	case 180: // STATE 342
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
		
	case 182: // STATE 344
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
		
	case 184: // STATE 346
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
		
	case 187: // STATE 352
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 188: // STATE 353
		;
		now.L5_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 189: // STATE 354
		goto R999;

	case 190: // STATE 361
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 191: // STATE 362
		;
		now.L5_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 194: // STATE 366
		;
		now.L6_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 197: // STATE 370
		;
		now.L6_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 200: // STATE 374
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 202: // STATE 378
		goto R999;

	case 203: // STATE 386
		;
		now.L5_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 206: // STATE 390
		goto R999;

	case 207: // STATE 397
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 210: // STATE 402
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 211: // STATE 406
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 213: // STATE 412
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
		
	case 215: // STATE 414
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
		
	case 217: // STATE 416
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
		
	case 219: // STATE 418
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
		
	case 222: // STATE 424
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 223: // STATE 425
		;
		now.L6_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 224: // STATE 426
		goto R999;

	case 225: // STATE 433
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 226: // STATE 434
		;
		now.L6_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 229: // STATE 438
		;
		now.CW2_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 232: // STATE 442
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 235: // STATE 446
		;
		now.L7_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 238: // STATE 450
		;
		now.L7_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 241: // STATE 454
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 243: // STATE 458
		goto R999;

	case 244: // STATE 466
		;
		now.L6_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 247: // STATE 470
		goto R999;

	case 248: // STATE 477
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 251: // STATE 482
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 252: // STATE 486
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 254: // STATE 492
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
		
	case 256: // STATE 494
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
		
	case 258: // STATE 496
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
		
	case 260: // STATE 498
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
		
	case 263: // STATE 504
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 264: // STATE 505
		;
		now.L7_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 265: // STATE 506
		goto R999;

	case 266: // STATE 513
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 267: // STATE 514
		;
		now.L7_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 270: // STATE 518
		;
		now.L8_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 273: // STATE 522
		;
		now.L8_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 276: // STATE 526
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 278: // STATE 530
		goto R999;

	case 279: // STATE 538
		;
		now.L7_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 282: // STATE 542
		goto R999;

	case 283: // STATE 549
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 286: // STATE 554
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 287: // STATE 558
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 289: // STATE 564
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
		
	case 291: // STATE 566
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
		
	case 293: // STATE 568
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
		
	case 295: // STATE 570
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
		
	case 298: // STATE 576
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 299: // STATE 577
		;
		now.L8_lo.executed = trpt->bup.oval;
		;
		goto R999;
;
		
	case 300: // STATE 578
		goto R999;

	case 301: // STATE 585
		;
		now.LCount = trpt->bup.oval;
		;
		goto R999;

	case 302: // STATE 586
		;
		now.L8_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 306: // STATE 591
		;
		now.EXAM_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 309: // STATE 595
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 312: // STATE 600
		goto R999;

	case 313: // STATE 604
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 315: // STATE 608
		goto R999;

	case 316: // STATE 616
		;
		now.L8_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 319: // STATE 620
		goto R999;

	case 320: // STATE 627
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 323: // STATE 632
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 324: // STATE 636
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 326: // STATE 642
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
		
	case 328: // STATE 644
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
		
	case 330: // STATE 646
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
		
	case 332: // STATE 648
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
		
	case 335: // STATE 655
		;
		now.CW1_lo.executed = trpt->bup.ovals[1];
		now.STUDENTexTrace = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 336: // STATE 663
		;
		now.CwCount = trpt->bup.oval;
		;
		goto R999;

	case 337: // STATE 664
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 338: // STATE 665
		;
		now.CW1_lo.executed = trpt->bup.oval;
		;
		goto R999;

	case 339: // STATE 666
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 343: // STATE 671
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 345: // STATE 675
		goto R999;

	case 346: // STATE 683
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 349: // STATE 687
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 352: // STATE 691
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 355: // STATE 695
		goto R999;

	case 356: // STATE 702
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 357: // STATE 703
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 359: // STATE 707
		goto R999;

	case 360: // STATE 715
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 363: // STATE 719
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 366: // STATE 723
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 369: // STATE 727
		goto R999;

	case 370: // STATE 734
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 371: // STATE 735
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 374: // STATE 740
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 375: // STATE 744
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 377: // STATE 750
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
		
	case 379: // STATE 752
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
		
	case 381: // STATE 754
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
		
	case 383: // STATE 756
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
		;
		
	case 387: // STATE 764
		;
		now.CW2_lo.executed = trpt->bup.ovals[1];
		now.STUDENTexTrace = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 388: // STATE 772
		;
		now.CwCount = trpt->bup.oval;
		;
		goto R999;

	case 389: // STATE 773
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 390: // STATE 774
		;
		now.CW2_lo.executed = trpt->bup.oval;
		;
		goto R999;

	case 391: // STATE 775
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 395: // STATE 780
		;
		now.EXAM_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 398: // STATE 784
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 401: // STATE 789
		goto R999;
;
		
	case 402: // STATE 792
		goto R999;
;
		
	case 403: // STATE 794
		goto R999;

	case 404: // STATE 798
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 406: // STATE 802
		goto R999;

	case 407: // STATE 810
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 410: // STATE 814
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 413: // STATE 818
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 416: // STATE 822
		goto R999;

	case 417: // STATE 829
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 418: // STATE 830
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 420: // STATE 834
		goto R999;

	case 421: // STATE 841
		;
		now.CW1_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 424: // STATE 845
		;
		now.CW2_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 427: // STATE 849
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 431: // STATE 854
		goto R999;

	case 432: // STATE 861
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 433: // STATE 862
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 436: // STATE 867
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 437: // STATE 871
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 439: // STATE 877
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
		
	case 441: // STATE 879
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
		
	case 443: // STATE 881
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
		
	case 445: // STATE 883
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
		
	case 448: // STATE 890
		;
		now.EXAM_lo.executed = trpt->bup.ovals[1];
		now.STUDENTexTrace = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 449: // STATE 898
		;
		now.ExamCount = trpt->bup.oval;
		;
		goto R999;

	case 450: // STATE 899
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 451: // STATE 900
		;
		now.EXAM_lo.executed = trpt->bup.oval;
		;
		goto R999;

	case 452: // STATE 901
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 455: // STATE 905
		goto R999;

	case 456: // STATE 912
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 458: // STATE 916
		goto R999;

	case 459: // STATE 924
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 462: // STATE 928
		goto R999;

	case 463: // STATE 935
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 464: // STATE 936
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		
	case 466: // STATE 940
		goto R999;

	case 467: // STATE 948
		;
		now.EXAM_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 470: // STATE 952
		goto R999;

	case 471: // STATE 959
		;
		fail = trpt->bup.oval;
		;
		goto R999;

	case 472: // STATE 960
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 475: // STATE 965
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 476: // STATE 969
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 477: // STATE 977
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LEG */

	case 478: // STATE 1
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 479: // STATE 3
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 480: // STATE 4
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 481: // STATE 6
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
	case 482: // STATE 14
		sv_restor();
		goto R999;
	case 483: // STATE 23
		sv_restor();
		goto R999;
	case 484: // STATE 32
		sv_restor();
		goto R999;
	case 485: // STATE 41
		sv_restor();
		goto R999;
	case 486: // STATE 50
		sv_restor();
		goto R999;
	case 487: // STATE 59
		sv_restor();
		goto R999;
	case 488: // STATE 68
		sv_restor();
		goto R999;
	case 489: // STATE 77
		sv_restor();
		goto R999;
	case 490: // STATE 86
		sv_restor();
		goto R999;
	case 491: // STATE 95
		sv_restor();
		goto R999;
	case 492: // STATE 104
		sv_restor();
		goto R999;
	case 493: // STATE 113
		sv_restor();
		goto R999;
;
		;
		
	case 495: // STATE 117
		;
		now.START_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 496: // STATE 118
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 497: // STATE 120
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 498: // STATE 123
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 499: // STATE 126
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 500: // STATE 129
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 501: // STATE 132
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 502: // STATE 135
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 503: // STATE 138
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 504: // STATE 141
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 505: // STATE 144
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 506: // STATE 147
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 507: // STATE 150
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 508: // STATE 153
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 509: // STATE 156
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 511: // STATE 163
		;
		now.L1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 512: // STATE 164
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 513: // STATE 166
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 514: // STATE 169
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 515: // STATE 172
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 516: // STATE 175
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 517: // STATE 178
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 518: // STATE 181
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 519: // STATE 184
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 520: // STATE 187
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 521: // STATE 190
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 522: // STATE 193
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 523: // STATE 196
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 524: // STATE 199
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 525: // STATE 202
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 527: // STATE 209
		;
		now.L1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 528: // STATE 210
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 529: // STATE 212
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 530: // STATE 215
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 531: // STATE 218
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 532: // STATE 221
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 533: // STATE 224
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 534: // STATE 227
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 535: // STATE 230
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 536: // STATE 233
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 537: // STATE 236
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 538: // STATE 239
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 539: // STATE 242
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 540: // STATE 245
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 541: // STATE 248
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 543: // STATE 255
		;
		now.L1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 544: // STATE 256
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 545: // STATE 258
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 546: // STATE 261
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 547: // STATE 264
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 548: // STATE 267
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 549: // STATE 270
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 550: // STATE 273
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 551: // STATE 276
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 552: // STATE 279
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 553: // STATE 282
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 554: // STATE 285
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 555: // STATE 288
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 556: // STATE 291
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 557: // STATE 294
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 559: // STATE 301
		;
		now.L2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 560: // STATE 302
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 561: // STATE 304
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 562: // STATE 307
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 563: // STATE 310
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 564: // STATE 313
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 565: // STATE 316
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 566: // STATE 319
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 567: // STATE 322
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 568: // STATE 325
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 569: // STATE 328
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 570: // STATE 331
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 571: // STATE 334
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 572: // STATE 337
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 573: // STATE 340
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 575: // STATE 347
		;
		now.L2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 576: // STATE 348
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 577: // STATE 350
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 578: // STATE 353
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 579: // STATE 356
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 580: // STATE 359
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 581: // STATE 362
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 582: // STATE 365
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 583: // STATE 368
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 584: // STATE 371
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 585: // STATE 374
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 586: // STATE 377
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 587: // STATE 380
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 588: // STATE 383
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 589: // STATE 386
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 591: // STATE 393
		;
		now.L2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 592: // STATE 394
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 593: // STATE 396
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 594: // STATE 399
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 595: // STATE 402
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 596: // STATE 405
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 597: // STATE 408
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 598: // STATE 411
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 599: // STATE 414
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 600: // STATE 417
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 601: // STATE 420
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 602: // STATE 423
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 603: // STATE 426
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 604: // STATE 429
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 605: // STATE 432
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 607: // STATE 439
		;
		now.L3_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 608: // STATE 440
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 609: // STATE 442
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 610: // STATE 445
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 611: // STATE 448
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 612: // STATE 451
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 613: // STATE 454
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 614: // STATE 457
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 615: // STATE 460
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 616: // STATE 463
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 617: // STATE 466
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 618: // STATE 469
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 619: // STATE 472
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 620: // STATE 475
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 621: // STATE 478
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 623: // STATE 485
		;
		now.L3_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 624: // STATE 486
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 625: // STATE 488
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 626: // STATE 491
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 627: // STATE 494
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 628: // STATE 497
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 629: // STATE 500
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 630: // STATE 503
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 631: // STATE 506
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 632: // STATE 509
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 633: // STATE 512
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 634: // STATE 515
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 635: // STATE 518
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 636: // STATE 521
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 637: // STATE 524
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 639: // STATE 531
		;
		now.L3_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 640: // STATE 532
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 641: // STATE 534
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 642: // STATE 537
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 643: // STATE 540
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 644: // STATE 543
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 645: // STATE 546
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 646: // STATE 549
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 647: // STATE 552
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 648: // STATE 555
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 649: // STATE 558
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 650: // STATE 561
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 651: // STATE 564
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 652: // STATE 567
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 653: // STATE 570
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 655: // STATE 577
		;
		now.CW1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 656: // STATE 578
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 657: // STATE 580
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 658: // STATE 583
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 659: // STATE 586
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 660: // STATE 589
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 661: // STATE 592
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 662: // STATE 595
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 663: // STATE 598
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 664: // STATE 601
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 665: // STATE 604
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 666: // STATE 607
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 667: // STATE 610
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 668: // STATE 613
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 669: // STATE 616
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 671: // STATE 623
		;
		now.CW1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 672: // STATE 624
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 673: // STATE 626
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 674: // STATE 629
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 675: // STATE 632
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 676: // STATE 635
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 677: // STATE 638
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 678: // STATE 641
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 679: // STATE 644
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 680: // STATE 647
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 681: // STATE 650
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 682: // STATE 653
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 683: // STATE 656
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 684: // STATE 659
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 685: // STATE 662
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 687: // STATE 669
		;
		now.CW1_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 688: // STATE 670
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 689: // STATE 672
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 690: // STATE 675
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 691: // STATE 678
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 692: // STATE 681
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 693: // STATE 684
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 694: // STATE 687
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 695: // STATE 690
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 696: // STATE 693
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 697: // STATE 696
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 698: // STATE 699
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 699: // STATE 702
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 700: // STATE 705
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 701: // STATE 708
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 703: // STATE 715
		;
		now.L4_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 704: // STATE 716
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 705: // STATE 718
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 706: // STATE 721
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 707: // STATE 724
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 708: // STATE 727
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 709: // STATE 730
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 710: // STATE 733
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 711: // STATE 736
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 712: // STATE 739
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 713: // STATE 742
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 714: // STATE 745
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 715: // STATE 748
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 716: // STATE 751
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 717: // STATE 754
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 719: // STATE 761
		;
		now.L4_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 720: // STATE 762
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 721: // STATE 764
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 722: // STATE 767
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 723: // STATE 770
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 724: // STATE 773
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 725: // STATE 776
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 726: // STATE 779
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 727: // STATE 782
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 728: // STATE 785
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 729: // STATE 788
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 730: // STATE 791
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 731: // STATE 794
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 732: // STATE 797
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 733: // STATE 800
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 735: // STATE 807
		;
		now.L4_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 736: // STATE 808
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 737: // STATE 810
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 738: // STATE 813
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 739: // STATE 816
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 740: // STATE 819
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 741: // STATE 822
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 742: // STATE 825
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 743: // STATE 828
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 744: // STATE 831
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 745: // STATE 834
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 746: // STATE 837
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 747: // STATE 840
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 748: // STATE 843
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 749: // STATE 846
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 751: // STATE 853
		;
		now.L5_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 752: // STATE 854
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 753: // STATE 856
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 754: // STATE 859
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 755: // STATE 862
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 756: // STATE 865
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 757: // STATE 868
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 758: // STATE 871
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 759: // STATE 874
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 760: // STATE 877
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 761: // STATE 880
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 762: // STATE 883
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 763: // STATE 886
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 764: // STATE 889
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 765: // STATE 892
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 767: // STATE 899
		;
		now.L5_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 768: // STATE 900
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 769: // STATE 902
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 770: // STATE 905
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 771: // STATE 908
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 772: // STATE 911
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 773: // STATE 914
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 774: // STATE 917
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 775: // STATE 920
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 776: // STATE 923
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 777: // STATE 926
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 778: // STATE 929
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 779: // STATE 932
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 780: // STATE 935
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 781: // STATE 938
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 783: // STATE 945
		;
		now.L5_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 784: // STATE 946
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 785: // STATE 948
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 786: // STATE 951
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 787: // STATE 954
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 788: // STATE 957
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 789: // STATE 960
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 790: // STATE 963
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 791: // STATE 966
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 792: // STATE 969
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 793: // STATE 972
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 794: // STATE 975
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 795: // STATE 978
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 796: // STATE 981
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 797: // STATE 984
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 799: // STATE 991
		;
		now.L6_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 800: // STATE 992
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 801: // STATE 994
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 802: // STATE 997
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 803: // STATE 1000
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 804: // STATE 1003
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 805: // STATE 1006
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 806: // STATE 1009
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 807: // STATE 1012
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 808: // STATE 1015
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 809: // STATE 1018
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 810: // STATE 1021
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 811: // STATE 1024
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 812: // STATE 1027
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 813: // STATE 1030
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 815: // STATE 1037
		;
		now.L6_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 816: // STATE 1038
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 817: // STATE 1040
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 818: // STATE 1043
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 819: // STATE 1046
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 820: // STATE 1049
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 821: // STATE 1052
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 822: // STATE 1055
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 823: // STATE 1058
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 824: // STATE 1061
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 825: // STATE 1064
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 826: // STATE 1067
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 827: // STATE 1070
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 828: // STATE 1073
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 829: // STATE 1076
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 831: // STATE 1083
		;
		now.L6_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 832: // STATE 1084
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 833: // STATE 1086
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 834: // STATE 1089
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 835: // STATE 1092
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 836: // STATE 1095
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 837: // STATE 1098
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 838: // STATE 1101
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 839: // STATE 1104
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 840: // STATE 1107
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 841: // STATE 1110
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 842: // STATE 1113
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 843: // STATE 1116
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 844: // STATE 1119
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 845: // STATE 1122
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 847: // STATE 1129
		;
		now.CW2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 848: // STATE 1130
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 849: // STATE 1132
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 850: // STATE 1135
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 851: // STATE 1138
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 852: // STATE 1141
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 853: // STATE 1144
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 854: // STATE 1147
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 855: // STATE 1150
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 856: // STATE 1153
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 857: // STATE 1156
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 858: // STATE 1159
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 859: // STATE 1162
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 860: // STATE 1165
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 861: // STATE 1168
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 863: // STATE 1175
		;
		now.CW2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 864: // STATE 1176
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 865: // STATE 1178
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 866: // STATE 1181
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 867: // STATE 1184
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 868: // STATE 1187
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 869: // STATE 1190
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 870: // STATE 1193
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 871: // STATE 1196
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 872: // STATE 1199
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 873: // STATE 1202
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 874: // STATE 1205
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 875: // STATE 1208
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 876: // STATE 1211
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 877: // STATE 1214
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 879: // STATE 1221
		;
		now.CW2_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 880: // STATE 1222
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 881: // STATE 1224
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 882: // STATE 1227
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 883: // STATE 1230
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 884: // STATE 1233
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 885: // STATE 1236
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 886: // STATE 1239
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 887: // STATE 1242
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 888: // STATE 1245
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 889: // STATE 1248
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 890: // STATE 1251
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 891: // STATE 1254
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 892: // STATE 1257
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 893: // STATE 1260
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 895: // STATE 1267
		;
		now.L7_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 896: // STATE 1268
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 897: // STATE 1270
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 898: // STATE 1273
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 899: // STATE 1276
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 900: // STATE 1279
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 901: // STATE 1282
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 902: // STATE 1285
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 903: // STATE 1288
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 904: // STATE 1291
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 905: // STATE 1294
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 906: // STATE 1297
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 907: // STATE 1300
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 908: // STATE 1303
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 909: // STATE 1306
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 911: // STATE 1313
		;
		now.L7_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 912: // STATE 1314
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 913: // STATE 1316
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 914: // STATE 1319
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 915: // STATE 1322
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 916: // STATE 1325
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 917: // STATE 1328
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 918: // STATE 1331
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 919: // STATE 1334
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 920: // STATE 1337
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 921: // STATE 1340
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 922: // STATE 1343
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 923: // STATE 1346
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 924: // STATE 1349
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 925: // STATE 1352
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 927: // STATE 1359
		;
		now.L7_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 928: // STATE 1360
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 929: // STATE 1362
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 930: // STATE 1365
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 931: // STATE 1368
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 932: // STATE 1371
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 933: // STATE 1374
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 934: // STATE 1377
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 935: // STATE 1380
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 936: // STATE 1383
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 937: // STATE 1386
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 938: // STATE 1389
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 939: // STATE 1392
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 940: // STATE 1395
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 941: // STATE 1398
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 943: // STATE 1405
		;
		now.L8_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 944: // STATE 1406
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 945: // STATE 1408
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 946: // STATE 1411
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 947: // STATE 1414
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 948: // STATE 1417
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 949: // STATE 1420
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 950: // STATE 1423
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 951: // STATE 1426
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 952: // STATE 1429
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 953: // STATE 1432
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 954: // STATE 1435
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 955: // STATE 1438
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 956: // STATE 1441
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 957: // STATE 1444
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 959: // STATE 1451
		;
		now.L8_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 960: // STATE 1452
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 961: // STATE 1454
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 962: // STATE 1457
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 963: // STATE 1460
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 964: // STATE 1463
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 965: // STATE 1466
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 966: // STATE 1469
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 967: // STATE 1472
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 968: // STATE 1475
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 969: // STATE 1478
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 970: // STATE 1481
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 971: // STATE 1484
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 972: // STATE 1487
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 973: // STATE 1490
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 975: // STATE 1497
		;
		now.L8_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 976: // STATE 1498
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 977: // STATE 1500
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 978: // STATE 1503
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 979: // STATE 1506
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 980: // STATE 1509
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 981: // STATE 1512
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 982: // STATE 1515
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 983: // STATE 1518
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 984: // STATE 1521
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 985: // STATE 1524
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 986: // STATE 1527
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 987: // STATE 1530
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 988: // STATE 1533
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 989: // STATE 1536
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 991: // STATE 1543
		;
		now.EXAM_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 992: // STATE 1544
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 993: // STATE 1546
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 994: // STATE 1549
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 995: // STATE 1552
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 996: // STATE 1555
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 997: // STATE 1558
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 998: // STATE 1561
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 999: // STATE 1564
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1000: // STATE 1567
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1001: // STATE 1570
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1002: // STATE 1573
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1003: // STATE 1576
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1004: // STATE 1579
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1005: // STATE 1582
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 1007: // STATE 1589
		;
		now.EXAM_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 1008: // STATE 1590
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 1009: // STATE 1592
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1010: // STATE 1595
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1011: // STATE 1598
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1012: // STATE 1601
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1013: // STATE 1604
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1014: // STATE 1607
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1015: // STATE 1610
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1016: // STATE 1613
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1017: // STATE 1616
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1018: // STATE 1619
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1019: // STATE 1622
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1020: // STATE 1625
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1021: // STATE 1628
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 1023: // STATE 1635
		;
		now.EXAM_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 1024: // STATE 1636
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 1025: // STATE 1638
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1026: // STATE 1641
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1027: // STATE 1644
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1028: // STATE 1647
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 1029: // STATE 1650
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1030: // STATE 1653
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1031: // STATE 1656
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 1032: // STATE 1659
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1033: // STATE 1662
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1034: // STATE 1665
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 1035: // STATE 1668
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1036: // STATE 1671
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1037: // STATE 1674
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 1038: // STATE 1683
		;
		p_restor(II);
		;
		;
		goto R999;
	}

