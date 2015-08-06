#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM ltlCheck */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [((!(((a_lo.right==1)&&(a_lo.role_pl==STUDENT)))||((c_lo.prohib==1)&&(c_lo.role_pl==STUDENT))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.role_pl)==12)))||((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.role_pl)==12)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - ./test.pml:127 - [(run LEG())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - ./test.pml:127 - [(run CRM())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 4 - ./test.pml:129 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CRM */
	case 8: // STATE 1 - ./test.pml:114 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - ./EduOperation.h:393 - [(LEG2CRM?[17,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 3 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][3] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 4 - ./EduOperation.h:394 - [(LEG2CRM?[17,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][5] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 6 - ./EduOperation.h:395 - [(LEG2CRM?[17,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 7 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][7] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 8 - ./EduOperation.h:396 - [(LEG2CRM?[17,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 9 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][9] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 13 - ./goodRules.h:15 - [((((a_lo.right==1)&&((a_lo.role_pl==STUDENT)==1))&&((a_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((int)now.a_lo.right)==1)&&((((int)now.a_lo.role_pl)==12)==1))&&((((int)now.a_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 14 - ./EduOperation.h:278 - [a_lo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 0;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 15 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 16 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 18 - ./EduOperation.h:315 - [d_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.prohib);
		now.d_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("d_lo.prohib", ((int)now.d_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 19 - ./EduOperation.h:316 - [assert(!(((d_lo.prohib==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		spin_assert( !(((((int)now.d_lo.prohib)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.prohib==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 20 - ./EduOperation.h:317 - [assert(!(((d_lo.prohib==1)&&(d_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		spin_assert( !(((((int)now.d_lo.prohib)==1)&&(((int)now.d_lo.oblig)==1))), " !(((d_lo.prohib==1)&&(d_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 22 - ./goodRules.h:20 - [(((b_lo.prohib==1)&&(b_lo.role_pl==STUDENT)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!(((((int)now.b_lo.prohib)==1)&&(((int)now.b_lo.role_pl)==12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 23 - ./EduOperation.h:315 - [b_lo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.prohib);
		now.b_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("b_lo.prohib", ((int)now.b_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 24 - ./EduOperation.h:316 - [assert(!(((b_lo.prohib==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		spin_assert( !(((((int)now.b_lo.prohib)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.prohib==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 25 - ./EduOperation.h:317 - [assert(!(((b_lo.prohib==1)&&(b_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		spin_assert( !(((((int)now.b_lo.prohib)==1)&&(((int)now.b_lo.oblig)==1))), " !(((b_lo.prohib==1)&&(b_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 28 - ./EduOperation.h:301 - [b_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.oblig);
		now.b_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 29 - ./EduOperation.h:302 - [assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.prohib)==1))), " !(((b_lo.oblig==1)&&(b_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 30 - ./EduOperation.h:303 - [assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.oblig==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 34 - ./goodRules.h:24 - [(((c_lo.prohib==1)&&(c_lo.role_pl==STUDENT)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.role_pl)==12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 35 - ./EduOperation.h:315 - [c_lo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.prohib);
		now.c_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("c_lo.prohib", ((int)now.c_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 36 - ./EduOperation.h:316 - [assert(!(((c_lo.prohib==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		spin_assert( !(((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.prohib==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 37 - ./EduOperation.h:317 - [assert(!(((c_lo.prohib==1)&&(c_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		spin_assert( !(((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.oblig)==1))), " !(((c_lo.prohib==1)&&(c_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 40 - ./EduOperation.h:301 - [c_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.oblig);
		now.c_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 41 - ./EduOperation.h:302 - [assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.prohib)==1))), " !(((c_lo.oblig==1)&&(c_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 42 - ./EduOperation.h:303 - [assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.oblig==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 46 - ./goodRules.h:28 - [(((b_lo.executed==1)&&(b_lo.role_pl==STUDENT)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!(((((int)now.b_lo.executed)==1)&&(((int)now.b_lo.role_pl)==12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 47 - ./EduOperation.h:301 - [d_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 48 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 49 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 51 - ./goodRules.h:29 - [(((c_lo.executed==1)&&(c_lo.role_pl==STUDENT)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((((int)now.c_lo.executed)==1)&&(((int)now.c_lo.role_pl)==12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 52 - ./EduOperation.h:301 - [d_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 53 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 54 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 57 - ./EduOperation.h:315 - [d_lo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.prohib);
		now.d_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("d_lo.prohib", ((int)now.d_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 58 - ./EduOperation.h:316 - [assert(!(((d_lo.prohib==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		spin_assert( !(((((int)now.d_lo.prohib)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.prohib==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 59 - ./EduOperation.h:317 - [assert(!(((d_lo.prohib==1)&&(d_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		spin_assert( !(((((int)now.d_lo.prohib)==1)&&(((int)now.d_lo.oblig)==1))), " !(((d_lo.prohib==1)&&(d_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 63 - ./EduOperation.h:428 - [CRM2LEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 9, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 66 - ./goodRules.h:34 - [((((a_lo.prohib==1)&&((a_lo.role_pl==STUDENT)==1))&&((a_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!((((((int)now.a_lo.prohib)==1)&&((((int)now.a_lo.role_pl)==12)==1))&&((((int)now.a_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 67 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 7, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 52: // STATE 71 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 76 - ./EduOperation.h:393 - [(LEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 77 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][77] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 55: // STATE 78 - ./EduOperation.h:394 - [(LEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 79 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][79] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 57: // STATE 80 - ./EduOperation.h:395 - [(LEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 81 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][81] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 59: // STATE 82 - ./EduOperation.h:396 - [(LEG2CRM?[18,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 83 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][83] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 87 - ./goodRules.h:42 - [((((b_lo.oblig==1)&&((b_lo.role_pl==STUDENT)==1))&&((b_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (!((((((int)now.b_lo.oblig)==1)&&((((int)now.b_lo.role_pl)==12)==1))&&((((int)now.b_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 88 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 89 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 90 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 92 - ./EduOperation.h:301 - [b_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.oblig);
		now.b_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 93 - ./EduOperation.h:302 - [assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.prohib)==1))), " !(((b_lo.oblig==1)&&(b_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 94 - ./EduOperation.h:303 - [assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.oblig==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 96 - ./EduOperation.h:315 - [b_lo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.prohib);
		now.b_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("b_lo.prohib", ((int)now.b_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 97 - ./EduOperation.h:316 - [assert(!(((b_lo.prohib==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		spin_assert( !(((((int)now.b_lo.prohib)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.prohib==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 98 - ./EduOperation.h:317 - [assert(!(((b_lo.prohib==1)&&(b_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		spin_assert( !(((((int)now.b_lo.prohib)==1)&&(((int)now.b_lo.oblig)==1))), " !(((b_lo.prohib==1)&&(b_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 100 - ./goodRules.h:47 - [STUDENTexTrace = (STUDENTexTrace|(1<<b_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.b_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 101 - ./goodRules.h:47 - [b_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.executed);
		now.b_lo.executed = 1;
#ifdef VAR_RANGES
		logval("b_lo.executed", ((int)now.b_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 102 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 74: // STATE 105 - ./goodRules.h:50 - [((((b_lo.prohib==1)&&((b_lo.role_pl==STUDENT)==1))&&((b_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((((int)now.b_lo.prohib)==1)&&((((int)now.b_lo.role_pl)==12)==1))&&((((int)now.b_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 106 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 107 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 108 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 110 - ./EduOperation.h:301 - [b_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.oblig);
		now.b_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 111 - ./EduOperation.h:302 - [assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.prohib)==1))), " !(((b_lo.oblig==1)&&(b_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 112 - ./EduOperation.h:303 - [assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.oblig==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 114 - ./EduOperation.h:301 - [c_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.oblig);
		now.c_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 115 - ./EduOperation.h:302 - [assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.prohib)==1))), " !(((c_lo.oblig==1)&&(c_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 116 - ./EduOperation.h:303 - [assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.oblig==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 118 - ./EduOperation.h:301 - [d_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 119 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 120 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 122 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 7, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 126 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 89: // STATE 131 - ./EduOperation.h:393 - [(LEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 132 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][132] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 91: // STATE 133 - ./EduOperation.h:394 - [(LEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 134 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][134] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 93: // STATE 135 - ./EduOperation.h:395 - [(LEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 136 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][136] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 95: // STATE 137 - ./EduOperation.h:396 - [(LEG2CRM?[19,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 138 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][138] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 97: // STATE 142 - ./goodRules.h:62 - [((((c_lo.oblig==1)&&((c_lo.role_pl==STUDENT)==1))&&((c_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		if (!((((((int)now.c_lo.oblig)==1)&&((((int)now.c_lo.role_pl)==12)==1))&&((((int)now.c_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 143 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 144 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 145 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 147 - ./EduOperation.h:301 - [c_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][147] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.oblig);
		now.c_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 148 - ./EduOperation.h:302 - [assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.prohib)==1))), " !(((c_lo.oblig==1)&&(c_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 149 - ./EduOperation.h:303 - [assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.oblig==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 151 - ./EduOperation.h:315 - [c_lo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][151] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.prohib);
		now.c_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("c_lo.prohib", ((int)now.c_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 152 - ./EduOperation.h:316 - [assert(!(((c_lo.prohib==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][152] = 1;
		spin_assert( !(((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.prohib==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 153 - ./EduOperation.h:317 - [assert(!(((c_lo.prohib==1)&&(c_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		spin_assert( !(((((int)now.c_lo.prohib)==1)&&(((int)now.c_lo.oblig)==1))), " !(((c_lo.prohib==1)&&(c_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 155 - ./goodRules.h:67 - [STUDENTexTrace = (STUDENTexTrace|(1<<c_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][155] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.c_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 156 - ./goodRules.h:67 - [c_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][156] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.executed);
		now.c_lo.executed = 1;
#ifdef VAR_RANGES
		logval("c_lo.executed", ((int)now.c_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 157 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][157] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 110: // STATE 160 - ./goodRules.h:70 - [((((c_lo.prohib==1)&&((c_lo.role_pl==STUDENT)==1))&&((c_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][160] = 1;
		if (!((((((int)now.c_lo.prohib)==1)&&((((int)now.c_lo.role_pl)==12)==1))&&((((int)now.c_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 161 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 162 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][162] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 163 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][163] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 165 - ./EduOperation.h:301 - [b_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][165] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.oblig);
		now.b_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 166 - ./EduOperation.h:302 - [assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][166] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.prohib)==1))), " !(((b_lo.oblig==1)&&(b_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 167 - ./EduOperation.h:303 - [assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.oblig==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 169 - ./EduOperation.h:301 - [c_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][169] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.oblig);
		now.c_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 170 - ./EduOperation.h:302 - [assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][170] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.prohib)==1))), " !(((c_lo.oblig==1)&&(c_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 171 - ./EduOperation.h:303 - [assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][171] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.oblig==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 173 - ./EduOperation.h:301 - [d_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][173] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 174 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][174] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 175 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 177 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 7, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 124: // STATE 181 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][181] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 125: // STATE 186 - ./EduOperation.h:393 - [(LEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][186] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 187 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][187] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 127: // STATE 188 - ./EduOperation.h:394 - [(LEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][188] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 189 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][189] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 129: // STATE 190 - ./EduOperation.h:395 - [(LEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][190] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 191 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][191] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 131: // STATE 192 - ./EduOperation.h:396 - [(LEG2CRM?[20,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][192] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 193 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][193] = 1;
		if (q_zero(now.LEG2CRM))
		{	if (boq != now.LEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.LEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.LEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.LEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.LEG2CRM, XX-1, 0, 0);
		qrecv(now.LEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.LEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.LEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 133: // STATE 197 - ./goodRules.h:83 - [((((d_lo.oblig==1)&&((d_lo.role_pl==STUDENT)==1))&&((d_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][197] = 1;
		if (!((((((int)now.d_lo.oblig)==1)&&((((int)now.d_lo.role_pl)==12)==1))&&((((int)now.d_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 198 - ./EduOperation.h:301 - [d_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][198] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 199 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][199] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 200 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][200] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 202 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][202] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 203 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][203] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 204 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][204] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 206 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][206] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 141: // STATE 209 - ./goodRules.h:89 - [((((d_lo.prohib==1)&&((d_lo.role_pl==STUDENT)==1))&&((d_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][209] = 1;
		if (!((((((int)now.d_lo.prohib)==1)&&((((int)now.d_lo.role_pl)==12)==1))&&((((int)now.d_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 210 - ./EduOperation.h:278 - [a_lo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.right);
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 211 - ./EduOperation.h:279 - [assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.oblig)==1))), " !(((a_lo.right==1)&&(a_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 212 - ./EduOperation.h:280 - [assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		spin_assert( !(((((int)now.a_lo.right)==1)&&(((int)now.a_lo.prohib)==1))), " !(((a_lo.right==1)&&(a_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 214 - ./EduOperation.h:301 - [b_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][214] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.oblig);
		now.b_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 215 - ./EduOperation.h:302 - [assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.prohib)==1))), " !(((b_lo.oblig==1)&&(b_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 216 - ./EduOperation.h:303 - [assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		spin_assert( !(((((int)now.b_lo.oblig)==1)&&(((int)now.b_lo.right)==1))), " !(((b_lo.oblig==1)&&(b_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 218 - ./EduOperation.h:301 - [c_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][218] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.oblig);
		now.c_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 219 - ./EduOperation.h:302 - [assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.prohib)==1))), " !(((c_lo.oblig==1)&&(c_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 220 - ./EduOperation.h:303 - [assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][220] = 1;
		spin_assert( !(((((int)now.c_lo.oblig)==1)&&(((int)now.c_lo.right)==1))), " !(((c_lo.oblig==1)&&(c_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 222 - ./EduOperation.h:301 - [d_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][222] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.oblig);
		now.d_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 223 - ./EduOperation.h:302 - [assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][223] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.prohib)==1))), " !(((d_lo.oblig==1)&&(d_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 224 - ./EduOperation.h:303 - [assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][224] = 1;
		spin_assert( !(((((int)now.d_lo.oblig)==1)&&(((int)now.d_lo.right)==1))), " !(((d_lo.oblig==1)&&(d_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 226 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][226] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 7, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 155: // STATE 230 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][230] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 156: // STATE 238 - ./test.pml:121 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][238] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC LEG */
	case 157: // STATE 1 - ./EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 3 - ./test.pml:86 - [STUDENTexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = 0;
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 4 - ./EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 6 - ./test.pml:87 - [LMSexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = 0;
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 14 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][14] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_006_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_007_0: /* 2 */
		now.a_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("a_lo.role_pl", ((int)now.a_lo.role_pl));
#endif
		;
S_008_0: /* 2 */
		now.a_lo.right = 1;
#ifdef VAR_RANGES
		logval("a_lo.right", ((int)now.a_lo.right));
#endif
		;
S_009_0: /* 2 */
		now.a_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("a_lo.oblig", ((int)now.a_lo.oblig));
#endif
		;
S_010_0: /* 2 */
		now.a_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("a_lo.prohib", ((int)now.a_lo.prohib));
#endif
		;
S_011_0: /* 2 */
		now.a_lo.executed = 0;
#ifdef VAR_RANGES
		logval("a_lo.executed", ((int)now.a_lo.executed));
#endif
		;
S_012_0: /* 2 */
		now.a_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("a_lo.id", ((int)now.a_lo.id));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 162: // STATE 23 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][23] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_015_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_016_0: /* 2 */
		now.b_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("b_lo.role_pl", ((int)now.b_lo.role_pl));
#endif
		;
S_017_0: /* 2 */
		now.b_lo.right = 0;
#ifdef VAR_RANGES
		logval("b_lo.right", ((int)now.b_lo.right));
#endif
		;
S_018_0: /* 2 */
		now.b_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("b_lo.oblig", ((int)now.b_lo.oblig));
#endif
		;
S_019_0: /* 2 */
		now.b_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("b_lo.prohib", ((int)now.b_lo.prohib));
#endif
		;
S_020_0: /* 2 */
		now.b_lo.executed = 0;
#ifdef VAR_RANGES
		logval("b_lo.executed", ((int)now.b_lo.executed));
#endif
		;
S_021_0: /* 2 */
		now.b_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("b_lo.id", ((int)now.b_lo.id));
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 163: // STATE 32 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][32] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_024_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_025_0: /* 2 */
		now.c_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("c_lo.role_pl", ((int)now.c_lo.role_pl));
#endif
		;
S_026_0: /* 2 */
		now.c_lo.right = 0;
#ifdef VAR_RANGES
		logval("c_lo.right", ((int)now.c_lo.right));
#endif
		;
S_027_0: /* 2 */
		now.c_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("c_lo.oblig", ((int)now.c_lo.oblig));
#endif
		;
S_028_0: /* 2 */
		now.c_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("c_lo.prohib", ((int)now.c_lo.prohib));
#endif
		;
S_029_0: /* 2 */
		now.c_lo.executed = 0;
#ifdef VAR_RANGES
		logval("c_lo.executed", ((int)now.c_lo.executed));
#endif
		;
S_030_0: /* 2 */
		now.c_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("c_lo.id", ((int)now.c_lo.id));
#endif
		;
		goto S_041_0;
S_041_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 164: // STATE 41 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][41] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_033_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_034_0: /* 2 */
		now.d_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("d_lo.role_pl", ((int)now.d_lo.role_pl));
#endif
		;
S_035_0: /* 2 */
		now.d_lo.right = 0;
#ifdef VAR_RANGES
		logval("d_lo.right", ((int)now.d_lo.right));
#endif
		;
S_036_0: /* 2 */
		now.d_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("d_lo.oblig", ((int)now.d_lo.oblig));
#endif
		;
S_037_0: /* 2 */
		now.d_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("d_lo.prohib", ((int)now.d_lo.prohib));
#endif
		;
S_038_0: /* 2 */
		now.d_lo.executed = 0;
#ifdef VAR_RANGES
		logval("d_lo.executed", ((int)now.d_lo.executed));
#endif
		;
S_039_0: /* 2 */
		now.d_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("d_lo.id", ((int)now.d_lo.id));
#endif
		;
		goto S_228_0;
S_228_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 165: // STATE 44 - ./test.pml:99 - [((((a_lo.right==1)||(a_lo.oblig==1))||(a_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((((int)now.a_lo.right)==1)||(((int)now.a_lo.oblig)==1))||(((int)now.a_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 45 - ./test.pml:99 - [a_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = ((int)now.a_lo.status);
		now.a_lo.status = 16;
#ifdef VAR_RANGES
		logval("a_lo.status", ((int)now.a_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 46 - ./EduOperation.h:406 - [LEG2CRM!17,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 17, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 168: // STATE 48 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][48] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 169: // STATE 51 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][51] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 170: // STATE 54 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][54] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 171: // STATE 57 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][57] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 172: // STATE 60 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][60] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 173: // STATE 63 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][63] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 174: // STATE 66 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][66] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 175: // STATE 69 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][69] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 176: // STATE 72 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][72] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 177: // STATE 75 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][75] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 178: // STATE 78 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][78] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 179: // STATE 81 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][81] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 180: // STATE 84 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][84] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 181: // STATE 90 - ./test.pml:100 - [((((b_lo.right==1)||(b_lo.oblig==1))||(b_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((((((int)now.b_lo.right)==1)||(((int)now.b_lo.oblig)==1))||(((int)now.b_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 91 - ./test.pml:100 - [b_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = ((int)now.b_lo.status);
		now.b_lo.status = 16;
#ifdef VAR_RANGES
		logval("b_lo.status", ((int)now.b_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 92 - ./EduOperation.h:406 - [LEG2CRM!18,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 18, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 184: // STATE 94 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][94] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 185: // STATE 97 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][97] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 186: // STATE 100 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][100] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 187: // STATE 103 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][103] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 188: // STATE 106 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][106] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 189: // STATE 109 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][109] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 190: // STATE 112 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][112] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 191: // STATE 115 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][115] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 192: // STATE 118 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][118] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 193: // STATE 121 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][121] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 194: // STATE 124 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][124] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 195: // STATE 127 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][127] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 196: // STATE 130 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][130] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 197: // STATE 136 - ./test.pml:101 - [((((c_lo.right==1)||(c_lo.oblig==1))||(c_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][136] = 1;
		if (!((((((int)now.c_lo.right)==1)||(((int)now.c_lo.oblig)==1))||(((int)now.c_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 137 - ./test.pml:101 - [c_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][137] = 1;
		(trpt+1)->bup.oval = ((int)now.c_lo.status);
		now.c_lo.status = 16;
#ifdef VAR_RANGES
		logval("c_lo.status", ((int)now.c_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 138 - ./EduOperation.h:406 - [LEG2CRM!19,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 19, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 200: // STATE 140 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][140] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 201: // STATE 143 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][143] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 202: // STATE 146 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][146] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 203: // STATE 149 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][149] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 204: // STATE 152 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][152] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 205: // STATE 155 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][155] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 206: // STATE 158 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][158] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 207: // STATE 161 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][161] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 208: // STATE 164 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][164] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 209: // STATE 167 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][167] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 210: // STATE 170 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][170] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 211: // STATE 173 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][173] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 212: // STATE 176 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][176] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 213: // STATE 182 - ./test.pml:102 - [((((d_lo.right==1)||(d_lo.oblig==1))||(d_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][182] = 1;
		if (!((((((int)now.d_lo.right)==1)||(((int)now.d_lo.oblig)==1))||(((int)now.d_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 183 - ./test.pml:102 - [d_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][183] = 1;
		(trpt+1)->bup.oval = ((int)now.d_lo.status);
		now.d_lo.status = 16;
#ifdef VAR_RANGES
		logval("d_lo.status", ((int)now.d_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 184 - ./EduOperation.h:406 - [LEG2CRM!20,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][184] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 20, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 216: // STATE 186 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][186] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 217: // STATE 189 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][189] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 218: // STATE 192 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][192] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 219: // STATE 195 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][195] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 220: // STATE 198 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][198] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 221: // STATE 201 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][201] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 222: // STATE 204 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][204] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 223: // STATE 207 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][207] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 224: // STATE 210 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][210] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 225: // STATE 213 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][213] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 226: // STATE 216 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][216] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 227: // STATE 219 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][219] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 228: // STATE 222 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][222] = 1;
		if (q_zero(now.CRM2LEG))
		{	if (boq != now.CRM2LEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2LEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2LEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2LEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2LEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2LEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2LEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2LEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 229: // STATE 231 - ./test.pml:104 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

