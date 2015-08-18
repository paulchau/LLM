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
	case 3: // STATE 1 - ./test.pml:183 - [(run BEG())] (0:0:0 - 1)
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
	case 6: // STATE 1 - ./test.pml:169 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - ./BizOperation.h:390 - [(BEG2CRM?[17,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - ./BizOperation.h:390 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][3] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 4 - ./BizOperation.h:391 - [(BEG2CRM?[17,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - ./BizOperation.h:391 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][5] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 6 - ./BizOperation.h:392 - [(BEG2CRM?[17,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - ./BizOperation.h:392 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][7] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 8 - ./BizOperation.h:393 - [(BEG2CRM?[17,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 9 - ./BizOperation.h:393 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][9] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 13 - ./rules.h:23 - [((((BUYREQ_bo.right==1)&&((BUYREQ_bo.role_pl==BUYER)==1))&&((BUYREQ_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((int)now.BUYREQ_bo.right)==1)&&((((int)now.BUYREQ_bo.role_pl)==12)==1))&&((((int)now.BUYREQ_bo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - ./rules.h:25 - [BUYERexTrace = (BUYERexTrace|(1<<BUYREQ_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYREQ_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - ./rules.h:27 - [printf('\\n\\n')] (0:25:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(25, 16, 25) */
		reached[1][16] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(25, 17, 25) */
		reached[1][17] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYREQ</type>\\n')(25, 18, 25) */
		reached[1][18] = 1;
		Printf("<type>BUYREQ</type>\n");
		/* merge: printf('<status>success</status>\\n')(25, 19, 25) */
		reached[1][19] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(25, 20, 25) */
		reached[1][20] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 18: // STATE 22 - ./BizOperation.h:275 - [BUYREQ_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREQ_bo.right);
		now.BUYREQ_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.right", ((int)now.BUYREQ_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 23 - ./BizOperation.h:276 - [assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		spin_assert( !(((((int)now.BUYREQ_bo.right)==1)&&(((int)now.BUYREQ_bo.oblig)==1))), " !(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 24 - ./BizOperation.h:277 - [assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		spin_assert( !(((((int)now.BUYREQ_bo.right)==1)&&(((int)now.BUYREQ_bo.prohib)==1))), " !(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 26 - ./BizOperation.h:298 - [BUYREJ_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.oblig);
		now.BUYREJ_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 27 - ./BizOperation.h:299 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.prohib)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 28 - ./BizOperation.h:300 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.right)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 30 - ./BizOperation.h:298 - [BUYCONF_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.oblig);
		now.BUYCONF_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 31 - ./BizOperation.h:299 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.prohib)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 32 - ./BizOperation.h:300 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.right)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 34 - ./BizOperation.h:425 - [CRM2BEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 9, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 37 - ./rules.h:40 - [((((BUYREQ_bo.right==1)&&((BUYREQ_bo.role_pl==BUYER)==1))&&((BUYREQ_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((((int)now.BUYREQ_bo.right)==1)&&((((int)now.BUYREQ_bo.role_pl)==12)==1))&&((((int)now.BUYREQ_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 38 - ./rules.h:43 - [printf('\\n\\n')] (0:66:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(66, 39, 66) */
		reached[1][39] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(66, 40, 66) */
		reached[1][40] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYREQ</type>\\n')(66, 41, 66) */
		reached[1][41] = 1;
		Printf("<type>BUYREQ</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(66, 42, 66) */
		reached[1][42] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(66, 43, 66) */
		reached[1][43] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 45 - ./rules.h:51 - [((ReqFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!((((int)now.ReqFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 46 - ./rules.h:51 - [ReqFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.ReqFailBefore);
		now.ReqFailBefore = 1;
#ifdef VAR_RANGES
		logval("ReqFailBefore", ((int)now.ReqFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 47 - ./rules.h:52 - [printf('First BUYREQ-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		Printf("First BUYREQ-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 48 - ./BizOperation.h:425 - [CRM2BEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 9, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 50 - ./rules.h:56 - [((ReqFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!((((int)now.ReqFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 51 - ./rules.h:56 - [abncoend = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((int)abncoend);
		abncoend = 1;
#ifdef VAR_RANGES
		logval("abncoend", ((int)abncoend));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 52 - ./rules.h:57 - [printf('Last BUYREQ-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		Printf("Last BUYREQ-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 53 - ./BizOperation.h:275 - [BUYREQ_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREQ_bo.right);
		now.BUYREQ_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.right", ((int)now.BUYREQ_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 54 - ./BizOperation.h:276 - [assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		spin_assert( !(((((int)now.BUYREQ_bo.right)==1)&&(((int)now.BUYREQ_bo.oblig)==1))), " !(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 55 - ./BizOperation.h:277 - [assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		spin_assert( !(((((int)now.BUYREQ_bo.right)==1)&&(((int)now.BUYREQ_bo.prohib)==1))), " !(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 57 - ./rules.h:60 - [printf('\\n\\n')] (0:65:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(65, 58, 65) */
		reached[1][58] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(65, 59, 65) */
		reached[1][59] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(65, 60, 65) */
		reached[1][60] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(65, 61, 65) */
		reached[1][61] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(65, 62, 65) */
		reached[1][62] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 41: // STATE 64 - ./BizOperation.h:425 - [CRM2BEG!9,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 9, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 70 - ./BizOperation.h:432 - [CRM2BEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 75 - ./BizOperation.h:390 - [(BEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 76 - ./BizOperation.h:390 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][76] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 77 - ./BizOperation.h:391 - [(BEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 78 - ./BizOperation.h:391 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][78] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 79 - ./BizOperation.h:392 - [(BEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 80 - ./BizOperation.h:392 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][80] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 49: // STATE 81 - ./BizOperation.h:393 - [(BEG2CRM?[18,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 82 - ./BizOperation.h:393 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][82] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 51: // STATE 86 - ./rules.h:82 - [((((BUYREJ_bo.oblig==1)&&((BUYREJ_bo.role_pl==STORE)==1))&&((BUYREJ_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!((((((int)now.BUYREJ_bo.oblig)==1)&&((((int)now.BUYREJ_bo.role_pl)==11)==1))&&((((int)now.BUYREJ_bo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 87 - ./rules.h:83 - [STOREexTrace = (STOREexTrace|(1<<BUYREJ_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.BUYREJ_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 88 - ./rules.h:85 - [printf('\\n\\n')] (0:98:0 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>store</originator>\\n')(98, 89, 98) */
		reached[1][89] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(98, 90, 98) */
		reached[1][90] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYREJ</type>\\n')(98, 91, 98) */
		reached[1][91] = 1;
		Printf("<type>BUYREJ</type>\n");
		/* merge: printf('<status>success</status>\\n')(98, 92, 98) */
		reached[1][92] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(98, 93, 98) */
		reached[1][93] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 54: // STATE 95 - ./BizOperation.h:298 - [BUYREJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.oblig);
		now.BUYREJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 96 - ./BizOperation.h:299 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.prohib)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 97 - ./BizOperation.h:300 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.right)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 99 - ./BizOperation.h:298 - [BUYCONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.oblig);
		now.BUYCONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 100 - ./BizOperation.h:299 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.prohib)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 101 - ./BizOperation.h:300 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.right)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 103 - ./rules.h:95 - [printf('\\n\\n')] (0:111:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(111, 104, 111) */
		reached[1][104] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(111, 105, 111) */
		reached[1][105] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(111, 106, 111) */
		reached[1][106] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(111, 107, 111) */
		reached[1][107] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(111, 108, 111) */
		reached[1][108] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 61: // STATE 110 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 62: // STATE 113 - ./rules.h:105 - [((((BUYREJ_bo.oblig==1)&&((BUYREJ_bo.role_pl==STORE)==1))&&((BUYREJ_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!((((((int)now.BUYREJ_bo.oblig)==1)&&((((int)now.BUYREJ_bo.role_pl)==11)==1))&&((((int)now.BUYREJ_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 114 - ./rules.h:108 - [printf('\\n\\n')] (0:146:0 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>store</originator>\\n')(146, 115, 146) */
		reached[1][115] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(146, 116, 146) */
		reached[1][116] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYREJ</type>\\n')(146, 117, 146) */
		reached[1][117] = 1;
		Printf("<type>BUYREJ</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(146, 118, 146) */
		reached[1][118] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(146, 119, 146) */
		reached[1][119] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 64: // STATE 121 - ./rules.h:116 - [((RejFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!((((int)now.RejFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 122 - ./rules.h:116 - [RejFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)now.RejFailBefore);
		now.RejFailBefore = 1;
#ifdef VAR_RANGES
		logval("RejFailBefore", ((int)now.RejFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 123 - ./rules.h:117 - [printf('First BUYREJ-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		Printf("First BUYREJ-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 124 - ./BizOperation.h:425 - [CRM2BEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 126 - ./rules.h:121 - [((RejFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		if (!((((int)now.RejFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 127 - ./rules.h:121 - [abncoend = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		(trpt+1)->bup.oval = ((int)abncoend);
		abncoend = 1;
#ifdef VAR_RANGES
		logval("abncoend", ((int)abncoend));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 128 - ./rules.h:122 - [printf('Last BUYREJ-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		Printf("Last BUYREJ-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 129 - ./BizOperation.h:298 - [BUYREJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.oblig);
		now.BUYREJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 130 - ./BizOperation.h:299 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.prohib)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 131 - ./BizOperation.h:300 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.right)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 133 - ./BizOperation.h:298 - [BUYCONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.oblig);
		now.BUYCONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 134 - ./BizOperation.h:299 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.prohib)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 135 - ./BizOperation.h:300 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.right)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 137 - ./rules.h:126 - [printf('\\n\\n')] (0:145:0 - 1)
		IfNotBlocked
		reached[1][137] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(145, 138, 145) */
		reached[1][138] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(145, 139, 145) */
		reached[1][139] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(145, 140, 145) */
		reached[1][140] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(145, 141, 145) */
		reached[1][141] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(145, 142, 145) */
		reached[1][142] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 78: // STATE 144 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 79: // STATE 150 - ./BizOperation.h:432 - [CRM2BEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][150] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 80: // STATE 155 - ./BizOperation.h:390 - [(BEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][155] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 156 - ./BizOperation.h:390 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][156] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 82: // STATE 157 - ./BizOperation.h:391 - [(BEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][157] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 158 - ./BizOperation.h:391 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][158] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 84: // STATE 159 - ./BizOperation.h:392 - [(BEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 160 - ./BizOperation.h:392 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][160] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 86: // STATE 161 - ./BizOperation.h:393 - [(BEG2CRM?[19,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 162 - ./BizOperation.h:393 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][162] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 88: // STATE 166 - ./rules.h:148 - [((((BUYCONF_bo.oblig==1)&&((BUYCONF_bo.role_pl==STORE)==1))&&((BUYCONF_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][166] = 1;
		if (!((((((int)now.BUYCONF_bo.oblig)==1)&&((((int)now.BUYCONF_bo.role_pl)==11)==1))&&((((int)now.BUYCONF_bo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 167 - ./rules.h:149 - [STOREexTrace = (STOREexTrace|(1<<BUYCONF_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.BUYCONF_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 168 - ./rules.h:151 - [printf('\\n\\n')] (0:178:0 - 1)
		IfNotBlocked
		reached[1][168] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>store</originator>\\n')(178, 169, 178) */
		reached[1][169] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(178, 170, 178) */
		reached[1][170] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYCONF</type>\\n')(178, 171, 178) */
		reached[1][171] = 1;
		Printf("<type>BUYCONF</type>\n");
		/* merge: printf('<status>success</status>\\n')(178, 172, 178) */
		reached[1][172] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(178, 173, 178) */
		reached[1][173] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 91: // STATE 175 - ./BizOperation.h:298 - [BUYREJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.oblig);
		now.BUYREJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 176 - ./BizOperation.h:299 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][176] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.prohib)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 177 - ./BizOperation.h:300 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.right)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 179 - ./BizOperation.h:298 - [BUYCONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][179] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.oblig);
		now.BUYCONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 180 - ./BizOperation.h:299 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][180] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.prohib)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 181 - ./BizOperation.h:300 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][181] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.right)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 183 - ./BizOperation.h:298 - [BUYPAY_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][183] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.oblig);
		now.BUYPAY_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 184 - ./BizOperation.h:299 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][184] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.prohib)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 185 - ./BizOperation.h:300 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][185] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.right)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 187 - ./BizOperation.h:298 - [BUYCANC_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][187] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.oblig);
		now.BUYCANC_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 188 - ./BizOperation.h:299 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][188] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.prohib)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 189 - ./BizOperation.h:300 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][189] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.right)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 191 - ./BizOperation.h:425 - [CRM2BEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][191] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 194 - ./rules.h:165 - [((((BUYCONF_bo.oblig==1)&&((BUYCONF_bo.role_pl==STORE)==1))&&((BUYCONF_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][194] = 1;
		if (!((((((int)now.BUYCONF_bo.oblig)==1)&&((((int)now.BUYCONF_bo.role_pl)==11)==1))&&((((int)now.BUYCONF_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 195 - ./rules.h:168 - [printf('\\n\\n')] (0:227:0 - 1)
		IfNotBlocked
		reached[1][195] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>store</originator>\\n')(227, 196, 227) */
		reached[1][196] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(227, 197, 227) */
		reached[1][197] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYCONF</type>\\n')(227, 198, 227) */
		reached[1][198] = 1;
		Printf("<type>BUYCONF</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(227, 199, 227) */
		reached[1][199] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(227, 200, 227) */
		reached[1][200] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 106: // STATE 202 - ./rules.h:176 - [((ConfFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][202] = 1;
		if (!((((int)now.ConfFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 203 - ./rules.h:176 - [ConfFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][203] = 1;
		(trpt+1)->bup.oval = ((int)now.ConfFailBefore);
		now.ConfFailBefore = 1;
#ifdef VAR_RANGES
		logval("ConfFailBefore", ((int)now.ConfFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 204 - ./rules.h:177 - [printf('First BUYCONF-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][204] = 1;
		Printf("First BUYCONF-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 205 - ./BizOperation.h:425 - [CRM2BEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][205] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 110: // STATE 207 - ./rules.h:181 - [((ConfFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][207] = 1;
		if (!((((int)now.ConfFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 208 - ./rules.h:181 - [abncoend = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][208] = 1;
		(trpt+1)->bup.oval = ((int)abncoend);
		abncoend = 1;
#ifdef VAR_RANGES
		logval("abncoend", ((int)abncoend));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 209 - ./rules.h:182 - [printf('Last BUYCONF-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][209] = 1;
		Printf("Last BUYCONF-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 210 - ./BizOperation.h:298 - [BUYREJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.oblig);
		now.BUYREJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 211 - ./BizOperation.h:299 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.prohib)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 212 - ./BizOperation.h:300 - [assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		spin_assert( !(((((int)now.BUYREJ_bo.oblig)==1)&&(((int)now.BUYREJ_bo.right)==1))), " !(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 214 - ./BizOperation.h:298 - [BUYCONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][214] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.oblig);
		now.BUYCONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 215 - ./BizOperation.h:299 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.prohib)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 216 - ./BizOperation.h:300 - [assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		spin_assert( !(((((int)now.BUYCONF_bo.oblig)==1)&&(((int)now.BUYCONF_bo.right)==1))), " !(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 218 - ./rules.h:186 - [printf('\\n\\n')] (0:226:0 - 1)
		IfNotBlocked
		reached[1][218] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(226, 219, 226) */
		reached[1][219] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(226, 220, 226) */
		reached[1][220] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(226, 221, 226) */
		reached[1][221] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(226, 222, 226) */
		reached[1][222] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(226, 223, 226) */
		reached[1][223] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 120: // STATE 225 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][225] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 121: // STATE 231 - ./BizOperation.h:432 - [CRM2BEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][231] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 122: // STATE 236 - ./BizOperation.h:390 - [(BEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][236] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 237 - ./BizOperation.h:390 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][237] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 124: // STATE 238 - ./BizOperation.h:391 - [(BEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][238] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 239 - ./BizOperation.h:391 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][239] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 126: // STATE 240 - ./BizOperation.h:392 - [(BEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][240] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 241 - ./BizOperation.h:392 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][241] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 128: // STATE 242 - ./BizOperation.h:393 - [(BEG2CRM?[20,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][242] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 243 - ./BizOperation.h:393 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][243] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 130: // STATE 247 - ./rules.h:207 - [printf('BUYPAY rule (first lines) \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][247] = 1;
		Printf("BUYPAY rule (first lines) \n");
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 248 - ./rules.h:209 - [((((BUYPAY_bo.oblig==1)&&((BUYPAY_bo.role_pl==BUYER)==1))&&((BUYPAY_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][248] = 1;
		if (!((((((int)now.BUYPAY_bo.oblig)==1)&&((((int)now.BUYPAY_bo.role_pl)==12)==1))&&((((int)now.BUYPAY_bo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 249 - ./rules.h:210 - [BUYERexTrace = (BUYERexTrace|(1<<BUYPAY_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][249] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYPAY_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 250 - ./rules.h:212 - [printf('\\n\\n')] (0:260:0 - 1)
		IfNotBlocked
		reached[1][250] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(260, 251, 260) */
		reached[1][251] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(260, 252, 260) */
		reached[1][252] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYPAY</type>\\n')(260, 253, 260) */
		reached[1][253] = 1;
		Printf("<type>BUYPAY</type>\n");
		/* merge: printf('<status>success</status>\\n')(260, 254, 260) */
		reached[1][254] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(260, 255, 260) */
		reached[1][255] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 134: // STATE 257 - ./BizOperation.h:298 - [BUYPAY_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][257] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.oblig);
		now.BUYPAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 258 - ./BizOperation.h:299 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][258] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.prohib)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 259 - ./BizOperation.h:300 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][259] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.right)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 261 - ./BizOperation.h:298 - [BUYCANC_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][261] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.oblig);
		now.BUYCANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 262 - ./BizOperation.h:299 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][262] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.prohib)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 263 - ./BizOperation.h:300 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][263] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.right)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 265 - ./rules.h:223 - [printf('\\n\\n')] (0:273:0 - 1)
		IfNotBlocked
		reached[1][265] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(273, 266, 273) */
		reached[1][266] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(273, 267, 273) */
		reached[1][267] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(273, 268, 273) */
		reached[1][268] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(273, 269, 273) */
		reached[1][269] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(273, 270, 273) */
		reached[1][270] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 141: // STATE 272 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][272] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 142: // STATE 275 - ./rules.h:233 - [((((BUYPAY_bo.oblig==1)&&((BUYPAY_bo.role_pl==BUYER)==1))&&((BUYPAY_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][275] = 1;
		if (!((((((int)now.BUYPAY_bo.oblig)==1)&&((((int)now.BUYPAY_bo.role_pl)==12)==1))&&((((int)now.BUYPAY_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 276 - ./rules.h:236 - [printf('\\n\\n')] (0:308:0 - 1)
		IfNotBlocked
		reached[1][276] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(308, 277, 308) */
		reached[1][277] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(308, 278, 308) */
		reached[1][278] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYPAY</type>\\n')(308, 279, 308) */
		reached[1][279] = 1;
		Printf("<type>BUYPAY</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(308, 280, 308) */
		reached[1][280] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(308, 281, 308) */
		reached[1][281] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 144: // STATE 283 - ./rules.h:244 - [((PayFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][283] = 1;
		if (!((((int)now.PayFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 284 - ./rules.h:244 - [PayFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][284] = 1;
		(trpt+1)->bup.oval = ((int)now.PayFailBefore);
		now.PayFailBefore = 1;
#ifdef VAR_RANGES
		logval("PayFailBefore", ((int)now.PayFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 285 - ./rules.h:245 - [printf('First BUYPAY-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][285] = 1;
		Printf("First BUYPAY-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 286 - ./BizOperation.h:425 - [CRM2BEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][286] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 148: // STATE 288 - ./rules.h:249 - [((PayFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][288] = 1;
		if (!((((int)now.PayFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 289 - ./rules.h:249 - [abncoend = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][289] = 1;
		(trpt+1)->bup.oval = ((int)abncoend);
		abncoend = 1;
#ifdef VAR_RANGES
		logval("abncoend", ((int)abncoend));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 290 - ./rules.h:250 - [printf('Last BUYPAY-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][290] = 1;
		Printf("Last BUYPAY-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 291 - ./BizOperation.h:298 - [BUYPAY_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][291] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.oblig);
		now.BUYPAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 292 - ./BizOperation.h:299 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][292] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.prohib)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 293 - ./BizOperation.h:300 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][293] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.right)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 295 - ./BizOperation.h:298 - [BUYCANC_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][295] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.oblig);
		now.BUYCANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 296 - ./BizOperation.h:299 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][296] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.prohib)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 297 - ./BizOperation.h:300 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][297] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.right)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 299 - ./rules.h:255 - [printf('\\n\\n')] (0:307:0 - 1)
		IfNotBlocked
		reached[1][299] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(307, 300, 307) */
		reached[1][300] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(307, 301, 307) */
		reached[1][301] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(307, 302, 307) */
		reached[1][302] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(307, 303, 307) */
		reached[1][303] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(307, 304, 307) */
		reached[1][304] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 158: // STATE 306 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][306] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 159: // STATE 312 - ./BizOperation.h:432 - [CRM2BEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][312] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 160: // STATE 317 - ./BizOperation.h:390 - [(BEG2CRM?[21,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][317] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 318 - ./BizOperation.h:390 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][318] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 162: // STATE 319 - ./BizOperation.h:391 - [(BEG2CRM?[21,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][319] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 320 - ./BizOperation.h:391 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][320] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 164: // STATE 321 - ./BizOperation.h:392 - [(BEG2CRM?[21,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][321] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 322 - ./BizOperation.h:392 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][322] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 166: // STATE 323 - ./BizOperation.h:393 - [(BEG2CRM?[21,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][323] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 324 - ./BizOperation.h:393 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][324] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 168: // STATE 328 - ./rules.h:277 - [((((BUYCANC_bo.oblig==1)&&((BUYCANC_bo.role_pl==BUYER)==1))&&((BUYCANC_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][328] = 1;
		if (!((((((int)now.BUYCANC_bo.oblig)==1)&&((((int)now.BUYCANC_bo.role_pl)==12)==1))&&((((int)now.BUYCANC_bo.status)==16)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 329 - ./rules.h:278 - [BUYERexTrace = (BUYERexTrace|(1<<BUYCANC_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][329] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYCANC_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 330 - ./rules.h:280 - [printf('\\n\\n')] (0:340:0 - 1)
		IfNotBlocked
		reached[1][330] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(340, 331, 340) */
		reached[1][331] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(340, 332, 340) */
		reached[1][332] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYCANC</type>\\n')(340, 333, 340) */
		reached[1][333] = 1;
		Printf("<type>BUYCANC</type>\n");
		/* merge: printf('<status>success</status>\\n')(340, 334, 340) */
		reached[1][334] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(340, 335, 340) */
		reached[1][335] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 171: // STATE 337 - ./BizOperation.h:298 - [BUYPAY_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][337] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.oblig);
		now.BUYPAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 338 - ./BizOperation.h:299 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][338] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.prohib)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 339 - ./BizOperation.h:300 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][339] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.right)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 341 - ./BizOperation.h:298 - [BUYCANC_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][341] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.oblig);
		now.BUYCANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 342 - ./BizOperation.h:299 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][342] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.prohib)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 343 - ./BizOperation.h:300 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][343] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.right)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 345 - ./rules.h:291 - [printf('\\n\\n')] (0:353:0 - 1)
		IfNotBlocked
		reached[1][345] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(353, 346, 353) */
		reached[1][346] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(353, 347, 353) */
		reached[1][347] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(353, 348, 353) */
		reached[1][348] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(353, 349, 353) */
		reached[1][349] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(353, 350, 353) */
		reached[1][350] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 178: // STATE 352 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][352] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 179: // STATE 355 - ./rules.h:301 - [((((BUYCANC_bo.oblig==1)&&((BUYCANC_bo.role_pl==BUYER)==1))&&((BUYCANC_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][355] = 1;
		if (!((((((int)now.BUYCANC_bo.oblig)==1)&&((((int)now.BUYCANC_bo.role_pl)==12)==1))&&((((int)now.BUYCANC_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 356 - ./rules.h:304 - [printf('\\n\\n')] (0:388:0 - 1)
		IfNotBlocked
		reached[1][356] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>buyer</originator>\\n')(388, 357, 388) */
		reached[1][357] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(388, 358, 388) */
		reached[1][358] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYCANC</type>\\n')(388, 359, 388) */
		reached[1][359] = 1;
		Printf("<type>BUYCANC</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(388, 360, 388) */
		reached[1][360] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(388, 361, 388) */
		reached[1][361] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 181: // STATE 363 - ./rules.h:312 - [((CancFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][363] = 1;
		if (!((((int)now.CancFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 364 - ./rules.h:312 - [CancFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][364] = 1;
		(trpt+1)->bup.oval = ((int)now.CancFailBefore);
		now.CancFailBefore = 1;
#ifdef VAR_RANGES
		logval("CancFailBefore", ((int)now.CancFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 365 - ./rules.h:313 - [printf('First BUYCANC-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][365] = 1;
		Printf("First BUYCANC-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 366 - ./BizOperation.h:425 - [CRM2BEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][366] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 185: // STATE 368 - ./rules.h:317 - [((CancFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][368] = 1;
		if (!((((int)now.CancFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 369 - ./rules.h:317 - [abncoend = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][369] = 1;
		(trpt+1)->bup.oval = ((int)abncoend);
		abncoend = 1;
#ifdef VAR_RANGES
		logval("abncoend", ((int)abncoend));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 370 - ./rules.h:318 - [printf('Last BUYCANC-TechnicalFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][370] = 1;
		Printf("Last BUYCANC-TechnicalFailure");
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 371 - ./BizOperation.h:298 - [BUYPAY_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][371] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.oblig);
		now.BUYPAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 372 - ./BizOperation.h:299 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][372] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.prohib)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 373 - ./BizOperation.h:300 - [assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][373] = 1;
		spin_assert( !(((((int)now.BUYPAY_bo.oblig)==1)&&(((int)now.BUYPAY_bo.right)==1))), " !(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 375 - ./BizOperation.h:298 - [BUYCANC_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][375] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.oblig);
		now.BUYCANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 376 - ./BizOperation.h:299 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][376] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.prohib)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 377 - ./BizOperation.h:300 - [assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][377] = 1;
		spin_assert( !(((((int)now.BUYCANC_bo.oblig)==1)&&(((int)now.BUYCANC_bo.right)==1))), " !(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 379 - ./rules.h:322 - [printf('\\n\\n')] (0:387:0 - 1)
		IfNotBlocked
		reached[1][379] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(387, 380, 387) */
		reached[1][380] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(387, 381, 387) */
		reached[1][381] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(387, 382, 387) */
		reached[1][382] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(387, 383, 387) */
		reached[1][383] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(387, 384, 387) */
		reached[1][384] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 195: // STATE 386 - ./BizOperation.h:425 - [CRM2BEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][386] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 2, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 196: // STATE 392 - ./BizOperation.h:432 - [CRM2BEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][392] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 6, 5, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 197: // STATE 400 - ./test.pml:177 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][400] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC BEG */
	case 198: // STATE 1 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 3 - ./test.pml:129 - [BUYERexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 4 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 6 - ./test.pml:130 - [STOREexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 14 - ./BizOperation.h:174 - [D_STEP174]
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
		now.BUYREQ_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.role_pl", ((int)now.BUYREQ_bo.role_pl));
#endif
		;
S_008_0: /* 2 */
		now.BUYREQ_bo.right = 1;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.right", ((int)now.BUYREQ_bo.right));
#endif
		;
S_009_0: /* 2 */
		now.BUYREQ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.oblig", ((int)now.BUYREQ_bo.oblig));
#endif
		;
S_010_0: /* 2 */
		now.BUYREQ_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.prohib", ((int)now.BUYREQ_bo.prohib));
#endif
		;
S_011_0: /* 2 */
		now.BUYREQ_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.executed", ((int)now.BUYREQ_bo.executed));
#endif
		;
S_012_0: /* 2 */
		now.BUYREQ_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYREQ_bo.id", ((int)now.BUYREQ_bo.id));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 203: // STATE 23 - ./BizOperation.h:174 - [D_STEP174]
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
		now.BUYREJ_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.role_pl", ((int)now.BUYREJ_bo.role_pl));
#endif
		;
S_017_0: /* 2 */
		now.BUYREJ_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.right", ((int)now.BUYREJ_bo.right));
#endif
		;
S_018_0: /* 2 */
		now.BUYREJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.oblig", ((int)now.BUYREJ_bo.oblig));
#endif
		;
S_019_0: /* 2 */
		now.BUYREJ_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.prohib", ((int)now.BUYREJ_bo.prohib));
#endif
		;
S_020_0: /* 2 */
		now.BUYREJ_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.executed", ((int)now.BUYREJ_bo.executed));
#endif
		;
S_021_0: /* 2 */
		now.BUYREJ_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYREJ_bo.id", ((int)now.BUYREJ_bo.id));
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 204: // STATE 32 - ./BizOperation.h:174 - [D_STEP174]
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
		now.BUYCONF_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.role_pl", ((int)now.BUYCONF_bo.role_pl));
#endif
		;
S_026_0: /* 2 */
		now.BUYCONF_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.right", ((int)now.BUYCONF_bo.right));
#endif
		;
S_027_0: /* 2 */
		now.BUYCONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.oblig", ((int)now.BUYCONF_bo.oblig));
#endif
		;
S_028_0: /* 2 */
		now.BUYCONF_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.prohib", ((int)now.BUYCONF_bo.prohib));
#endif
		;
S_029_0: /* 2 */
		now.BUYCONF_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.executed", ((int)now.BUYCONF_bo.executed));
#endif
		;
S_030_0: /* 2 */
		now.BUYCONF_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYCONF_bo.id", ((int)now.BUYCONF_bo.id));
#endif
		;
		goto S_041_0;
S_041_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 205: // STATE 41 - ./BizOperation.h:174 - [D_STEP174]
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
		now.BUYPAY_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.role_pl", ((int)now.BUYPAY_bo.role_pl));
#endif
		;
S_035_0: /* 2 */
		now.BUYPAY_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.right", ((int)now.BUYPAY_bo.right));
#endif
		;
S_036_0: /* 2 */
		now.BUYPAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.oblig", ((int)now.BUYPAY_bo.oblig));
#endif
		;
S_037_0: /* 2 */
		now.BUYPAY_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.prohib", ((int)now.BUYPAY_bo.prohib));
#endif
		;
S_038_0: /* 2 */
		now.BUYPAY_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.executed", ((int)now.BUYPAY_bo.executed));
#endif
		;
S_039_0: /* 2 */
		now.BUYPAY_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYPAY_bo.id", ((int)now.BUYPAY_bo.id));
#endif
		;
		goto S_050_0;
S_050_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 206: // STATE 50 - ./BizOperation.h:174 - [D_STEP174]
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
		now.BUYCANC_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.role_pl", ((int)now.BUYCANC_bo.role_pl));
#endif
		;
S_044_0: /* 2 */
		now.BUYCANC_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.right", ((int)now.BUYCANC_bo.right));
#endif
		;
S_045_0: /* 2 */
		now.BUYCANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.oblig", ((int)now.BUYCANC_bo.oblig));
#endif
		;
S_046_0: /* 2 */
		now.BUYCANC_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.prohib", ((int)now.BUYCANC_bo.prohib));
#endif
		;
S_047_0: /* 2 */
		now.BUYCANC_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.executed", ((int)now.BUYCANC_bo.executed));
#endif
		;
S_048_0: /* 2 */
		now.BUYCANC_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYCANC_bo.id", ((int)now.BUYCANC_bo.id));
#endif
		;
		goto S_513_0;
S_513_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 207: // STATE 53 - ./test.pml:144 - [((((BUYREQ_bo.right==1)||(BUYREQ_bo.oblig==1))||(BUYREQ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!((((((int)now.BUYREQ_bo.right)==1)||(((int)now.BUYREQ_bo.oblig)==1))||(((int)now.BUYREQ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 54 - ./test.pml:144 - [BUYREQ_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREQ_bo.status);
		now.BUYREQ_bo.status = 16;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.status", ((int)now.BUYREQ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 55 - ./BizOperation.h:403 - [BEG2CRM!17,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 17, 16, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 210: // STATE 57 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][57] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 211: // STATE 60 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][60] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 212: // STATE 63 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][63] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 213: // STATE 66 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][66] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 214: // STATE 69 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][69] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 215: // STATE 72 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][72] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 216: // STATE 75 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][75] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 217: // STATE 78 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][78] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 218: // STATE 81 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][81] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 219: // STATE 84 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][84] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 220: // STATE 87 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][87] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 221: // STATE 90 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][90] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 222: // STATE 93 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][93] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 223: // STATE 99 - ./test.pml:145 - [((((BUYREQ_bo.right==1)||(BUYREQ_bo.oblig==1))||(BUYREQ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (!((((((int)now.BUYREQ_bo.right)==1)||(((int)now.BUYREQ_bo.oblig)==1))||(((int)now.BUYREQ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 100 - ./test.pml:145 - [BUYREQ_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREQ_bo.status);
		now.BUYREQ_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYREQ_bo.status", ((int)now.BUYREQ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 101 - ./BizOperation.h:403 - [BEG2CRM!17,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 17, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 226: // STATE 103 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][103] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 227: // STATE 106 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][106] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 228: // STATE 109 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][109] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 229: // STATE 112 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][112] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 230: // STATE 115 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][115] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 231: // STATE 118 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][118] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 232: // STATE 121 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][121] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 233: // STATE 124 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][124] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 234: // STATE 127 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][127] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 235: // STATE 130 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][130] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 236: // STATE 133 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][133] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 237: // STATE 136 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][136] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 238: // STATE 139 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][139] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 239: // STATE 145 - ./test.pml:147 - [((((BUYREJ_bo.right==1)||(BUYREJ_bo.oblig==1))||(BUYREJ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][145] = 1;
		if (!((((((int)now.BUYREJ_bo.right)==1)||(((int)now.BUYREJ_bo.oblig)==1))||(((int)now.BUYREJ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 146 - ./test.pml:147 - [BUYREJ_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.status);
		now.BUYREJ_bo.status = 16;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.status", ((int)now.BUYREJ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 147 - ./BizOperation.h:403 - [BEG2CRM!18,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 18, 16, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 242: // STATE 149 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][149] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 243: // STATE 152 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][152] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 244: // STATE 155 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][155] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 245: // STATE 158 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][158] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 246: // STATE 161 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][161] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 247: // STATE 164 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][164] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 248: // STATE 167 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][167] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 249: // STATE 170 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][170] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 250: // STATE 173 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][173] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 251: // STATE 176 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][176] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 252: // STATE 179 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][179] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 253: // STATE 182 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][182] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 254: // STATE 185 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][185] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 255: // STATE 191 - ./test.pml:148 - [((((BUYREJ_bo.right==1)||(BUYREJ_bo.oblig==1))||(BUYREJ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		if (!((((((int)now.BUYREJ_bo.right)==1)||(((int)now.BUYREJ_bo.oblig)==1))||(((int)now.BUYREJ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 192 - ./test.pml:148 - [BUYREJ_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYREJ_bo.status);
		now.BUYREJ_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYREJ_bo.status", ((int)now.BUYREJ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 193 - ./BizOperation.h:403 - [BEG2CRM!18,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 18, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 258: // STATE 195 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][195] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 259: // STATE 198 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][198] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 260: // STATE 201 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][201] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 261: // STATE 204 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][204] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 262: // STATE 207 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][207] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 263: // STATE 210 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][210] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 264: // STATE 213 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][213] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 265: // STATE 216 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][216] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 266: // STATE 219 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][219] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 267: // STATE 222 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][222] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 268: // STATE 225 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][225] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 269: // STATE 228 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][228] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 270: // STATE 231 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][231] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 271: // STATE 237 - ./test.pml:150 - [((((BUYCONF_bo.right==1)||(BUYCONF_bo.oblig==1))||(BUYCONF_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		if (!((((((int)now.BUYCONF_bo.right)==1)||(((int)now.BUYCONF_bo.oblig)==1))||(((int)now.BUYCONF_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 238 - ./test.pml:150 - [BUYCONF_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.status);
		now.BUYCONF_bo.status = 16;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.status", ((int)now.BUYCONF_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 239 - ./BizOperation.h:403 - [BEG2CRM!19,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 19, 16, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 274: // STATE 241 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][241] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 275: // STATE 244 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][244] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 276: // STATE 247 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][247] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 277: // STATE 250 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][250] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 278: // STATE 253 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][253] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 279: // STATE 256 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][256] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 280: // STATE 259 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][259] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 281: // STATE 262 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][262] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 282: // STATE 265 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][265] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 283: // STATE 268 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][268] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 284: // STATE 271 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][271] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 285: // STATE 274 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][274] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 286: // STATE 277 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][277] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 287: // STATE 283 - ./test.pml:151 - [((((BUYCONF_bo.right==1)||(BUYCONF_bo.oblig==1))||(BUYCONF_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][283] = 1;
		if (!((((((int)now.BUYCONF_bo.right)==1)||(((int)now.BUYCONF_bo.oblig)==1))||(((int)now.BUYCONF_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 284 - ./test.pml:151 - [BUYCONF_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][284] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCONF_bo.status);
		now.BUYCONF_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYCONF_bo.status", ((int)now.BUYCONF_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 285 - ./BizOperation.h:403 - [BEG2CRM!19,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][285] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 19, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 290: // STATE 287 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][287] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 291: // STATE 290 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][290] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 292: // STATE 293 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][293] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 293: // STATE 296 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][296] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 294: // STATE 299 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][299] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 295: // STATE 302 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][302] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 296: // STATE 305 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][305] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 297: // STATE 308 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][308] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 298: // STATE 311 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][311] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 299: // STATE 314 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][314] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 300: // STATE 317 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][317] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 301: // STATE 320 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][320] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 302: // STATE 323 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][323] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 303: // STATE 329 - ./test.pml:153 - [((((BUYPAY_bo.right==1)||(BUYPAY_bo.oblig==1))||(BUYPAY_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][329] = 1;
		if (!((((((int)now.BUYPAY_bo.right)==1)||(((int)now.BUYPAY_bo.oblig)==1))||(((int)now.BUYPAY_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 330 - ./test.pml:153 - [BUYPAY_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][330] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.status);
		now.BUYPAY_bo.status = 16;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.status", ((int)now.BUYPAY_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 331 - ./BizOperation.h:403 - [BEG2CRM!20,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][331] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 20, 16, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 306: // STATE 333 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][333] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 307: // STATE 336 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][336] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 308: // STATE 339 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][339] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 309: // STATE 342 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][342] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 310: // STATE 345 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][345] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 311: // STATE 348 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][348] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 312: // STATE 351 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][351] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 313: // STATE 354 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][354] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 314: // STATE 357 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][357] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 315: // STATE 360 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][360] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 316: // STATE 363 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][363] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 317: // STATE 366 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][366] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 318: // STATE 369 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][369] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 319: // STATE 375 - ./test.pml:154 - [((((BUYPAY_bo.right==1)||(BUYPAY_bo.oblig==1))||(BUYPAY_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][375] = 1;
		if (!((((((int)now.BUYPAY_bo.right)==1)||(((int)now.BUYPAY_bo.oblig)==1))||(((int)now.BUYPAY_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 376 - ./test.pml:154 - [BUYPAY_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][376] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYPAY_bo.status);
		now.BUYPAY_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYPAY_bo.status", ((int)now.BUYPAY_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 377 - ./BizOperation.h:403 - [BEG2CRM!20,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][377] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 20, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 322: // STATE 379 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][379] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 323: // STATE 382 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][382] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 324: // STATE 385 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][385] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 325: // STATE 388 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][388] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 326: // STATE 391 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][391] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 327: // STATE 394 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][394] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 328: // STATE 397 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][397] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 329: // STATE 400 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][400] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 330: // STATE 403 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][403] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 331: // STATE 406 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][406] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 332: // STATE 409 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][409] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 333: // STATE 412 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][412] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 334: // STATE 415 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][415] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 335: // STATE 421 - ./test.pml:156 - [((((BUYCANC_bo.right==1)||(BUYCANC_bo.oblig==1))||(BUYCANC_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][421] = 1;
		if (!((((((int)now.BUYCANC_bo.right)==1)||(((int)now.BUYCANC_bo.oblig)==1))||(((int)now.BUYCANC_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 422 - ./test.pml:156 - [BUYCANC_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.status);
		now.BUYCANC_bo.status = 16;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.status", ((int)now.BUYCANC_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 423 - ./BizOperation.h:403 - [BEG2CRM!21,16] (0:0:0 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 21, 16, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 338: // STATE 425 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][425] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 339: // STATE 428 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][428] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 340: // STATE 431 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][431] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 341: // STATE 434 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][434] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 342: // STATE 437 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][437] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 343: // STATE 440 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][440] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 344: // STATE 443 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][443] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 345: // STATE 446 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][446] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 346: // STATE 449 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][449] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 347: // STATE 452 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][452] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 348: // STATE 455 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][455] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 349: // STATE 458 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][458] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 350: // STATE 461 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][461] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 351: // STATE 467 - ./test.pml:157 - [((((BUYCANC_bo.right==1)||(BUYCANC_bo.oblig==1))||(BUYCANC_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][467] = 1;
		if (!((((((int)now.BUYCANC_bo.right)==1)||(((int)now.BUYCANC_bo.oblig)==1))||(((int)now.BUYCANC_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 468 - ./test.pml:157 - [BUYCANC_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][468] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYCANC_bo.status);
		now.BUYCANC_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYCANC_bo.status", ((int)now.BUYCANC_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 469 - ./BizOperation.h:403 - [BEG2CRM!21,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][469] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 21, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 354: // STATE 471 - ./BizOperation.h:410 - [CRM2BEG?9,5] (0:0:0 - 1)
		reached[0][471] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 355: // STATE 474 - ./BizOperation.h:410 - [CRM2BEG?8,5] (0:0:0 - 1)
		reached[0][474] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 356: // STATE 477 - ./BizOperation.h:410 - [CRM2BEG?7,5] (0:0:0 - 1)
		reached[0][477] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 357: // STATE 480 - ./BizOperation.h:410 - [CRM2BEG?6,5] (0:0:0 - 1)
		reached[0][480] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (5 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 358: // STATE 483 - ./BizOperation.h:410 - [CRM2BEG?9,3] (0:0:0 - 1)
		reached[0][483] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 359: // STATE 486 - ./BizOperation.h:410 - [CRM2BEG?8,3] (0:0:0 - 1)
		reached[0][486] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 360: // STATE 489 - ./BizOperation.h:410 - [CRM2BEG?7,3] (0:0:0 - 1)
		reached[0][489] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (3 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 361: // STATE 492 - ./BizOperation.h:410 - [CRM2BEG?9,1] (0:0:0 - 1)
		reached[0][492] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 362: // STATE 495 - ./BizOperation.h:410 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][495] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 363: // STATE 498 - ./BizOperation.h:410 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][498] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 364: // STATE 501 - ./BizOperation.h:410 - [CRM2BEG?9,2] (0:0:0 - 1)
		reached[0][501] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (9 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 365: // STATE 504 - ./BizOperation.h:410 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][504] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 366: // STATE 507 - ./BizOperation.h:410 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][507] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 367: // STATE 516 - ./test.pml:159 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][516] = 1;
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

