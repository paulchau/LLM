	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM ltlCheck */
;
		;
		
	case 4: // STATE 6
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
		
	case 18: // STATE 14
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 21: // STATE 18
		;
		now.d_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 25: // STATE 23
		;
		now.b_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 28: // STATE 28
		;
		now.b_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 32: // STATE 35
		;
		now.c_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 35: // STATE 40
		;
		now.c_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 39: // STATE 47
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 43: // STATE 52
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 46: // STATE 57
		;
		now.d_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 49: // STATE 63
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 51: // STATE 67
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 52: // STATE 71
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 54: // STATE 77
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
		
	case 56: // STATE 79
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
		
	case 58: // STATE 81
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
		
	case 60: // STATE 83
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
		
	case 62: // STATE 88
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 65: // STATE 92
		;
		now.b_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 68: // STATE 96
		;
		now.b_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 71: // STATE 100
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 101
		;
		now.b_lo.executed = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 102
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 75: // STATE 106
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 78: // STATE 110
		;
		now.b_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 81: // STATE 114
		;
		now.c_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 84: // STATE 118
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 87: // STATE 122
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 88: // STATE 126
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 90: // STATE 132
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
		
	case 92: // STATE 134
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
		
	case 94: // STATE 136
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
		
	case 96: // STATE 138
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
		
	case 98: // STATE 143
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 101: // STATE 147
		;
		now.c_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 104: // STATE 151
		;
		now.c_lo.prohib = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 107: // STATE 155
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 156
		;
		now.c_lo.executed = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 157
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 111: // STATE 161
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 114: // STATE 165
		;
		now.b_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 117: // STATE 169
		;
		now.c_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 120: // STATE 173
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 123: // STATE 177
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 124: // STATE 181
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 126: // STATE 187
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
		
	case 128: // STATE 189
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
		
	case 130: // STATE 191
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
		
	case 132: // STATE 193
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
		
	case 134: // STATE 198
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 137: // STATE 202
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 140: // STATE 206
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;
;
		;
		
	case 142: // STATE 210
		;
		now.a_lo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 145: // STATE 214
		;
		now.b_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 148: // STATE 218
		;
		now.c_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 151: // STATE 222
		;
		now.d_lo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 154: // STATE 226
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 155: // STATE 230
		;
		_m = unsend(now.CRM2LEG);
		;
		goto R999;

	case 156: // STATE 238
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LEG */

	case 157: // STATE 1
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 3
		;
		now.STUDENTexTrace = trpt->bup.oval;
		;
		goto R999;

	case 159: // STATE 4
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 160: // STATE 6
		;
		now.LMSexTrace = trpt->bup.oval;
		;
		goto R999;
	case 161: // STATE 14
		sv_restor();
		goto R999;
	case 162: // STATE 23
		sv_restor();
		goto R999;
	case 163: // STATE 32
		sv_restor();
		goto R999;
	case 164: // STATE 41
		sv_restor();
		goto R999;
;
		;
		
	case 166: // STATE 45
		;
		now.a_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 167: // STATE 46
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 168: // STATE 48
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 169: // STATE 51
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 170: // STATE 54
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 171: // STATE 57
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 172: // STATE 60
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 173: // STATE 63
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 174: // STATE 66
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 175: // STATE 69
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 176: // STATE 72
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 177: // STATE 75
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 178: // STATE 78
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 179: // STATE 81
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 180: // STATE 84
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 182: // STATE 91
		;
		now.b_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 183: // STATE 92
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 184: // STATE 94
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 185: // STATE 97
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 186: // STATE 100
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 187: // STATE 103
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 188: // STATE 106
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 189: // STATE 109
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 190: // STATE 112
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 191: // STATE 115
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 192: // STATE 118
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 193: // STATE 121
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 194: // STATE 124
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 195: // STATE 127
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 196: // STATE 130
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 198: // STATE 137
		;
		now.c_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 138
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 200: // STATE 140
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 201: // STATE 143
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 202: // STATE 146
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 203: // STATE 149
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 204: // STATE 152
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 205: // STATE 155
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 206: // STATE 158
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 207: // STATE 161
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 208: // STATE 164
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 209: // STATE 167
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 210: // STATE 170
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 211: // STATE 173
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 212: // STATE 176
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;
;
		;
		
	case 214: // STATE 183
		;
		now.d_lo.status = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 184
		;
		_m = unsend(now.LEG2CRM);
		;
		goto R999;

	case 216: // STATE 186
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 217: // STATE 189
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 218: // STATE 192
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 219: // STATE 195
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 5, 0);
		;
		;
		goto R999;

	case 220: // STATE 198
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 221: // STATE 201
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 222: // STATE 204
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 3, 0);
		;
		;
		goto R999;

	case 223: // STATE 207
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 224: // STATE 210
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 225: // STATE 213
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 226: // STATE 216
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 9, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 227: // STATE 219
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 228: // STATE 222
		;
		XX = 1;
		unrecv(now.CRM2LEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2LEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 229: // STATE 231
		;
		p_restor(II);
		;
		;
		goto R999;
	}

