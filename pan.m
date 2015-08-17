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

		 /* PROC :init: */
	case 3: // STATE 1 - ./test.pml:183 - [(run LEG())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - ./test.pml:183 - [(run CRM())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - ./test.pml:185 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CRM */
	case 6: // STATE 1 - ./test.pml:162 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - ./EduOperation.h:393 - [(LEG2CRM?[17,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 9: // STATE 4 - ./EduOperation.h:394 - [(LEG2CRM?[17,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 11: // STATE 6 - ./EduOperation.h:395 - [(LEG2CRM?[17,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 13: // STATE 8 - ./EduOperation.h:396 - [(LEG2CRM?[17,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 15: // STATE 13 - ./Case1Rules.h:24 - [printf('Start')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		Printf("Start");
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - ./Case1Rules.h:25 - [((((START_lo.right==1)&&((START_lo.role_pl==LMS)==1))&&((START_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((((int)now.START_lo.right)==1)&&((((int)now.START_lo.role_pl)==11)==1))&&((((int)now.START_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - ./Case1Rules.h:26 - [LMSexTrace = (LMSexTrace|(1<<START_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = (now.LMSexTrace|(1<<((int)now.START_lo.id)));
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - ./Case1Rules.h:26 - [START_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.START_lo.executed);
		now.START_lo.executed = 1;
#ifdef VAR_RANGES
		logval("START_lo.executed", ((int)now.START_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - ./Case1Rules.h:28 - [printf('\\n\\n')] (0:26:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(26, 18, 26) */
		reached[1][18] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<type>START</type>\\n')(26, 19, 26) */
		reached[1][19] = 1;
		Printf("<type>START</type>\n");
		/* merge: printf('<status>success</status>\\n')(26, 20, 26) */
		reached[1][20] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(26, 21, 26) */
		reached[1][21] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 23 - ./EduOperation.h:315 - [L1_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.prohib);
		now.L1_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L1_lo.prohib", ((int)now.L1_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 24 - ./EduOperation.h:316 - [assert(!(((L1_lo.prohib==1)&&(L1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		spin_assert( !(((((int)now.L1_lo.prohib)==1)&&(((int)now.L1_lo.right)==1))), " !(((L1_lo.prohib==1)&&(L1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 25 - ./EduOperation.h:317 - [assert(!(((L1_lo.prohib==1)&&(L1_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		spin_assert( !(((((int)now.L1_lo.prohib)==1)&&(((int)now.L1_lo.oblig)==1))), " !(((L1_lo.prohib==1)&&(L1_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 27 - ./EduOperation.h:301 - [L1_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.oblig);
		now.L1_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L1_lo.oblig", ((int)now.L1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 28 - ./EduOperation.h:302 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.prohib)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 29 - ./EduOperation.h:303 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.right)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 31 - ./EduOperation.h:278 - [START_lo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.START_lo.right);
		now.START_lo.right = 0;
#ifdef VAR_RANGES
		logval("START_lo.right", ((int)now.START_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 32 - ./EduOperation.h:279 - [assert(!(((START_lo.right==1)&&(START_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		spin_assert( !(((((int)now.START_lo.right)==1)&&(((int)now.START_lo.oblig)==1))), " !(((START_lo.right==1)&&(START_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 33 - ./EduOperation.h:280 - [assert(!(((START_lo.right==1)&&(START_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		spin_assert( !(((((int)now.START_lo.right)==1)&&(((int)now.START_lo.prohib)==1))), " !(((START_lo.right==1)&&(START_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 35 - ./EduOperation.h:428 - [CRM2LEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
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
	case 30: // STATE 39 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
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
	case 31: // STATE 44 - ./EduOperation.h:393 - [(LEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 45 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][45] = 1;
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
	case 33: // STATE 46 - ./EduOperation.h:394 - [(LEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 47 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][47] = 1;
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
	case 35: // STATE 48 - ./EduOperation.h:395 - [(LEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 49 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][49] = 1;
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
	case 37: // STATE 50 - ./EduOperation.h:396 - [(LEG2CRM?[18,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 51 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][51] = 1;
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
	case 39: // STATE 55 - ./Case1Rules.h:48 - [printf('L1')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		Printf("L1");
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 56 - ./Case1Rules.h:50 - [((((L1_lo.oblig==1)&&((L1_lo.role_pl==STUDENT)==1))&&((L1_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((((((int)now.L1_lo.oblig)==1)&&((((int)now.L1_lo.role_pl)==12)==1))&&((((int)now.L1_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 57 - ./Case1Rules.h:52 - [STUDENTexTrace = (STUDENTexTrace|(1<<L1_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L1_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 58 - ./Case1Rules.h:52 - [L1_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.executed);
		now.L1_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L1_lo.executed", ((int)now.L1_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 59 - ./Case1Rules.h:54 - [printf('\\n\\n')] (0:66:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(66, 60, 66) */
		reached[1][60] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(66, 61, 66) */
		reached[1][61] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L1</type>\\n')(66, 62, 66) */
		reached[1][62] = 1;
		Printf("<type>L1</type>\n");
		/* merge: printf('<status>success</status>\\n')(66, 63, 66) */
		reached[1][63] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(66, 64, 66) */
		reached[1][64] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 44: // STATE 66 - ./Case1Rules.h:61 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 67 - ./EduOperation.h:301 - [L1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.oblig);
		now.L1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L1_lo.oblig", ((int)now.L1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 68 - ./EduOperation.h:302 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.prohib)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 69 - ./EduOperation.h:303 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.right)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 71 - ./EduOperation.h:278 - [L1_lo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.right);
		now.L1_lo.right = 0;
#ifdef VAR_RANGES
		logval("L1_lo.right", ((int)now.L1_lo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 72 - ./EduOperation.h:279 - [assert(!(((L1_lo.right==1)&&(L1_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		spin_assert( !(((((int)now.L1_lo.right)==1)&&(((int)now.L1_lo.oblig)==1))), " !(((L1_lo.right==1)&&(L1_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 73 - ./EduOperation.h:280 - [assert(!(((L1_lo.right==1)&&(L1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		spin_assert( !(((((int)now.L1_lo.right)==1)&&(((int)now.L1_lo.prohib)==1))), " !(((L1_lo.right==1)&&(L1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 75 - ./EduOperation.h:315 - [L2_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.prohib);
		now.L2_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L2_lo.prohib", ((int)now.L2_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 76 - ./EduOperation.h:316 - [assert(!(((L2_lo.prohib==1)&&(L2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		spin_assert( !(((((int)now.L2_lo.prohib)==1)&&(((int)now.L2_lo.right)==1))), " !(((L2_lo.prohib==1)&&(L2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 77 - ./EduOperation.h:317 - [assert(!(((L2_lo.prohib==1)&&(L2_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		spin_assert( !(((((int)now.L2_lo.prohib)==1)&&(((int)now.L2_lo.oblig)==1))), " !(((L2_lo.prohib==1)&&(L2_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 79 - ./EduOperation.h:301 - [L2_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.oblig);
		now.L2_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L2_lo.oblig", ((int)now.L2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 80 - ./EduOperation.h:302 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.prohib)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 81 - ./EduOperation.h:303 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.right)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 83 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
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
	case 58: // STATE 86 - ./Case1Rules.h:69 - [((((L1_lo.oblig==1)&&((L1_lo.role_pl==STUDENT)==1))&&((L1_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!((((((int)now.L1_lo.oblig)==1)&&((((int)now.L1_lo.role_pl)==12)==1))&&((((int)now.L1_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 87 - ./Case1Rules.h:72 - [printf('\\n\\n')] (0:98:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(98, 88, 98) */
		reached[1][88] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(98, 89, 98) */
		reached[1][89] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L1</type>\\n')(98, 90, 98) */
		reached[1][90] = 1;
		Printf("<type>L1</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(98, 91, 98) */
		reached[1][91] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(98, 92, 98) */
		reached[1][92] = 1;
		Printf("\n\n");
		/* merge: printf('L1-TechnicalFailure')(98, 94, 98) */
		reached[1][94] = 1;
		Printf("L1-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 60: // STATE 95 - ./EduOperation.h:301 - [L1_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.oblig);
		now.L1_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L1_lo.oblig", ((int)now.L1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 96 - ./EduOperation.h:302 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.prohib)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 97 - ./EduOperation.h:303 - [assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		spin_assert( !(((((int)now.L1_lo.oblig)==1)&&(((int)now.L1_lo.right)==1))), " !(((L1_lo.oblig==1)&&(L1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 99 - ./Case1Rules.h:84 - [printf('\\n\\n')] (0:107:0 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(107, 100, 107) */
		reached[1][100] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(107, 101, 107) */
		reached[1][101] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(107, 102, 107) */
		reached[1][102] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(107, 103, 107) */
		reached[1][103] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(107, 104, 107) */
		reached[1][104] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 64: // STATE 106 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][106] = 1;
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
	case 65: // STATE 110 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
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
	case 66: // STATE 115 - ./EduOperation.h:393 - [(LEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 116 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][116] = 1;
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
	case 68: // STATE 117 - ./EduOperation.h:394 - [(LEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 118 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][118] = 1;
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
	case 70: // STATE 119 - ./EduOperation.h:395 - [(LEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 120 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][120] = 1;
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
	case 72: // STATE 121 - ./EduOperation.h:396 - [(LEG2CRM?[19,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 122 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][122] = 1;
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
	case 74: // STATE 126 - ./Case1Rules.h:99 - [printf('L2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		Printf("L2");
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 127 - ./Case1Rules.h:101 - [((((L2_lo.oblig==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!((((((int)now.L2_lo.oblig)==1)&&((((int)now.L2_lo.role_pl)==12)==1))&&((((int)now.L2_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 128 - ./Case1Rules.h:103 - [STUDENTexTrace = (STUDENTexTrace|(1<<L2_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L2_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 129 - ./Case1Rules.h:103 - [L2_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.executed);
		now.L2_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L2_lo.executed", ((int)now.L2_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 130 - ./Case1Rules.h:105 - [printf('\\n\\n')] (0:137:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(137, 131, 137) */
		reached[1][131] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(137, 132, 137) */
		reached[1][132] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L2</type>\\n')(137, 133, 137) */
		reached[1][133] = 1;
		Printf("<type>L2</type>\n");
		/* merge: printf('<status>success</status>\\n')(137, 134, 137) */
		reached[1][134] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(137, 135, 137) */
		reached[1][135] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 79: // STATE 137 - ./Case1Rules.h:112 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 138 - ./EduOperation.h:301 - [L2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][138] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.oblig);
		now.L2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L2_lo.oblig", ((int)now.L2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 139 - ./EduOperation.h:302 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][139] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.prohib)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 140 - ./EduOperation.h:303 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][140] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.right)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 142 - ./EduOperation.h:315 - [L3_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.prohib);
		now.L3_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L3_lo.prohib", ((int)now.L3_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 143 - ./EduOperation.h:316 - [assert(!(((L3_lo.prohib==1)&&(L3_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		spin_assert( !(((((int)now.L3_lo.prohib)==1)&&(((int)now.L3_lo.right)==1))), " !(((L3_lo.prohib==1)&&(L3_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 144 - ./EduOperation.h:317 - [assert(!(((L3_lo.prohib==1)&&(L3_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		spin_assert( !(((((int)now.L3_lo.prohib)==1)&&(((int)now.L3_lo.oblig)==1))), " !(((L3_lo.prohib==1)&&(L3_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 146 - ./EduOperation.h:301 - [L3_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.oblig);
		now.L3_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L3_lo.oblig", ((int)now.L3_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 147 - ./EduOperation.h:302 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][147] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.prohib)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 148 - ./EduOperation.h:303 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.right)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 150 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][150] = 1;
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
	case 90: // STATE 153 - ./Case1Rules.h:119 - [((((L2_lo.oblig==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		if (!((((((int)now.L2_lo.oblig)==1)&&((((int)now.L2_lo.role_pl)==12)==1))&&((((int)now.L2_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 154 - ./Case1Rules.h:122 - [printf('\\n\\n')] (0:165:0 - 1)
		IfNotBlocked
		reached[1][154] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(165, 155, 165) */
		reached[1][155] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(165, 156, 165) */
		reached[1][156] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L2</type>\\n')(165, 157, 165) */
		reached[1][157] = 1;
		Printf("<type>L2</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(165, 158, 165) */
		reached[1][158] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(165, 159, 165) */
		reached[1][159] = 1;
		Printf("\n\n");
		/* merge: printf('L2-TechnicalFailure')(165, 161, 165) */
		reached[1][161] = 1;
		Printf("L2-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 92: // STATE 162 - ./EduOperation.h:301 - [L2_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][162] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.oblig);
		now.L2_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L2_lo.oblig", ((int)now.L2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 163 - ./EduOperation.h:302 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][163] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.prohib)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 164 - ./EduOperation.h:303 - [assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][164] = 1;
		spin_assert( !(((((int)now.L2_lo.oblig)==1)&&(((int)now.L2_lo.right)==1))), " !(((L2_lo.oblig==1)&&(L2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 166 - ./Case1Rules.h:134 - [printf('\\n\\n')] (0:174:0 - 1)
		IfNotBlocked
		reached[1][166] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(174, 167, 174) */
		reached[1][167] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(174, 168, 174) */
		reached[1][168] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(174, 169, 174) */
		reached[1][169] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(174, 170, 174) */
		reached[1][170] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(174, 171, 174) */
		reached[1][171] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 96: // STATE 173 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][173] = 1;
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
	case 97: // STATE 176 - ./Case1Rules.h:144 - [((((L2_lo.prohib==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][176] = 1;
		if (!((((((int)now.L2_lo.prohib)==1)&&((((int)now.L2_lo.role_pl)==12)==1))&&((((int)now.L2_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 177 - ./Case1Rules.h:146 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 178 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][178] = 1;
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
	case 100: // STATE 182 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][182] = 1;
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
	case 101: // STATE 187 - ./EduOperation.h:393 - [(LEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][187] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 188 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][188] = 1;
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
	case 103: // STATE 189 - ./EduOperation.h:394 - [(LEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][189] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 190 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][190] = 1;
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
	case 105: // STATE 191 - ./EduOperation.h:395 - [(LEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][191] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 192 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][192] = 1;
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
	case 107: // STATE 193 - ./EduOperation.h:396 - [(LEG2CRM?[20,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][193] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 194 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][194] = 1;
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
	case 109: // STATE 198 - ./Case1Rules.h:154 - [printf('L3')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][198] = 1;
		Printf("L3");
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 199 - ./Case1Rules.h:156 - [((((L3_lo.oblig==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][199] = 1;
		if (!((((((int)now.L3_lo.oblig)==1)&&((((int)now.L3_lo.role_pl)==12)==1))&&((((int)now.L3_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 200 - ./Case1Rules.h:158 - [STUDENTexTrace = (STUDENTexTrace|(1<<L3_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][200] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L3_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 201 - ./Case1Rules.h:158 - [L3_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][201] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.executed);
		now.L3_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L3_lo.executed", ((int)now.L3_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 202 - ./Case1Rules.h:160 - [printf('\\n\\n')] (0:209:0 - 1)
		IfNotBlocked
		reached[1][202] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(209, 203, 209) */
		reached[1][203] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(209, 204, 209) */
		reached[1][204] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L3</type>\\n')(209, 205, 209) */
		reached[1][205] = 1;
		Printf("<type>L3</type>\n");
		/* merge: printf('<status>success</status>\\n')(209, 206, 209) */
		reached[1][206] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(209, 207, 209) */
		reached[1][207] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 114: // STATE 209 - ./Case1Rules.h:167 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][209] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 210 - ./EduOperation.h:301 - [L3_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.oblig);
		now.L3_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L3_lo.oblig", ((int)now.L3_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 211 - ./EduOperation.h:302 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.prohib)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 212 - ./EduOperation.h:303 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.right)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 214 - ./EduOperation.h:315 - [CW1_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][214] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.prohib);
		now.CW1_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.prohib", ((int)now.CW1_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 215 - ./EduOperation.h:316 - [assert(!(((CW1_lo.prohib==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		spin_assert( !(((((int)now.CW1_lo.prohib)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.prohib==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 216 - ./EduOperation.h:317 - [assert(!(((CW1_lo.prohib==1)&&(CW1_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		spin_assert( !(((((int)now.CW1_lo.prohib)==1)&&(((int)now.CW1_lo.oblig)==1))), " !(((CW1_lo.prohib==1)&&(CW1_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 218 - ./EduOperation.h:301 - [CW1_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][218] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 219 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 220 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][220] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 222 - ./EduOperation.h:315 - [L4_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][222] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.prohib);
		now.L4_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L4_lo.prohib", ((int)now.L4_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 223 - ./EduOperation.h:316 - [assert(!(((L4_lo.prohib==1)&&(L4_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][223] = 1;
		spin_assert( !(((((int)now.L4_lo.prohib)==1)&&(((int)now.L4_lo.right)==1))), " !(((L4_lo.prohib==1)&&(L4_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 224 - ./EduOperation.h:317 - [assert(!(((L4_lo.prohib==1)&&(L4_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][224] = 1;
		spin_assert( !(((((int)now.L4_lo.prohib)==1)&&(((int)now.L4_lo.oblig)==1))), " !(((L4_lo.prohib==1)&&(L4_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 226 - ./EduOperation.h:301 - [L4_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][226] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.oblig);
		now.L4_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L4_lo.oblig", ((int)now.L4_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 227 - ./EduOperation.h:302 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][227] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.prohib)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 228 - ./EduOperation.h:303 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][228] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.right)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 230 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][230] = 1;
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
	case 131: // STATE 233 - ./Case1Rules.h:176 - [((((L3_lo.oblig==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][233] = 1;
		if (!((((((int)now.L3_lo.oblig)==1)&&((((int)now.L3_lo.role_pl)==12)==1))&&((((int)now.L3_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 234 - ./Case1Rules.h:179 - [printf('\\n\\n')] (0:245:0 - 1)
		IfNotBlocked
		reached[1][234] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(245, 235, 245) */
		reached[1][235] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(245, 236, 245) */
		reached[1][236] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L3</type>\\n')(245, 237, 245) */
		reached[1][237] = 1;
		Printf("<type>L3</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(245, 238, 245) */
		reached[1][238] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(245, 239, 245) */
		reached[1][239] = 1;
		Printf("\n\n");
		/* merge: printf('L3-TechnicalFailure')(245, 241, 245) */
		reached[1][241] = 1;
		Printf("L3-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 133: // STATE 242 - ./EduOperation.h:301 - [L3_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][242] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.oblig);
		now.L3_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L3_lo.oblig", ((int)now.L3_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 243 - ./EduOperation.h:302 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][243] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.prohib)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 244 - ./EduOperation.h:303 - [assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][244] = 1;
		spin_assert( !(((((int)now.L3_lo.oblig)==1)&&(((int)now.L3_lo.right)==1))), " !(((L3_lo.oblig==1)&&(L3_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 246 - ./Case1Rules.h:191 - [printf('\\n\\n')] (0:254:0 - 1)
		IfNotBlocked
		reached[1][246] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(254, 247, 254) */
		reached[1][247] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(254, 248, 254) */
		reached[1][248] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(254, 249, 254) */
		reached[1][249] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(254, 250, 254) */
		reached[1][250] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(254, 251, 254) */
		reached[1][251] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 137: // STATE 253 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][253] = 1;
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
	case 138: // STATE 256 - ./Case1Rules.h:201 - [((((L3_lo.prohib==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][256] = 1;
		if (!((((((int)now.L3_lo.prohib)==1)&&((((int)now.L3_lo.role_pl)==12)==1))&&((((int)now.L3_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 257 - ./Case1Rules.h:203 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][257] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 258 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][258] = 1;
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
	case 141: // STATE 262 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][262] = 1;
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
	case 142: // STATE 267 - ./EduOperation.h:393 - [(LEG2CRM?[21,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][267] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 268 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][268] = 1;
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
	case 144: // STATE 269 - ./EduOperation.h:394 - [(LEG2CRM?[21,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][269] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 270 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][270] = 1;
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
	case 146: // STATE 271 - ./EduOperation.h:395 - [(LEG2CRM?[21,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][271] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 272 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][272] = 1;
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
	case 148: // STATE 273 - ./EduOperation.h:396 - [(LEG2CRM?[21,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][273] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 274 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][274] = 1;
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
	case 150: // STATE 278 - ./Case1Rules.h:211 - [printf('L4')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][278] = 1;
		Printf("L4");
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 279 - ./Case1Rules.h:213 - [((((L4_lo.oblig==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][279] = 1;
		if (!((((((int)now.L4_lo.oblig)==1)&&((((int)now.L4_lo.role_pl)==12)==1))&&((((int)now.L4_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 280 - ./Case1Rules.h:215 - [STUDENTexTrace = (STUDENTexTrace|(1<<L4_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][280] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L4_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 281 - ./Case1Rules.h:215 - [L4_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][281] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.executed);
		now.L4_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L4_lo.executed", ((int)now.L4_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 282 - ./Case1Rules.h:217 - [printf('\\n\\n')] (0:289:0 - 1)
		IfNotBlocked
		reached[1][282] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(289, 283, 289) */
		reached[1][283] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(289, 284, 289) */
		reached[1][284] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L4</type>\\n')(289, 285, 289) */
		reached[1][285] = 1;
		Printf("<type>L4</type>\n");
		/* merge: printf('<status>success</status>\\n')(289, 286, 289) */
		reached[1][286] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(289, 287, 289) */
		reached[1][287] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 155: // STATE 289 - ./Case1Rules.h:224 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][289] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 290 - ./EduOperation.h:301 - [L4_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][290] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.oblig);
		now.L4_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L4_lo.oblig", ((int)now.L4_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 291 - ./EduOperation.h:302 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][291] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.prohib)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 292 - ./EduOperation.h:303 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][292] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.right)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 294 - ./EduOperation.h:315 - [L5_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][294] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.prohib);
		now.L5_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L5_lo.prohib", ((int)now.L5_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 295 - ./EduOperation.h:316 - [assert(!(((L5_lo.prohib==1)&&(L5_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][295] = 1;
		spin_assert( !(((((int)now.L5_lo.prohib)==1)&&(((int)now.L5_lo.right)==1))), " !(((L5_lo.prohib==1)&&(L5_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 296 - ./EduOperation.h:317 - [assert(!(((L5_lo.prohib==1)&&(L5_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][296] = 1;
		spin_assert( !(((((int)now.L5_lo.prohib)==1)&&(((int)now.L5_lo.oblig)==1))), " !(((L5_lo.prohib==1)&&(L5_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 298 - ./EduOperation.h:301 - [L5_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][298] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.oblig);
		now.L5_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L5_lo.oblig", ((int)now.L5_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 299 - ./EduOperation.h:302 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][299] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.prohib)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 300 - ./EduOperation.h:303 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][300] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.right)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 302 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][302] = 1;
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
	case 166: // STATE 305 - ./Case1Rules.h:231 - [((((L4_lo.oblig==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][305] = 1;
		if (!((((((int)now.L4_lo.oblig)==1)&&((((int)now.L4_lo.role_pl)==12)==1))&&((((int)now.L4_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 306 - ./Case1Rules.h:234 - [printf('\\n\\n')] (0:317:0 - 1)
		IfNotBlocked
		reached[1][306] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(317, 307, 317) */
		reached[1][307] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(317, 308, 317) */
		reached[1][308] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L4</type>\\n')(317, 309, 317) */
		reached[1][309] = 1;
		Printf("<type>L4</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(317, 310, 317) */
		reached[1][310] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(317, 311, 317) */
		reached[1][311] = 1;
		Printf("\n\n");
		/* merge: printf('L4-TechnicalFailure')(317, 313, 317) */
		reached[1][313] = 1;
		Printf("L4-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 168: // STATE 314 - ./EduOperation.h:301 - [L4_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][314] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.oblig);
		now.L4_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L4_lo.oblig", ((int)now.L4_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 315 - ./EduOperation.h:302 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][315] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.prohib)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 316 - ./EduOperation.h:303 - [assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][316] = 1;
		spin_assert( !(((((int)now.L4_lo.oblig)==1)&&(((int)now.L4_lo.right)==1))), " !(((L4_lo.oblig==1)&&(L4_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 318 - ./Case1Rules.h:246 - [printf('\\n\\n')] (0:326:0 - 1)
		IfNotBlocked
		reached[1][318] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(326, 319, 326) */
		reached[1][319] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(326, 320, 326) */
		reached[1][320] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(326, 321, 326) */
		reached[1][321] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(326, 322, 326) */
		reached[1][322] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(326, 323, 326) */
		reached[1][323] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 172: // STATE 325 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][325] = 1;
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
	case 173: // STATE 328 - ./Case1Rules.h:256 - [((((L4_lo.prohib==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][328] = 1;
		if (!((((((int)now.L4_lo.prohib)==1)&&((((int)now.L4_lo.role_pl)==12)==1))&&((((int)now.L4_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 329 - ./Case1Rules.h:258 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][329] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 330 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][330] = 1;
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
	case 176: // STATE 334 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][334] = 1;
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
	case 177: // STATE 339 - ./EduOperation.h:393 - [(LEG2CRM?[22,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][339] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 340 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][340] = 1;
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
	case 179: // STATE 341 - ./EduOperation.h:394 - [(LEG2CRM?[22,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][341] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 342 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][342] = 1;
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
	case 181: // STATE 343 - ./EduOperation.h:395 - [(LEG2CRM?[22,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][343] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 344 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][344] = 1;
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
	case 183: // STATE 345 - ./EduOperation.h:396 - [(LEG2CRM?[22,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][345] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 346 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][346] = 1;
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
	case 185: // STATE 350 - ./Case1Rules.h:267 - [printf('L5')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][350] = 1;
		Printf("L5");
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 351 - ./Case1Rules.h:269 - [((((L5_lo.oblig==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][351] = 1;
		if (!((((((int)now.L5_lo.oblig)==1)&&((((int)now.L5_lo.role_pl)==12)==1))&&((((int)now.L5_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 352 - ./Case1Rules.h:271 - [STUDENTexTrace = (STUDENTexTrace|(1<<L5_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][352] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L5_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 353 - ./Case1Rules.h:271 - [L5_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][353] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.executed);
		now.L5_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L5_lo.executed", ((int)now.L5_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 354 - ./Case1Rules.h:273 - [printf('\\n\\n')] (0:361:0 - 1)
		IfNotBlocked
		reached[1][354] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(361, 355, 361) */
		reached[1][355] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(361, 356, 361) */
		reached[1][356] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L5</type>\\n')(361, 357, 361) */
		reached[1][357] = 1;
		Printf("<type>L5</type>\n");
		/* merge: printf('<status>success</status>\\n')(361, 358, 361) */
		reached[1][358] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(361, 359, 361) */
		reached[1][359] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 190: // STATE 361 - ./Case1Rules.h:280 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][361] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 362 - ./EduOperation.h:301 - [L5_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][362] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.oblig);
		now.L5_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L5_lo.oblig", ((int)now.L5_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 363 - ./EduOperation.h:302 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][363] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.prohib)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 364 - ./EduOperation.h:303 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][364] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.right)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 366 - ./EduOperation.h:315 - [L6_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][366] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.prohib);
		now.L6_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L6_lo.prohib", ((int)now.L6_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 367 - ./EduOperation.h:316 - [assert(!(((L6_lo.prohib==1)&&(L6_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][367] = 1;
		spin_assert( !(((((int)now.L6_lo.prohib)==1)&&(((int)now.L6_lo.right)==1))), " !(((L6_lo.prohib==1)&&(L6_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 368 - ./EduOperation.h:317 - [assert(!(((L6_lo.prohib==1)&&(L6_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][368] = 1;
		spin_assert( !(((((int)now.L6_lo.prohib)==1)&&(((int)now.L6_lo.oblig)==1))), " !(((L6_lo.prohib==1)&&(L6_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 370 - ./EduOperation.h:301 - [L6_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][370] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.oblig);
		now.L6_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L6_lo.oblig", ((int)now.L6_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 371 - ./EduOperation.h:302 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][371] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.prohib)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 372 - ./EduOperation.h:303 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][372] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.right)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 374 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][374] = 1;
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
	case 201: // STATE 377 - ./Case1Rules.h:287 - [((((L5_lo.oblig==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][377] = 1;
		if (!((((((int)now.L5_lo.oblig)==1)&&((((int)now.L5_lo.role_pl)==12)==1))&&((((int)now.L5_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 378 - ./Case1Rules.h:290 - [printf('\\n\\n')] (0:389:0 - 1)
		IfNotBlocked
		reached[1][378] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(389, 379, 389) */
		reached[1][379] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(389, 380, 389) */
		reached[1][380] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L5</type>\\n')(389, 381, 389) */
		reached[1][381] = 1;
		Printf("<type>L5</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(389, 382, 389) */
		reached[1][382] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(389, 383, 389) */
		reached[1][383] = 1;
		Printf("\n\n");
		/* merge: printf('L5-TechnicalFailure')(389, 385, 389) */
		reached[1][385] = 1;
		Printf("L5-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 203: // STATE 386 - ./EduOperation.h:301 - [L5_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][386] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.oblig);
		now.L5_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L5_lo.oblig", ((int)now.L5_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 387 - ./EduOperation.h:302 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][387] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.prohib)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 388 - ./EduOperation.h:303 - [assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][388] = 1;
		spin_assert( !(((((int)now.L5_lo.oblig)==1)&&(((int)now.L5_lo.right)==1))), " !(((L5_lo.oblig==1)&&(L5_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 390 - ./Case1Rules.h:302 - [printf('\\n\\n')] (0:398:0 - 1)
		IfNotBlocked
		reached[1][390] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(398, 391, 398) */
		reached[1][391] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(398, 392, 398) */
		reached[1][392] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(398, 393, 398) */
		reached[1][393] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(398, 394, 398) */
		reached[1][394] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(398, 395, 398) */
		reached[1][395] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 207: // STATE 397 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][397] = 1;
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
	case 208: // STATE 400 - ./Case1Rules.h:312 - [((((L5_lo.prohib==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][400] = 1;
		if (!((((((int)now.L5_lo.prohib)==1)&&((((int)now.L5_lo.role_pl)==12)==1))&&((((int)now.L5_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 401 - ./Case1Rules.h:314 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][401] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 402 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][402] = 1;
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
	case 211: // STATE 406 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][406] = 1;
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
	case 212: // STATE 411 - ./EduOperation.h:393 - [(LEG2CRM?[23,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][411] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 412 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][412] = 1;
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
	case 214: // STATE 413 - ./EduOperation.h:394 - [(LEG2CRM?[23,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][413] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 414 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][414] = 1;
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
	case 216: // STATE 415 - ./EduOperation.h:395 - [(LEG2CRM?[23,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][415] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 416 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][416] = 1;
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
	case 218: // STATE 417 - ./EduOperation.h:396 - [(LEG2CRM?[23,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][417] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 418 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][418] = 1;
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
	case 220: // STATE 422 - ./Case1Rules.h:322 - [printf('L6')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][422] = 1;
		Printf("L6");
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 423 - ./Case1Rules.h:324 - [((((L6_lo.oblig==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][423] = 1;
		if (!((((((int)now.L6_lo.oblig)==1)&&((((int)now.L6_lo.role_pl)==12)==1))&&((((int)now.L6_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 424 - ./Case1Rules.h:326 - [STUDENTexTrace = (STUDENTexTrace|(1<<L6_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][424] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L6_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 425 - ./Case1Rules.h:326 - [L6_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][425] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.executed);
		now.L6_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L6_lo.executed", ((int)now.L6_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 426 - ./Case1Rules.h:328 - [printf('\\n\\n')] (0:433:0 - 1)
		IfNotBlocked
		reached[1][426] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(433, 427, 433) */
		reached[1][427] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(433, 428, 433) */
		reached[1][428] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L6</type>\\n')(433, 429, 433) */
		reached[1][429] = 1;
		Printf("<type>L6</type>\n");
		/* merge: printf('<status>success</status>\\n')(433, 430, 433) */
		reached[1][430] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(433, 431, 433) */
		reached[1][431] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 225: // STATE 433 - ./Case1Rules.h:335 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][433] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 434 - ./EduOperation.h:301 - [L6_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][434] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.oblig);
		now.L6_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L6_lo.oblig", ((int)now.L6_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 435 - ./EduOperation.h:302 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][435] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.prohib)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 436 - ./EduOperation.h:303 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][436] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.right)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 438 - ./EduOperation.h:315 - [CW2_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][438] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.prohib);
		now.CW2_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.prohib", ((int)now.CW2_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 439 - ./EduOperation.h:316 - [assert(!(((CW2_lo.prohib==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][439] = 1;
		spin_assert( !(((((int)now.CW2_lo.prohib)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.prohib==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 440 - ./EduOperation.h:317 - [assert(!(((CW2_lo.prohib==1)&&(CW2_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][440] = 1;
		spin_assert( !(((((int)now.CW2_lo.prohib)==1)&&(((int)now.CW2_lo.oblig)==1))), " !(((CW2_lo.prohib==1)&&(CW2_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 442 - ./EduOperation.h:301 - [CW2_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][442] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 443 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][443] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 444 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][444] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 446 - ./EduOperation.h:315 - [L7_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][446] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.prohib);
		now.L7_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L7_lo.prohib", ((int)now.L7_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 447 - ./EduOperation.h:316 - [assert(!(((L7_lo.prohib==1)&&(L7_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][447] = 1;
		spin_assert( !(((((int)now.L7_lo.prohib)==1)&&(((int)now.L7_lo.right)==1))), " !(((L7_lo.prohib==1)&&(L7_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 448 - ./EduOperation.h:317 - [assert(!(((L7_lo.prohib==1)&&(L7_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][448] = 1;
		spin_assert( !(((((int)now.L7_lo.prohib)==1)&&(((int)now.L7_lo.oblig)==1))), " !(((L7_lo.prohib==1)&&(L7_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 450 - ./EduOperation.h:301 - [L7_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][450] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.oblig);
		now.L7_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L7_lo.oblig", ((int)now.L7_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 451 - ./EduOperation.h:302 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][451] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.prohib)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 452 - ./EduOperation.h:303 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][452] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.right)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 454 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][454] = 1;
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
	case 242: // STATE 457 - ./Case1Rules.h:344 - [((((L6_lo.oblig==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][457] = 1;
		if (!((((((int)now.L6_lo.oblig)==1)&&((((int)now.L6_lo.role_pl)==12)==1))&&((((int)now.L6_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 458 - ./Case1Rules.h:347 - [printf('\\n\\n')] (0:469:0 - 1)
		IfNotBlocked
		reached[1][458] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(469, 459, 469) */
		reached[1][459] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(469, 460, 469) */
		reached[1][460] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L6</type>\\n')(469, 461, 469) */
		reached[1][461] = 1;
		Printf("<type>L6</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(469, 462, 469) */
		reached[1][462] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(469, 463, 469) */
		reached[1][463] = 1;
		Printf("\n\n");
		/* merge: printf('L6-TechnicalFailure')(469, 465, 469) */
		reached[1][465] = 1;
		Printf("L6-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 244: // STATE 466 - ./EduOperation.h:301 - [L6_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][466] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.oblig);
		now.L6_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L6_lo.oblig", ((int)now.L6_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 467 - ./EduOperation.h:302 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][467] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.prohib)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 468 - ./EduOperation.h:303 - [assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][468] = 1;
		spin_assert( !(((((int)now.L6_lo.oblig)==1)&&(((int)now.L6_lo.right)==1))), " !(((L6_lo.oblig==1)&&(L6_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 470 - ./Case1Rules.h:359 - [printf('\\n\\n')] (0:478:0 - 1)
		IfNotBlocked
		reached[1][470] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(478, 471, 478) */
		reached[1][471] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(478, 472, 478) */
		reached[1][472] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(478, 473, 478) */
		reached[1][473] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(478, 474, 478) */
		reached[1][474] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(478, 475, 478) */
		reached[1][475] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 248: // STATE 477 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][477] = 1;
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
	case 249: // STATE 480 - ./Case1Rules.h:369 - [((((L6_lo.prohib==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][480] = 1;
		if (!((((((int)now.L6_lo.prohib)==1)&&((((int)now.L6_lo.role_pl)==12)==1))&&((((int)now.L6_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 481 - ./Case1Rules.h:371 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][481] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 482 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][482] = 1;
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
	case 252: // STATE 486 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][486] = 1;
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
	case 253: // STATE 491 - ./EduOperation.h:393 - [(LEG2CRM?[24,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][491] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 492 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][492] = 1;
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
	case 255: // STATE 493 - ./EduOperation.h:394 - [(LEG2CRM?[24,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][493] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 494 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][494] = 1;
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
	case 257: // STATE 495 - ./EduOperation.h:395 - [(LEG2CRM?[24,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][495] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 496 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][496] = 1;
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
	case 259: // STATE 497 - ./EduOperation.h:396 - [(LEG2CRM?[24,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][497] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 498 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][498] = 1;
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
	case 261: // STATE 502 - ./Case1Rules.h:379 - [printf('L7')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][502] = 1;
		Printf("L7");
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 503 - ./Case1Rules.h:381 - [((((L7_lo.oblig==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][503] = 1;
		if (!((((((int)now.L7_lo.oblig)==1)&&((((int)now.L7_lo.role_pl)==12)==1))&&((((int)now.L7_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 504 - ./Case1Rules.h:383 - [STUDENTexTrace = (STUDENTexTrace|(1<<L7_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][504] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L7_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 505 - ./Case1Rules.h:383 - [L7_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][505] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.executed);
		now.L7_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L7_lo.executed", ((int)now.L7_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 506 - ./Case1Rules.h:385 - [printf('\\n\\n')] (0:513:0 - 1)
		IfNotBlocked
		reached[1][506] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(513, 507, 513) */
		reached[1][507] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(513, 508, 513) */
		reached[1][508] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L7</type>\\n')(513, 509, 513) */
		reached[1][509] = 1;
		Printf("<type>L7</type>\n");
		/* merge: printf('<status>success</status>\\n')(513, 510, 513) */
		reached[1][510] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(513, 511, 513) */
		reached[1][511] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 266: // STATE 513 - ./Case1Rules.h:392 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][513] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 514 - ./EduOperation.h:301 - [L7_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][514] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.oblig);
		now.L7_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L7_lo.oblig", ((int)now.L7_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 515 - ./EduOperation.h:302 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][515] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.prohib)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 516 - ./EduOperation.h:303 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][516] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.right)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 518 - ./EduOperation.h:315 - [L8_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][518] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.prohib);
		now.L8_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("L8_lo.prohib", ((int)now.L8_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 519 - ./EduOperation.h:316 - [assert(!(((L8_lo.prohib==1)&&(L8_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][519] = 1;
		spin_assert( !(((((int)now.L8_lo.prohib)==1)&&(((int)now.L8_lo.right)==1))), " !(((L8_lo.prohib==1)&&(L8_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 520 - ./EduOperation.h:317 - [assert(!(((L8_lo.prohib==1)&&(L8_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][520] = 1;
		spin_assert( !(((((int)now.L8_lo.prohib)==1)&&(((int)now.L8_lo.oblig)==1))), " !(((L8_lo.prohib==1)&&(L8_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 522 - ./EduOperation.h:301 - [L8_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][522] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.oblig);
		now.L8_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L8_lo.oblig", ((int)now.L8_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 523 - ./EduOperation.h:302 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][523] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.prohib)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 524 - ./EduOperation.h:303 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][524] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.right)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 526 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][526] = 1;
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
	case 277: // STATE 529 - ./Case1Rules.h:399 - [((((L7_lo.oblig==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][529] = 1;
		if (!((((((int)now.L7_lo.oblig)==1)&&((((int)now.L7_lo.role_pl)==12)==1))&&((((int)now.L7_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 530 - ./Case1Rules.h:402 - [printf('\\n\\n')] (0:541:0 - 1)
		IfNotBlocked
		reached[1][530] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(541, 531, 541) */
		reached[1][531] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(541, 532, 541) */
		reached[1][532] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L7</type>\\n')(541, 533, 541) */
		reached[1][533] = 1;
		Printf("<type>L7</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(541, 534, 541) */
		reached[1][534] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(541, 535, 541) */
		reached[1][535] = 1;
		Printf("\n\n");
		/* merge: printf('L7-TechnicalFailure')(541, 537, 541) */
		reached[1][537] = 1;
		Printf("L7-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 279: // STATE 538 - ./EduOperation.h:301 - [L7_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][538] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.oblig);
		now.L7_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L7_lo.oblig", ((int)now.L7_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 539 - ./EduOperation.h:302 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][539] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.prohib)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 540 - ./EduOperation.h:303 - [assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][540] = 1;
		spin_assert( !(((((int)now.L7_lo.oblig)==1)&&(((int)now.L7_lo.right)==1))), " !(((L7_lo.oblig==1)&&(L7_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 542 - ./Case1Rules.h:414 - [printf('\\n\\n')] (0:550:0 - 1)
		IfNotBlocked
		reached[1][542] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(550, 543, 550) */
		reached[1][543] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(550, 544, 550) */
		reached[1][544] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(550, 545, 550) */
		reached[1][545] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(550, 546, 550) */
		reached[1][546] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(550, 547, 550) */
		reached[1][547] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 283: // STATE 549 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][549] = 1;
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
	case 284: // STATE 552 - ./Case1Rules.h:424 - [((((L7_lo.prohib==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][552] = 1;
		if (!((((((int)now.L7_lo.prohib)==1)&&((((int)now.L7_lo.role_pl)==12)==1))&&((((int)now.L7_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 553 - ./Case1Rules.h:426 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][553] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 554 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][554] = 1;
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
	case 287: // STATE 558 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][558] = 1;
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
	case 288: // STATE 563 - ./EduOperation.h:393 - [(LEG2CRM?[25,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][563] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 564 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][564] = 1;
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
	case 290: // STATE 565 - ./EduOperation.h:394 - [(LEG2CRM?[25,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][565] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 566 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][566] = 1;
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
	case 292: // STATE 567 - ./EduOperation.h:395 - [(LEG2CRM?[25,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][567] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 568 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][568] = 1;
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
	case 294: // STATE 569 - ./EduOperation.h:396 - [(LEG2CRM?[25,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][569] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 570 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][570] = 1;
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
	case 296: // STATE 574 - ./Case1Rules.h:434 - [printf('L8')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][574] = 1;
		Printf("L8");
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 575 - ./Case1Rules.h:436 - [((((L8_lo.oblig==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][575] = 1;
		if (!((((((int)now.L8_lo.oblig)==1)&&((((int)now.L8_lo.role_pl)==12)==1))&&((((int)now.L8_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 576 - ./Case1Rules.h:438 - [STUDENTexTrace = (STUDENTexTrace|(1<<L8_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][576] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.L8_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 577 - ./Case1Rules.h:438 - [L8_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][577] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.executed);
		now.L8_lo.executed = 1;
#ifdef VAR_RANGES
		logval("L8_lo.executed", ((int)now.L8_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 578 - ./Case1Rules.h:440 - [printf('\\n\\n')] (0:585:0 - 1)
		IfNotBlocked
		reached[1][578] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(585, 579, 585) */
		reached[1][579] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(585, 580, 585) */
		reached[1][580] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L8</type>\\n')(585, 581, 585) */
		reached[1][581] = 1;
		Printf("<type>L8</type>\n");
		/* merge: printf('<status>success</status>\\n')(585, 582, 585) */
		reached[1][582] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(585, 583, 585) */
		reached[1][583] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 301: // STATE 585 - ./Case1Rules.h:447 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][585] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 586 - ./EduOperation.h:301 - [L8_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][586] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.oblig);
		now.L8_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L8_lo.oblig", ((int)now.L8_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 587 - ./EduOperation.h:302 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][587] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.prohib)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 588 - ./EduOperation.h:303 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][588] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.right)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 590 - ./Case1Rules.h:450 - [((((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT))&&((CW2_lo.executed==1)&&(CW2_lo.role_pl==STUDENT))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][590] = 1;
		if (!((((((int)now.CW1_lo.executed)==1)&&(((int)now.CW1_lo.role_pl)==12))&&((((int)now.CW2_lo.executed)==1)&&(((int)now.CW2_lo.role_pl)==12)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 591 - ./EduOperation.h:315 - [EXAM_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][591] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.prohib);
		now.EXAM_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.prohib", ((int)now.EXAM_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 592 - ./EduOperation.h:316 - [assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][592] = 1;
		spin_assert( !(((((int)now.EXAM_lo.prohib)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 593 - ./EduOperation.h:317 - [assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][593] = 1;
		spin_assert( !(((((int)now.EXAM_lo.prohib)==1)&&(((int)now.EXAM_lo.oblig)==1))), " !(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 595 - ./EduOperation.h:301 - [EXAM_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][595] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 596 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][596] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 597 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][597] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 600 - ./Case1Rules.h:451 - [printf('\\n\\n')] (0:605:0 - 1)
		IfNotBlocked
		reached[1][600] = 1;
		Printf("\n\n");
		/* merge: printf('Please get coursework done first \\n\\n')(605, 601, 605) */
		reached[1][601] = 1;
		Printf("Please get coursework done first \n\n");
		/* merge: .(goto)(0, 603, 605) */
		reached[1][603] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 313: // STATE 604 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][604] = 1;
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
	case 314: // STATE 607 - ./Case1Rules.h:456 - [((((L8_lo.oblig==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][607] = 1;
		if (!((((((int)now.L8_lo.oblig)==1)&&((((int)now.L8_lo.role_pl)==12)==1))&&((((int)now.L8_lo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 608 - ./Case1Rules.h:459 - [printf('\\n\\n')] (0:619:0 - 1)
		IfNotBlocked
		reached[1][608] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(619, 609, 619) */
		reached[1][609] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(619, 610, 619) */
		reached[1][610] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L8</type>\\n')(619, 611, 619) */
		reached[1][611] = 1;
		Printf("<type>L8</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(619, 612, 619) */
		reached[1][612] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(619, 613, 619) */
		reached[1][613] = 1;
		Printf("\n\n");
		/* merge: printf('L8-TechnicalFailure')(619, 615, 619) */
		reached[1][615] = 1;
		Printf("L8-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 316: // STATE 616 - ./EduOperation.h:301 - [L8_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][616] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.oblig);
		now.L8_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("L8_lo.oblig", ((int)now.L8_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 617 - ./EduOperation.h:302 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][617] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.prohib)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 618 - ./EduOperation.h:303 - [assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][618] = 1;
		spin_assert( !(((((int)now.L8_lo.oblig)==1)&&(((int)now.L8_lo.right)==1))), " !(((L8_lo.oblig==1)&&(L8_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 620 - ./Case1Rules.h:471 - [printf('\\n\\n')] (0:628:0 - 1)
		IfNotBlocked
		reached[1][620] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(628, 621, 628) */
		reached[1][621] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(628, 622, 628) */
		reached[1][622] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(628, 623, 628) */
		reached[1][623] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(628, 624, 628) */
		reached[1][624] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(628, 625, 628) */
		reached[1][625] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 320: // STATE 627 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][627] = 1;
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
	case 321: // STATE 630 - ./Case1Rules.h:481 - [((((L8_lo.prohib==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][630] = 1;
		if (!((((((int)now.L8_lo.prohib)==1)&&((((int)now.L8_lo.role_pl)==12)==1))&&((((int)now.L8_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 631 - ./Case1Rules.h:483 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][631] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 632 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][632] = 1;
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
	case 324: // STATE 636 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][636] = 1;
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
	case 325: // STATE 641 - ./EduOperation.h:393 - [(LEG2CRM?[26,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][641] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 642 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][642] = 1;
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
	case 327: // STATE 643 - ./EduOperation.h:394 - [(LEG2CRM?[26,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][643] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 644 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][644] = 1;
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
	case 329: // STATE 645 - ./EduOperation.h:395 - [(LEG2CRM?[26,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][645] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 646 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][646] = 1;
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
	case 331: // STATE 647 - ./EduOperation.h:396 - [(LEG2CRM?[26,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][647] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 648 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][648] = 1;
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
	case 333: // STATE 652 - ./Case1Rules.h:495 - [printf('CW1 ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][652] = 1;
		Printf("CW1 ");
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 653 - ./Case1Rules.h:497 - [((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][653] = 1;
		if (!((((((int)now.CW1_lo.oblig)==1)&&((((int)now.CW1_lo.role_pl)==12)==1))&&((((int)now.CW1_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 654 - ./Case1Rules.h:499 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW1_lo.id))] (0:663:2 - 1)
		IfNotBlocked
		reached[1][654] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW1_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		/* merge: CW1_lo.executed = 1(663, 655, 663) */
		reached[1][655] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.CW1_lo.executed);
		now.CW1_lo.executed = 1;
#ifdef VAR_RANGES
		logval("CW1_lo.executed", ((int)now.CW1_lo.executed));
#endif
		;
		/* merge: printf('\\n\\n')(663, 656, 663) */
		reached[1][656] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(663, 657, 663) */
		reached[1][657] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(663, 658, 663) */
		reached[1][658] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW1</type>\\n')(663, 659, 663) */
		reached[1][659] = 1;
		Printf("<type>CW1</type>\n");
		/* merge: printf('<status>success</status>\\n')(663, 660, 663) */
		reached[1][660] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(663, 661, 663) */
		reached[1][661] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 336: // STATE 663 - ./Case1Rules.h:507 - [CwCount = (CwCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][663] = 1;
		(trpt+1)->bup.oval = now.CwCount;
		now.CwCount = (now.CwCount+1);
#ifdef VAR_RANGES
		logval("CwCount", now.CwCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 664 - ./Case1Rules.h:508 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW1_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][664] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW1_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 665 - ./Case1Rules.h:508 - [CW1_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][665] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.executed);
		now.CW1_lo.executed = 1;
#ifdef VAR_RANGES
		logval("CW1_lo.executed", ((int)now.CW1_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 666 - ./EduOperation.h:301 - [CW1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][666] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 667 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][667] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 668 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][668] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 670 - ./Case1Rules.h:510 - [printf('Learning are now continued')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][670] = 1;
		Printf("Learning are now continued");
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 671 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][671] = 1;
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
	case 344: // STATE 674 - ./Case1Rules.h:515 - [((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][674] = 1;
		if (!((((((int)now.CW1_lo.oblig)==1)&&((((int)now.CW1_lo.role_pl)==12)==1))&&((((int)now.CW1_lo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 675 - ./Case1Rules.h:517 - [printf('\\n\\n')] (0:686:0 - 1)
		IfNotBlocked
		reached[1][675] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(686, 676, 686) */
		reached[1][676] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(686, 677, 686) */
		reached[1][677] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW1</type>\\n')(686, 678, 686) */
		reached[1][678] = 1;
		Printf("<type>CW1</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(686, 679, 686) */
		reached[1][679] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(686, 680, 686) */
		reached[1][680] = 1;
		Printf("\n\n");
		/* merge: printf('No submission at within required time')(686, 682, 686) */
		reached[1][682] = 1;
		Printf("No submission at within required time");
		_m = 3; goto P999; /* 6 */
	case 346: // STATE 683 - ./EduOperation.h:301 - [CW1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][683] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 684 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][684] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 685 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][685] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 687 - ./EduOperation.h:301 - [CW2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][687] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 688 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][688] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 689 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][689] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 691 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][691] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 692 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][692] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 693 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][693] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 695 - ./Case1Rules.h:531 - [printf('\\n\\n')] (0:702:0 - 1)
		IfNotBlocked
		reached[1][695] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(702, 696, 702) */
		reached[1][696] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(702, 697, 702) */
		reached[1][697] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(702, 698, 702) */
		reached[1][698] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(702, 699, 702) */
		reached[1][699] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(702, 700, 702) */
		reached[1][700] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 356: // STATE 702 - ./Case1Rules.h:537 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][702] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 703 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][703] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 358: // STATE 706 - ./Case1Rules.h:541 - [((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==LF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][706] = 1;
		if (!((((((int)now.CW1_lo.oblig)==1)&&((((int)now.CW1_lo.role_pl)==12)==1))&&((((int)now.CW1_lo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 359: // STATE 707 - ./Case1Rules.h:543 - [printf('\\n\\n')] (0:718:0 - 1)
		IfNotBlocked
		reached[1][707] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(718, 708, 718) */
		reached[1][708] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(718, 709, 718) */
		reached[1][709] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW1</type>\\n')(718, 710, 718) */
		reached[1][710] = 1;
		Printf("<type>CW1</type>\n");
		/* merge: printf('<status>Learning Fail</status>\\n')(718, 711, 718) */
		reached[1][711] = 1;
		Printf("<status>Learning Fail</status>\n");
		/* merge: printf('\\n\\n')(718, 712, 718) */
		reached[1][712] = 1;
		Printf("\n\n");
		/* merge: printf('Coursework 1 failed')(718, 714, 718) */
		reached[1][714] = 1;
		Printf("Coursework 1 failed");
		_m = 3; goto P999; /* 6 */
	case 360: // STATE 715 - ./EduOperation.h:301 - [CW1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][715] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 716 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][716] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 717 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][717] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 719 - ./EduOperation.h:301 - [CW2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][719] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 720 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][720] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 721 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][721] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 723 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][723] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 724 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][724] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 725 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][725] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 727 - ./Case1Rules.h:556 - [printf('\\n\\n')] (0:734:0 - 1)
		IfNotBlocked
		reached[1][727] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(734, 728, 734) */
		reached[1][728] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(734, 729, 734) */
		reached[1][729] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(734, 730, 734) */
		reached[1][730] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(734, 731, 734) */
		reached[1][731] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(734, 732, 734) */
		reached[1][732] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 370: // STATE 734 - ./Case1Rules.h:562 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][734] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 735 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][735] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 372: // STATE 738 - ./Case1Rules.h:565 - [((((CW1_lo.prohib==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][738] = 1;
		if (!((((((int)now.CW1_lo.prohib)==1)&&((((int)now.CW1_lo.role_pl)==12)==1))&&((((int)now.CW1_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 739 - ./Case1Rules.h:567 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][739] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 740 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][740] = 1;
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
	case 375: // STATE 744 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][744] = 1;
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
	case 376: // STATE 749 - ./EduOperation.h:393 - [(LEG2CRM?[27,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][749] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 750 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][750] = 1;
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
	case 378: // STATE 751 - ./EduOperation.h:394 - [(LEG2CRM?[27,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][751] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 752 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][752] = 1;
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
	case 380: // STATE 753 - ./EduOperation.h:395 - [(LEG2CRM?[27,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][753] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 754 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][754] = 1;
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
	case 382: // STATE 755 - ./EduOperation.h:396 - [(LEG2CRM?[27,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][755] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 756 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][756] = 1;
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
	case 384: // STATE 760 - ./Case1Rules.h:578 - [printf('CW2 ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][760] = 1;
		Printf("CW2 ");
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 761 - ./Case1Rules.h:580 - [((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][761] = 1;
		if (!((((((int)now.CW2_lo.oblig)==1)&&((((int)now.CW2_lo.role_pl)==12)==1))&&((((int)now.CW2_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 762 - ./Case1Rules.h:582 - [(((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][762] = 1;
		if (!(((((int)now.CW1_lo.executed)==1)&&(((int)now.CW1_lo.role_pl)==12))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 763 - ./Case1Rules.h:584 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW2_lo.id))] (0:772:2 - 1)
		IfNotBlocked
		reached[1][763] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW2_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		/* merge: CW2_lo.executed = 1(772, 764, 772) */
		reached[1][764] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.CW2_lo.executed);
		now.CW2_lo.executed = 1;
#ifdef VAR_RANGES
		logval("CW2_lo.executed", ((int)now.CW2_lo.executed));
#endif
		;
		/* merge: printf('\\n\\n')(772, 765, 772) */
		reached[1][765] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(772, 766, 772) */
		reached[1][766] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(772, 767, 772) */
		reached[1][767] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW2</type>\\n')(772, 768, 772) */
		reached[1][768] = 1;
		Printf("<type>CW2</type>\n");
		/* merge: printf('<status>success</status>\\n')(772, 769, 772) */
		reached[1][769] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(772, 770, 772) */
		reached[1][770] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 388: // STATE 772 - ./Case1Rules.h:592 - [CwCount = (CwCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][772] = 1;
		(trpt+1)->bup.oval = now.CwCount;
		now.CwCount = (now.CwCount+1);
#ifdef VAR_RANGES
		logval("CwCount", now.CwCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 773 - ./Case1Rules.h:593 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW2_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][773] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW2_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 774 - ./Case1Rules.h:593 - [CW2_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][774] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.executed);
		now.CW2_lo.executed = 1;
#ifdef VAR_RANGES
		logval("CW2_lo.executed", ((int)now.CW2_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 775 - ./EduOperation.h:301 - [CW2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][775] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 776 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][776] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 777 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][777] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 779 - ./Case1Rules.h:596 - [((((L8_lo.executed==1)&&(L8_lo.role_pl==STUDENT))&&((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][779] = 1;
		if (!((((((int)now.L8_lo.executed)==1)&&(((int)now.L8_lo.role_pl)==12))&&((((int)now.CW1_lo.executed)==1)&&(((int)now.CW1_lo.role_pl)==12)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 780 - ./EduOperation.h:315 - [EXAM_lo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][780] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.prohib);
		now.EXAM_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.prohib", ((int)now.EXAM_lo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 781 - ./EduOperation.h:316 - [assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][781] = 1;
		spin_assert( !(((((int)now.EXAM_lo.prohib)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 782 - ./EduOperation.h:317 - [assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][782] = 1;
		spin_assert( !(((((int)now.EXAM_lo.prohib)==1)&&(((int)now.EXAM_lo.oblig)==1))), " !(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 784 - ./EduOperation.h:301 - [EXAM_lo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][784] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 1;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 785 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][785] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 400: // STATE 786 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][786] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 789 - ./Case1Rules.h:597 - [printf('\\n\\n Please get L8 done first \\n\\n')] (0:799:0 - 1)
		IfNotBlocked
		reached[1][789] = 1;
		Printf("\n\n Please get L8 done first \n\n");
		/* merge: .(goto)(799, 791, 799) */
		reached[1][791] = 1;
		;
		/* merge: printf('LECTURES are now continued')(799, 792, 799) */
		reached[1][792] = 1;
		Printf("LECTURES are now continued");
		/* merge: .(goto)(0, 797, 799) */
		reached[1][797] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 402: // STATE 792 - ./Case1Rules.h:599 - [printf('LECTURES are now continued')] (0:799:0 - 3)
		IfNotBlocked
		reached[1][792] = 1;
		Printf("LECTURES are now continued");
		/* merge: .(goto)(0, 797, 799) */
		reached[1][797] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 403: // STATE 794 - ./Case1Rules.h:600 - [printf('\\n\\n')] (0:799:0 - 1)
		IfNotBlocked
		reached[1][794] = 1;
		Printf("\n\n");
		/* merge: printf('Please complete CW1 first \\n\\n')(799, 795, 799) */
		reached[1][795] = 1;
		Printf("Please complete CW1 first \n\n");
		/* merge: .(goto)(0, 797, 799) */
		reached[1][797] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 404: // STATE 798 - ./EduOperation.h:428 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][798] = 1;
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
	case 405: // STATE 801 - ./Case1Rules.h:605 - [((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][801] = 1;
		if (!((((((int)now.CW2_lo.oblig)==1)&&((((int)now.CW2_lo.role_pl)==12)==1))&&((((int)now.CW2_lo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 406: // STATE 802 - ./Case1Rules.h:607 - [printf('\\n\\n')] (0:813:0 - 1)
		IfNotBlocked
		reached[1][802] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(813, 803, 813) */
		reached[1][803] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(813, 804, 813) */
		reached[1][804] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW2</type>\\n')(813, 805, 813) */
		reached[1][805] = 1;
		Printf("<type>CW2</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(813, 806, 813) */
		reached[1][806] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(813, 807, 813) */
		reached[1][807] = 1;
		Printf("\n\n");
		/* merge: printf('No submission at within required time')(813, 809, 813) */
		reached[1][809] = 1;
		Printf("No submission at within required time");
		_m = 3; goto P999; /* 6 */
	case 407: // STATE 810 - ./EduOperation.h:301 - [CW1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][810] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 811 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][811] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 812 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][812] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 814 - ./EduOperation.h:301 - [CW2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][814] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 815 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][815] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 412: // STATE 816 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][816] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 818 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][818] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 819 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][819] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 820 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][820] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 822 - ./Case1Rules.h:620 - [printf('\\n\\n')] (0:829:0 - 1)
		IfNotBlocked
		reached[1][822] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(829, 823, 829) */
		reached[1][823] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(829, 824, 829) */
		reached[1][824] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(829, 825, 829) */
		reached[1][825] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(829, 826, 829) */
		reached[1][826] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(829, 827, 829) */
		reached[1][827] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 417: // STATE 829 - ./Case1Rules.h:626 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][829] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 830 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][830] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 419: // STATE 833 - ./Case1Rules.h:630 - [((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==LF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][833] = 1;
		if (!((((((int)now.CW2_lo.oblig)==1)&&((((int)now.CW2_lo.role_pl)==12)==1))&&((((int)now.CW2_lo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 834 - ./Case1Rules.h:632 - [printf('\\n\\n')] (0:844:0 - 1)
		IfNotBlocked
		reached[1][834] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(844, 835, 844) */
		reached[1][835] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(844, 836, 844) */
		reached[1][836] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW2</type>\\n')(844, 837, 844) */
		reached[1][837] = 1;
		Printf("<type>CW2</type>\n");
		/* merge: printf('<status>Learning Fail</status>\\n')(844, 838, 844) */
		reached[1][838] = 1;
		Printf("<status>Learning Fail</status>\n");
		/* merge: printf('\\n\\n')(844, 839, 844) */
		reached[1][839] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 421: // STATE 841 - ./EduOperation.h:301 - [CW1_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][841] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.oblig);
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 842 - ./EduOperation.h:302 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][842] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.prohib)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 843 - ./EduOperation.h:303 - [assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][843] = 1;
		spin_assert( !(((((int)now.CW1_lo.oblig)==1)&&(((int)now.CW1_lo.right)==1))), " !(((CW1_lo.oblig==1)&&(CW1_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 845 - ./EduOperation.h:301 - [CW2_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][845] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.oblig);
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 425: // STATE 846 - ./EduOperation.h:302 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][846] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.prohib)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 426: // STATE 847 - ./EduOperation.h:303 - [assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][847] = 1;
		spin_assert( !(((((int)now.CW2_lo.oblig)==1)&&(((int)now.CW2_lo.right)==1))), " !(((CW2_lo.oblig==1)&&(CW2_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 849 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][849] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 428: // STATE 850 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][850] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 851 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][851] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 853 - ./Case1Rules.h:642 - [printf('Coursework 2 failed')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][853] = 1;
		Printf("Coursework 2 failed");
		_m = 3; goto P999; /* 0 */
	case 431: // STATE 854 - ./Case1Rules.h:644 - [printf('\\n\\n')] (0:861:0 - 1)
		IfNotBlocked
		reached[1][854] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(861, 855, 861) */
		reached[1][855] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(861, 856, 861) */
		reached[1][856] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(861, 857, 861) */
		reached[1][857] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(861, 858, 861) */
		reached[1][858] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(861, 859, 861) */
		reached[1][859] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 432: // STATE 861 - ./Case1Rules.h:650 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][861] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 433: // STATE 862 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][862] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 434: // STATE 865 - ./Case1Rules.h:653 - [((((CW2_lo.prohib==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][865] = 1;
		if (!((((((int)now.CW2_lo.prohib)==1)&&((((int)now.CW2_lo.role_pl)==12)==1))&&((((int)now.CW2_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 435: // STATE 866 - ./Case1Rules.h:655 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][866] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 867 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][867] = 1;
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
	case 437: // STATE 871 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][871] = 1;
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
	case 438: // STATE 876 - ./EduOperation.h:393 - [(LEG2CRM?[28,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][876] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 877 - ./EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][877] = 1;
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
	case 440: // STATE 878 - ./EduOperation.h:394 - [(LEG2CRM?[28,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][878] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 441: // STATE 879 - ./EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][879] = 1;
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
	case 442: // STATE 880 - ./EduOperation.h:395 - [(LEG2CRM?[28,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][880] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 881 - ./EduOperation.h:395 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][881] = 1;
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
	case 444: // STATE 882 - ./EduOperation.h:396 - [(LEG2CRM?[28,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][882] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 883 - ./EduOperation.h:396 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][883] = 1;
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
	case 446: // STATE 887 - ./Case1Rules.h:667 - [printf('EXAM ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][887] = 1;
		Printf("EXAM ");
		_m = 3; goto P999; /* 0 */
	case 447: // STATE 888 - ./Case1Rules.h:669 - [((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][888] = 1;
		if (!((((((int)now.EXAM_lo.oblig)==1)&&((((int)now.EXAM_lo.role_pl)==12)==1))&&((((int)now.EXAM_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 889 - ./Case1Rules.h:671 - [STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_lo.id))] (0:898:2 - 1)
		IfNotBlocked
		reached[1][889] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.EXAM_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		/* merge: EXAM_lo.executed = 1(898, 890, 898) */
		reached[1][890] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EXAM_lo.executed);
		now.EXAM_lo.executed = 1;
#ifdef VAR_RANGES
		logval("EXAM_lo.executed", ((int)now.EXAM_lo.executed));
#endif
		;
		/* merge: printf('\\n\\n')(898, 891, 898) */
		reached[1][891] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(898, 892, 898) */
		reached[1][892] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(898, 893, 898) */
		reached[1][893] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>EXAM</type>\\n')(898, 894, 898) */
		reached[1][894] = 1;
		Printf("<type>EXAM</type>\n");
		/* merge: printf('<status>success</status>\\n')(898, 895, 898) */
		reached[1][895] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(898, 896, 898) */
		reached[1][896] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 449: // STATE 898 - ./Case1Rules.h:679 - [ExamCount = (ExamCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][898] = 1;
		(trpt+1)->bup.oval = now.ExamCount;
		now.ExamCount = (now.ExamCount+1);
#ifdef VAR_RANGES
		logval("ExamCount", now.ExamCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 899 - ./Case1Rules.h:680 - [STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_lo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][899] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.EXAM_lo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 451: // STATE 900 - ./Case1Rules.h:680 - [EXAM_lo.executed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][900] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.executed);
		now.EXAM_lo.executed = 1;
#ifdef VAR_RANGES
		logval("EXAM_lo.executed", ((int)now.EXAM_lo.executed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 452: // STATE 901 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][901] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 453: // STATE 902 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][902] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 903 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][903] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 455: // STATE 905 - ./Case1Rules.h:683 - [printf('\\n\\n')] (0:913:0 - 1)
		IfNotBlocked
		reached[1][905] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(913, 906, 913) */
		reached[1][906] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(913, 907, 913) */
		reached[1][907] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(913, 908, 913) */
		reached[1][908] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(913, 909, 913) */
		reached[1][909] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(913, 910, 913) */
		reached[1][910] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 456: // STATE 912 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][912] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 457: // STATE 915 - ./Case1Rules.h:692 - [((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][915] = 1;
		if (!((((((int)now.EXAM_lo.oblig)==1)&&((((int)now.EXAM_lo.role_pl)==12)==1))&&((((int)now.EXAM_lo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 458: // STATE 916 - ./Case1Rules.h:695 - [printf('\\n\\n')] (0:927:0 - 1)
		IfNotBlocked
		reached[1][916] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(927, 917, 927) */
		reached[1][917] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(927, 918, 927) */
		reached[1][918] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>EXAM</type>\\n')(927, 919, 927) */
		reached[1][919] = 1;
		Printf("<type>EXAM</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(927, 920, 927) */
		reached[1][920] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(927, 921, 927) */
		reached[1][921] = 1;
		Printf("\n\n");
		/* merge: printf('Exam -- timeout')(927, 923, 927) */
		reached[1][923] = 1;
		Printf("Exam -- timeout");
		_m = 3; goto P999; /* 6 */
	case 459: // STATE 924 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][924] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 925 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][925] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 926 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][926] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 928 - ./Case1Rules.h:706 - [printf('\\n\\n')] (0:935:0 - 1)
		IfNotBlocked
		reached[1][928] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(935, 929, 935) */
		reached[1][929] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(935, 930, 935) */
		reached[1][930] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(935, 931, 935) */
		reached[1][931] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(935, 932, 935) */
		reached[1][932] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(935, 933, 935) */
		reached[1][933] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 463: // STATE 935 - ./Case1Rules.h:712 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][935] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 936 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][936] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 465: // STATE 939 - ./Case1Rules.h:716 - [((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==LF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][939] = 1;
		if (!((((((int)now.EXAM_lo.oblig)==1)&&((((int)now.EXAM_lo.role_pl)==12)==1))&&((((int)now.EXAM_lo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 940 - ./Case1Rules.h:719 - [printf('\\n\\n')] (0:951:0 - 1)
		IfNotBlocked
		reached[1][940] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(951, 941, 951) */
		reached[1][941] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(951, 942, 951) */
		reached[1][942] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>EXAM</type>\\n')(951, 943, 951) */
		reached[1][943] = 1;
		Printf("<type>EXAM</type>\n");
		/* merge: printf('<status>Learning Fail</status>\\n')(951, 944, 951) */
		reached[1][944] = 1;
		Printf("<status>Learning Fail</status>\n");
		/* merge: printf('\\n\\n')(951, 945, 951) */
		reached[1][945] = 1;
		Printf("\n\n");
		/* merge: printf('Exam -- fail')(951, 947, 951) */
		reached[1][947] = 1;
		Printf("Exam -- fail");
		_m = 3; goto P999; /* 6 */
	case 467: // STATE 948 - ./EduOperation.h:301 - [EXAM_lo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][948] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.oblig);
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 949 - ./EduOperation.h:302 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][949] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.prohib)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 469: // STATE 950 - ./EduOperation.h:303 - [assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][950] = 1;
		spin_assert( !(((((int)now.EXAM_lo.oblig)==1)&&(((int)now.EXAM_lo.right)==1))), " !(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 470: // STATE 952 - ./Case1Rules.h:730 - [printf('\\n\\n')] (0:959:0 - 1)
		IfNotBlocked
		reached[1][952] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(959, 953, 959) */
		reached[1][953] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(959, 954, 959) */
		reached[1][954] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(959, 955, 959) */
		reached[1][955] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(959, 956, 959) */
		reached[1][956] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(959, 957, 959) */
		reached[1][957] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 471: // STATE 959 - ./Case1Rules.h:736 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][959] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 960 - ./EduOperation.h:428 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][960] = 1;
		if (q_full(now.CRM2LEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2LEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2LEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2LEG)) { boq = now.CRM2LEG; };
		_m = 2; goto P999; /* 0 */
	case 473: // STATE 963 - ./Case1Rules.h:739 - [((((EXAM_lo.prohib==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][963] = 1;
		if (!((((((int)now.EXAM_lo.prohib)==1)&&((((int)now.EXAM_lo.role_pl)==12)==1))&&((((int)now.EXAM_lo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 964 - ./Case1Rules.h:741 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][964] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 475: // STATE 965 - ./EduOperation.h:428 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][965] = 1;
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
	case 476: // STATE 969 - ./EduOperation.h:435 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][969] = 1;
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
	case 477: // STATE 977 - ./test.pml:177 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][977] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC LEG */
	case 478: // STATE 1 - ./EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 479: // STATE 3 - ./test.pml:96 - [STUDENTexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = 0;
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 4 - ./EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 481: // STATE 6 - ./test.pml:97 - [LMSexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = 0;
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 14 - ./EduOperation.h:174 - [D_STEP174]
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
		now.START_lo.role_pl = 11;
#ifdef VAR_RANGES
		logval("START_lo.role_pl", ((int)now.START_lo.role_pl));
#endif
		;
S_008_0: /* 2 */
		now.START_lo.right = 1;
#ifdef VAR_RANGES
		logval("START_lo.right", ((int)now.START_lo.right));
#endif
		;
S_009_0: /* 2 */
		now.START_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("START_lo.oblig", ((int)now.START_lo.oblig));
#endif
		;
S_010_0: /* 2 */
		now.START_lo.prohib = 0;
#ifdef VAR_RANGES
		logval("START_lo.prohib", ((int)now.START_lo.prohib));
#endif
		;
S_011_0: /* 2 */
		now.START_lo.executed = 0;
#ifdef VAR_RANGES
		logval("START_lo.executed", ((int)now.START_lo.executed));
#endif
		;
S_012_0: /* 2 */
		now.START_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("START_lo.id", ((int)now.START_lo.id));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 483: // STATE 23 - ./EduOperation.h:174 - [D_STEP174]
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
		now.L1_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L1_lo.role_pl", ((int)now.L1_lo.role_pl));
#endif
		;
S_017_0: /* 2 */
		now.L1_lo.right = 0;
#ifdef VAR_RANGES
		logval("L1_lo.right", ((int)now.L1_lo.right));
#endif
		;
S_018_0: /* 2 */
		now.L1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L1_lo.oblig", ((int)now.L1_lo.oblig));
#endif
		;
S_019_0: /* 2 */
		now.L1_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L1_lo.prohib", ((int)now.L1_lo.prohib));
#endif
		;
S_020_0: /* 2 */
		now.L1_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L1_lo.executed", ((int)now.L1_lo.executed));
#endif
		;
S_021_0: /* 2 */
		now.L1_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L1_lo.id", ((int)now.L1_lo.id));
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 484: // STATE 32 - ./EduOperation.h:174 - [D_STEP174]
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
		now.L2_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L2_lo.role_pl", ((int)now.L2_lo.role_pl));
#endif
		;
S_026_0: /* 2 */
		now.L2_lo.right = 0;
#ifdef VAR_RANGES
		logval("L2_lo.right", ((int)now.L2_lo.right));
#endif
		;
S_027_0: /* 2 */
		now.L2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L2_lo.oblig", ((int)now.L2_lo.oblig));
#endif
		;
S_028_0: /* 2 */
		now.L2_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L2_lo.prohib", ((int)now.L2_lo.prohib));
#endif
		;
S_029_0: /* 2 */
		now.L2_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L2_lo.executed", ((int)now.L2_lo.executed));
#endif
		;
S_030_0: /* 2 */
		now.L2_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L2_lo.id", ((int)now.L2_lo.id));
#endif
		;
		goto S_041_0;
S_041_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 485: // STATE 41 - ./EduOperation.h:174 - [D_STEP174]
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
		now.L3_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L3_lo.role_pl", ((int)now.L3_lo.role_pl));
#endif
		;
S_035_0: /* 2 */
		now.L3_lo.right = 0;
#ifdef VAR_RANGES
		logval("L3_lo.right", ((int)now.L3_lo.right));
#endif
		;
S_036_0: /* 2 */
		now.L3_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L3_lo.oblig", ((int)now.L3_lo.oblig));
#endif
		;
S_037_0: /* 2 */
		now.L3_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L3_lo.prohib", ((int)now.L3_lo.prohib));
#endif
		;
S_038_0: /* 2 */
		now.L3_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L3_lo.executed", ((int)now.L3_lo.executed));
#endif
		;
S_039_0: /* 2 */
		now.L3_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L3_lo.id", ((int)now.L3_lo.id));
#endif
		;
		goto S_050_0;
S_050_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 486: // STATE 50 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][50] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_042_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_043_0: /* 2 */
		now.L4_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L4_lo.role_pl", ((int)now.L4_lo.role_pl));
#endif
		;
S_044_0: /* 2 */
		now.L4_lo.right = 0;
#ifdef VAR_RANGES
		logval("L4_lo.right", ((int)now.L4_lo.right));
#endif
		;
S_045_0: /* 2 */
		now.L4_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L4_lo.oblig", ((int)now.L4_lo.oblig));
#endif
		;
S_046_0: /* 2 */
		now.L4_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L4_lo.prohib", ((int)now.L4_lo.prohib));
#endif
		;
S_047_0: /* 2 */
		now.L4_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L4_lo.executed", ((int)now.L4_lo.executed));
#endif
		;
S_048_0: /* 2 */
		now.L4_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L4_lo.id", ((int)now.L4_lo.id));
#endif
		;
		goto S_059_0;
S_059_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 487: // STATE 59 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][59] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_051_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_052_0: /* 2 */
		now.L5_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L5_lo.role_pl", ((int)now.L5_lo.role_pl));
#endif
		;
S_053_0: /* 2 */
		now.L5_lo.right = 0;
#ifdef VAR_RANGES
		logval("L5_lo.right", ((int)now.L5_lo.right));
#endif
		;
S_054_0: /* 2 */
		now.L5_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L5_lo.oblig", ((int)now.L5_lo.oblig));
#endif
		;
S_055_0: /* 2 */
		now.L5_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L5_lo.prohib", ((int)now.L5_lo.prohib));
#endif
		;
S_056_0: /* 2 */
		now.L5_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L5_lo.executed", ((int)now.L5_lo.executed));
#endif
		;
S_057_0: /* 2 */
		now.L5_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L5_lo.id", ((int)now.L5_lo.id));
#endif
		;
		goto S_068_0;
S_068_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 488: // STATE 68 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][68] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_060_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_061_0: /* 2 */
		now.L6_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L6_lo.role_pl", ((int)now.L6_lo.role_pl));
#endif
		;
S_062_0: /* 2 */
		now.L6_lo.right = 0;
#ifdef VAR_RANGES
		logval("L6_lo.right", ((int)now.L6_lo.right));
#endif
		;
S_063_0: /* 2 */
		now.L6_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L6_lo.oblig", ((int)now.L6_lo.oblig));
#endif
		;
S_064_0: /* 2 */
		now.L6_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L6_lo.prohib", ((int)now.L6_lo.prohib));
#endif
		;
S_065_0: /* 2 */
		now.L6_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L6_lo.executed", ((int)now.L6_lo.executed));
#endif
		;
S_066_0: /* 2 */
		now.L6_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L6_lo.id", ((int)now.L6_lo.id));
#endif
		;
		goto S_077_0;
S_077_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 489: // STATE 77 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][77] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_069_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_070_0: /* 2 */
		now.L7_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L7_lo.role_pl", ((int)now.L7_lo.role_pl));
#endif
		;
S_071_0: /* 2 */
		now.L7_lo.right = 0;
#ifdef VAR_RANGES
		logval("L7_lo.right", ((int)now.L7_lo.right));
#endif
		;
S_072_0: /* 2 */
		now.L7_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L7_lo.oblig", ((int)now.L7_lo.oblig));
#endif
		;
S_073_0: /* 2 */
		now.L7_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L7_lo.prohib", ((int)now.L7_lo.prohib));
#endif
		;
S_074_0: /* 2 */
		now.L7_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L7_lo.executed", ((int)now.L7_lo.executed));
#endif
		;
S_075_0: /* 2 */
		now.L7_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L7_lo.id", ((int)now.L7_lo.id));
#endif
		;
		goto S_086_0;
S_086_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 490: // STATE 86 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][86] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_078_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_079_0: /* 2 */
		now.L8_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L8_lo.role_pl", ((int)now.L8_lo.role_pl));
#endif
		;
S_080_0: /* 2 */
		now.L8_lo.right = 0;
#ifdef VAR_RANGES
		logval("L8_lo.right", ((int)now.L8_lo.right));
#endif
		;
S_081_0: /* 2 */
		now.L8_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("L8_lo.oblig", ((int)now.L8_lo.oblig));
#endif
		;
S_082_0: /* 2 */
		now.L8_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("L8_lo.prohib", ((int)now.L8_lo.prohib));
#endif
		;
S_083_0: /* 2 */
		now.L8_lo.executed = 0;
#ifdef VAR_RANGES
		logval("L8_lo.executed", ((int)now.L8_lo.executed));
#endif
		;
S_084_0: /* 2 */
		now.L8_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L8_lo.id", ((int)now.L8_lo.id));
#endif
		;
		goto S_095_0;
S_095_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 491: // STATE 95 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][95] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_087_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_088_0: /* 2 */
		now.CW1_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("CW1_lo.role_pl", ((int)now.CW1_lo.role_pl));
#endif
		;
S_089_0: /* 2 */
		now.CW1_lo.right = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.right", ((int)now.CW1_lo.right));
#endif
		;
S_090_0: /* 2 */
		now.CW1_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.oblig", ((int)now.CW1_lo.oblig));
#endif
		;
S_091_0: /* 2 */
		now.CW1_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("CW1_lo.prohib", ((int)now.CW1_lo.prohib));
#endif
		;
S_092_0: /* 2 */
		now.CW1_lo.executed = 0;
#ifdef VAR_RANGES
		logval("CW1_lo.executed", ((int)now.CW1_lo.executed));
#endif
		;
S_093_0: /* 2 */
		now.CW1_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CW1_lo.id", ((int)now.CW1_lo.id));
#endif
		;
		goto S_104_0;
S_104_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 492: // STATE 104 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][104] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_096_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_097_0: /* 2 */
		now.CW2_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("CW2_lo.role_pl", ((int)now.CW2_lo.role_pl));
#endif
		;
S_098_0: /* 2 */
		now.CW2_lo.right = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.right", ((int)now.CW2_lo.right));
#endif
		;
S_099_0: /* 2 */
		now.CW2_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.oblig", ((int)now.CW2_lo.oblig));
#endif
		;
S_100_0: /* 2 */
		now.CW2_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("CW2_lo.prohib", ((int)now.CW2_lo.prohib));
#endif
		;
S_101_0: /* 2 */
		now.CW2_lo.executed = 0;
#ifdef VAR_RANGES
		logval("CW2_lo.executed", ((int)now.CW2_lo.executed));
#endif
		;
S_102_0: /* 2 */
		now.CW2_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CW2_lo.id", ((int)now.CW2_lo.id));
#endif
		;
		goto S_113_0;
S_113_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 493: // STATE 113 - ./EduOperation.h:174 - [D_STEP174]
		IfNotBlocked

		reached[0][113] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_105_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_106_0: /* 2 */
		now.EXAM_lo.role_pl = 12;
#ifdef VAR_RANGES
		logval("EXAM_lo.role_pl", ((int)now.EXAM_lo.role_pl));
#endif
		;
S_107_0: /* 2 */
		now.EXAM_lo.right = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.right", ((int)now.EXAM_lo.right));
#endif
		;
S_108_0: /* 2 */
		now.EXAM_lo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.oblig", ((int)now.EXAM_lo.oblig));
#endif
		;
S_109_0: /* 2 */
		now.EXAM_lo.prohib = 1;
#ifdef VAR_RANGES
		logval("EXAM_lo.prohib", ((int)now.EXAM_lo.prohib));
#endif
		;
S_110_0: /* 2 */
		now.EXAM_lo.executed = 0;
#ifdef VAR_RANGES
		logval("EXAM_lo.executed", ((int)now.EXAM_lo.executed));
#endif
		;
S_111_0: /* 2 */
		now.EXAM_lo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("EXAM_lo.id", ((int)now.EXAM_lo.id));
#endif
		;
		goto S_1680_0;
S_1680_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 494: // STATE 116 - ./test.pml:117 - [((((START_lo.right==1)||(START_lo.oblig==1))||(START_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		if (!((((((int)now.START_lo.right)==1)||(((int)now.START_lo.oblig)==1))||(((int)now.START_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 117 - ./test.pml:117 - [START_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		(trpt+1)->bup.oval = ((int)now.START_lo.status);
		now.START_lo.status = 16;
#ifdef VAR_RANGES
		logval("START_lo.status", ((int)now.START_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 496: // STATE 118 - ./EduOperation.h:406 - [LEG2CRM!17,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
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
	case 497: // STATE 120 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][120] = 1;
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
	case 498: // STATE 123 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][123] = 1;
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
	case 499: // STATE 126 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][126] = 1;
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
	case 500: // STATE 129 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][129] = 1;
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
	case 501: // STATE 132 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][132] = 1;
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
	case 502: // STATE 135 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][135] = 1;
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
	case 503: // STATE 138 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][138] = 1;
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
	case 504: // STATE 141 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][141] = 1;
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
	case 505: // STATE 144 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][144] = 1;
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
	case 506: // STATE 147 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][147] = 1;
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
	case 507: // STATE 150 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][150] = 1;
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
	case 508: // STATE 153 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][153] = 1;
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
	case 509: // STATE 156 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][156] = 1;
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
	case 510: // STATE 162 - ./test.pml:119 - [((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][162] = 1;
		if (!((((((int)now.L1_lo.right)==1)||(((int)now.L1_lo.oblig)==1))||(((int)now.L1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 511: // STATE 163 - ./test.pml:119 - [L1_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][163] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.status);
		now.L1_lo.status = 16;
#ifdef VAR_RANGES
		logval("L1_lo.status", ((int)now.L1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 512: // STATE 164 - ./EduOperation.h:406 - [LEG2CRM!18,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][164] = 1;
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
	case 513: // STATE 166 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][166] = 1;
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
	case 514: // STATE 169 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][169] = 1;
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
	case 515: // STATE 172 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][172] = 1;
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
	case 516: // STATE 175 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][175] = 1;
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
	case 517: // STATE 178 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][178] = 1;
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
	case 518: // STATE 181 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][181] = 1;
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
	case 519: // STATE 184 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][184] = 1;
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
	case 520: // STATE 187 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][187] = 1;
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
	case 521: // STATE 190 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][190] = 1;
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
	case 522: // STATE 193 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][193] = 1;
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
	case 523: // STATE 196 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][196] = 1;
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
	case 524: // STATE 199 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][199] = 1;
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
	case 525: // STATE 202 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][202] = 1;
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
	case 526: // STATE 208 - ./test.pml:120 - [((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][208] = 1;
		if (!((((((int)now.L1_lo.right)==1)||(((int)now.L1_lo.oblig)==1))||(((int)now.L1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 527: // STATE 209 - ./test.pml:120 - [L1_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.status);
		now.L1_lo.status = 14;
#ifdef VAR_RANGES
		logval("L1_lo.status", ((int)now.L1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 528: // STATE 210 - ./EduOperation.h:406 - [LEG2CRM!18,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 18, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 529: // STATE 212 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][212] = 1;
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
	case 530: // STATE 215 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][215] = 1;
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
	case 531: // STATE 218 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][218] = 1;
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
	case 532: // STATE 221 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][221] = 1;
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
	case 533: // STATE 224 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][224] = 1;
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
	case 534: // STATE 227 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][227] = 1;
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
	case 535: // STATE 230 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][230] = 1;
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
	case 536: // STATE 233 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][233] = 1;
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
	case 537: // STATE 236 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][236] = 1;
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
	case 538: // STATE 239 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][239] = 1;
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
	case 539: // STATE 242 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][242] = 1;
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
	case 540: // STATE 245 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][245] = 1;
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
	case 541: // STATE 248 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][248] = 1;
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
	case 542: // STATE 254 - ./test.pml:120 - [((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][254] = 1;
		if (!((((((int)now.L1_lo.right)==1)||(((int)now.L1_lo.oblig)==1))||(((int)now.L1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 543: // STATE 255 - ./test.pml:120 - [L1_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_lo.status);
		now.L1_lo.status = 16;
#ifdef VAR_RANGES
		logval("L1_lo.status", ((int)now.L1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 544: // STATE 256 - ./EduOperation.h:406 - [LEG2CRM!18,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][256] = 1;
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
	case 545: // STATE 258 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][258] = 1;
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
	case 546: // STATE 261 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][261] = 1;
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
	case 547: // STATE 264 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][264] = 1;
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
	case 548: // STATE 267 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][267] = 1;
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
	case 549: // STATE 270 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][270] = 1;
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
	case 550: // STATE 273 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][273] = 1;
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
	case 551: // STATE 276 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][276] = 1;
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
	case 552: // STATE 279 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][279] = 1;
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
	case 553: // STATE 282 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][282] = 1;
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
	case 554: // STATE 285 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][285] = 1;
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
	case 555: // STATE 288 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][288] = 1;
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
	case 556: // STATE 291 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][291] = 1;
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
	case 557: // STATE 294 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][294] = 1;
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
	case 558: // STATE 300 - ./test.pml:121 - [((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		if (!((((((int)now.L2_lo.right)==1)||(((int)now.L2_lo.oblig)==1))||(((int)now.L2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 559: // STATE 301 - ./test.pml:121 - [L2_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.status);
		now.L2_lo.status = 16;
#ifdef VAR_RANGES
		logval("L2_lo.status", ((int)now.L2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 560: // STATE 302 - ./EduOperation.h:406 - [LEG2CRM!19,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][302] = 1;
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
	case 561: // STATE 304 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][304] = 1;
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
	case 562: // STATE 307 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][307] = 1;
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
	case 563: // STATE 310 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][310] = 1;
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
	case 564: // STATE 313 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][313] = 1;
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
	case 565: // STATE 316 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][316] = 1;
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
	case 566: // STATE 319 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][319] = 1;
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
	case 567: // STATE 322 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][322] = 1;
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
	case 568: // STATE 325 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][325] = 1;
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
	case 569: // STATE 328 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][328] = 1;
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
	case 570: // STATE 331 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][331] = 1;
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
	case 571: // STATE 334 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][334] = 1;
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
	case 572: // STATE 337 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][337] = 1;
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
	case 573: // STATE 340 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][340] = 1;
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
	case 574: // STATE 346 - ./test.pml:122 - [((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][346] = 1;
		if (!((((((int)now.L2_lo.right)==1)||(((int)now.L2_lo.oblig)==1))||(((int)now.L2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 575: // STATE 347 - ./test.pml:122 - [L2_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][347] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.status);
		now.L2_lo.status = 14;
#ifdef VAR_RANGES
		logval("L2_lo.status", ((int)now.L2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 576: // STATE 348 - ./EduOperation.h:406 - [LEG2CRM!19,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][348] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 19, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 577: // STATE 350 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][350] = 1;
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
	case 578: // STATE 353 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][353] = 1;
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
	case 579: // STATE 356 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][356] = 1;
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
	case 580: // STATE 359 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][359] = 1;
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
	case 581: // STATE 362 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][362] = 1;
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
	case 582: // STATE 365 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][365] = 1;
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
	case 583: // STATE 368 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][368] = 1;
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
	case 584: // STATE 371 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][371] = 1;
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
	case 585: // STATE 374 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][374] = 1;
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
	case 586: // STATE 377 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][377] = 1;
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
	case 587: // STATE 380 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][380] = 1;
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
	case 588: // STATE 383 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][383] = 1;
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
	case 589: // STATE 386 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][386] = 1;
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
	case 590: // STATE 392 - ./test.pml:122 - [((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][392] = 1;
		if (!((((((int)now.L2_lo.right)==1)||(((int)now.L2_lo.oblig)==1))||(((int)now.L2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 591: // STATE 393 - ./test.pml:122 - [L2_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_lo.status);
		now.L2_lo.status = 16;
#ifdef VAR_RANGES
		logval("L2_lo.status", ((int)now.L2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 592: // STATE 394 - ./EduOperation.h:406 - [LEG2CRM!19,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][394] = 1;
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
	case 593: // STATE 396 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][396] = 1;
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
	case 594: // STATE 399 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][399] = 1;
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
	case 595: // STATE 402 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][402] = 1;
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
	case 596: // STATE 405 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][405] = 1;
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
	case 597: // STATE 408 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][408] = 1;
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
	case 598: // STATE 411 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][411] = 1;
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
	case 599: // STATE 414 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][414] = 1;
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
	case 600: // STATE 417 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][417] = 1;
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
	case 601: // STATE 420 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][420] = 1;
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
	case 602: // STATE 423 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][423] = 1;
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
	case 603: // STATE 426 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][426] = 1;
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
	case 604: // STATE 429 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][429] = 1;
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
	case 605: // STATE 432 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][432] = 1;
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
	case 606: // STATE 438 - ./test.pml:123 - [((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][438] = 1;
		if (!((((((int)now.L3_lo.right)==1)||(((int)now.L3_lo.oblig)==1))||(((int)now.L3_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 607: // STATE 439 - ./test.pml:123 - [L3_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.status);
		now.L3_lo.status = 16;
#ifdef VAR_RANGES
		logval("L3_lo.status", ((int)now.L3_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 608: // STATE 440 - ./EduOperation.h:406 - [LEG2CRM!20,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][440] = 1;
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
	case 609: // STATE 442 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][442] = 1;
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
	case 610: // STATE 445 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][445] = 1;
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
	case 611: // STATE 448 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][448] = 1;
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
	case 612: // STATE 451 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][451] = 1;
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
	case 613: // STATE 454 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][454] = 1;
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
	case 614: // STATE 457 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][457] = 1;
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
	case 615: // STATE 460 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][460] = 1;
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
	case 616: // STATE 463 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][463] = 1;
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
	case 617: // STATE 466 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][466] = 1;
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
	case 618: // STATE 469 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][469] = 1;
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
	case 619: // STATE 472 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][472] = 1;
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
	case 620: // STATE 475 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][475] = 1;
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
	case 621: // STATE 478 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][478] = 1;
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
	case 622: // STATE 484 - ./test.pml:124 - [((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][484] = 1;
		if (!((((((int)now.L3_lo.right)==1)||(((int)now.L3_lo.oblig)==1))||(((int)now.L3_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 623: // STATE 485 - ./test.pml:124 - [L3_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.status);
		now.L3_lo.status = 14;
#ifdef VAR_RANGES
		logval("L3_lo.status", ((int)now.L3_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 624: // STATE 486 - ./EduOperation.h:406 - [LEG2CRM!20,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 20, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 625: // STATE 488 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][488] = 1;
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
	case 626: // STATE 491 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][491] = 1;
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
	case 627: // STATE 494 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][494] = 1;
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
	case 628: // STATE 497 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][497] = 1;
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
	case 629: // STATE 500 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][500] = 1;
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
	case 630: // STATE 503 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][503] = 1;
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
	case 631: // STATE 506 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][506] = 1;
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
	case 632: // STATE 509 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][509] = 1;
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
	case 633: // STATE 512 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][512] = 1;
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
	case 634: // STATE 515 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][515] = 1;
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
	case 635: // STATE 518 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][518] = 1;
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
	case 636: // STATE 521 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][521] = 1;
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
	case 637: // STATE 524 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][524] = 1;
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
	case 638: // STATE 530 - ./test.pml:124 - [((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][530] = 1;
		if (!((((((int)now.L3_lo.right)==1)||(((int)now.L3_lo.oblig)==1))||(((int)now.L3_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 639: // STATE 531 - ./test.pml:124 - [L3_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][531] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_lo.status);
		now.L3_lo.status = 16;
#ifdef VAR_RANGES
		logval("L3_lo.status", ((int)now.L3_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 640: // STATE 532 - ./EduOperation.h:406 - [LEG2CRM!20,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][532] = 1;
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
	case 641: // STATE 534 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][534] = 1;
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
	case 642: // STATE 537 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][537] = 1;
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
	case 643: // STATE 540 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][540] = 1;
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
	case 644: // STATE 543 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][543] = 1;
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
	case 645: // STATE 546 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][546] = 1;
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
	case 646: // STATE 549 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][549] = 1;
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
	case 647: // STATE 552 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][552] = 1;
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
	case 648: // STATE 555 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][555] = 1;
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
	case 649: // STATE 558 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][558] = 1;
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
	case 650: // STATE 561 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][561] = 1;
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
	case 651: // STATE 564 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][564] = 1;
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
	case 652: // STATE 567 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][567] = 1;
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
	case 653: // STATE 570 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][570] = 1;
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
	case 654: // STATE 576 - ./test.pml:125 - [((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][576] = 1;
		if (!((((((int)now.CW1_lo.right)==1)||(((int)now.CW1_lo.oblig)==1))||(((int)now.CW1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 655: // STATE 577 - ./test.pml:125 - [CW1_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.status);
		now.CW1_lo.status = 16;
#ifdef VAR_RANGES
		logval("CW1_lo.status", ((int)now.CW1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 656: // STATE 578 - ./EduOperation.h:406 - [LEG2CRM!26,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 26); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 26, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 657: // STATE 580 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][580] = 1;
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
	case 658: // STATE 583 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][583] = 1;
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
	case 659: // STATE 586 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][586] = 1;
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
	case 660: // STATE 589 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][589] = 1;
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
	case 661: // STATE 592 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][592] = 1;
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
	case 662: // STATE 595 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][595] = 1;
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
	case 663: // STATE 598 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][598] = 1;
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
	case 664: // STATE 601 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][601] = 1;
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
	case 665: // STATE 604 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][604] = 1;
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
	case 666: // STATE 607 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][607] = 1;
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
	case 667: // STATE 610 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][610] = 1;
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
	case 668: // STATE 613 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][613] = 1;
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
	case 669: // STATE 616 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][616] = 1;
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
	case 670: // STATE 622 - ./test.pml:126 - [((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][622] = 1;
		if (!((((((int)now.CW1_lo.right)==1)||(((int)now.CW1_lo.oblig)==1))||(((int)now.CW1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 671: // STATE 623 - ./test.pml:126 - [CW1_lo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][623] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.status);
		now.CW1_lo.status = 13;
#ifdef VAR_RANGES
		logval("CW1_lo.status", ((int)now.CW1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 672: // STATE 624 - ./EduOperation.h:406 - [LEG2CRM!26,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][624] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 26); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 26, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 673: // STATE 626 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][626] = 1;
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
	case 674: // STATE 629 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][629] = 1;
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
	case 675: // STATE 632 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][632] = 1;
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
	case 676: // STATE 635 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][635] = 1;
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
	case 677: // STATE 638 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][638] = 1;
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
	case 678: // STATE 641 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][641] = 1;
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
	case 679: // STATE 644 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][644] = 1;
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
	case 680: // STATE 647 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][647] = 1;
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
	case 681: // STATE 650 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][650] = 1;
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
	case 682: // STATE 653 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][653] = 1;
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
	case 683: // STATE 656 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][656] = 1;
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
	case 684: // STATE 659 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][659] = 1;
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
	case 685: // STATE 662 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][662] = 1;
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
	case 686: // STATE 668 - ./test.pml:127 - [((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][668] = 1;
		if (!((((((int)now.CW1_lo.right)==1)||(((int)now.CW1_lo.oblig)==1))||(((int)now.CW1_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 687: // STATE 669 - ./test.pml:127 - [CW1_lo.status = LF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][669] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_lo.status);
		now.CW1_lo.status = 15;
#ifdef VAR_RANGES
		logval("CW1_lo.status", ((int)now.CW1_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 688: // STATE 670 - ./EduOperation.h:406 - [LEG2CRM!26,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][670] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 26); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 26, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 689: // STATE 672 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][672] = 1;
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
	case 690: // STATE 675 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][675] = 1;
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
	case 691: // STATE 678 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][678] = 1;
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
	case 692: // STATE 681 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][681] = 1;
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
	case 693: // STATE 684 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][684] = 1;
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
	case 694: // STATE 687 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][687] = 1;
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
	case 695: // STATE 690 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][690] = 1;
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
	case 696: // STATE 693 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][693] = 1;
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
	case 697: // STATE 696 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][696] = 1;
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
	case 698: // STATE 699 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][699] = 1;
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
	case 699: // STATE 702 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][702] = 1;
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
	case 700: // STATE 705 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][705] = 1;
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
	case 701: // STATE 708 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][708] = 1;
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
	case 702: // STATE 714 - ./test.pml:128 - [((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][714] = 1;
		if (!((((((int)now.L4_lo.right)==1)||(((int)now.L4_lo.oblig)==1))||(((int)now.L4_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 703: // STATE 715 - ./test.pml:128 - [L4_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][715] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.status);
		now.L4_lo.status = 16;
#ifdef VAR_RANGES
		logval("L4_lo.status", ((int)now.L4_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 704: // STATE 716 - ./EduOperation.h:406 - [LEG2CRM!21,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][716] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 705: // STATE 718 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][718] = 1;
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
	case 706: // STATE 721 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][721] = 1;
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
	case 707: // STATE 724 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][724] = 1;
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
	case 708: // STATE 727 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][727] = 1;
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
	case 709: // STATE 730 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][730] = 1;
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
	case 710: // STATE 733 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][733] = 1;
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
	case 711: // STATE 736 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][736] = 1;
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
	case 712: // STATE 739 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][739] = 1;
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
	case 713: // STATE 742 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][742] = 1;
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
	case 714: // STATE 745 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][745] = 1;
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
	case 715: // STATE 748 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][748] = 1;
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
	case 716: // STATE 751 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][751] = 1;
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
	case 717: // STATE 754 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][754] = 1;
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
	case 718: // STATE 760 - ./test.pml:129 - [((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][760] = 1;
		if (!((((((int)now.L4_lo.right)==1)||(((int)now.L4_lo.oblig)==1))||(((int)now.L4_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 719: // STATE 761 - ./test.pml:129 - [L4_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][761] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.status);
		now.L4_lo.status = 14;
#ifdef VAR_RANGES
		logval("L4_lo.status", ((int)now.L4_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 720: // STATE 762 - ./EduOperation.h:406 - [LEG2CRM!21,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][762] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 721: // STATE 764 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][764] = 1;
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
	case 722: // STATE 767 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][767] = 1;
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
	case 723: // STATE 770 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][770] = 1;
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
	case 724: // STATE 773 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][773] = 1;
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
	case 725: // STATE 776 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][776] = 1;
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
	case 726: // STATE 779 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][779] = 1;
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
	case 727: // STATE 782 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][782] = 1;
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
	case 728: // STATE 785 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][785] = 1;
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
	case 729: // STATE 788 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][788] = 1;
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
	case 730: // STATE 791 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][791] = 1;
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
	case 731: // STATE 794 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][794] = 1;
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
	case 732: // STATE 797 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][797] = 1;
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
	case 733: // STATE 800 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][800] = 1;
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
	case 734: // STATE 806 - ./test.pml:129 - [((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][806] = 1;
		if (!((((((int)now.L4_lo.right)==1)||(((int)now.L4_lo.oblig)==1))||(((int)now.L4_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 735: // STATE 807 - ./test.pml:129 - [L4_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][807] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_lo.status);
		now.L4_lo.status = 16;
#ifdef VAR_RANGES
		logval("L4_lo.status", ((int)now.L4_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 736: // STATE 808 - ./EduOperation.h:406 - [LEG2CRM!21,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][808] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 737: // STATE 810 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][810] = 1;
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
	case 738: // STATE 813 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][813] = 1;
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
	case 739: // STATE 816 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][816] = 1;
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
	case 740: // STATE 819 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][819] = 1;
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
	case 741: // STATE 822 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][822] = 1;
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
	case 742: // STATE 825 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][825] = 1;
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
	case 743: // STATE 828 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][828] = 1;
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
	case 744: // STATE 831 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][831] = 1;
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
	case 745: // STATE 834 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][834] = 1;
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
	case 746: // STATE 837 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][837] = 1;
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
	case 747: // STATE 840 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][840] = 1;
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
	case 748: // STATE 843 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][843] = 1;
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
	case 749: // STATE 846 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][846] = 1;
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
	case 750: // STATE 852 - ./test.pml:130 - [((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][852] = 1;
		if (!((((((int)now.L5_lo.right)==1)||(((int)now.L5_lo.oblig)==1))||(((int)now.L5_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 751: // STATE 853 - ./test.pml:130 - [L5_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][853] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.status);
		now.L5_lo.status = 16;
#ifdef VAR_RANGES
		logval("L5_lo.status", ((int)now.L5_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 752: // STATE 854 - ./EduOperation.h:406 - [LEG2CRM!22,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][854] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 753: // STATE 856 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][856] = 1;
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
	case 754: // STATE 859 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][859] = 1;
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
	case 755: // STATE 862 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][862] = 1;
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
	case 756: // STATE 865 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][865] = 1;
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
	case 757: // STATE 868 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][868] = 1;
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
	case 758: // STATE 871 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][871] = 1;
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
	case 759: // STATE 874 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][874] = 1;
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
	case 760: // STATE 877 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][877] = 1;
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
	case 761: // STATE 880 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][880] = 1;
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
	case 762: // STATE 883 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][883] = 1;
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
	case 763: // STATE 886 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][886] = 1;
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
	case 764: // STATE 889 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][889] = 1;
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
	case 765: // STATE 892 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][892] = 1;
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
	case 766: // STATE 898 - ./test.pml:131 - [((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][898] = 1;
		if (!((((((int)now.L5_lo.right)==1)||(((int)now.L5_lo.oblig)==1))||(((int)now.L5_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 767: // STATE 899 - ./test.pml:131 - [L5_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][899] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.status);
		now.L5_lo.status = 14;
#ifdef VAR_RANGES
		logval("L5_lo.status", ((int)now.L5_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 768: // STATE 900 - ./EduOperation.h:406 - [LEG2CRM!22,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][900] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 769: // STATE 902 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][902] = 1;
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
	case 770: // STATE 905 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][905] = 1;
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
	case 771: // STATE 908 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][908] = 1;
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
	case 772: // STATE 911 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][911] = 1;
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
	case 773: // STATE 914 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][914] = 1;
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
	case 774: // STATE 917 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][917] = 1;
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
	case 775: // STATE 920 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][920] = 1;
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
	case 776: // STATE 923 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][923] = 1;
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
	case 777: // STATE 926 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][926] = 1;
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
	case 778: // STATE 929 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][929] = 1;
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
	case 779: // STATE 932 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][932] = 1;
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
	case 780: // STATE 935 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][935] = 1;
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
	case 781: // STATE 938 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][938] = 1;
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
	case 782: // STATE 944 - ./test.pml:131 - [((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][944] = 1;
		if (!((((((int)now.L5_lo.right)==1)||(((int)now.L5_lo.oblig)==1))||(((int)now.L5_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 783: // STATE 945 - ./test.pml:131 - [L5_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][945] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_lo.status);
		now.L5_lo.status = 16;
#ifdef VAR_RANGES
		logval("L5_lo.status", ((int)now.L5_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 784: // STATE 946 - ./EduOperation.h:406 - [LEG2CRM!22,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][946] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 785: // STATE 948 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][948] = 1;
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
	case 786: // STATE 951 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][951] = 1;
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
	case 787: // STATE 954 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][954] = 1;
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
	case 788: // STATE 957 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][957] = 1;
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
	case 789: // STATE 960 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][960] = 1;
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
	case 790: // STATE 963 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][963] = 1;
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
	case 791: // STATE 966 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][966] = 1;
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
	case 792: // STATE 969 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][969] = 1;
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
	case 793: // STATE 972 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][972] = 1;
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
	case 794: // STATE 975 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][975] = 1;
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
	case 795: // STATE 978 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][978] = 1;
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
	case 796: // STATE 981 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][981] = 1;
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
	case 797: // STATE 984 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][984] = 1;
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
	case 798: // STATE 990 - ./test.pml:132 - [((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][990] = 1;
		if (!((((((int)now.L6_lo.right)==1)||(((int)now.L6_lo.oblig)==1))||(((int)now.L6_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 799: // STATE 991 - ./test.pml:132 - [L6_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][991] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.status);
		now.L6_lo.status = 16;
#ifdef VAR_RANGES
		logval("L6_lo.status", ((int)now.L6_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 800: // STATE 992 - ./EduOperation.h:406 - [LEG2CRM!23,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][992] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 801: // STATE 994 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][994] = 1;
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
	case 802: // STATE 997 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][997] = 1;
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
	case 803: // STATE 1000 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1000] = 1;
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
	case 804: // STATE 1003 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1003] = 1;
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
	case 805: // STATE 1006 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1006] = 1;
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
	case 806: // STATE 1009 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1009] = 1;
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
	case 807: // STATE 1012 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1012] = 1;
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
	case 808: // STATE 1015 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1015] = 1;
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
	case 809: // STATE 1018 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1018] = 1;
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
	case 810: // STATE 1021 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1021] = 1;
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
	case 811: // STATE 1024 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1024] = 1;
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
	case 812: // STATE 1027 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1027] = 1;
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
	case 813: // STATE 1030 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1030] = 1;
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
	case 814: // STATE 1036 - ./test.pml:133 - [((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1036] = 1;
		if (!((((((int)now.L6_lo.right)==1)||(((int)now.L6_lo.oblig)==1))||(((int)now.L6_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 815: // STATE 1037 - ./test.pml:133 - [L6_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1037] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.status);
		now.L6_lo.status = 14;
#ifdef VAR_RANGES
		logval("L6_lo.status", ((int)now.L6_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 816: // STATE 1038 - ./EduOperation.h:406 - [LEG2CRM!23,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1038] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 817: // STATE 1040 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1040] = 1;
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
	case 818: // STATE 1043 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1043] = 1;
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
	case 819: // STATE 1046 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1046] = 1;
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
	case 820: // STATE 1049 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1049] = 1;
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
	case 821: // STATE 1052 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1052] = 1;
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
	case 822: // STATE 1055 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1055] = 1;
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
	case 823: // STATE 1058 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1058] = 1;
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
	case 824: // STATE 1061 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1061] = 1;
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
	case 825: // STATE 1064 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1064] = 1;
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
	case 826: // STATE 1067 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1067] = 1;
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
	case 827: // STATE 1070 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1070] = 1;
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
	case 828: // STATE 1073 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1073] = 1;
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
	case 829: // STATE 1076 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1076] = 1;
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
	case 830: // STATE 1082 - ./test.pml:133 - [((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][1082] = 1;
		if (!((((((int)now.L6_lo.right)==1)||(((int)now.L6_lo.oblig)==1))||(((int)now.L6_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 831: // STATE 1083 - ./test.pml:133 - [L6_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1083] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_lo.status);
		now.L6_lo.status = 16;
#ifdef VAR_RANGES
		logval("L6_lo.status", ((int)now.L6_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 832: // STATE 1084 - ./EduOperation.h:406 - [LEG2CRM!23,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1084] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 833: // STATE 1086 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1086] = 1;
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
	case 834: // STATE 1089 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1089] = 1;
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
	case 835: // STATE 1092 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1092] = 1;
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
	case 836: // STATE 1095 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1095] = 1;
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
	case 837: // STATE 1098 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1098] = 1;
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
	case 838: // STATE 1101 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1101] = 1;
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
	case 839: // STATE 1104 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1104] = 1;
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
	case 840: // STATE 1107 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1107] = 1;
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
	case 841: // STATE 1110 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1110] = 1;
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
	case 842: // STATE 1113 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1113] = 1;
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
	case 843: // STATE 1116 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1116] = 1;
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
	case 844: // STATE 1119 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1119] = 1;
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
	case 845: // STATE 1122 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1122] = 1;
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
	case 846: // STATE 1128 - ./test.pml:135 - [((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1128] = 1;
		if (!((((((int)now.CW2_lo.right)==1)||(((int)now.CW2_lo.oblig)==1))||(((int)now.CW2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 847: // STATE 1129 - ./test.pml:135 - [CW2_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1129] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.status);
		now.CW2_lo.status = 16;
#ifdef VAR_RANGES
		logval("CW2_lo.status", ((int)now.CW2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 848: // STATE 1130 - ./EduOperation.h:406 - [LEG2CRM!27,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1130] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 27); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 27, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 849: // STATE 1132 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1132] = 1;
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
	case 850: // STATE 1135 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1135] = 1;
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
	case 851: // STATE 1138 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1138] = 1;
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
	case 852: // STATE 1141 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1141] = 1;
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
	case 853: // STATE 1144 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1144] = 1;
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
	case 854: // STATE 1147 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1147] = 1;
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
	case 855: // STATE 1150 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1150] = 1;
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
	case 856: // STATE 1153 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1153] = 1;
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
	case 857: // STATE 1156 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1156] = 1;
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
	case 858: // STATE 1159 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1159] = 1;
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
	case 859: // STATE 1162 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1162] = 1;
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
	case 860: // STATE 1165 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1165] = 1;
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
	case 861: // STATE 1168 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1168] = 1;
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
	case 862: // STATE 1174 - ./test.pml:136 - [((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1174] = 1;
		if (!((((((int)now.CW2_lo.right)==1)||(((int)now.CW2_lo.oblig)==1))||(((int)now.CW2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 863: // STATE 1175 - ./test.pml:136 - [CW2_lo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1175] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.status);
		now.CW2_lo.status = 13;
#ifdef VAR_RANGES
		logval("CW2_lo.status", ((int)now.CW2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 864: // STATE 1176 - ./EduOperation.h:406 - [LEG2CRM!27,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1176] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 27); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 27, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 865: // STATE 1178 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1178] = 1;
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
	case 866: // STATE 1181 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1181] = 1;
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
	case 867: // STATE 1184 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1184] = 1;
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
	case 868: // STATE 1187 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1187] = 1;
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
	case 869: // STATE 1190 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1190] = 1;
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
	case 870: // STATE 1193 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1193] = 1;
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
	case 871: // STATE 1196 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1196] = 1;
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
	case 872: // STATE 1199 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1199] = 1;
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
	case 873: // STATE 1202 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1202] = 1;
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
	case 874: // STATE 1205 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1205] = 1;
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
	case 875: // STATE 1208 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1208] = 1;
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
	case 876: // STATE 1211 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1211] = 1;
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
	case 877: // STATE 1214 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1214] = 1;
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
	case 878: // STATE 1220 - ./test.pml:137 - [((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1220] = 1;
		if (!((((((int)now.CW2_lo.right)==1)||(((int)now.CW2_lo.oblig)==1))||(((int)now.CW2_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 879: // STATE 1221 - ./test.pml:137 - [CW2_lo.status = LF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1221] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_lo.status);
		now.CW2_lo.status = 15;
#ifdef VAR_RANGES
		logval("CW2_lo.status", ((int)now.CW2_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 880: // STATE 1222 - ./EduOperation.h:406 - [LEG2CRM!27,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1222] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 27); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 27, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 881: // STATE 1224 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1224] = 1;
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
	case 882: // STATE 1227 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1227] = 1;
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
	case 883: // STATE 1230 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1230] = 1;
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
	case 884: // STATE 1233 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1233] = 1;
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
	case 885: // STATE 1236 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1236] = 1;
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
	case 886: // STATE 1239 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1239] = 1;
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
	case 887: // STATE 1242 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1242] = 1;
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
	case 888: // STATE 1245 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1245] = 1;
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
	case 889: // STATE 1248 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1248] = 1;
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
	case 890: // STATE 1251 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1251] = 1;
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
	case 891: // STATE 1254 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1254] = 1;
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
	case 892: // STATE 1257 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1257] = 1;
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
	case 893: // STATE 1260 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1260] = 1;
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
	case 894: // STATE 1266 - ./test.pml:139 - [((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1266] = 1;
		if (!((((((int)now.L7_lo.right)==1)||(((int)now.L7_lo.oblig)==1))||(((int)now.L7_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 895: // STATE 1267 - ./test.pml:139 - [L7_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1267] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.status);
		now.L7_lo.status = 16;
#ifdef VAR_RANGES
		logval("L7_lo.status", ((int)now.L7_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 896: // STATE 1268 - ./EduOperation.h:406 - [LEG2CRM!24,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1268] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 897: // STATE 1270 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1270] = 1;
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
	case 898: // STATE 1273 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1273] = 1;
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
	case 899: // STATE 1276 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1276] = 1;
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
	case 900: // STATE 1279 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1279] = 1;
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
	case 901: // STATE 1282 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1282] = 1;
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
	case 902: // STATE 1285 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1285] = 1;
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
	case 903: // STATE 1288 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1288] = 1;
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
	case 904: // STATE 1291 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1291] = 1;
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
	case 905: // STATE 1294 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1294] = 1;
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
	case 906: // STATE 1297 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1297] = 1;
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
	case 907: // STATE 1300 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1300] = 1;
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
	case 908: // STATE 1303 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1303] = 1;
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
	case 909: // STATE 1306 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1306] = 1;
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
	case 910: // STATE 1312 - ./test.pml:140 - [((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1312] = 1;
		if (!((((((int)now.L7_lo.right)==1)||(((int)now.L7_lo.oblig)==1))||(((int)now.L7_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 911: // STATE 1313 - ./test.pml:140 - [L7_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1313] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.status);
		now.L7_lo.status = 14;
#ifdef VAR_RANGES
		logval("L7_lo.status", ((int)now.L7_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 912: // STATE 1314 - ./EduOperation.h:406 - [LEG2CRM!24,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1314] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 913: // STATE 1316 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1316] = 1;
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
	case 914: // STATE 1319 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1319] = 1;
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
	case 915: // STATE 1322 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1322] = 1;
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
	case 916: // STATE 1325 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1325] = 1;
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
	case 917: // STATE 1328 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1328] = 1;
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
	case 918: // STATE 1331 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1331] = 1;
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
	case 919: // STATE 1334 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1334] = 1;
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
	case 920: // STATE 1337 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1337] = 1;
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
	case 921: // STATE 1340 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1340] = 1;
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
	case 922: // STATE 1343 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1343] = 1;
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
	case 923: // STATE 1346 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1346] = 1;
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
	case 924: // STATE 1349 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1349] = 1;
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
	case 925: // STATE 1352 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1352] = 1;
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
	case 926: // STATE 1358 - ./test.pml:140 - [((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][1358] = 1;
		if (!((((((int)now.L7_lo.right)==1)||(((int)now.L7_lo.oblig)==1))||(((int)now.L7_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 927: // STATE 1359 - ./test.pml:140 - [L7_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1359] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_lo.status);
		now.L7_lo.status = 16;
#ifdef VAR_RANGES
		logval("L7_lo.status", ((int)now.L7_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 928: // STATE 1360 - ./EduOperation.h:406 - [LEG2CRM!24,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1360] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 929: // STATE 1362 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1362] = 1;
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
	case 930: // STATE 1365 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1365] = 1;
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
	case 931: // STATE 1368 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1368] = 1;
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
	case 932: // STATE 1371 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1371] = 1;
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
	case 933: // STATE 1374 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1374] = 1;
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
	case 934: // STATE 1377 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1377] = 1;
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
	case 935: // STATE 1380 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1380] = 1;
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
	case 936: // STATE 1383 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1383] = 1;
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
	case 937: // STATE 1386 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1386] = 1;
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
	case 938: // STATE 1389 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1389] = 1;
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
	case 939: // STATE 1392 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1392] = 1;
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
	case 940: // STATE 1395 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1395] = 1;
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
	case 941: // STATE 1398 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1398] = 1;
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
	case 942: // STATE 1404 - ./test.pml:142 - [((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1404] = 1;
		if (!((((((int)now.L8_lo.right)==1)||(((int)now.L8_lo.oblig)==1))||(((int)now.L8_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 943: // STATE 1405 - ./test.pml:142 - [L8_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1405] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.status);
		now.L8_lo.status = 16;
#ifdef VAR_RANGES
		logval("L8_lo.status", ((int)now.L8_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 944: // STATE 1406 - ./EduOperation.h:406 - [LEG2CRM!25,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1406] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 945: // STATE 1408 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1408] = 1;
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
	case 946: // STATE 1411 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1411] = 1;
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
	case 947: // STATE 1414 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1414] = 1;
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
	case 948: // STATE 1417 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1417] = 1;
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
	case 949: // STATE 1420 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1420] = 1;
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
	case 950: // STATE 1423 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1423] = 1;
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
	case 951: // STATE 1426 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1426] = 1;
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
	case 952: // STATE 1429 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1429] = 1;
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
	case 953: // STATE 1432 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1432] = 1;
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
	case 954: // STATE 1435 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1435] = 1;
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
	case 955: // STATE 1438 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1438] = 1;
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
	case 956: // STATE 1441 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1441] = 1;
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
	case 957: // STATE 1444 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1444] = 1;
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
	case 958: // STATE 1450 - ./test.pml:143 - [((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1450] = 1;
		if (!((((((int)now.L8_lo.right)==1)||(((int)now.L8_lo.oblig)==1))||(((int)now.L8_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 959: // STATE 1451 - ./test.pml:143 - [L8_lo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1451] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.status);
		now.L8_lo.status = 14;
#ifdef VAR_RANGES
		logval("L8_lo.status", ((int)now.L8_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 960: // STATE 1452 - ./EduOperation.h:406 - [LEG2CRM!25,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1452] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 961: // STATE 1454 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1454] = 1;
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
	case 962: // STATE 1457 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1457] = 1;
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
	case 963: // STATE 1460 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1460] = 1;
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
	case 964: // STATE 1463 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1463] = 1;
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
	case 965: // STATE 1466 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1466] = 1;
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
	case 966: // STATE 1469 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1469] = 1;
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
	case 967: // STATE 1472 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1472] = 1;
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
	case 968: // STATE 1475 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1475] = 1;
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
	case 969: // STATE 1478 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1478] = 1;
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
	case 970: // STATE 1481 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1481] = 1;
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
	case 971: // STATE 1484 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1484] = 1;
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
	case 972: // STATE 1487 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1487] = 1;
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
	case 973: // STATE 1490 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1490] = 1;
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
	case 974: // STATE 1496 - ./test.pml:143 - [((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))] (0:0:0 - 5)
		IfNotBlocked
		reached[0][1496] = 1;
		if (!((((((int)now.L8_lo.right)==1)||(((int)now.L8_lo.oblig)==1))||(((int)now.L8_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 975: // STATE 1497 - ./test.pml:143 - [L8_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1497] = 1;
		(trpt+1)->bup.oval = ((int)now.L8_lo.status);
		now.L8_lo.status = 16;
#ifdef VAR_RANGES
		logval("L8_lo.status", ((int)now.L8_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 976: // STATE 1498 - ./EduOperation.h:406 - [LEG2CRM!25,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1498] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 977: // STATE 1500 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1500] = 1;
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
	case 978: // STATE 1503 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1503] = 1;
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
	case 979: // STATE 1506 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1506] = 1;
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
	case 980: // STATE 1509 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1509] = 1;
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
	case 981: // STATE 1512 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1512] = 1;
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
	case 982: // STATE 1515 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1515] = 1;
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
	case 983: // STATE 1518 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1518] = 1;
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
	case 984: // STATE 1521 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1521] = 1;
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
	case 985: // STATE 1524 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1524] = 1;
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
	case 986: // STATE 1527 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1527] = 1;
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
	case 987: // STATE 1530 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1530] = 1;
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
	case 988: // STATE 1533 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1533] = 1;
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
	case 989: // STATE 1536 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1536] = 1;
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
	case 990: // STATE 1542 - ./test.pml:148 - [((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1542] = 1;
		if (!((((((int)now.EXAM_lo.right)==1)||(((int)now.EXAM_lo.oblig)==1))||(((int)now.EXAM_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 991: // STATE 1543 - ./test.pml:148 - [EXAM_lo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1543] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.status);
		now.EXAM_lo.status = 16;
#ifdef VAR_RANGES
		logval("EXAM_lo.status", ((int)now.EXAM_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 992: // STATE 1544 - ./EduOperation.h:406 - [LEG2CRM!28,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1544] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 28); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 28, 16, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 993: // STATE 1546 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1546] = 1;
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
	case 994: // STATE 1549 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1549] = 1;
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
	case 995: // STATE 1552 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1552] = 1;
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
	case 996: // STATE 1555 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1555] = 1;
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
	case 997: // STATE 1558 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1558] = 1;
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
	case 998: // STATE 1561 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1561] = 1;
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
	case 999: // STATE 1564 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1564] = 1;
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
	case 1000: // STATE 1567 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1567] = 1;
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
	case 1001: // STATE 1570 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1570] = 1;
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
	case 1002: // STATE 1573 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1573] = 1;
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
	case 1003: // STATE 1576 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1576] = 1;
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
	case 1004: // STATE 1579 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1579] = 1;
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
	case 1005: // STATE 1582 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1582] = 1;
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
	case 1006: // STATE 1588 - ./test.pml:149 - [((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1588] = 1;
		if (!((((((int)now.EXAM_lo.right)==1)||(((int)now.EXAM_lo.oblig)==1))||(((int)now.EXAM_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 1007: // STATE 1589 - ./test.pml:149 - [EXAM_lo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1589] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.status);
		now.EXAM_lo.status = 13;
#ifdef VAR_RANGES
		logval("EXAM_lo.status", ((int)now.EXAM_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 1008: // STATE 1590 - ./EduOperation.h:406 - [LEG2CRM!28,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1590] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 28); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 28, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 1009: // STATE 1592 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1592] = 1;
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
	case 1010: // STATE 1595 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1595] = 1;
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
	case 1011: // STATE 1598 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1598] = 1;
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
	case 1012: // STATE 1601 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1601] = 1;
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
	case 1013: // STATE 1604 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1604] = 1;
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
	case 1014: // STATE 1607 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1607] = 1;
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
	case 1015: // STATE 1610 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1610] = 1;
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
	case 1016: // STATE 1613 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1613] = 1;
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
	case 1017: // STATE 1616 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1616] = 1;
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
	case 1018: // STATE 1619 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1619] = 1;
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
	case 1019: // STATE 1622 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1622] = 1;
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
	case 1020: // STATE 1625 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1625] = 1;
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
	case 1021: // STATE 1628 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1628] = 1;
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
	case 1022: // STATE 1634 - ./test.pml:150 - [((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1634] = 1;
		if (!((((((int)now.EXAM_lo.right)==1)||(((int)now.EXAM_lo.oblig)==1))||(((int)now.EXAM_lo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 1023: // STATE 1635 - ./test.pml:150 - [EXAM_lo.status = LF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1635] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_lo.status);
		now.EXAM_lo.status = 15;
#ifdef VAR_RANGES
		logval("EXAM_lo.status", ((int)now.EXAM_lo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 1024: // STATE 1636 - ./EduOperation.h:406 - [LEG2CRM!28,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1636] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 28); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 28, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 1025: // STATE 1638 - ./EduOperation.h:413 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1638] = 1;
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
	case 1026: // STATE 1641 - ./EduOperation.h:413 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1641] = 1;
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
	case 1027: // STATE 1644 - ./EduOperation.h:413 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1644] = 1;
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
	case 1028: // STATE 1647 - ./EduOperation.h:413 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1647] = 1;
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
	case 1029: // STATE 1650 - ./EduOperation.h:413 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1650] = 1;
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
	case 1030: // STATE 1653 - ./EduOperation.h:413 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1653] = 1;
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
	case 1031: // STATE 1656 - ./EduOperation.h:413 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1656] = 1;
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
	case 1032: // STATE 1659 - ./EduOperation.h:413 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1659] = 1;
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
	case 1033: // STATE 1662 - ./EduOperation.h:413 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1662] = 1;
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
	case 1034: // STATE 1665 - ./EduOperation.h:413 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1665] = 1;
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
	case 1035: // STATE 1668 - ./EduOperation.h:413 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1668] = 1;
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
	case 1036: // STATE 1671 - ./EduOperation.h:413 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1671] = 1;
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
	case 1037: // STATE 1674 - ./EduOperation.h:413 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1674] = 1;
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
	case 1038: // STATE 1683 - ./test.pml:152 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1683] = 1;
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

