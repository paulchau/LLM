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
	case 3: // STATE 1 - Case3.pml:186 - [(run LEG())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - Case3.pml:186 - [(run CRM())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - Case3.pml:188 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CRM */
	case 6: // STATE 1 - Case3.pml:166 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - EduOperation.h:390 - [(LEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 9: // STATE 4 - EduOperation.h:391 - [(LEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 11: // STATE 6 - EduOperation.h:392 - [(LEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 13: // STATE 8 - EduOperation.h:393 - [(LEG2CRM?[18,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 15: // STATE 10 - EduOperation.h:394 - [(LEG2CRM?[18,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 11 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][11] = 1;
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
	case 17: // STATE 15 - Case3Rules.h:22 - [printf('Start')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("Start");
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - Case3Rules.h:23 - [((((START_bo.right==1)&&((START_bo.role_pl==LMS)==1))&&((START_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((((int)now.START_bo.right)==1)&&((((int)now.START_bo.role_pl)==11)==1))&&((((int)now.START_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - Case3Rules.h:24 - [LMSexTrace = (LMSexTrace|(1<<START_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = (now.LMSexTrace|(1<<((int)now.START_bo.id)));
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - Case3Rules.h:26 - [printf('\\n\\n')] (0:27:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(27, 19, 27) */
		reached[1][19] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<type>START</type>\\n')(27, 20, 27) */
		reached[1][20] = 1;
		Printf("<type>START</type>\n");
		/* merge: printf('<status>success</status>\\n')(27, 21, 27) */
		reached[1][21] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(27, 22, 27) */
		reached[1][22] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 4 */
	case 21: // STATE 24 - EduOperation.h:312 - [L1_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.prohib);
		now.L1_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L1_bo.prohib", ((int)now.L1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 25 - EduOperation.h:313 - [assert(!(((L1_bo.prohib==1)&&(L1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		spin_assert( !(((((int)now.L1_bo.prohib)==1)&&(((int)now.L1_bo.right)==1))), " !(((L1_bo.prohib==1)&&(L1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 26 - EduOperation.h:314 - [assert(!(((L1_bo.prohib==1)&&(L1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		spin_assert( !(((((int)now.L1_bo.prohib)==1)&&(((int)now.L1_bo.oblig)==1))), " !(((L1_bo.prohib==1)&&(L1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 28 - EduOperation.h:298 - [L1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.oblig);
		now.L1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L1_bo.oblig", ((int)now.L1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 29 - EduOperation.h:299 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.prohib)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 30 - EduOperation.h:300 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.right)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 32 - EduOperation.h:275 - [START_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.START_bo.right);
		now.START_bo.right = 0;
#ifdef VAR_RANGES
		logval("START_bo.right", ((int)now.START_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 33 - EduOperation.h:276 - [assert(!(((START_bo.right==1)&&(START_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		spin_assert( !(((((int)now.START_bo.right)==1)&&(((int)now.START_bo.oblig)==1))), " !(((START_bo.right==1)&&(START_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 34 - EduOperation.h:277 - [assert(!(((START_bo.right==1)&&(START_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		spin_assert( !(((((int)now.START_bo.right)==1)&&(((int)now.START_bo.prohib)==1))), " !(((START_bo.right==1)&&(START_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 36 - EduOperation.h:426 - [CRM2LEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
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
	case 31: // STATE 40 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
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
	case 32: // STATE 45 - EduOperation.h:390 - [(LEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 46 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][46] = 1;
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
	case 34: // STATE 47 - EduOperation.h:391 - [(LEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 48 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][48] = 1;
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
	case 36: // STATE 49 - EduOperation.h:392 - [(LEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 50 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][50] = 1;
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
	case 38: // STATE 51 - EduOperation.h:393 - [(LEG2CRM?[19,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 52 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][52] = 1;
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
	case 40: // STATE 53 - EduOperation.h:394 - [(LEG2CRM?[19,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 54 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][54] = 1;
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
	case 42: // STATE 58 - Case3Rules.h:46 - [printf('L1')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		Printf("L1");
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 59 - Case3Rules.h:48 - [((((L1_bo.oblig==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((((int)now.L1_bo.oblig)==1)&&((((int)now.L1_bo.role_pl)==12)==1))&&((((int)now.L1_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 60 - Case3Rules.h:51 - [printf('\\n\\n')] (0:67:0 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(67, 61, 67) */
		reached[1][61] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(67, 62, 67) */
		reached[1][62] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L1</type>\\n')(67, 63, 67) */
		reached[1][63] = 1;
		Printf("<type>L1</type>\n");
		/* merge: printf('<status>success</status>\\n')(67, 64, 67) */
		reached[1][64] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(67, 65, 67) */
		reached[1][65] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 45: // STATE 67 - Case3Rules.h:58 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 68 - EduOperation.h:298 - [L1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.oblig);
		now.L1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L1_bo.oblig", ((int)now.L1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 69 - EduOperation.h:299 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.prohib)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 70 - EduOperation.h:300 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.right)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 72 - EduOperation.h:312 - [L2_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.prohib);
		now.L2_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L2_bo.prohib", ((int)now.L2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 73 - EduOperation.h:313 - [assert(!(((L2_bo.prohib==1)&&(L2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		spin_assert( !(((((int)now.L2_bo.prohib)==1)&&(((int)now.L2_bo.right)==1))), " !(((L2_bo.prohib==1)&&(L2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 74 - EduOperation.h:314 - [assert(!(((L2_bo.prohib==1)&&(L2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		spin_assert( !(((((int)now.L2_bo.prohib)==1)&&(((int)now.L2_bo.oblig)==1))), " !(((L2_bo.prohib==1)&&(L2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 76 - EduOperation.h:298 - [L2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.oblig);
		now.L2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L2_bo.oblig", ((int)now.L2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 77 - EduOperation.h:299 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.prohib)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 78 - EduOperation.h:300 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.right)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 80 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
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
	case 56: // STATE 83 - Case3Rules.h:65 - [((((L1_bo.oblig==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((((((int)now.L1_bo.oblig)==1)&&((((int)now.L1_bo.role_pl)==12)==1))&&((((int)now.L1_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 84 - Case3Rules.h:68 - [printf('\\n\\n')] (0:95:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(95, 85, 95) */
		reached[1][85] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(95, 86, 95) */
		reached[1][86] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L1</type>\\n')(95, 87, 95) */
		reached[1][87] = 1;
		Printf("<type>L1</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(95, 88, 95) */
		reached[1][88] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(95, 89, 95) */
		reached[1][89] = 1;
		Printf("\n\n");
		/* merge: printf('L1-TechnicalFailure')(95, 91, 95) */
		reached[1][91] = 1;
		Printf("L1-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 58: // STATE 92 - EduOperation.h:298 - [L1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.oblig);
		now.L1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L1_bo.oblig", ((int)now.L1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 93 - EduOperation.h:299 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.prohib)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 94 - EduOperation.h:300 - [assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		spin_assert( !(((((int)now.L1_bo.oblig)==1)&&(((int)now.L1_bo.right)==1))), " !(((L1_bo.oblig==1)&&(L1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 96 - EduOperation.h:298 - [L2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.oblig);
		now.L2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L2_bo.oblig", ((int)now.L2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 97 - EduOperation.h:299 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.prohib)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 98 - EduOperation.h:300 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.right)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 100 - Case3Rules.h:81 - [printf('\\n\\n')] (0:108:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(108, 101, 108) */
		reached[1][101] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(108, 102, 108) */
		reached[1][102] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(108, 103, 108) */
		reached[1][103] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(108, 104, 108) */
		reached[1][104] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(108, 105, 108) */
		reached[1][105] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 65: // STATE 107 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
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
	case 66: // STATE 110 - Case3Rules.h:91 - [((((L1_bo.prohib==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!((((((int)now.L1_bo.prohib)==1)&&((((int)now.L1_bo.role_pl)==12)==1))&&((((int)now.L1_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 111 - Case3Rules.h:93 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 112 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
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
	case 69: // STATE 116 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][116] = 1;
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
	case 70: // STATE 121 - EduOperation.h:390 - [(LEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 122 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 72: // STATE 123 - EduOperation.h:391 - [(LEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 124 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][124] = 1;
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
	case 74: // STATE 125 - EduOperation.h:392 - [(LEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 126 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][126] = 1;
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
	case 76: // STATE 127 - EduOperation.h:393 - [(LEG2CRM?[20,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 128 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][128] = 1;
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
	case 78: // STATE 129 - EduOperation.h:394 - [(LEG2CRM?[20,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 130 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][130] = 1;
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
	case 80: // STATE 134 - Case3Rules.h:101 - [printf('L2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		Printf("L2");
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 135 - Case3Rules.h:103 - [((((L2_bo.oblig==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		if (!((((((int)now.L2_bo.oblig)==1)&&((((int)now.L2_bo.role_pl)==12)==1))&&((((int)now.L2_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 136 - Case3Rules.h:106 - [printf('\\n\\n')] (0:143:0 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(143, 137, 143) */
		reached[1][137] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(143, 138, 143) */
		reached[1][138] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L2</type>\\n')(143, 139, 143) */
		reached[1][139] = 1;
		Printf("<type>L2</type>\n");
		/* merge: printf('<status>success</status>\\n')(143, 140, 143) */
		reached[1][140] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(143, 141, 143) */
		reached[1][141] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 83: // STATE 143 - Case3Rules.h:113 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][143] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 144 - EduOperation.h:298 - [L2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.oblig);
		now.L2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L2_bo.oblig", ((int)now.L2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 145 - EduOperation.h:299 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.prohib)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 146 - EduOperation.h:300 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.right)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 148 - EduOperation.h:312 - [L3_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.prohib);
		now.L3_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L3_bo.prohib", ((int)now.L3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 149 - EduOperation.h:313 - [assert(!(((L3_bo.prohib==1)&&(L3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		spin_assert( !(((((int)now.L3_bo.prohib)==1)&&(((int)now.L3_bo.right)==1))), " !(((L3_bo.prohib==1)&&(L3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 150 - EduOperation.h:314 - [assert(!(((L3_bo.prohib==1)&&(L3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][150] = 1;
		spin_assert( !(((((int)now.L3_bo.prohib)==1)&&(((int)now.L3_bo.oblig)==1))), " !(((L3_bo.prohib==1)&&(L3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 152 - EduOperation.h:298 - [L3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][152] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.oblig);
		now.L3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L3_bo.oblig", ((int)now.L3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 153 - EduOperation.h:299 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.prohib)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 154 - EduOperation.h:300 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][154] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.right)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 156 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][156] = 1;
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
	case 94: // STATE 159 - Case3Rules.h:120 - [((((L2_bo.oblig==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
		if (!((((((int)now.L2_bo.oblig)==1)&&((((int)now.L2_bo.role_pl)==12)==1))&&((((int)now.L2_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 160 - Case3Rules.h:123 - [printf('\\n\\n')] (0:171:0 - 1)
		IfNotBlocked
		reached[1][160] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(171, 161, 171) */
		reached[1][161] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(171, 162, 171) */
		reached[1][162] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L2</type>\\n')(171, 163, 171) */
		reached[1][163] = 1;
		Printf("<type>L2</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(171, 164, 171) */
		reached[1][164] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(171, 165, 171) */
		reached[1][165] = 1;
		Printf("\n\n");
		/* merge: printf('L2-TechnicalFailure')(171, 167, 171) */
		reached[1][167] = 1;
		Printf("L2-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 96: // STATE 168 - EduOperation.h:298 - [L2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][168] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.oblig);
		now.L2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L2_bo.oblig", ((int)now.L2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 169 - EduOperation.h:299 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][169] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.prohib)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 170 - EduOperation.h:300 - [assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][170] = 1;
		spin_assert( !(((((int)now.L2_bo.oblig)==1)&&(((int)now.L2_bo.right)==1))), " !(((L2_bo.oblig==1)&&(L2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 172 - EduOperation.h:298 - [L3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][172] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.oblig);
		now.L3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L3_bo.oblig", ((int)now.L3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 173 - EduOperation.h:299 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][173] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.prohib)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 174 - EduOperation.h:300 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][174] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.right)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 176 - Case3Rules.h:136 - [printf('\\n\\n')] (0:184:0 - 1)
		IfNotBlocked
		reached[1][176] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(184, 177, 184) */
		reached[1][177] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(184, 178, 184) */
		reached[1][178] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(184, 179, 184) */
		reached[1][179] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(184, 180, 184) */
		reached[1][180] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(184, 181, 184) */
		reached[1][181] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 103: // STATE 183 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][183] = 1;
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
	case 104: // STATE 186 - Case3Rules.h:146 - [((((L2_bo.prohib==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][186] = 1;
		if (!((((((int)now.L2_bo.prohib)==1)&&((((int)now.L2_bo.role_pl)==12)==1))&&((((int)now.L2_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 187 - Case3Rules.h:148 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][187] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 188 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][188] = 1;
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
	case 107: // STATE 192 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][192] = 1;
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
	case 108: // STATE 197 - EduOperation.h:390 - [(LEG2CRM?[21,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][197] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 198 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][198] = 1;
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
	case 110: // STATE 199 - EduOperation.h:391 - [(LEG2CRM?[21,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][199] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 200 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][200] = 1;
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
	case 112: // STATE 201 - EduOperation.h:392 - [(LEG2CRM?[21,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][201] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 202 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][202] = 1;
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
	case 114: // STATE 203 - EduOperation.h:393 - [(LEG2CRM?[21,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][203] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 204 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][204] = 1;
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
	case 116: // STATE 205 - EduOperation.h:394 - [(LEG2CRM?[21,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][205] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 206 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][206] = 1;
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
	case 118: // STATE 210 - Case3Rules.h:156 - [printf('L3')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		Printf("L3");
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 211 - Case3Rules.h:158 - [((((L3_bo.oblig==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		if (!((((((int)now.L3_bo.oblig)==1)&&((((int)now.L3_bo.role_pl)==12)==1))&&((((int)now.L3_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 212 - Case3Rules.h:161 - [printf('\\n\\n')] (0:219:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(219, 213, 219) */
		reached[1][213] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(219, 214, 219) */
		reached[1][214] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L3</type>\\n')(219, 215, 219) */
		reached[1][215] = 1;
		Printf("<type>L3</type>\n");
		/* merge: printf('<status>success</status>\\n')(219, 216, 219) */
		reached[1][216] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(219, 217, 219) */
		reached[1][217] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 121: // STATE 219 - Case3Rules.h:168 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 220 - EduOperation.h:298 - [L3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][220] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.oblig);
		now.L3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L3_bo.oblig", ((int)now.L3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 221 - EduOperation.h:299 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][221] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.prohib)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 222 - EduOperation.h:300 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][222] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.right)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 224 - EduOperation.h:312 - [CW1_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][224] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.prohib);
		now.CW1_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.prohib", ((int)now.CW1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 225 - EduOperation.h:313 - [assert(!(((CW1_bo.prohib==1)&&(CW1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][225] = 1;
		spin_assert( !(((((int)now.CW1_bo.prohib)==1)&&(((int)now.CW1_bo.right)==1))), " !(((CW1_bo.prohib==1)&&(CW1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 226 - EduOperation.h:314 - [assert(!(((CW1_bo.prohib==1)&&(CW1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][226] = 1;
		spin_assert( !(((((int)now.CW1_bo.prohib)==1)&&(((int)now.CW1_bo.oblig)==1))), " !(((CW1_bo.prohib==1)&&(CW1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 228 - EduOperation.h:298 - [CW1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][228] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.oblig);
		now.CW1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("CW1_bo.oblig", ((int)now.CW1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 229 - EduOperation.h:299 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][229] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.prohib)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 230 - EduOperation.h:300 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][230] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.right)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 232 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][232] = 1;
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
	case 132: // STATE 235 - Case3Rules.h:175 - [((((L3_bo.oblig==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][235] = 1;
		if (!((((((int)now.L3_bo.oblig)==1)&&((((int)now.L3_bo.role_pl)==12)==1))&&((((int)now.L3_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 236 - Case3Rules.h:178 - [printf('\\n\\n')] (0:247:0 - 1)
		IfNotBlocked
		reached[1][236] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(247, 237, 247) */
		reached[1][237] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(247, 238, 247) */
		reached[1][238] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L3</type>\\n')(247, 239, 247) */
		reached[1][239] = 1;
		Printf("<type>L3</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(247, 240, 247) */
		reached[1][240] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(247, 241, 247) */
		reached[1][241] = 1;
		Printf("\n\n");
		/* merge: printf('L3-TechnicalFailure')(247, 243, 247) */
		reached[1][243] = 1;
		Printf("L3-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 134: // STATE 244 - EduOperation.h:298 - [L3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][244] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.oblig);
		now.L3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L3_bo.oblig", ((int)now.L3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 245 - EduOperation.h:299 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][245] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.prohib)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 246 - EduOperation.h:300 - [assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][246] = 1;
		spin_assert( !(((((int)now.L3_bo.oblig)==1)&&(((int)now.L3_bo.right)==1))), " !(((L3_bo.oblig==1)&&(L3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 248 - EduOperation.h:298 - [CW1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][248] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.oblig);
		now.CW1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.oblig", ((int)now.CW1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 249 - EduOperation.h:299 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][249] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.prohib)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 250 - EduOperation.h:300 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][250] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.right)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 252 - Case3Rules.h:191 - [printf('\\n\\n')] (0:260:0 - 1)
		IfNotBlocked
		reached[1][252] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(260, 253, 260) */
		reached[1][253] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(260, 254, 260) */
		reached[1][254] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(260, 255, 260) */
		reached[1][255] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(260, 256, 260) */
		reached[1][256] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(260, 257, 260) */
		reached[1][257] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 141: // STATE 259 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][259] = 1;
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
	case 142: // STATE 262 - Case3Rules.h:201 - [((((L3_bo.prohib==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][262] = 1;
		if (!((((((int)now.L3_bo.prohib)==1)&&((((int)now.L3_bo.role_pl)==12)==1))&&((((int)now.L3_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 263 - Case3Rules.h:203 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][263] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 264 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][264] = 1;
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
	case 145: // STATE 268 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][268] = 1;
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
	case 146: // STATE 273 - EduOperation.h:390 - [(LEG2CRM?[22,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][273] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 274 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 148: // STATE 275 - EduOperation.h:391 - [(LEG2CRM?[22,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][275] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 276 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][276] = 1;
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
	case 150: // STATE 277 - EduOperation.h:392 - [(LEG2CRM?[22,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][277] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 278 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][278] = 1;
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
	case 152: // STATE 279 - EduOperation.h:393 - [(LEG2CRM?[22,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][279] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 280 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][280] = 1;
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
	case 154: // STATE 281 - EduOperation.h:394 - [(LEG2CRM?[22,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][281] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 282 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][282] = 1;
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
	case 156: // STATE 286 - Case3Rules.h:211 - [printf('L4')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][286] = 1;
		Printf("L4");
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 287 - Case3Rules.h:213 - [((((L4_bo.oblig==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][287] = 1;
		if (!((((((int)now.L4_bo.oblig)==1)&&((((int)now.L4_bo.role_pl)==12)==1))&&((((int)now.L4_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 288 - Case3Rules.h:216 - [printf('\\n\\n')] (0:295:0 - 1)
		IfNotBlocked
		reached[1][288] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(295, 289, 295) */
		reached[1][289] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(295, 290, 295) */
		reached[1][290] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L4</type>\\n')(295, 291, 295) */
		reached[1][291] = 1;
		Printf("<type>L4</type>\n");
		/* merge: printf('<status>success</status>\\n')(295, 292, 295) */
		reached[1][292] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(295, 293, 295) */
		reached[1][293] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 159: // STATE 295 - Case3Rules.h:223 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][295] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 296 - EduOperation.h:298 - [L4_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][296] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.oblig);
		now.L4_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L4_bo.oblig", ((int)now.L4_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 297 - EduOperation.h:299 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][297] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.prohib)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 298 - EduOperation.h:300 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][298] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.right)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 300 - EduOperation.h:312 - [L5_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][300] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.prohib);
		now.L5_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L5_bo.prohib", ((int)now.L5_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 301 - EduOperation.h:313 - [assert(!(((L5_bo.prohib==1)&&(L5_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][301] = 1;
		spin_assert( !(((((int)now.L5_bo.prohib)==1)&&(((int)now.L5_bo.right)==1))), " !(((L5_bo.prohib==1)&&(L5_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 302 - EduOperation.h:314 - [assert(!(((L5_bo.prohib==1)&&(L5_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][302] = 1;
		spin_assert( !(((((int)now.L5_bo.prohib)==1)&&(((int)now.L5_bo.oblig)==1))), " !(((L5_bo.prohib==1)&&(L5_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 304 - EduOperation.h:298 - [L5_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][304] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.oblig);
		now.L5_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L5_bo.oblig", ((int)now.L5_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 305 - EduOperation.h:299 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][305] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.prohib)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 306 - EduOperation.h:300 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][306] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.right)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 308 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][308] = 1;
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
	case 170: // STATE 311 - Case3Rules.h:230 - [((((L4_bo.oblig==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][311] = 1;
		if (!((((((int)now.L4_bo.oblig)==1)&&((((int)now.L4_bo.role_pl)==12)==1))&&((((int)now.L4_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 312 - Case3Rules.h:233 - [printf('\\n\\n')] (0:323:0 - 1)
		IfNotBlocked
		reached[1][312] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(323, 313, 323) */
		reached[1][313] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(323, 314, 323) */
		reached[1][314] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L4</type>\\n')(323, 315, 323) */
		reached[1][315] = 1;
		Printf("<type>L4</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(323, 316, 323) */
		reached[1][316] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(323, 317, 323) */
		reached[1][317] = 1;
		Printf("\n\n");
		/* merge: printf('L4-TechnicalFailure')(323, 319, 323) */
		reached[1][319] = 1;
		Printf("L4-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 172: // STATE 320 - EduOperation.h:298 - [L4_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][320] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.oblig);
		now.L4_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L4_bo.oblig", ((int)now.L4_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 321 - EduOperation.h:299 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][321] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.prohib)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 322 - EduOperation.h:300 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][322] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.right)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 324 - EduOperation.h:298 - [L5_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][324] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.oblig);
		now.L5_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L5_bo.oblig", ((int)now.L5_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 325 - EduOperation.h:299 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][325] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.prohib)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 326 - EduOperation.h:300 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][326] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.right)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 328 - Case3Rules.h:246 - [printf('\\n\\n')] (0:336:0 - 1)
		IfNotBlocked
		reached[1][328] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(336, 329, 336) */
		reached[1][329] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(336, 330, 336) */
		reached[1][330] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(336, 331, 336) */
		reached[1][331] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(336, 332, 336) */
		reached[1][332] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(336, 333, 336) */
		reached[1][333] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 179: // STATE 335 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][335] = 1;
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
	case 180: // STATE 338 - Case3Rules.h:256 - [((((L4_bo.prohib==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][338] = 1;
		if (!((((((int)now.L4_bo.prohib)==1)&&((((int)now.L4_bo.role_pl)==12)==1))&&((((int)now.L4_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 339 - Case3Rules.h:258 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][339] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 340 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][340] = 1;
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
	case 183: // STATE 344 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][344] = 1;
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
	case 184: // STATE 349 - EduOperation.h:390 - [(LEG2CRM?[23,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][349] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 350 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][350] = 1;
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
	case 186: // STATE 351 - EduOperation.h:391 - [(LEG2CRM?[23,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][351] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 352 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][352] = 1;
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
	case 188: // STATE 353 - EduOperation.h:392 - [(LEG2CRM?[23,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][353] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 354 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][354] = 1;
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
	case 190: // STATE 355 - EduOperation.h:393 - [(LEG2CRM?[23,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][355] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 356 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][356] = 1;
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
	case 192: // STATE 357 - EduOperation.h:394 - [(LEG2CRM?[23,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][357] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 358 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][358] = 1;
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
	case 194: // STATE 362 - Case3Rules.h:267 - [printf('L5')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][362] = 1;
		Printf("L5");
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 363 - Case3Rules.h:269 - [((((L5_bo.oblig==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][363] = 1;
		if (!((((((int)now.L5_bo.oblig)==1)&&((((int)now.L5_bo.role_pl)==12)==1))&&((((int)now.L5_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 364 - Case3Rules.h:272 - [printf('\\n\\n')] (0:371:0 - 1)
		IfNotBlocked
		reached[1][364] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(371, 365, 371) */
		reached[1][365] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(371, 366, 371) */
		reached[1][366] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L5</type>\\n')(371, 367, 371) */
		reached[1][367] = 1;
		Printf("<type>L5</type>\n");
		/* merge: printf('<status>success</status>\\n')(371, 368, 371) */
		reached[1][368] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(371, 369, 371) */
		reached[1][369] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 197: // STATE 371 - Case3Rules.h:279 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][371] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 372 - EduOperation.h:298 - [L5_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][372] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.oblig);
		now.L5_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L5_bo.oblig", ((int)now.L5_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 373 - EduOperation.h:299 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][373] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.prohib)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 374 - EduOperation.h:300 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][374] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.right)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 376 - EduOperation.h:312 - [L6_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][376] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.prohib);
		now.L6_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L6_bo.prohib", ((int)now.L6_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 377 - EduOperation.h:313 - [assert(!(((L6_bo.prohib==1)&&(L6_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][377] = 1;
		spin_assert( !(((((int)now.L6_bo.prohib)==1)&&(((int)now.L6_bo.right)==1))), " !(((L6_bo.prohib==1)&&(L6_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 378 - EduOperation.h:314 - [assert(!(((L6_bo.prohib==1)&&(L6_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][378] = 1;
		spin_assert( !(((((int)now.L6_bo.prohib)==1)&&(((int)now.L6_bo.oblig)==1))), " !(((L6_bo.prohib==1)&&(L6_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 380 - EduOperation.h:298 - [L6_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][380] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.oblig);
		now.L6_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L6_bo.oblig", ((int)now.L6_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 381 - EduOperation.h:299 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][381] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.prohib)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 382 - EduOperation.h:300 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][382] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.right)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 384 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][384] = 1;
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
	case 208: // STATE 387 - Case3Rules.h:286 - [((((L5_bo.oblig==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][387] = 1;
		if (!((((((int)now.L5_bo.oblig)==1)&&((((int)now.L5_bo.role_pl)==12)==1))&&((((int)now.L5_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 388 - Case3Rules.h:289 - [printf('\\n\\n')] (0:399:0 - 1)
		IfNotBlocked
		reached[1][388] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(399, 389, 399) */
		reached[1][389] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(399, 390, 399) */
		reached[1][390] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L5</type>\\n')(399, 391, 399) */
		reached[1][391] = 1;
		Printf("<type>L5</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(399, 392, 399) */
		reached[1][392] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(399, 393, 399) */
		reached[1][393] = 1;
		Printf("\n\n");
		/* merge: printf('L5-TechnicalFailure')(399, 395, 399) */
		reached[1][395] = 1;
		Printf("L5-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 210: // STATE 396 - EduOperation.h:298 - [L5_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][396] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.oblig);
		now.L5_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L5_bo.oblig", ((int)now.L5_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 397 - EduOperation.h:299 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][397] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.prohib)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 398 - EduOperation.h:300 - [assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][398] = 1;
		spin_assert( !(((((int)now.L5_bo.oblig)==1)&&(((int)now.L5_bo.right)==1))), " !(((L5_bo.oblig==1)&&(L5_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 400 - EduOperation.h:298 - [L6_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][400] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.oblig);
		now.L6_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L6_bo.oblig", ((int)now.L6_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 401 - EduOperation.h:299 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][401] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.prohib)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 402 - EduOperation.h:300 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][402] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.right)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 404 - Case3Rules.h:302 - [printf('\\n\\n')] (0:412:0 - 1)
		IfNotBlocked
		reached[1][404] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(412, 405, 412) */
		reached[1][405] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(412, 406, 412) */
		reached[1][406] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(412, 407, 412) */
		reached[1][407] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(412, 408, 412) */
		reached[1][408] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(412, 409, 412) */
		reached[1][409] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 217: // STATE 411 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][411] = 1;
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
	case 218: // STATE 414 - Case3Rules.h:312 - [((((L5_bo.prohib==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][414] = 1;
		if (!((((((int)now.L5_bo.prohib)==1)&&((((int)now.L5_bo.role_pl)==12)==1))&&((((int)now.L5_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 415 - Case3Rules.h:314 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][415] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 416 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][416] = 1;
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
	case 221: // STATE 420 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][420] = 1;
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
	case 222: // STATE 425 - EduOperation.h:390 - [(LEG2CRM?[24,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][425] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 426 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][426] = 1;
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
	case 224: // STATE 427 - EduOperation.h:391 - [(LEG2CRM?[24,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][427] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 428 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][428] = 1;
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
	case 226: // STATE 429 - EduOperation.h:392 - [(LEG2CRM?[24,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][429] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 430 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][430] = 1;
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
	case 228: // STATE 431 - EduOperation.h:393 - [(LEG2CRM?[24,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][431] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 432 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][432] = 1;
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
	case 230: // STATE 433 - EduOperation.h:394 - [(LEG2CRM?[24,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][433] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 434 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][434] = 1;
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
	case 232: // STATE 438 - Case3Rules.h:322 - [printf('L6')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][438] = 1;
		Printf("L6");
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 439 - Case3Rules.h:324 - [((((L6_bo.oblig==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][439] = 1;
		if (!((((((int)now.L6_bo.oblig)==1)&&((((int)now.L6_bo.role_pl)==12)==1))&&((((int)now.L6_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 440 - Case3Rules.h:327 - [printf('\\n\\n')] (0:447:0 - 1)
		IfNotBlocked
		reached[1][440] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(447, 441, 447) */
		reached[1][441] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(447, 442, 447) */
		reached[1][442] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L6</type>\\n')(447, 443, 447) */
		reached[1][443] = 1;
		Printf("<type>L6</type>\n");
		/* merge: printf('<status>success</status>\\n')(447, 444, 447) */
		reached[1][444] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(447, 445, 447) */
		reached[1][445] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 235: // STATE 447 - Case3Rules.h:334 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][447] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 448 - EduOperation.h:298 - [L6_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][448] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.oblig);
		now.L6_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L6_bo.oblig", ((int)now.L6_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 449 - EduOperation.h:299 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][449] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.prohib)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 450 - EduOperation.h:300 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][450] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.right)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 452 - EduOperation.h:312 - [CW2_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][452] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.prohib);
		now.CW2_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.prohib", ((int)now.CW2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 453 - EduOperation.h:313 - [assert(!(((CW2_bo.prohib==1)&&(CW2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][453] = 1;
		spin_assert( !(((((int)now.CW2_bo.prohib)==1)&&(((int)now.CW2_bo.right)==1))), " !(((CW2_bo.prohib==1)&&(CW2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 454 - EduOperation.h:314 - [assert(!(((CW2_bo.prohib==1)&&(CW2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][454] = 1;
		spin_assert( !(((((int)now.CW2_bo.prohib)==1)&&(((int)now.CW2_bo.oblig)==1))), " !(((CW2_bo.prohib==1)&&(CW2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 456 - EduOperation.h:298 - [CW2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][456] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.oblig);
		now.CW2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("CW2_bo.oblig", ((int)now.CW2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 457 - EduOperation.h:299 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][457] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.prohib)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 458 - EduOperation.h:300 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][458] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.right)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 460 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][460] = 1;
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
	case 246: // STATE 463 - Case3Rules.h:341 - [((((L6_bo.oblig==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][463] = 1;
		if (!((((((int)now.L6_bo.oblig)==1)&&((((int)now.L6_bo.role_pl)==12)==1))&&((((int)now.L6_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 464 - Case3Rules.h:344 - [printf('\\n\\n')] (0:475:0 - 1)
		IfNotBlocked
		reached[1][464] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(475, 465, 475) */
		reached[1][465] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(475, 466, 475) */
		reached[1][466] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L6</type>\\n')(475, 467, 475) */
		reached[1][467] = 1;
		Printf("<type>L6</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(475, 468, 475) */
		reached[1][468] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(475, 469, 475) */
		reached[1][469] = 1;
		Printf("\n\n");
		/* merge: printf('L6-TechnicalFailure')(475, 471, 475) */
		reached[1][471] = 1;
		Printf("L6-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 248: // STATE 472 - EduOperation.h:298 - [L6_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][472] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.oblig);
		now.L6_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L6_bo.oblig", ((int)now.L6_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 473 - EduOperation.h:299 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][473] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.prohib)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 474 - EduOperation.h:300 - [assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][474] = 1;
		spin_assert( !(((((int)now.L6_bo.oblig)==1)&&(((int)now.L6_bo.right)==1))), " !(((L6_bo.oblig==1)&&(L6_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 476 - EduOperation.h:298 - [CW2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][476] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.oblig);
		now.CW2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.oblig", ((int)now.CW2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 477 - EduOperation.h:299 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][477] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.prohib)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 478 - EduOperation.h:300 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][478] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.right)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 480 - Case3Rules.h:357 - [printf('\\n\\n')] (0:488:0 - 1)
		IfNotBlocked
		reached[1][480] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(488, 481, 488) */
		reached[1][481] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(488, 482, 488) */
		reached[1][482] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(488, 483, 488) */
		reached[1][483] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(488, 484, 488) */
		reached[1][484] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(488, 485, 488) */
		reached[1][485] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 255: // STATE 487 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][487] = 1;
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
	case 256: // STATE 490 - Case3Rules.h:367 - [((((L6_bo.prohib==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][490] = 1;
		if (!((((((int)now.L6_bo.prohib)==1)&&((((int)now.L6_bo.role_pl)==12)==1))&&((((int)now.L6_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 491 - Case3Rules.h:369 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][491] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 492 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][492] = 1;
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
	case 259: // STATE 496 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][496] = 1;
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
	case 260: // STATE 501 - EduOperation.h:390 - [(LEG2CRM?[25,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][501] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 502 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][502] = 1;
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
	case 262: // STATE 503 - EduOperation.h:391 - [(LEG2CRM?[25,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][503] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 504 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][504] = 1;
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
	case 264: // STATE 505 - EduOperation.h:392 - [(LEG2CRM?[25,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][505] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 506 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][506] = 1;
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
	case 266: // STATE 507 - EduOperation.h:393 - [(LEG2CRM?[25,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][507] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 508 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][508] = 1;
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
	case 268: // STATE 509 - EduOperation.h:394 - [(LEG2CRM?[25,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][509] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 25 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 510 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][510] = 1;
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
	case 270: // STATE 514 - Case3Rules.h:377 - [printf('L7')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][514] = 1;
		Printf("L7");
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 515 - Case3Rules.h:379 - [((((L7_bo.oblig==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][515] = 1;
		if (!((((((int)now.L7_bo.oblig)==1)&&((((int)now.L7_bo.role_pl)==12)==1))&&((((int)now.L7_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 516 - Case3Rules.h:382 - [printf('\\n\\n')] (0:523:0 - 1)
		IfNotBlocked
		reached[1][516] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(523, 517, 523) */
		reached[1][517] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(523, 518, 523) */
		reached[1][518] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L7</type>\\n')(523, 519, 523) */
		reached[1][519] = 1;
		Printf("<type>L7</type>\n");
		/* merge: printf('<status>success</status>\\n')(523, 520, 523) */
		reached[1][520] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(523, 521, 523) */
		reached[1][521] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 273: // STATE 523 - Case3Rules.h:389 - [LCount = (LCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][523] = 1;
		(trpt+1)->bup.oval = now.LCount;
		now.LCount = (now.LCount+1);
#ifdef VAR_RANGES
		logval("LCount", now.LCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 524 - EduOperation.h:298 - [L7_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][524] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.oblig);
		now.L7_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L7_bo.oblig", ((int)now.L7_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 525 - EduOperation.h:299 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][525] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.prohib)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 526 - EduOperation.h:300 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][526] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.right)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 528 - EduOperation.h:312 - [EXAM_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][528] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.prohib);
		now.EXAM_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.prohib", ((int)now.EXAM_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 529 - EduOperation.h:313 - [assert(!(((EXAM_bo.prohib==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][529] = 1;
		spin_assert( !(((((int)now.EXAM_bo.prohib)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.prohib==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 530 - EduOperation.h:314 - [assert(!(((EXAM_bo.prohib==1)&&(EXAM_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][530] = 1;
		spin_assert( !(((((int)now.EXAM_bo.prohib)==1)&&(((int)now.EXAM_bo.oblig)==1))), " !(((EXAM_bo.prohib==1)&&(EXAM_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 532 - EduOperation.h:298 - [EXAM_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][532] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.oblig);
		now.EXAM_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 533 - EduOperation.h:299 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][533] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.prohib)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 534 - EduOperation.h:300 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][534] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 536 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][536] = 1;
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
	case 284: // STATE 539 - Case3Rules.h:396 - [((((L7_bo.oblig==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][539] = 1;
		if (!((((((int)now.L7_bo.oblig)==1)&&((((int)now.L7_bo.role_pl)==12)==1))&&((((int)now.L7_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 540 - Case3Rules.h:399 - [printf('\\n\\n')] (0:551:0 - 1)
		IfNotBlocked
		reached[1][540] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(551, 541, 551) */
		reached[1][541] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(551, 542, 551) */
		reached[1][542] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>L7</type>\\n')(551, 543, 551) */
		reached[1][543] = 1;
		Printf("<type>L7</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(551, 544, 551) */
		reached[1][544] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(551, 545, 551) */
		reached[1][545] = 1;
		Printf("\n\n");
		/* merge: printf('L7-TechnicalFailure')(551, 547, 551) */
		reached[1][547] = 1;
		Printf("L7-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 286: // STATE 548 - EduOperation.h:298 - [L7_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][548] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.oblig);
		now.L7_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L7_bo.oblig", ((int)now.L7_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 549 - EduOperation.h:299 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][549] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.prohib)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 550 - EduOperation.h:300 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][550] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.right)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 552 - EduOperation.h:298 - [EXAM_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][552] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.oblig);
		now.EXAM_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 553 - EduOperation.h:299 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][553] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.prohib)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 554 - EduOperation.h:300 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][554] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 556 - Case3Rules.h:412 - [printf('\\n\\n')] (0:564:0 - 1)
		IfNotBlocked
		reached[1][556] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(564, 557, 564) */
		reached[1][557] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(564, 558, 564) */
		reached[1][558] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(564, 559, 564) */
		reached[1][559] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(564, 560, 564) */
		reached[1][560] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(564, 561, 564) */
		reached[1][561] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 293: // STATE 563 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][563] = 1;
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
	case 294: // STATE 566 - Case3Rules.h:422 - [((((L7_bo.prohib==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][566] = 1;
		if (!((((((int)now.L7_bo.prohib)==1)&&((((int)now.L7_bo.role_pl)==12)==1))&&((((int)now.L7_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 567 - Case3Rules.h:424 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][567] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 568 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][568] = 1;
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
	case 297: // STATE 572 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][572] = 1;
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
	case 298: // STATE 577 - EduOperation.h:390 - [(LEG2CRM?[26,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][577] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 578 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][578] = 1;
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
	case 300: // STATE 579 - EduOperation.h:391 - [(LEG2CRM?[26,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][579] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 580 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][580] = 1;
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
	case 302: // STATE 581 - EduOperation.h:392 - [(LEG2CRM?[26,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][581] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 582 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][582] = 1;
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
	case 304: // STATE 583 - EduOperation.h:393 - [(LEG2CRM?[26,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][583] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 584 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][584] = 1;
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
	case 306: // STATE 585 - EduOperation.h:394 - [(LEG2CRM?[26,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][585] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 26 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 586 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][586] = 1;
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
	case 308: // STATE 590 - Case3Rules.h:436 - [printf('CW1 ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][590] = 1;
		Printf("CW1 ");
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 591 - Case3Rules.h:438 - [((((CW1_bo.oblig==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][591] = 1;
		if (!((((((int)now.CW1_bo.oblig)==1)&&((((int)now.CW1_bo.role_pl)==12)==1))&&((((int)now.CW1_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 592 - Case3Rules.h:440 - [printf('\\n\\n')] (0:599:0 - 1)
		IfNotBlocked
		reached[1][592] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(599, 593, 599) */
		reached[1][593] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(599, 594, 599) */
		reached[1][594] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW1</type>\\n')(599, 595, 599) */
		reached[1][595] = 1;
		Printf("<type>CW1</type>\n");
		/* merge: printf('<status>success</status>\\n')(599, 596, 599) */
		reached[1][596] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(599, 597, 599) */
		reached[1][597] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 311: // STATE 599 - Case3Rules.h:447 - [CwCount = (CwCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][599] = 1;
		(trpt+1)->bup.oval = now.CwCount;
		now.CwCount = (now.CwCount+1);
#ifdef VAR_RANGES
		logval("CwCount", now.CwCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 600 - Case3Rules.h:448 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW1_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][600] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW1_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 601 - EduOperation.h:298 - [CW1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][601] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.oblig);
		now.CW1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.oblig", ((int)now.CW1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 602 - EduOperation.h:299 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][602] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.prohib)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 603 - EduOperation.h:300 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][603] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.right)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 605 - EduOperation.h:312 - [L4_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][605] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.prohib);
		now.L4_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L4_bo.prohib", ((int)now.L4_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 606 - EduOperation.h:313 - [assert(!(((L4_bo.prohib==1)&&(L4_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][606] = 1;
		spin_assert( !(((((int)now.L4_bo.prohib)==1)&&(((int)now.L4_bo.right)==1))), " !(((L4_bo.prohib==1)&&(L4_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 607 - EduOperation.h:314 - [assert(!(((L4_bo.prohib==1)&&(L4_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][607] = 1;
		spin_assert( !(((((int)now.L4_bo.prohib)==1)&&(((int)now.L4_bo.oblig)==1))), " !(((L4_bo.prohib==1)&&(L4_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 609 - EduOperation.h:298 - [L4_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][609] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.oblig);
		now.L4_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L4_bo.oblig", ((int)now.L4_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 610 - EduOperation.h:299 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][610] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.prohib)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 611 - EduOperation.h:300 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][611] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.right)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 613 - Case3Rules.h:452 - [printf('LECTURES are now continued')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][613] = 1;
		Printf("LECTURES are now continued");
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 614 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][614] = 1;
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
	case 324: // STATE 617 - Case3Rules.h:457 - [((((CW1_bo.oblig==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][617] = 1;
		if (!((((((int)now.CW1_bo.oblig)==1)&&((((int)now.CW1_bo.role_pl)==12)==1))&&((((int)now.CW1_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 618 - Case3Rules.h:459 - [printf('\\n\\n')] (0:629:0 - 1)
		IfNotBlocked
		reached[1][618] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(629, 619, 629) */
		reached[1][619] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(629, 620, 629) */
		reached[1][620] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW1</type>\\n')(629, 621, 629) */
		reached[1][621] = 1;
		Printf("<type>CW1</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(629, 622, 629) */
		reached[1][622] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(629, 623, 629) */
		reached[1][623] = 1;
		Printf("\n\n");
		/* merge: printf('No submission at within required time')(629, 625, 629) */
		reached[1][625] = 1;
		Printf("No submission at within required time");
		_m = 3; goto P999; /* 6 */
	case 326: // STATE 626 - EduOperation.h:298 - [L4_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][626] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.oblig);
		now.L4_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L4_bo.oblig", ((int)now.L4_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 627 - EduOperation.h:299 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][627] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.prohib)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 628 - EduOperation.h:300 - [assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][628] = 1;
		spin_assert( !(((((int)now.L4_bo.oblig)==1)&&(((int)now.L4_bo.right)==1))), " !(((L4_bo.oblig==1)&&(L4_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 630 - EduOperation.h:298 - [CW1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][630] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.oblig);
		now.CW1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.oblig", ((int)now.CW1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 631 - EduOperation.h:299 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][631] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.prohib)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 632 - EduOperation.h:300 - [assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][632] = 1;
		spin_assert( !(((((int)now.CW1_bo.oblig)==1)&&(((int)now.CW1_bo.right)==1))), " !(((CW1_bo.oblig==1)&&(CW1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 634 - Case3Rules.h:471 - [printf('\\n\\n')] (0:641:0 - 1)
		IfNotBlocked
		reached[1][634] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(641, 635, 641) */
		reached[1][635] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(641, 636, 641) */
		reached[1][636] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(641, 637, 641) */
		reached[1][637] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(641, 638, 641) */
		reached[1][638] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(641, 639, 641) */
		reached[1][639] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 333: // STATE 641 - Case3Rules.h:477 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][641] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 642 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][642] = 1;
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
	case 335: // STATE 645 - Case3Rules.h:480 - [((((CW1_bo.prohib==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][645] = 1;
		if (!((((((int)now.CW1_bo.prohib)==1)&&((((int)now.CW1_bo.role_pl)==12)==1))&&((((int)now.CW1_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 646 - Case3Rules.h:482 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][646] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 647 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][647] = 1;
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
	case 338: // STATE 651 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][651] = 1;
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
	case 339: // STATE 656 - EduOperation.h:390 - [(LEG2CRM?[27,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][656] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 657 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][657] = 1;
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
	case 341: // STATE 658 - EduOperation.h:391 - [(LEG2CRM?[27,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][658] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 659 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][659] = 1;
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
	case 343: // STATE 660 - EduOperation.h:392 - [(LEG2CRM?[27,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][660] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 661 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][661] = 1;
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
	case 345: // STATE 662 - EduOperation.h:393 - [(LEG2CRM?[27,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][662] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 663 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][663] = 1;
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
	case 347: // STATE 664 - EduOperation.h:394 - [(LEG2CRM?[27,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][664] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 27 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 665 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][665] = 1;
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
	case 349: // STATE 669 - Case3Rules.h:493 - [printf('CW2 ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][669] = 1;
		Printf("CW2 ");
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 670 - Case3Rules.h:495 - [((((CW2_bo.oblig==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][670] = 1;
		if (!((((((int)now.CW2_bo.oblig)==1)&&((((int)now.CW2_bo.role_pl)==12)==1))&&((((int)now.CW2_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 671 - Case3Rules.h:497 - [printf('\\n\\n')] (0:678:0 - 1)
		IfNotBlocked
		reached[1][671] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(678, 672, 678) */
		reached[1][672] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(678, 673, 678) */
		reached[1][673] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW2</type>\\n')(678, 674, 678) */
		reached[1][674] = 1;
		Printf("<type>CW2</type>\n");
		/* merge: printf('<status>success</status>\\n')(678, 675, 678) */
		reached[1][675] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(678, 676, 678) */
		reached[1][676] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 352: // STATE 678 - Case3Rules.h:504 - [CwCount = (CwCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][678] = 1;
		(trpt+1)->bup.oval = now.CwCount;
		now.CwCount = (now.CwCount+1);
#ifdef VAR_RANGES
		logval("CwCount", now.CwCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 679 - Case3Rules.h:505 - [STUDENTexTrace = (STUDENTexTrace|(1<<CW2_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][679] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.CW2_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 680 - EduOperation.h:298 - [CW2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][680] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.oblig);
		now.CW2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.oblig", ((int)now.CW2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 681 - EduOperation.h:299 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][681] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.prohib)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 682 - EduOperation.h:300 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][682] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.right)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 684 - EduOperation.h:312 - [L7_bo.prohib = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][684] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.prohib);
		now.L7_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("L7_bo.prohib", ((int)now.L7_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 685 - EduOperation.h:313 - [assert(!(((L7_bo.prohib==1)&&(L7_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][685] = 1;
		spin_assert( !(((((int)now.L7_bo.prohib)==1)&&(((int)now.L7_bo.right)==1))), " !(((L7_bo.prohib==1)&&(L7_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 359: // STATE 686 - EduOperation.h:314 - [assert(!(((L7_bo.prohib==1)&&(L7_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][686] = 1;
		spin_assert( !(((((int)now.L7_bo.prohib)==1)&&(((int)now.L7_bo.oblig)==1))), " !(((L7_bo.prohib==1)&&(L7_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 688 - EduOperation.h:298 - [L7_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][688] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.oblig);
		now.L7_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("L7_bo.oblig", ((int)now.L7_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 689 - EduOperation.h:299 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][689] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.prohib)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 690 - EduOperation.h:300 - [assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][690] = 1;
		spin_assert( !(((((int)now.L7_bo.oblig)==1)&&(((int)now.L7_bo.right)==1))), " !(((L7_bo.oblig==1)&&(L7_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 692 - Case3Rules.h:509 - [printf('LECTURES are now continued')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][692] = 1;
		Printf("LECTURES are now continued");
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 693 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][693] = 1;
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
	case 365: // STATE 696 - Case3Rules.h:514 - [((((CW2_bo.oblig==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][696] = 1;
		if (!((((((int)now.CW2_bo.oblig)==1)&&((((int)now.CW2_bo.role_pl)==12)==1))&&((((int)now.CW2_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 697 - Case3Rules.h:516 - [printf('\\n\\n')] (0:708:0 - 1)
		IfNotBlocked
		reached[1][697] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(708, 698, 708) */
		reached[1][698] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(708, 699, 708) */
		reached[1][699] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>CW2</type>\\n')(708, 700, 708) */
		reached[1][700] = 1;
		Printf("<type>CW2</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(708, 701, 708) */
		reached[1][701] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(708, 702, 708) */
		reached[1][702] = 1;
		Printf("\n\n");
		/* merge: printf('No submission at within required time')(708, 704, 708) */
		reached[1][704] = 1;
		Printf("No submission at within required time");
		_m = 3; goto P999; /* 6 */
	case 367: // STATE 705 - EduOperation.h:298 - [EXAM_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][705] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.oblig);
		now.EXAM_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 706 - EduOperation.h:299 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][706] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.prohib)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 707 - EduOperation.h:300 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][707] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 709 - EduOperation.h:298 - [CW2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][709] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.oblig);
		now.CW2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.oblig", ((int)now.CW2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 710 - EduOperation.h:299 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][710] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.prohib)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 711 - EduOperation.h:300 - [assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][711] = 1;
		spin_assert( !(((((int)now.CW2_bo.oblig)==1)&&(((int)now.CW2_bo.right)==1))), " !(((CW2_bo.oblig==1)&&(CW2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 713 - Case3Rules.h:528 - [printf('\\n\\n')] (0:720:0 - 1)
		IfNotBlocked
		reached[1][713] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(720, 714, 720) */
		reached[1][714] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(720, 715, 720) */
		reached[1][715] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(720, 716, 720) */
		reached[1][716] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(720, 717, 720) */
		reached[1][717] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(720, 718, 720) */
		reached[1][718] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 374: // STATE 720 - Case3Rules.h:534 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][720] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 721 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][721] = 1;
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
	case 376: // STATE 724 - Case3Rules.h:537 - [((((CW2_bo.prohib==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][724] = 1;
		if (!((((((int)now.CW2_bo.prohib)==1)&&((((int)now.CW2_bo.role_pl)==12)==1))&&((((int)now.CW2_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 725 - Case3Rules.h:539 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][725] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 726 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][726] = 1;
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
	case 379: // STATE 730 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][730] = 1;
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
	case 380: // STATE 735 - EduOperation.h:390 - [(LEG2CRM?[28,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][735] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 736 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][736] = 1;
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
	case 382: // STATE 737 - EduOperation.h:391 - [(LEG2CRM?[28,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][737] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 738 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][738] = 1;
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
	case 384: // STATE 739 - EduOperation.h:392 - [(LEG2CRM?[28,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][739] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 740 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][740] = 1;
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
	case 386: // STATE 741 - EduOperation.h:393 - [(LEG2CRM?[28,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][741] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 742 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][742] = 1;
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
	case 388: // STATE 743 - EduOperation.h:394 - [(LEG2CRM?[28,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][743] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 28 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 744 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][744] = 1;
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
	case 390: // STATE 748 - Case3Rules.h:550 - [printf('EXAM ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][748] = 1;
		Printf("EXAM ");
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 749 - Case3Rules.h:552 - [((((EXAM_bo.oblig==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][749] = 1;
		if (!((((((int)now.EXAM_bo.oblig)==1)&&((((int)now.EXAM_bo.role_pl)==12)==1))&&((((int)now.EXAM_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 750 - Case3Rules.h:554 - [printf('\\n\\n')] (0:757:0 - 1)
		IfNotBlocked
		reached[1][750] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(757, 751, 757) */
		reached[1][751] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(757, 752, 757) */
		reached[1][752] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>EXAM</type>\\n')(757, 753, 757) */
		reached[1][753] = 1;
		Printf("<type>EXAM</type>\n");
		/* merge: printf('<status>success</status>\\n')(757, 754, 757) */
		reached[1][754] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(757, 755, 757) */
		reached[1][755] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 393: // STATE 757 - Case3Rules.h:561 - [ExamCount = (ExamCount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][757] = 1;
		(trpt+1)->bup.oval = now.ExamCount;
		now.ExamCount = (now.ExamCount+1);
#ifdef VAR_RANGES
		logval("ExamCount", now.ExamCount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 758 - Case3Rules.h:562 - [STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][758] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace|(1<<((int)now.EXAM_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 759 - EduOperation.h:298 - [EXAM_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][759] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.oblig);
		now.EXAM_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 760 - EduOperation.h:299 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][760] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.prohib)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 761 - EduOperation.h:300 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][761] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 763 - Case3Rules.h:565 - [printf('\\n\\n')] (0:771:0 - 1)
		IfNotBlocked
		reached[1][763] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(771, 764, 771) */
		reached[1][764] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(771, 765, 771) */
		reached[1][765] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(771, 766, 771) */
		reached[1][766] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(771, 767, 771) */
		reached[1][767] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(771, 768, 771) */
		reached[1][768] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 399: // STATE 770 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][770] = 1;
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
	case 400: // STATE 773 - Case3Rules.h:574 - [((((EXAM_bo.oblig==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][773] = 1;
		if (!((((((int)now.EXAM_bo.oblig)==1)&&((((int)now.EXAM_bo.role_pl)==12)==1))&&((((int)now.EXAM_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 774 - Case3Rules.h:577 - [printf('\\n\\n')] (0:785:0 - 1)
		IfNotBlocked
		reached[1][774] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(785, 775, 785) */
		reached[1][775] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(785, 776, 785) */
		reached[1][776] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>EXAM</type>\\n')(785, 777, 785) */
		reached[1][777] = 1;
		Printf("<type>EXAM</type>\n");
		/* merge: printf('<status>timeout</status>\\n')(785, 778, 785) */
		reached[1][778] = 1;
		Printf("<status>timeout</status>\n");
		/* merge: printf('\\n\\n')(785, 779, 785) */
		reached[1][779] = 1;
		Printf("\n\n");
		/* merge: printf('Exam -- timeout')(785, 781, 785) */
		reached[1][781] = 1;
		Printf("Exam -- timeout");
		_m = 3; goto P999; /* 6 */
	case 402: // STATE 782 - EduOperation.h:298 - [EXAM_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][782] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.oblig);
		now.EXAM_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 783 - EduOperation.h:299 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][783] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.prohib)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 404: // STATE 784 - EduOperation.h:300 - [assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][784] = 1;
		spin_assert( !(((((int)now.EXAM_bo.oblig)==1)&&(((int)now.EXAM_bo.right)==1))), " !(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 786 - Case3Rules.h:588 - [printf('\\n\\n')] (0:793:0 - 1)
		IfNotBlocked
		reached[1][786] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(793, 787, 793) */
		reached[1][787] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(793, 788, 793) */
		reached[1][788] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(793, 789, 793) */
		reached[1][789] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(793, 790, 793) */
		reached[1][790] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(793, 791, 793) */
		reached[1][791] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 406: // STATE 793 - Case3Rules.h:594 - [fail = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][793] = 1;
		(trpt+1)->bup.oval = ((int)fail);
		fail = 1;
#ifdef VAR_RANGES
		logval("fail", ((int)fail));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 794 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][794] = 1;
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
	case 408: // STATE 797 - Case3Rules.h:597 - [((((EXAM_bo.prohib==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][797] = 1;
		if (!((((((int)now.EXAM_bo.prohib)==1)&&((((int)now.EXAM_bo.role_pl)==12)==1))&&((((int)now.EXAM_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 798 - Case3Rules.h:599 - [printf('Prohibited action')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][798] = 1;
		Printf("Prohibited action");
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 799 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][799] = 1;
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
	case 411: // STATE 803 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][803] = 1;
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
	case 412: // STATE 811 - Case3.pml:180 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][811] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC LEG */
	case 413: // STATE 1 - EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 3 - Case3.pml:94 - [STUDENTexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = 0;
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 4 - EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 6 - Case3.pml:95 - [LMSexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = 0;
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 14 - EduOperation.h:174 - [D_STEP174]
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
		now.START_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("START_bo.role_pl", ((int)now.START_bo.role_pl));
#endif
		;
S_008_0: /* 2 */
		now.START_bo.right = 1;
#ifdef VAR_RANGES
		logval("START_bo.right", ((int)now.START_bo.right));
#endif
		;
S_009_0: /* 2 */
		now.START_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("START_bo.oblig", ((int)now.START_bo.oblig));
#endif
		;
S_010_0: /* 2 */
		now.START_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("START_bo.prohib", ((int)now.START_bo.prohib));
#endif
		;
S_011_0: /* 2 */
		now.START_bo.executed = 0;
#ifdef VAR_RANGES
		logval("START_bo.executed", ((int)now.START_bo.executed));
#endif
		;
S_012_0: /* 2 */
		now.START_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("START_bo.id", ((int)now.START_bo.id));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 418: // STATE 23 - EduOperation.h:174 - [D_STEP174]
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
		now.L1_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L1_bo.role_pl", ((int)now.L1_bo.role_pl));
#endif
		;
S_017_0: /* 2 */
		now.L1_bo.right = 0;
#ifdef VAR_RANGES
		logval("L1_bo.right", ((int)now.L1_bo.right));
#endif
		;
S_018_0: /* 2 */
		now.L1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L1_bo.oblig", ((int)now.L1_bo.oblig));
#endif
		;
S_019_0: /* 2 */
		now.L1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L1_bo.prohib", ((int)now.L1_bo.prohib));
#endif
		;
S_020_0: /* 2 */
		now.L1_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L1_bo.executed", ((int)now.L1_bo.executed));
#endif
		;
S_021_0: /* 2 */
		now.L1_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L1_bo.id", ((int)now.L1_bo.id));
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 419: // STATE 32 - EduOperation.h:174 - [D_STEP174]
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
		now.L2_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L2_bo.role_pl", ((int)now.L2_bo.role_pl));
#endif
		;
S_026_0: /* 2 */
		now.L2_bo.right = 0;
#ifdef VAR_RANGES
		logval("L2_bo.right", ((int)now.L2_bo.right));
#endif
		;
S_027_0: /* 2 */
		now.L2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L2_bo.oblig", ((int)now.L2_bo.oblig));
#endif
		;
S_028_0: /* 2 */
		now.L2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L2_bo.prohib", ((int)now.L2_bo.prohib));
#endif
		;
S_029_0: /* 2 */
		now.L2_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L2_bo.executed", ((int)now.L2_bo.executed));
#endif
		;
S_030_0: /* 2 */
		now.L2_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L2_bo.id", ((int)now.L2_bo.id));
#endif
		;
		goto S_041_0;
S_041_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 420: // STATE 41 - EduOperation.h:174 - [D_STEP174]
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
		now.L3_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L3_bo.role_pl", ((int)now.L3_bo.role_pl));
#endif
		;
S_035_0: /* 2 */
		now.L3_bo.right = 0;
#ifdef VAR_RANGES
		logval("L3_bo.right", ((int)now.L3_bo.right));
#endif
		;
S_036_0: /* 2 */
		now.L3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L3_bo.oblig", ((int)now.L3_bo.oblig));
#endif
		;
S_037_0: /* 2 */
		now.L3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L3_bo.prohib", ((int)now.L3_bo.prohib));
#endif
		;
S_038_0: /* 2 */
		now.L3_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L3_bo.executed", ((int)now.L3_bo.executed));
#endif
		;
S_039_0: /* 2 */
		now.L3_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L3_bo.id", ((int)now.L3_bo.id));
#endif
		;
		goto S_050_0;
S_050_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 421: // STATE 50 - EduOperation.h:174 - [D_STEP174]
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
		now.L4_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L4_bo.role_pl", ((int)now.L4_bo.role_pl));
#endif
		;
S_044_0: /* 2 */
		now.L4_bo.right = 0;
#ifdef VAR_RANGES
		logval("L4_bo.right", ((int)now.L4_bo.right));
#endif
		;
S_045_0: /* 2 */
		now.L4_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L4_bo.oblig", ((int)now.L4_bo.oblig));
#endif
		;
S_046_0: /* 2 */
		now.L4_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L4_bo.prohib", ((int)now.L4_bo.prohib));
#endif
		;
S_047_0: /* 2 */
		now.L4_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L4_bo.executed", ((int)now.L4_bo.executed));
#endif
		;
S_048_0: /* 2 */
		now.L4_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L4_bo.id", ((int)now.L4_bo.id));
#endif
		;
		goto S_059_0;
S_059_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 422: // STATE 59 - EduOperation.h:174 - [D_STEP174]
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
		now.L5_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L5_bo.role_pl", ((int)now.L5_bo.role_pl));
#endif
		;
S_053_0: /* 2 */
		now.L5_bo.right = 0;
#ifdef VAR_RANGES
		logval("L5_bo.right", ((int)now.L5_bo.right));
#endif
		;
S_054_0: /* 2 */
		now.L5_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L5_bo.oblig", ((int)now.L5_bo.oblig));
#endif
		;
S_055_0: /* 2 */
		now.L5_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L5_bo.prohib", ((int)now.L5_bo.prohib));
#endif
		;
S_056_0: /* 2 */
		now.L5_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L5_bo.executed", ((int)now.L5_bo.executed));
#endif
		;
S_057_0: /* 2 */
		now.L5_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L5_bo.id", ((int)now.L5_bo.id));
#endif
		;
		goto S_068_0;
S_068_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 423: // STATE 68 - EduOperation.h:174 - [D_STEP174]
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
		now.L6_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L6_bo.role_pl", ((int)now.L6_bo.role_pl));
#endif
		;
S_062_0: /* 2 */
		now.L6_bo.right = 0;
#ifdef VAR_RANGES
		logval("L6_bo.right", ((int)now.L6_bo.right));
#endif
		;
S_063_0: /* 2 */
		now.L6_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L6_bo.oblig", ((int)now.L6_bo.oblig));
#endif
		;
S_064_0: /* 2 */
		now.L6_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L6_bo.prohib", ((int)now.L6_bo.prohib));
#endif
		;
S_065_0: /* 2 */
		now.L6_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L6_bo.executed", ((int)now.L6_bo.executed));
#endif
		;
S_066_0: /* 2 */
		now.L6_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L6_bo.id", ((int)now.L6_bo.id));
#endif
		;
		goto S_077_0;
S_077_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 424: // STATE 77 - EduOperation.h:174 - [D_STEP174]
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
		now.L7_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("L7_bo.role_pl", ((int)now.L7_bo.role_pl));
#endif
		;
S_071_0: /* 2 */
		now.L7_bo.right = 0;
#ifdef VAR_RANGES
		logval("L7_bo.right", ((int)now.L7_bo.right));
#endif
		;
S_072_0: /* 2 */
		now.L7_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("L7_bo.oblig", ((int)now.L7_bo.oblig));
#endif
		;
S_073_0: /* 2 */
		now.L7_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("L7_bo.prohib", ((int)now.L7_bo.prohib));
#endif
		;
S_074_0: /* 2 */
		now.L7_bo.executed = 0;
#ifdef VAR_RANGES
		logval("L7_bo.executed", ((int)now.L7_bo.executed));
#endif
		;
S_075_0: /* 2 */
		now.L7_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("L7_bo.id", ((int)now.L7_bo.id));
#endif
		;
		goto S_086_0;
S_086_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 425: // STATE 86 - EduOperation.h:174 - [D_STEP174]
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
		now.CW1_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("CW1_bo.role_pl", ((int)now.CW1_bo.role_pl));
#endif
		;
S_080_0: /* 2 */
		now.CW1_bo.right = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.right", ((int)now.CW1_bo.right));
#endif
		;
S_081_0: /* 2 */
		now.CW1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.oblig", ((int)now.CW1_bo.oblig));
#endif
		;
S_082_0: /* 2 */
		now.CW1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("CW1_bo.prohib", ((int)now.CW1_bo.prohib));
#endif
		;
S_083_0: /* 2 */
		now.CW1_bo.executed = 0;
#ifdef VAR_RANGES
		logval("CW1_bo.executed", ((int)now.CW1_bo.executed));
#endif
		;
S_084_0: /* 2 */
		now.CW1_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CW1_bo.id", ((int)now.CW1_bo.id));
#endif
		;
		goto S_095_0;
S_095_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 426: // STATE 95 - EduOperation.h:174 - [D_STEP174]
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
		now.CW2_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("CW2_bo.role_pl", ((int)now.CW2_bo.role_pl));
#endif
		;
S_089_0: /* 2 */
		now.CW2_bo.right = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.right", ((int)now.CW2_bo.right));
#endif
		;
S_090_0: /* 2 */
		now.CW2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.oblig", ((int)now.CW2_bo.oblig));
#endif
		;
S_091_0: /* 2 */
		now.CW2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("CW2_bo.prohib", ((int)now.CW2_bo.prohib));
#endif
		;
S_092_0: /* 2 */
		now.CW2_bo.executed = 0;
#ifdef VAR_RANGES
		logval("CW2_bo.executed", ((int)now.CW2_bo.executed));
#endif
		;
S_093_0: /* 2 */
		now.CW2_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CW2_bo.id", ((int)now.CW2_bo.id));
#endif
		;
		goto S_104_0;
S_104_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 427: // STATE 104 - EduOperation.h:174 - [D_STEP174]
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
		now.EXAM_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("EXAM_bo.role_pl", ((int)now.EXAM_bo.role_pl));
#endif
		;
S_098_0: /* 2 */
		now.EXAM_bo.right = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.right", ((int)now.EXAM_bo.right));
#endif
		;
S_099_0: /* 2 */
		now.EXAM_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.oblig", ((int)now.EXAM_bo.oblig));
#endif
		;
S_100_0: /* 2 */
		now.EXAM_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("EXAM_bo.prohib", ((int)now.EXAM_bo.prohib));
#endif
		;
S_101_0: /* 2 */
		now.EXAM_bo.executed = 0;
#ifdef VAR_RANGES
		logval("EXAM_bo.executed", ((int)now.EXAM_bo.executed));
#endif
		;
S_102_0: /* 2 */
		now.EXAM_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("EXAM_bo.id", ((int)now.EXAM_bo.id));
#endif
		;
		goto S_1533_0;
S_1533_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 428: // STATE 107 - Case3.pml:114 - [((((START_bo.right==1)||(START_bo.oblig==1))||(START_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!((((((int)now.START_bo.right)==1)||(((int)now.START_bo.oblig)==1))||(((int)now.START_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 108 - Case3.pml:114 - [START_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		(trpt+1)->bup.oval = ((int)now.START_bo.status);
		now.START_bo.status = 17;
#ifdef VAR_RANGES
		logval("START_bo.status", ((int)now.START_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 109 - EduOperation.h:404 - [LEG2CRM!18,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 18, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 431: // STATE 111 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][111] = 1;
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
	case 432: // STATE 114 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][114] = 1;
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
	case 433: // STATE 117 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][117] = 1;
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
	case 434: // STATE 120 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][120] = 1;
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
	case 435: // STATE 123 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][123] = 1;
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
	case 436: // STATE 126 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][126] = 1;
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
	case 437: // STATE 129 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][129] = 1;
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
	case 438: // STATE 132 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][132] = 1;
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
	case 439: // STATE 135 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][135] = 1;
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
	case 440: // STATE 138 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][138] = 1;
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
	case 441: // STATE 141 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][141] = 1;
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
	case 442: // STATE 144 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][144] = 1;
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
	case 443: // STATE 147 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][147] = 1;
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
	case 444: // STATE 153 - Case3.pml:116 - [((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		if (!((((((int)now.L1_bo.right)==1)||(((int)now.L1_bo.oblig)==1))||(((int)now.L1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 154 - Case3.pml:116 - [L1_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][154] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.status);
		now.L1_bo.status = 17;
#ifdef VAR_RANGES
		logval("L1_bo.status", ((int)now.L1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 155 - EduOperation.h:404 - [LEG2CRM!19,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][155] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 19, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 447: // STATE 157 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][157] = 1;
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
	case 448: // STATE 160 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][160] = 1;
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
	case 449: // STATE 163 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][163] = 1;
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
	case 450: // STATE 166 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][166] = 1;
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
	case 451: // STATE 169 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][169] = 1;
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
	case 452: // STATE 172 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][172] = 1;
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
	case 453: // STATE 175 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][175] = 1;
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
	case 454: // STATE 178 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][178] = 1;
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
	case 455: // STATE 181 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][181] = 1;
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
	case 456: // STATE 184 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][184] = 1;
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
	case 457: // STATE 187 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][187] = 1;
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
	case 458: // STATE 190 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][190] = 1;
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
	case 459: // STATE 193 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][193] = 1;
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
	case 460: // STATE 199 - Case3.pml:117 - [((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][199] = 1;
		if (!((((((int)now.L1_bo.right)==1)||(((int)now.L1_bo.oblig)==1))||(((int)now.L1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 200 - Case3.pml:117 - [L1_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.status);
		now.L1_bo.status = 13;
#ifdef VAR_RANGES
		logval("L1_bo.status", ((int)now.L1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 201 - EduOperation.h:404 - [LEG2CRM!19,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 19, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 463: // STATE 203 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][203] = 1;
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
	case 464: // STATE 206 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][206] = 1;
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
	case 465: // STATE 209 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][209] = 1;
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
	case 466: // STATE 212 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][212] = 1;
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
	case 467: // STATE 215 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][215] = 1;
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
	case 468: // STATE 218 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][218] = 1;
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
	case 469: // STATE 221 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][221] = 1;
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
	case 470: // STATE 224 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][224] = 1;
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
	case 471: // STATE 227 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][227] = 1;
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
	case 472: // STATE 230 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][230] = 1;
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
	case 473: // STATE 233 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][233] = 1;
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
	case 474: // STATE 236 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][236] = 1;
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
	case 475: // STATE 239 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][239] = 1;
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
	case 476: // STATE 245 - Case3.pml:118 - [((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		if (!((((((int)now.L1_bo.right)==1)||(((int)now.L1_bo.oblig)==1))||(((int)now.L1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 246 - Case3.pml:118 - [L1_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][246] = 1;
		(trpt+1)->bup.oval = ((int)now.L1_bo.status);
		now.L1_bo.status = 15;
#ifdef VAR_RANGES
		logval("L1_bo.status", ((int)now.L1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 247 - EduOperation.h:404 - [LEG2CRM!19,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][247] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 19, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 479: // STATE 249 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][249] = 1;
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
	case 480: // STATE 252 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][252] = 1;
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
	case 481: // STATE 255 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][255] = 1;
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
	case 482: // STATE 258 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][258] = 1;
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
	case 483: // STATE 261 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][261] = 1;
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
	case 484: // STATE 264 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][264] = 1;
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
	case 485: // STATE 267 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][267] = 1;
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
	case 486: // STATE 270 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][270] = 1;
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
	case 487: // STATE 273 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][273] = 1;
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
	case 488: // STATE 276 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][276] = 1;
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
	case 489: // STATE 279 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][279] = 1;
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
	case 490: // STATE 282 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][282] = 1;
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
	case 491: // STATE 285 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][285] = 1;
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
	case 492: // STATE 291 - Case3.pml:120 - [((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][291] = 1;
		if (!((((((int)now.L2_bo.right)==1)||(((int)now.L2_bo.oblig)==1))||(((int)now.L2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 292 - Case3.pml:120 - [L2_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][292] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.status);
		now.L2_bo.status = 17;
#ifdef VAR_RANGES
		logval("L2_bo.status", ((int)now.L2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 293 - EduOperation.h:404 - [LEG2CRM!20,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 20, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 495: // STATE 295 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][295] = 1;
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
	case 496: // STATE 298 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][298] = 1;
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
	case 497: // STATE 301 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][301] = 1;
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
	case 498: // STATE 304 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][304] = 1;
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
	case 499: // STATE 307 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][307] = 1;
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
	case 500: // STATE 310 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][310] = 1;
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
	case 501: // STATE 313 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][313] = 1;
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
	case 502: // STATE 316 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][316] = 1;
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
	case 503: // STATE 319 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][319] = 1;
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
	case 504: // STATE 322 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][322] = 1;
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
	case 505: // STATE 325 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][325] = 1;
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
	case 506: // STATE 328 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][328] = 1;
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
	case 507: // STATE 331 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][331] = 1;
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
	case 508: // STATE 337 - Case3.pml:121 - [((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][337] = 1;
		if (!((((((int)now.L2_bo.right)==1)||(((int)now.L2_bo.oblig)==1))||(((int)now.L2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 338 - Case3.pml:121 - [L2_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][338] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.status);
		now.L2_bo.status = 13;
#ifdef VAR_RANGES
		logval("L2_bo.status", ((int)now.L2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 339 - EduOperation.h:404 - [LEG2CRM!20,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][339] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 20, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 511: // STATE 341 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][341] = 1;
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
	case 512: // STATE 344 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][344] = 1;
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
	case 513: // STATE 347 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][347] = 1;
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
	case 514: // STATE 350 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][350] = 1;
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
	case 515: // STATE 353 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][353] = 1;
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
	case 516: // STATE 356 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][356] = 1;
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
	case 517: // STATE 359 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][359] = 1;
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
	case 518: // STATE 362 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][362] = 1;
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
	case 519: // STATE 365 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][365] = 1;
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
	case 520: // STATE 368 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][368] = 1;
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
	case 521: // STATE 371 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][371] = 1;
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
	case 522: // STATE 374 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][374] = 1;
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
	case 523: // STATE 377 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][377] = 1;
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
	case 524: // STATE 383 - Case3.pml:122 - [((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][383] = 1;
		if (!((((((int)now.L2_bo.right)==1)||(((int)now.L2_bo.oblig)==1))||(((int)now.L2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 384 - Case3.pml:122 - [L2_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][384] = 1;
		(trpt+1)->bup.oval = ((int)now.L2_bo.status);
		now.L2_bo.status = 15;
#ifdef VAR_RANGES
		logval("L2_bo.status", ((int)now.L2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 526: // STATE 385 - EduOperation.h:404 - [LEG2CRM!20,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][385] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 20, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 527: // STATE 387 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][387] = 1;
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
	case 528: // STATE 390 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][390] = 1;
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
	case 529: // STATE 393 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][393] = 1;
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
	case 530: // STATE 396 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][396] = 1;
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
	case 531: // STATE 399 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][399] = 1;
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
	case 532: // STATE 402 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][402] = 1;
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
	case 533: // STATE 405 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][405] = 1;
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
	case 534: // STATE 408 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][408] = 1;
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
	case 535: // STATE 411 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][411] = 1;
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
	case 536: // STATE 414 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][414] = 1;
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
	case 537: // STATE 417 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][417] = 1;
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
	case 538: // STATE 420 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][420] = 1;
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
	case 539: // STATE 423 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][423] = 1;
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
	case 540: // STATE 429 - Case3.pml:124 - [((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][429] = 1;
		if (!((((((int)now.L3_bo.right)==1)||(((int)now.L3_bo.oblig)==1))||(((int)now.L3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 430 - Case3.pml:124 - [L3_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][430] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.status);
		now.L3_bo.status = 17;
#ifdef VAR_RANGES
		logval("L3_bo.status", ((int)now.L3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 431 - EduOperation.h:404 - [LEG2CRM!21,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][431] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 543: // STATE 433 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][433] = 1;
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
	case 544: // STATE 436 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][436] = 1;
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
	case 545: // STATE 439 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][439] = 1;
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
	case 546: // STATE 442 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][442] = 1;
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
	case 547: // STATE 445 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][445] = 1;
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
	case 548: // STATE 448 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][448] = 1;
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
	case 549: // STATE 451 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][451] = 1;
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
	case 550: // STATE 454 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][454] = 1;
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
	case 551: // STATE 457 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][457] = 1;
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
	case 552: // STATE 460 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][460] = 1;
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
	case 553: // STATE 463 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][463] = 1;
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
	case 554: // STATE 466 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][466] = 1;
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
	case 555: // STATE 469 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][469] = 1;
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
	case 556: // STATE 475 - Case3.pml:125 - [((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][475] = 1;
		if (!((((((int)now.L3_bo.right)==1)||(((int)now.L3_bo.oblig)==1))||(((int)now.L3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 476 - Case3.pml:125 - [L3_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][476] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.status);
		now.L3_bo.status = 13;
#ifdef VAR_RANGES
		logval("L3_bo.status", ((int)now.L3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 477 - EduOperation.h:404 - [LEG2CRM!21,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][477] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 559: // STATE 479 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][479] = 1;
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
	case 560: // STATE 482 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][482] = 1;
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
	case 561: // STATE 485 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][485] = 1;
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
	case 562: // STATE 488 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][488] = 1;
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
	case 563: // STATE 491 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][491] = 1;
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
	case 564: // STATE 494 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][494] = 1;
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
	case 565: // STATE 497 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][497] = 1;
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
	case 566: // STATE 500 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][500] = 1;
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
	case 567: // STATE 503 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][503] = 1;
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
	case 568: // STATE 506 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][506] = 1;
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
	case 569: // STATE 509 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][509] = 1;
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
	case 570: // STATE 512 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][512] = 1;
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
	case 571: // STATE 515 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][515] = 1;
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
	case 572: // STATE 521 - Case3.pml:126 - [((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][521] = 1;
		if (!((((((int)now.L3_bo.right)==1)||(((int)now.L3_bo.oblig)==1))||(((int)now.L3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 522 - Case3.pml:126 - [L3_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][522] = 1;
		(trpt+1)->bup.oval = ((int)now.L3_bo.status);
		now.L3_bo.status = 15;
#ifdef VAR_RANGES
		logval("L3_bo.status", ((int)now.L3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 523 - EduOperation.h:404 - [LEG2CRM!21,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][523] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 21, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 575: // STATE 525 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][525] = 1;
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
	case 576: // STATE 528 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][528] = 1;
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
	case 577: // STATE 531 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][531] = 1;
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
	case 578: // STATE 534 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][534] = 1;
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
	case 579: // STATE 537 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][537] = 1;
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
	case 580: // STATE 540 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][540] = 1;
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
	case 581: // STATE 543 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][543] = 1;
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
	case 582: // STATE 546 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][546] = 1;
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
	case 583: // STATE 549 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][549] = 1;
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
	case 584: // STATE 552 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][552] = 1;
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
	case 585: // STATE 555 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][555] = 1;
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
	case 586: // STATE 558 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][558] = 1;
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
	case 587: // STATE 561 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][561] = 1;
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
	case 588: // STATE 567 - Case3.pml:128 - [((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][567] = 1;
		if (!((((((int)now.L4_bo.right)==1)||(((int)now.L4_bo.oblig)==1))||(((int)now.L4_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 568 - Case3.pml:128 - [L4_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][568] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.status);
		now.L4_bo.status = 17;
#ifdef VAR_RANGES
		logval("L4_bo.status", ((int)now.L4_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 569 - EduOperation.h:404 - [LEG2CRM!22,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][569] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 591: // STATE 571 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][571] = 1;
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
	case 592: // STATE 574 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][574] = 1;
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
	case 593: // STATE 577 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][577] = 1;
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
	case 594: // STATE 580 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][580] = 1;
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
	case 595: // STATE 583 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][583] = 1;
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
	case 596: // STATE 586 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][586] = 1;
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
	case 597: // STATE 589 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][589] = 1;
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
	case 598: // STATE 592 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][592] = 1;
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
	case 599: // STATE 595 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][595] = 1;
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
	case 600: // STATE 598 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][598] = 1;
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
	case 601: // STATE 601 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][601] = 1;
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
	case 602: // STATE 604 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][604] = 1;
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
	case 603: // STATE 607 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][607] = 1;
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
	case 604: // STATE 613 - Case3.pml:129 - [((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][613] = 1;
		if (!((((((int)now.L4_bo.right)==1)||(((int)now.L4_bo.oblig)==1))||(((int)now.L4_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 614 - Case3.pml:129 - [L4_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][614] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.status);
		now.L4_bo.status = 13;
#ifdef VAR_RANGES
		logval("L4_bo.status", ((int)now.L4_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 615 - EduOperation.h:404 - [LEG2CRM!22,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][615] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 607: // STATE 617 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][617] = 1;
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
	case 608: // STATE 620 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][620] = 1;
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
	case 609: // STATE 623 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][623] = 1;
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
	case 610: // STATE 626 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][626] = 1;
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
	case 611: // STATE 629 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][629] = 1;
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
	case 612: // STATE 632 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][632] = 1;
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
	case 613: // STATE 635 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][635] = 1;
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
	case 614: // STATE 638 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][638] = 1;
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
	case 615: // STATE 641 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][641] = 1;
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
	case 616: // STATE 644 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][644] = 1;
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
	case 617: // STATE 647 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][647] = 1;
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
	case 618: // STATE 650 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][650] = 1;
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
	case 619: // STATE 653 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][653] = 1;
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
	case 620: // STATE 659 - Case3.pml:130 - [((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][659] = 1;
		if (!((((((int)now.L4_bo.right)==1)||(((int)now.L4_bo.oblig)==1))||(((int)now.L4_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 660 - Case3.pml:130 - [L4_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][660] = 1;
		(trpt+1)->bup.oval = ((int)now.L4_bo.status);
		now.L4_bo.status = 15;
#ifdef VAR_RANGES
		logval("L4_bo.status", ((int)now.L4_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 661 - EduOperation.h:404 - [LEG2CRM!22,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][661] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 22, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 623: // STATE 663 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][663] = 1;
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
	case 624: // STATE 666 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][666] = 1;
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
	case 625: // STATE 669 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][669] = 1;
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
	case 626: // STATE 672 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][672] = 1;
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
	case 627: // STATE 675 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][675] = 1;
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
	case 628: // STATE 678 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][678] = 1;
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
	case 629: // STATE 681 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][681] = 1;
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
	case 630: // STATE 684 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][684] = 1;
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
	case 631: // STATE 687 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][687] = 1;
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
	case 632: // STATE 690 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][690] = 1;
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
	case 633: // STATE 693 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][693] = 1;
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
	case 634: // STATE 696 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][696] = 1;
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
	case 635: // STATE 699 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][699] = 1;
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
	case 636: // STATE 705 - Case3.pml:132 - [((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][705] = 1;
		if (!((((((int)now.L5_bo.right)==1)||(((int)now.L5_bo.oblig)==1))||(((int)now.L5_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 706 - Case3.pml:132 - [L5_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][706] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.status);
		now.L5_bo.status = 17;
#ifdef VAR_RANGES
		logval("L5_bo.status", ((int)now.L5_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 707 - EduOperation.h:404 - [LEG2CRM!23,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][707] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 639: // STATE 709 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][709] = 1;
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
	case 640: // STATE 712 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][712] = 1;
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
	case 641: // STATE 715 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][715] = 1;
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
	case 642: // STATE 718 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][718] = 1;
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
	case 643: // STATE 721 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][721] = 1;
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
	case 644: // STATE 724 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][724] = 1;
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
	case 645: // STATE 727 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][727] = 1;
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
	case 646: // STATE 730 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][730] = 1;
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
	case 647: // STATE 733 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][733] = 1;
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
	case 648: // STATE 736 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][736] = 1;
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
	case 649: // STATE 739 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][739] = 1;
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
	case 650: // STATE 742 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][742] = 1;
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
	case 651: // STATE 745 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][745] = 1;
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
	case 652: // STATE 751 - Case3.pml:133 - [((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][751] = 1;
		if (!((((((int)now.L5_bo.right)==1)||(((int)now.L5_bo.oblig)==1))||(((int)now.L5_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 752 - Case3.pml:133 - [L5_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][752] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.status);
		now.L5_bo.status = 13;
#ifdef VAR_RANGES
		logval("L5_bo.status", ((int)now.L5_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 753 - EduOperation.h:404 - [LEG2CRM!23,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][753] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 655: // STATE 755 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][755] = 1;
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
	case 656: // STATE 758 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][758] = 1;
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
	case 657: // STATE 761 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][761] = 1;
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
	case 658: // STATE 764 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][764] = 1;
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
	case 659: // STATE 767 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][767] = 1;
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
	case 660: // STATE 770 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][770] = 1;
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
	case 661: // STATE 773 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][773] = 1;
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
	case 662: // STATE 776 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][776] = 1;
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
	case 663: // STATE 779 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][779] = 1;
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
	case 664: // STATE 782 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][782] = 1;
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
	case 665: // STATE 785 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][785] = 1;
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
	case 666: // STATE 788 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][788] = 1;
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
	case 667: // STATE 791 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][791] = 1;
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
	case 668: // STATE 797 - Case3.pml:134 - [((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][797] = 1;
		if (!((((((int)now.L5_bo.right)==1)||(((int)now.L5_bo.oblig)==1))||(((int)now.L5_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 798 - Case3.pml:134 - [L5_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][798] = 1;
		(trpt+1)->bup.oval = ((int)now.L5_bo.status);
		now.L5_bo.status = 15;
#ifdef VAR_RANGES
		logval("L5_bo.status", ((int)now.L5_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 799 - EduOperation.h:404 - [LEG2CRM!23,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][799] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 23, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 671: // STATE 801 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][801] = 1;
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
	case 672: // STATE 804 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][804] = 1;
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
	case 673: // STATE 807 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][807] = 1;
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
	case 674: // STATE 810 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][810] = 1;
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
	case 675: // STATE 813 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][813] = 1;
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
	case 676: // STATE 816 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][816] = 1;
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
	case 677: // STATE 819 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][819] = 1;
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
	case 678: // STATE 822 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][822] = 1;
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
	case 679: // STATE 825 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][825] = 1;
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
	case 680: // STATE 828 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][828] = 1;
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
	case 681: // STATE 831 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][831] = 1;
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
	case 682: // STATE 834 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][834] = 1;
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
	case 683: // STATE 837 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][837] = 1;
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
	case 684: // STATE 843 - Case3.pml:136 - [((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][843] = 1;
		if (!((((((int)now.L6_bo.right)==1)||(((int)now.L6_bo.oblig)==1))||(((int)now.L6_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 685: // STATE 844 - Case3.pml:136 - [L6_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][844] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.status);
		now.L6_bo.status = 17;
#ifdef VAR_RANGES
		logval("L6_bo.status", ((int)now.L6_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 686: // STATE 845 - EduOperation.h:404 - [LEG2CRM!24,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][845] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 687: // STATE 847 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][847] = 1;
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
	case 688: // STATE 850 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][850] = 1;
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
	case 689: // STATE 853 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][853] = 1;
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
	case 690: // STATE 856 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][856] = 1;
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
	case 691: // STATE 859 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][859] = 1;
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
	case 692: // STATE 862 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][862] = 1;
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
	case 693: // STATE 865 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][865] = 1;
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
	case 694: // STATE 868 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][868] = 1;
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
	case 695: // STATE 871 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][871] = 1;
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
	case 696: // STATE 874 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][874] = 1;
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
	case 697: // STATE 877 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][877] = 1;
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
	case 698: // STATE 880 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][880] = 1;
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
	case 699: // STATE 883 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][883] = 1;
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
	case 700: // STATE 889 - Case3.pml:137 - [((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][889] = 1;
		if (!((((((int)now.L6_bo.right)==1)||(((int)now.L6_bo.oblig)==1))||(((int)now.L6_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 701: // STATE 890 - Case3.pml:137 - [L6_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][890] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.status);
		now.L6_bo.status = 13;
#ifdef VAR_RANGES
		logval("L6_bo.status", ((int)now.L6_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 702: // STATE 891 - EduOperation.h:404 - [LEG2CRM!24,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][891] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 703: // STATE 893 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][893] = 1;
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
	case 704: // STATE 896 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][896] = 1;
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
	case 705: // STATE 899 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][899] = 1;
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
	case 706: // STATE 902 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][902] = 1;
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
	case 707: // STATE 905 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][905] = 1;
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
	case 708: // STATE 908 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][908] = 1;
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
	case 709: // STATE 911 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][911] = 1;
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
	case 710: // STATE 914 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][914] = 1;
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
	case 711: // STATE 917 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][917] = 1;
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
	case 712: // STATE 920 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][920] = 1;
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
	case 713: // STATE 923 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][923] = 1;
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
	case 714: // STATE 926 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][926] = 1;
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
	case 715: // STATE 929 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][929] = 1;
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
	case 716: // STATE 935 - Case3.pml:138 - [((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][935] = 1;
		if (!((((((int)now.L6_bo.right)==1)||(((int)now.L6_bo.oblig)==1))||(((int)now.L6_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 717: // STATE 936 - Case3.pml:138 - [L6_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][936] = 1;
		(trpt+1)->bup.oval = ((int)now.L6_bo.status);
		now.L6_bo.status = 15;
#ifdef VAR_RANGES
		logval("L6_bo.status", ((int)now.L6_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 718: // STATE 937 - EduOperation.h:404 - [LEG2CRM!24,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][937] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 24); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 24, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 719: // STATE 939 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][939] = 1;
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
	case 720: // STATE 942 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][942] = 1;
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
	case 721: // STATE 945 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][945] = 1;
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
	case 722: // STATE 948 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][948] = 1;
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
	case 723: // STATE 951 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][951] = 1;
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
	case 724: // STATE 954 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][954] = 1;
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
	case 725: // STATE 957 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][957] = 1;
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
	case 726: // STATE 960 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][960] = 1;
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
	case 727: // STATE 963 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][963] = 1;
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
	case 728: // STATE 966 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][966] = 1;
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
	case 729: // STATE 969 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][969] = 1;
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
	case 730: // STATE 972 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][972] = 1;
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
	case 731: // STATE 975 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][975] = 1;
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
	case 732: // STATE 981 - Case3.pml:140 - [((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][981] = 1;
		if (!((((((int)now.L7_bo.right)==1)||(((int)now.L7_bo.oblig)==1))||(((int)now.L7_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 733: // STATE 982 - Case3.pml:140 - [L7_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][982] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.status);
		now.L7_bo.status = 17;
#ifdef VAR_RANGES
		logval("L7_bo.status", ((int)now.L7_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 734: // STATE 983 - EduOperation.h:404 - [LEG2CRM!25,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][983] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 735: // STATE 985 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][985] = 1;
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
	case 736: // STATE 988 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][988] = 1;
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
	case 737: // STATE 991 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][991] = 1;
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
	case 738: // STATE 994 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][994] = 1;
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
	case 739: // STATE 997 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][997] = 1;
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
	case 740: // STATE 1000 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1000] = 1;
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
	case 741: // STATE 1003 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1003] = 1;
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
	case 742: // STATE 1006 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1006] = 1;
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
	case 743: // STATE 1009 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1009] = 1;
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
	case 744: // STATE 1012 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1012] = 1;
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
	case 745: // STATE 1015 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1015] = 1;
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
	case 746: // STATE 1018 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1018] = 1;
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
	case 747: // STATE 1021 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1021] = 1;
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
	case 748: // STATE 1027 - Case3.pml:141 - [((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1027] = 1;
		if (!((((((int)now.L7_bo.right)==1)||(((int)now.L7_bo.oblig)==1))||(((int)now.L7_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 749: // STATE 1028 - Case3.pml:141 - [L7_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1028] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.status);
		now.L7_bo.status = 13;
#ifdef VAR_RANGES
		logval("L7_bo.status", ((int)now.L7_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 750: // STATE 1029 - EduOperation.h:404 - [LEG2CRM!25,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1029] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 13); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 13, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 751: // STATE 1031 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1031] = 1;
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
	case 752: // STATE 1034 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1034] = 1;
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
	case 753: // STATE 1037 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1037] = 1;
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
	case 754: // STATE 1040 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1040] = 1;
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
	case 755: // STATE 1043 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1043] = 1;
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
	case 756: // STATE 1046 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1046] = 1;
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
	case 757: // STATE 1049 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1049] = 1;
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
	case 758: // STATE 1052 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1052] = 1;
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
	case 759: // STATE 1055 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1055] = 1;
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
	case 760: // STATE 1058 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1058] = 1;
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
	case 761: // STATE 1061 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1061] = 1;
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
	case 762: // STATE 1064 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1064] = 1;
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
	case 763: // STATE 1067 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1067] = 1;
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
	case 764: // STATE 1073 - Case3.pml:142 - [((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1073] = 1;
		if (!((((((int)now.L7_bo.right)==1)||(((int)now.L7_bo.oblig)==1))||(((int)now.L7_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 765: // STATE 1074 - Case3.pml:142 - [L7_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1074] = 1;
		(trpt+1)->bup.oval = ((int)now.L7_bo.status);
		now.L7_bo.status = 15;
#ifdef VAR_RANGES
		logval("L7_bo.status", ((int)now.L7_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 766: // STATE 1075 - EduOperation.h:404 - [LEG2CRM!25,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1075] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 25); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 25, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 767: // STATE 1077 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1077] = 1;
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
	case 768: // STATE 1080 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1080] = 1;
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
	case 769: // STATE 1083 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1083] = 1;
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
	case 770: // STATE 1086 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1086] = 1;
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
	case 771: // STATE 1089 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1089] = 1;
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
	case 772: // STATE 1092 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1092] = 1;
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
	case 773: // STATE 1095 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1095] = 1;
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
	case 774: // STATE 1098 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1098] = 1;
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
	case 775: // STATE 1101 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1101] = 1;
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
	case 776: // STATE 1104 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1104] = 1;
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
	case 777: // STATE 1107 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1107] = 1;
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
	case 778: // STATE 1110 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1110] = 1;
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
	case 779: // STATE 1113 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1113] = 1;
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
	case 780: // STATE 1119 - Case3.pml:144 - [((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1119] = 1;
		if (!((((((int)now.CW1_bo.right)==1)||(((int)now.CW1_bo.oblig)==1))||(((int)now.CW1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 781: // STATE 1120 - Case3.pml:144 - [CW1_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1120] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.status);
		now.CW1_bo.status = 17;
#ifdef VAR_RANGES
		logval("CW1_bo.status", ((int)now.CW1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 782: // STATE 1121 - EduOperation.h:404 - [LEG2CRM!26,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1121] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 26); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 26, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 783: // STATE 1123 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1123] = 1;
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
	case 784: // STATE 1126 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1126] = 1;
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
	case 785: // STATE 1129 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1129] = 1;
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
	case 786: // STATE 1132 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1132] = 1;
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
	case 787: // STATE 1135 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1135] = 1;
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
	case 788: // STATE 1138 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1138] = 1;
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
	case 789: // STATE 1141 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1141] = 1;
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
	case 790: // STATE 1144 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1144] = 1;
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
	case 791: // STATE 1147 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1147] = 1;
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
	case 792: // STATE 1150 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1150] = 1;
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
	case 793: // STATE 1153 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1153] = 1;
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
	case 794: // STATE 1156 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1156] = 1;
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
	case 795: // STATE 1159 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1159] = 1;
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
	case 796: // STATE 1165 - Case3.pml:145 - [((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1165] = 1;
		if (!((((((int)now.CW1_bo.right)==1)||(((int)now.CW1_bo.oblig)==1))||(((int)now.CW1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 797: // STATE 1166 - Case3.pml:145 - [CW1_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1166] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.status);
		now.CW1_bo.status = 13;
#ifdef VAR_RANGES
		logval("CW1_bo.status", ((int)now.CW1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 798: // STATE 1167 - EduOperation.h:404 - [LEG2CRM!26,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1167] = 1;
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
	case 799: // STATE 1169 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1169] = 1;
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
	case 800: // STATE 1172 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1172] = 1;
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
	case 801: // STATE 1175 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1175] = 1;
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
	case 802: // STATE 1178 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1178] = 1;
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
	case 803: // STATE 1181 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1181] = 1;
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
	case 804: // STATE 1184 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1184] = 1;
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
	case 805: // STATE 1187 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1187] = 1;
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
	case 806: // STATE 1190 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1190] = 1;
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
	case 807: // STATE 1193 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1193] = 1;
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
	case 808: // STATE 1196 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1196] = 1;
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
	case 809: // STATE 1199 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1199] = 1;
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
	case 810: // STATE 1202 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1202] = 1;
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
	case 811: // STATE 1205 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1205] = 1;
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
	case 812: // STATE 1211 - Case3.pml:146 - [((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1211] = 1;
		if (!((((((int)now.CW1_bo.right)==1)||(((int)now.CW1_bo.oblig)==1))||(((int)now.CW1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 813: // STATE 1212 - Case3.pml:146 - [CW1_bo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1212] = 1;
		(trpt+1)->bup.oval = ((int)now.CW1_bo.status);
		now.CW1_bo.status = 14;
#ifdef VAR_RANGES
		logval("CW1_bo.status", ((int)now.CW1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 814: // STATE 1213 - EduOperation.h:404 - [LEG2CRM!26,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1213] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 26); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 26, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 815: // STATE 1215 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1215] = 1;
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
	case 816: // STATE 1218 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1218] = 1;
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
	case 817: // STATE 1221 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1221] = 1;
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
	case 818: // STATE 1224 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1224] = 1;
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
	case 819: // STATE 1227 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1227] = 1;
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
	case 820: // STATE 1230 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1230] = 1;
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
	case 821: // STATE 1233 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1233] = 1;
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
	case 822: // STATE 1236 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1236] = 1;
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
	case 823: // STATE 1239 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1239] = 1;
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
	case 824: // STATE 1242 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1242] = 1;
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
	case 825: // STATE 1245 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1245] = 1;
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
	case 826: // STATE 1248 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1248] = 1;
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
	case 827: // STATE 1251 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1251] = 1;
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
	case 828: // STATE 1257 - Case3.pml:148 - [((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1257] = 1;
		if (!((((((int)now.CW2_bo.right)==1)||(((int)now.CW2_bo.oblig)==1))||(((int)now.CW2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 829: // STATE 1258 - Case3.pml:148 - [CW2_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1258] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.status);
		now.CW2_bo.status = 17;
#ifdef VAR_RANGES
		logval("CW2_bo.status", ((int)now.CW2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 830: // STATE 1259 - EduOperation.h:404 - [LEG2CRM!27,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1259] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 27); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 27, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 831: // STATE 1261 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1261] = 1;
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
	case 832: // STATE 1264 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1264] = 1;
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
	case 833: // STATE 1267 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1267] = 1;
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
	case 834: // STATE 1270 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1270] = 1;
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
	case 835: // STATE 1273 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1273] = 1;
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
	case 836: // STATE 1276 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1276] = 1;
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
	case 837: // STATE 1279 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1279] = 1;
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
	case 838: // STATE 1282 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1282] = 1;
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
	case 839: // STATE 1285 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1285] = 1;
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
	case 840: // STATE 1288 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1288] = 1;
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
	case 841: // STATE 1291 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1291] = 1;
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
	case 842: // STATE 1294 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1294] = 1;
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
	case 843: // STATE 1297 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1297] = 1;
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
	case 844: // STATE 1303 - Case3.pml:149 - [((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1303] = 1;
		if (!((((((int)now.CW2_bo.right)==1)||(((int)now.CW2_bo.oblig)==1))||(((int)now.CW2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 845: // STATE 1304 - Case3.pml:149 - [CW2_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1304] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.status);
		now.CW2_bo.status = 13;
#ifdef VAR_RANGES
		logval("CW2_bo.status", ((int)now.CW2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 846: // STATE 1305 - EduOperation.h:404 - [LEG2CRM!27,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1305] = 1;
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
	case 847: // STATE 1307 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1307] = 1;
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
	case 848: // STATE 1310 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1310] = 1;
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
	case 849: // STATE 1313 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1313] = 1;
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
	case 850: // STATE 1316 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1316] = 1;
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
	case 851: // STATE 1319 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1319] = 1;
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
	case 852: // STATE 1322 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1322] = 1;
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
	case 853: // STATE 1325 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1325] = 1;
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
	case 854: // STATE 1328 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1328] = 1;
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
	case 855: // STATE 1331 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1331] = 1;
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
	case 856: // STATE 1334 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1334] = 1;
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
	case 857: // STATE 1337 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1337] = 1;
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
	case 858: // STATE 1340 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1340] = 1;
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
	case 859: // STATE 1343 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1343] = 1;
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
	case 860: // STATE 1349 - Case3.pml:150 - [((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1349] = 1;
		if (!((((((int)now.CW2_bo.right)==1)||(((int)now.CW2_bo.oblig)==1))||(((int)now.CW2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 861: // STATE 1350 - Case3.pml:150 - [CW2_bo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1350] = 1;
		(trpt+1)->bup.oval = ((int)now.CW2_bo.status);
		now.CW2_bo.status = 14;
#ifdef VAR_RANGES
		logval("CW2_bo.status", ((int)now.CW2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 862: // STATE 1351 - EduOperation.h:404 - [LEG2CRM!27,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1351] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 27); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 27, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 863: // STATE 1353 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1353] = 1;
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
	case 864: // STATE 1356 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1356] = 1;
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
	case 865: // STATE 1359 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1359] = 1;
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
	case 866: // STATE 1362 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1362] = 1;
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
	case 867: // STATE 1365 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1365] = 1;
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
	case 868: // STATE 1368 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1368] = 1;
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
	case 869: // STATE 1371 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1371] = 1;
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
	case 870: // STATE 1374 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1374] = 1;
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
	case 871: // STATE 1377 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1377] = 1;
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
	case 872: // STATE 1380 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1380] = 1;
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
	case 873: // STATE 1383 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1383] = 1;
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
	case 874: // STATE 1386 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1386] = 1;
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
	case 875: // STATE 1389 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1389] = 1;
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
	case 876: // STATE 1395 - Case3.pml:152 - [((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1395] = 1;
		if (!((((((int)now.EXAM_bo.right)==1)||(((int)now.EXAM_bo.oblig)==1))||(((int)now.EXAM_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 877: // STATE 1396 - Case3.pml:152 - [EXAM_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1396] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.status);
		now.EXAM_bo.status = 17;
#ifdef VAR_RANGES
		logval("EXAM_bo.status", ((int)now.EXAM_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 878: // STATE 1397 - EduOperation.h:404 - [LEG2CRM!28,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1397] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 28); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 28, 17, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 879: // STATE 1399 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1399] = 1;
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
	case 880: // STATE 1402 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1402] = 1;
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
	case 881: // STATE 1405 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1405] = 1;
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
	case 882: // STATE 1408 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1408] = 1;
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
	case 883: // STATE 1411 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1411] = 1;
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
	case 884: // STATE 1414 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1414] = 1;
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
	case 885: // STATE 1417 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1417] = 1;
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
	case 886: // STATE 1420 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1420] = 1;
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
	case 887: // STATE 1423 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1423] = 1;
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
	case 888: // STATE 1426 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1426] = 1;
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
	case 889: // STATE 1429 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1429] = 1;
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
	case 890: // STATE 1432 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1432] = 1;
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
	case 891: // STATE 1435 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1435] = 1;
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
	case 892: // STATE 1441 - Case3.pml:153 - [((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1441] = 1;
		if (!((((((int)now.EXAM_bo.right)==1)||(((int)now.EXAM_bo.oblig)==1))||(((int)now.EXAM_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 893: // STATE 1442 - Case3.pml:153 - [EXAM_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1442] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.status);
		now.EXAM_bo.status = 13;
#ifdef VAR_RANGES
		logval("EXAM_bo.status", ((int)now.EXAM_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 894: // STATE 1443 - EduOperation.h:404 - [LEG2CRM!28,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1443] = 1;
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
	case 895: // STATE 1445 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1445] = 1;
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
	case 896: // STATE 1448 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1448] = 1;
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
	case 897: // STATE 1451 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1451] = 1;
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
	case 898: // STATE 1454 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1454] = 1;
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
	case 899: // STATE 1457 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1457] = 1;
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
	case 900: // STATE 1460 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1460] = 1;
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
	case 901: // STATE 1463 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1463] = 1;
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
	case 902: // STATE 1466 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1466] = 1;
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
	case 903: // STATE 1469 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1469] = 1;
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
	case 904: // STATE 1472 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1472] = 1;
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
	case 905: // STATE 1475 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1475] = 1;
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
	case 906: // STATE 1478 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1478] = 1;
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
	case 907: // STATE 1481 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1481] = 1;
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
	case 908: // STATE 1487 - Case3.pml:154 - [((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1487] = 1;
		if (!((((((int)now.EXAM_bo.right)==1)||(((int)now.EXAM_bo.oblig)==1))||(((int)now.EXAM_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 909: // STATE 1488 - Case3.pml:154 - [EXAM_bo.status = TO] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1488] = 1;
		(trpt+1)->bup.oval = ((int)now.EXAM_bo.status);
		now.EXAM_bo.status = 14;
#ifdef VAR_RANGES
		logval("EXAM_bo.status", ((int)now.EXAM_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 910: // STATE 1489 - EduOperation.h:404 - [LEG2CRM!28,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1489] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 28); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 28, 14, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 911: // STATE 1491 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][1491] = 1;
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
	case 912: // STATE 1494 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][1494] = 1;
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
	case 913: // STATE 1497 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][1497] = 1;
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
	case 914: // STATE 1500 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][1500] = 1;
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
	case 915: // STATE 1503 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][1503] = 1;
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
	case 916: // STATE 1506 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][1506] = 1;
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
	case 917: // STATE 1509 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][1509] = 1;
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
	case 918: // STATE 1512 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][1512] = 1;
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
	case 919: // STATE 1515 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][1515] = 1;
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
	case 920: // STATE 1518 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][1518] = 1;
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
	case 921: // STATE 1521 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][1521] = 1;
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
	case 922: // STATE 1524 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][1524] = 1;
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
	case 923: // STATE 1527 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][1527] = 1;
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
	case 924: // STATE 1536 - Case3.pml:156 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1536] = 1;
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

