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
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 10: // STATE 5
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 12: // STATE 7
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: // STATE 9
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 16: // STATE 14
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 17: // STATE 15
		goto R999;

	case 18: // STATE 22
		;
		now.BUYREQ_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 21: // STATE 26
		;
		now.BUYREJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 24: // STATE 30
		;
		now.BUYCONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 27: // STATE 34
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 29: // STATE 38
		goto R999;
;
		;
		
	case 31: // STATE 46
		;
		now.ReqFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 48
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 35: // STATE 51
		;
		abncoend = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 37: // STATE 53
		;
		now.BUYREQ_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 40: // STATE 57
		goto R999;

	case 41: // STATE 64
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 42: // STATE 70
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 44: // STATE 76
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 46: // STATE 78
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 48: // STATE 80
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 50: // STATE 82
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 52: // STATE 87
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 53: // STATE 88
		goto R999;

	case 54: // STATE 95
		;
		now.BUYREJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 57: // STATE 99
		;
		now.BUYCONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 60: // STATE 103
		goto R999;

	case 61: // STATE 110
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 63: // STATE 114
		goto R999;
;
		;
		
	case 65: // STATE 122
		;
		now.RejFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 67: // STATE 124
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 69: // STATE 127
		;
		abncoend = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 129
		;
		now.BUYREJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 74: // STATE 133
		;
		now.BUYCONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 77: // STATE 137
		goto R999;

	case 78: // STATE 144
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 79: // STATE 150
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 81: // STATE 156
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 83: // STATE 158
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 85: // STATE 160
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 87: // STATE 162
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 89: // STATE 167
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 90: // STATE 168
		goto R999;

	case 91: // STATE 175
		;
		now.BUYREJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 94: // STATE 179
		;
		now.BUYCONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 97: // STATE 183
		;
		now.BUYPAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 100: // STATE 187
		;
		now.BUYCANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 103: // STATE 191
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 105: // STATE 195
		goto R999;
;
		;
		
	case 107: // STATE 203
		;
		now.ConfFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 109: // STATE 205
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 111: // STATE 208
		;
		abncoend = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 113: // STATE 210
		;
		now.BUYREJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 116: // STATE 214
		;
		now.BUYCONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 119: // STATE 218
		goto R999;

	case 120: // STATE 225
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 121: // STATE 231
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 123: // STATE 237
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 125: // STATE 239
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 127: // STATE 241
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 129: // STATE 243
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 132: // STATE 249
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 133: // STATE 250
		goto R999;

	case 134: // STATE 257
		;
		now.BUYPAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 137: // STATE 261
		;
		now.BUYCANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 140: // STATE 265
		goto R999;

	case 141: // STATE 272
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 143: // STATE 276
		goto R999;
;
		;
		
	case 145: // STATE 284
		;
		now.PayFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 147: // STATE 286
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 149: // STATE 289
		;
		abncoend = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 151: // STATE 291
		;
		now.BUYPAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 154: // STATE 295
		;
		now.BUYCANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 157: // STATE 299
		goto R999;

	case 158: // STATE 306
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 159: // STATE 312
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 161: // STATE 318
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 163: // STATE 320
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 165: // STATE 322
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 167: // STATE 324
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 169: // STATE 329
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 170: // STATE 330
		goto R999;

	case 171: // STATE 337
		;
		now.BUYPAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 174: // STATE 341
		;
		now.BUYCANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 177: // STATE 345
		goto R999;

	case 178: // STATE 352
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 180: // STATE 356
		goto R999;
;
		;
		
	case 182: // STATE 364
		;
		now.CancFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 184: // STATE 366
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 186: // STATE 369
		;
		abncoend = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 188: // STATE 371
		;
		now.BUYPAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 191: // STATE 375
		;
		now.BUYCANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		
	case 194: // STATE 379
		goto R999;

	case 195: // STATE 386
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 196: // STATE 392
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 197: // STATE 400
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC BEG */

	case 198: // STATE 1
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 3
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 200: // STATE 4
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 201: // STATE 6
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;
	case 202: // STATE 14
		sv_restor();
		goto R999;
	case 203: // STATE 23
		sv_restor();
		goto R999;
	case 204: // STATE 32
		sv_restor();
		goto R999;
	case 205: // STATE 41
		sv_restor();
		goto R999;
	case 206: // STATE 50
		sv_restor();
		goto R999;
;
		;
		
	case 208: // STATE 54
		;
		now.BUYREQ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 209: // STATE 55
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 210: // STATE 57
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 211: // STATE 60
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 212: // STATE 63
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 213: // STATE 66
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 214: // STATE 69
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 215: // STATE 72
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 216: // STATE 75
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 217: // STATE 78
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 218: // STATE 81
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 219: // STATE 84
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 220: // STATE 87
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 221: // STATE 90
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 222: // STATE 93
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 224: // STATE 100
		;
		now.BUYREQ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 225: // STATE 101
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 226: // STATE 103
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 227: // STATE 106
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 228: // STATE 109
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 229: // STATE 112
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 230: // STATE 115
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 231: // STATE 118
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 232: // STATE 121
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 233: // STATE 124
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 234: // STATE 127
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 235: // STATE 130
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 236: // STATE 133
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 237: // STATE 136
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 238: // STATE 139
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 240: // STATE 146
		;
		now.BUYREJ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 241: // STATE 147
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 242: // STATE 149
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 243: // STATE 152
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 244: // STATE 155
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 245: // STATE 158
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 246: // STATE 161
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 247: // STATE 164
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 248: // STATE 167
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 249: // STATE 170
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 250: // STATE 173
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 251: // STATE 176
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 252: // STATE 179
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 253: // STATE 182
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 254: // STATE 185
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 256: // STATE 192
		;
		now.BUYREJ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 257: // STATE 193
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 258: // STATE 195
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 259: // STATE 198
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 260: // STATE 201
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 261: // STATE 204
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 262: // STATE 207
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 263: // STATE 210
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 264: // STATE 213
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 265: // STATE 216
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 266: // STATE 219
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 267: // STATE 222
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 268: // STATE 225
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 269: // STATE 228
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 270: // STATE 231
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 272: // STATE 238
		;
		now.BUYCONF_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 273: // STATE 239
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 274: // STATE 241
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 275: // STATE 244
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 276: // STATE 247
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 277: // STATE 250
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 278: // STATE 253
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 279: // STATE 256
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 280: // STATE 259
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 281: // STATE 262
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 282: // STATE 265
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 283: // STATE 268
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 284: // STATE 271
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 285: // STATE 274
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 286: // STATE 277
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 288: // STATE 284
		;
		now.BUYCONF_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 289: // STATE 285
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 290: // STATE 287
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 291: // STATE 290
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 292: // STATE 293
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 293: // STATE 296
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 294: // STATE 299
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 295: // STATE 302
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 296: // STATE 305
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 297: // STATE 308
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 298: // STATE 311
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 299: // STATE 314
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 300: // STATE 317
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 301: // STATE 320
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 302: // STATE 323
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 304: // STATE 330
		;
		now.BUYPAY_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 305: // STATE 331
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 306: // STATE 333
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 307: // STATE 336
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 308: // STATE 339
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 309: // STATE 342
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 310: // STATE 345
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 311: // STATE 348
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 312: // STATE 351
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 313: // STATE 354
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 314: // STATE 357
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 315: // STATE 360
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 316: // STATE 363
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 317: // STATE 366
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 318: // STATE 369
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 320: // STATE 376
		;
		now.BUYPAY_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 321: // STATE 377
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 322: // STATE 379
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 323: // STATE 382
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 324: // STATE 385
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 325: // STATE 388
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 326: // STATE 391
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 327: // STATE 394
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 328: // STATE 397
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 329: // STATE 400
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 330: // STATE 403
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 331: // STATE 406
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 332: // STATE 409
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 333: // STATE 412
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 334: // STATE 415
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 336: // STATE 422
		;
		now.BUYCANC_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 337: // STATE 423
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 338: // STATE 425
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 339: // STATE 428
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 340: // STATE 431
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 341: // STATE 434
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 342: // STATE 437
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 343: // STATE 440
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 344: // STATE 443
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 345: // STATE 446
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 346: // STATE 449
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 347: // STATE 452
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 348: // STATE 455
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 349: // STATE 458
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 350: // STATE 461
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 352: // STATE 468
		;
		now.BUYCANC_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 353: // STATE 469
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 354: // STATE 471
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 355: // STATE 474
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 356: // STATE 477
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 357: // STATE 480
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 358: // STATE 483
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 359: // STATE 486
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 360: // STATE 489
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 361: // STATE 492
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 362: // STATE 495
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 363: // STATE 498
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 364: // STATE 501
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 365: // STATE 504
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 366: // STATE 507
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 367: // STATE 516
		;
		p_restor(II);
		;
		;
		goto R999;
	}

