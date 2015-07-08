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

		 /* CLAIM P1 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((!(((STUDENTexTrace&(1<<C1_bo.id))&&(choose1==1)))||((C1_bo.prohib==1)&&(C1_bo.role_pl==STUDENT)))))] (6:0:0 - 1)
		
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
		if (!( !(( !(((now.STUDENTexTrace&(1<<((int)now.C1_bo.id)))&&(((int)now.choose1)==1)))||((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.role_pl)==12))))))
			continue;
		/* merge: assert(!(!((!(((STUDENTexTrace&(1<<C1_bo.id))&&(choose1==1)))||((C1_bo.prohib==1)&&(C1_bo.role_pl==STUDENT))))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !(( !(((now.STUDENTexTrace&(1<<((int)now.C1_bo.id)))&&(((int)now.choose1)==1)))||((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.role_pl)==12))))), " !( !(( !(((STUDENTexTrace&(1<<C1_bo.id))&&(choose1==1)))||((C1_bo.prohib==1)&&(C1_bo.role_pl==12)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - Case2.pml:152 - [(run LEG())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - Case2.pml:152 - [(run CRM())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 4 - Case2.pml:154 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CRM */
	case 8: // STATE 1 - Case2.pml:136 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - EduOperation.h:390 - [(LEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 3 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 11: // STATE 4 - EduOperation.h:391 - [(LEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 13: // STATE 6 - EduOperation.h:392 - [(LEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 7 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 15: // STATE 8 - EduOperation.h:393 - [(LEG2CRM?[18,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 9 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 17: // STATE 10 - EduOperation.h:394 - [(LEG2CRM?[18,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 11 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 19: // STATE 15 - Case2Rules.h:22 - [printf('Start\\n')] (0:67:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("Start\n");
		/* merge: printf('Registration Request by Student')(67, 16, 67) */
		reached[1][16] = 1;
		Printf("Registration Request by Student");
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 17 - Case2Rules.h:24 - [((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((((int)now.RegReq_bo.right)==1)&&((((int)now.RegReq_bo.role_pl)==12)==1))&&((((int)now.RegReq_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 18 - Case2Rules.h:25 - [STUDENTexTrace = (STUDENTexTrace&(1<<RegReq_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace&(1<<((int)now.RegReq_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 19 - Case2Rules.h:27 - [printf('\\n\\n')] (0:29:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(29, 20, 29) */
		reached[1][20] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(29, 21, 29) */
		reached[1][21] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>Registration Request</type>\\n')(29, 22, 29) */
		reached[1][22] = 1;
		Printf("<type>Registration Request</type>\n");
		/* merge: printf('<status>success</status>\\n')(29, 23, 29) */
		reached[1][23] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(29, 24, 29) */
		reached[1][24] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 23: // STATE 26 - EduOperation.h:298 - [RegReply_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.oblig);
		now.RegReply_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("RegReply_bo.oblig", ((int)now.RegReply_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 27 - EduOperation.h:299 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.prohib)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 28 - EduOperation.h:300 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.right)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 30 - EduOperation.h:275 - [RegReq_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReq_bo.right);
		now.RegReq_bo.right = 0;
#ifdef VAR_RANGES
		logval("RegReq_bo.right", ((int)now.RegReq_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 31 - EduOperation.h:276 - [assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		spin_assert( !(((((int)now.RegReq_bo.right)==1)&&(((int)now.RegReq_bo.oblig)==1))), " !(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 32 - EduOperation.h:277 - [assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		spin_assert( !(((((int)now.RegReq_bo.right)==1)&&(((int)now.RegReq_bo.prohib)==1))), " !(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 34 - EduOperation.h:426 - [CRM2LEG!9,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
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
	case 30: // STATE 37 - Case2Rules.h:38 - [((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((((int)now.RegReq_bo.right)==1)&&((((int)now.RegReq_bo.role_pl)==12)==1))&&((((int)now.RegReq_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 38 - Case2Rules.h:40 - [printf('\\n\\n')] (0:49:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(49, 39, 49) */
		reached[1][39] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(49, 40, 49) */
		reached[1][40] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>RegReq</type>\\n')(49, 41, 49) */
		reached[1][41] = 1;
		Printf("<type>RegReq</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(49, 42, 49) */
		reached[1][42] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(49, 43, 49) */
		reached[1][43] = 1;
		Printf("\n\n");
		/* merge: printf('RegReq-TechnicalFailure')(49, 45, 49) */
		reached[1][45] = 1;
		Printf("RegReq-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 32: // STATE 46 - EduOperation.h:298 - [RegReply_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.oblig);
		now.RegReply_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.oblig", ((int)now.RegReply_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 47 - EduOperation.h:299 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.prohib)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 48 - EduOperation.h:300 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.right)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 50 - EduOperation.h:275 - [RegReq_bo.right = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReq_bo.right);
		now.RegReq_bo.right = 1;
#ifdef VAR_RANGES
		logval("RegReq_bo.right", ((int)now.RegReq_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 51 - EduOperation.h:276 - [assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		spin_assert( !(((((int)now.RegReq_bo.right)==1)&&(((int)now.RegReq_bo.oblig)==1))), " !(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 52 - EduOperation.h:277 - [assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		spin_assert( !(((((int)now.RegReq_bo.right)==1)&&(((int)now.RegReq_bo.prohib)==1))), " !(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 54 - Case2Rules.h:52 - [printf('\\n\\n')] (0:62:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(62, 55, 62) */
		reached[1][55] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(62, 56, 62) */
		reached[1][56] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(62, 57, 62) */
		reached[1][57] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(62, 58, 62) */
		reached[1][58] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(62, 59, 62) */
		reached[1][59] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 61 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
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
	case 40: // STATE 65 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
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
	case 41: // STATE 70 - EduOperation.h:390 - [(LEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 71 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][71] = 1;
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
	case 43: // STATE 72 - EduOperation.h:391 - [(LEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 73 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][73] = 1;
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
	case 45: // STATE 74 - EduOperation.h:392 - [(LEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 75 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][75] = 1;
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
	case 47: // STATE 76 - EduOperation.h:393 - [(LEG2CRM?[19,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 77 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 49: // STATE 78 - EduOperation.h:394 - [(LEG2CRM?[19,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 79 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 51: // STATE 83 - Case2Rules.h:70 - [printf('Course list reply')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		Printf("Course list reply");
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 84 - Case2Rules.h:72 - [((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (!((((((int)now.RegReply_bo.oblig)==1)&&((((int)now.RegReply_bo.role_pl)==11)==1))&&((((int)now.RegReply_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 85 - Case2Rules.h:75 - [printf('\\n\\n')] (0:92:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(92, 86, 92) */
		reached[1][86] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>STUDENT</responder>\\n')(92, 87, 92) */
		reached[1][87] = 1;
		Printf("<responder>STUDENT</responder>\n");
		/* merge: printf('<type>RegReply</type>\\n')(92, 88, 92) */
		reached[1][88] = 1;
		Printf("<type>RegReply</type>\n");
		/* merge: printf('<status>success</status>\\n')(92, 89, 92) */
		reached[1][89] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(92, 90, 92) */
		reached[1][90] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 54: // STATE 92 - Case2Rules.h:82 - [LMSexTrace = (LMSexTrace&(1<<RegReply_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = (now.LMSexTrace&(1<<((int)now.RegReply_bo.id)));
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 93 - EduOperation.h:298 - [RegReply_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.oblig);
		now.RegReply_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.oblig", ((int)now.RegReply_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 94 - EduOperation.h:299 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.prohib)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 95 - EduOperation.h:300 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.right)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 97 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 98 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 99 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][99] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 101 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 102 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 103 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 105 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 106 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 107 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 109 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
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
	case 68: // STATE 112 - Case2Rules.h:90 - [((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		if (!((((((int)now.RegReply_bo.oblig)==1)&&((((int)now.RegReply_bo.role_pl)==11)==1))&&((((int)now.RegReply_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 113 - Case2Rules.h:93 - [printf('\\n\\n')] (0:124:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(124, 114, 124) */
		reached[1][114] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>STUDENT</responder>\\n')(124, 115, 124) */
		reached[1][115] = 1;
		Printf("<responder>STUDENT</responder>\n");
		/* merge: printf('<type>RegReply</type>\\n')(124, 116, 124) */
		reached[1][116] = 1;
		Printf("<type>RegReply</type>\n");
		/* merge: printf('<status>tecfail</status>\\n')(124, 117, 124) */
		reached[1][117] = 1;
		Printf("<status>tecfail</status>\n");
		/* merge: printf('\\n\\n')(124, 118, 124) */
		reached[1][118] = 1;
		Printf("\n\n");
		/* merge: printf('RegReply-TechnicalFailure')(124, 120, 124) */
		reached[1][120] = 1;
		Printf("RegReply-TechnicalFailure");
		_m = 3; goto P999; /* 6 */
	case 70: // STATE 121 - EduOperation.h:298 - [RegReply_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.oblig);
		now.RegReply_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("RegReply_bo.oblig", ((int)now.RegReply_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 122 - EduOperation.h:299 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.prohib)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 123 - EduOperation.h:300 - [assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		spin_assert( !(((((int)now.RegReply_bo.oblig)==1)&&(((int)now.RegReply_bo.right)==1))), " !(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 125 - EduOperation.h:298 - [C1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 126 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 127 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 129 - EduOperation.h:298 - [C2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 130 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 131 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 133 - EduOperation.h:298 - [C3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 134 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 135 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 137 - Case2Rules.h:107 - [printf('\\n\\n')] (0:145:0 - 1)
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
	case 83: // STATE 144 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][144] = 1;
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
	case 84: // STATE 148 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][148] = 1;
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
	case 85: // STATE 153 - EduOperation.h:390 - [(LEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 154 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][154] = 1;
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
	case 87: // STATE 155 - EduOperation.h:391 - [(LEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][155] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 156 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][156] = 1;
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
	case 89: // STATE 157 - EduOperation.h:392 - [(LEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][157] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 158 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][158] = 1;
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
	case 91: // STATE 159 - EduOperation.h:393 - [(LEG2CRM?[20,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 160 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][160] = 1;
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
	case 93: // STATE 161 - EduOperation.h:394 - [(LEG2CRM?[20,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 162 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][162] = 1;
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
	case 95: // STATE 166 - Case2Rules.h:126 - [printf('C1')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][166] = 1;
		Printf("C1");
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 167 - Case2Rules.h:128 - [((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		if (!((((((int)now.C1_bo.oblig)==1)&&((((int)now.C1_bo.role_pl)==12)==1))&&((((int)now.C1_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 168 - Case2Rules.h:130 - [printf('\\n\\n')] (0:175:0 - 1)
		IfNotBlocked
		reached[1][168] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(175, 169, 175) */
		reached[1][169] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(175, 170, 175) */
		reached[1][170] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C1</type>\\n')(175, 171, 175) */
		reached[1][171] = 1;
		Printf("<type>C1</type>\n");
		/* merge: printf('<status>success</status>\\n')(175, 172, 175) */
		reached[1][172] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(175, 173, 175) */
		reached[1][173] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 98: // STATE 175 - Case2Rules.h:137 - [STUDENTexTrace = (STUDENTexTrace&(1<<C1_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace&(1<<((int)now.C1_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 176 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][176] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 177 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 178 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][178] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 180 - EduOperation.h:298 - [ChooseReject_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][180] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 181 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][181] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 182 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][182] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 184 - EduOperation.h:298 - [C1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][184] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 185 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][185] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 186 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][186] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 188 - EduOperation.h:298 - [C2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][188] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 189 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][189] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 190 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][190] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 192 - EduOperation.h:298 - [C3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][192] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 193 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][193] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 194 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][194] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 196 - Case2Rules.h:143 - [choose1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][196] = 1;
		(trpt+1)->bup.oval = ((int)now.choose1);
		now.choose1 = 1;
#ifdef VAR_RANGES
		logval("choose1", ((int)now.choose1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 197 - Case2Rules.h:144 - [printf('C1 is chosen')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][197] = 1;
		Printf("C1 is chosen");
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 198 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][198] = 1;
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
	case 117: // STATE 201 - Case2Rules.h:149 - [((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][201] = 1;
		if (!((((((int)now.C1_bo.oblig)==1)&&((((int)now.C1_bo.role_pl)==12)==1))&&((((int)now.C1_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 202 - Case2Rules.h:151 - [printf('\\n\\n')] (0:213:0 - 1)
		IfNotBlocked
		reached[1][202] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(213, 203, 213) */
		reached[1][203] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(213, 204, 213) */
		reached[1][204] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C1</type>\\n')(213, 205, 213) */
		reached[1][205] = 1;
		Printf("<type>C1</type>\n");
		/* merge: printf('<status>techfail</status>\\n')(213, 206, 213) */
		reached[1][206] = 1;
		Printf("<status>techfail</status>\n");
		/* merge: printf('\\n\\n')(213, 207, 213) */
		reached[1][207] = 1;
		Printf("\n\n");
		/* merge: printf('Technical fail on choosing C1')(213, 209, 213) */
		reached[1][209] = 1;
		Printf("Technical fail on choosing C1");
		_m = 3; goto P999; /* 6 */
	case 119: // STATE 210 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 211 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 212 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 214 - EduOperation.h:298 - [ChooseReject_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][214] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 215 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 216 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 218 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][218] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 219 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 220 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][220] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 222 - Case2Rules.h:164 - [printf('\\n\\n')] (0:230:0 - 1)
		IfNotBlocked
		reached[1][222] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(230, 223, 230) */
		reached[1][223] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(230, 224, 230) */
		reached[1][224] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(230, 225, 230) */
		reached[1][225] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(230, 226, 230) */
		reached[1][226] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(230, 227, 230) */
		reached[1][227] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 129: // STATE 229 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][229] = 1;
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
	case 130: // STATE 232 - Case2Rules.h:172 - [((((C1_bo.prohib==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][232] = 1;
		if (!((((((int)now.C1_bo.prohib)==1)&&((((int)now.C1_bo.role_pl)==12)==1))&&((((int)now.C1_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 233 - Case2Rules.h:174 - [printf('Prohibited choice')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][233] = 1;
		Printf("Prohibited choice");
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 234 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][234] = 1;
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
	case 133: // STATE 238 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][238] = 1;
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
	case 134: // STATE 243 - EduOperation.h:390 - [(LEG2CRM?[21,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][243] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 244 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][244] = 1;
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
	case 136: // STATE 245 - EduOperation.h:391 - [(LEG2CRM?[21,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][245] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 246 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][246] = 1;
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
	case 138: // STATE 247 - EduOperation.h:392 - [(LEG2CRM?[21,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][247] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 248 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][248] = 1;
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
	case 140: // STATE 249 - EduOperation.h:393 - [(LEG2CRM?[21,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][249] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 250 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][250] = 1;
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
	case 142: // STATE 251 - EduOperation.h:394 - [(LEG2CRM?[21,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][251] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 252 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][252] = 1;
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
	case 144: // STATE 256 - Case2Rules.h:181 - [printf('C2')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][256] = 1;
		Printf("C2");
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 257 - Case2Rules.h:183 - [((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][257] = 1;
		if (!((((((int)now.C2_bo.oblig)==1)&&((((int)now.C2_bo.role_pl)==12)==1))&&((((int)now.C2_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 258 - Case2Rules.h:185 - [printf('\\n\\n')] (0:265:0 - 1)
		IfNotBlocked
		reached[1][258] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(265, 259, 265) */
		reached[1][259] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(265, 260, 265) */
		reached[1][260] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C2</type>\\n')(265, 261, 265) */
		reached[1][261] = 1;
		Printf("<type>C2</type>\n");
		/* merge: printf('<status>success</status>\\n')(265, 262, 265) */
		reached[1][262] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(265, 263, 265) */
		reached[1][263] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 147: // STATE 265 - Case2Rules.h:192 - [STUDENTexTrace = (STUDENTexTrace&(1<<C2_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][265] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace&(1<<((int)now.C2_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 266 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][266] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 267 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][267] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 268 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][268] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 270 - EduOperation.h:298 - [ChooseReject_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][270] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 271 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][271] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 272 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][272] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 274 - EduOperation.h:298 - [C1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][274] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 275 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][275] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 276 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][276] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 278 - EduOperation.h:298 - [C2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][278] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 279 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][279] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 280 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][280] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 282 - EduOperation.h:298 - [C3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][282] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 283 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][283] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 284 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][284] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 286 - Case2Rules.h:198 - [choose2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][286] = 1;
		(trpt+1)->bup.oval = ((int)now.choose2);
		now.choose2 = 1;
#ifdef VAR_RANGES
		logval("choose2", ((int)now.choose2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 287 - Case2Rules.h:199 - [printf('C2 is chosen')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][287] = 1;
		Printf("C2 is chosen");
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 288 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][288] = 1;
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
	case 166: // STATE 291 - Case2Rules.h:204 - [((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][291] = 1;
		if (!((((((int)now.C2_bo.oblig)==1)&&((((int)now.C2_bo.role_pl)==12)==1))&&((((int)now.C2_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 292 - Case2Rules.h:206 - [printf('\\n\\n')] (0:303:0 - 1)
		IfNotBlocked
		reached[1][292] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(303, 293, 303) */
		reached[1][293] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(303, 294, 303) */
		reached[1][294] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C2</type>\\n')(303, 295, 303) */
		reached[1][295] = 1;
		Printf("<type>C2</type>\n");
		/* merge: printf('<status>techfail</status>\\n')(303, 296, 303) */
		reached[1][296] = 1;
		Printf("<status>techfail</status>\n");
		/* merge: printf('\\n\\n')(303, 297, 303) */
		reached[1][297] = 1;
		Printf("\n\n");
		/* merge: printf('Technical fail on choosing C2')(303, 299, 303) */
		reached[1][299] = 1;
		Printf("Technical fail on choosing C2");
		_m = 3; goto P999; /* 6 */
	case 168: // STATE 300 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][300] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 301 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][301] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 302 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][302] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 304 - EduOperation.h:298 - [ChooseReject_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][304] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 305 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][305] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 306 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][306] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 308 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][308] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 309 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][309] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 310 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][310] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 312 - Case2Rules.h:219 - [printf('\\n\\n')] (0:320:0 - 1)
		IfNotBlocked
		reached[1][312] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(320, 313, 320) */
		reached[1][313] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(320, 314, 320) */
		reached[1][314] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(320, 315, 320) */
		reached[1][315] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(320, 316, 320) */
		reached[1][316] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(320, 317, 320) */
		reached[1][317] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 178: // STATE 319 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][319] = 1;
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
	case 179: // STATE 322 - Case2Rules.h:227 - [((((C2_bo.prohib==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][322] = 1;
		if (!((((((int)now.C2_bo.prohib)==1)&&((((int)now.C2_bo.role_pl)==12)==1))&&((((int)now.C2_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 323 - Case2Rules.h:229 - [printf('Prohibited choice')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][323] = 1;
		Printf("Prohibited choice");
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 324 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][324] = 1;
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
	case 182: // STATE 328 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][328] = 1;
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
	case 183: // STATE 333 - EduOperation.h:390 - [(LEG2CRM?[22,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][333] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 334 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][334] = 1;
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
	case 185: // STATE 335 - EduOperation.h:391 - [(LEG2CRM?[22,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][335] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 336 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][336] = 1;
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
	case 187: // STATE 337 - EduOperation.h:392 - [(LEG2CRM?[22,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][337] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 338 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][338] = 1;
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
	case 189: // STATE 339 - EduOperation.h:393 - [(LEG2CRM?[22,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][339] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 340 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 191: // STATE 341 - EduOperation.h:394 - [(LEG2CRM?[22,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][341] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 342 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 193: // STATE 346 - Case2Rules.h:240 - [printf('C3')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][346] = 1;
		Printf("C3");
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 347 - Case2Rules.h:242 - [((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][347] = 1;
		if (!((((((int)now.C3_bo.oblig)==1)&&((((int)now.C3_bo.role_pl)==12)==1))&&((((int)now.C3_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 348 - Case2Rules.h:244 - [printf('\\n\\n')] (0:355:0 - 1)
		IfNotBlocked
		reached[1][348] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(355, 349, 355) */
		reached[1][349] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(355, 350, 355) */
		reached[1][350] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C3</type>\\n')(355, 351, 355) */
		reached[1][351] = 1;
		Printf("<type>C3</type>\n");
		/* merge: printf('<status>success</status>\\n')(355, 352, 355) */
		reached[1][352] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(355, 353, 355) */
		reached[1][353] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 196: // STATE 355 - Case2Rules.h:251 - [STUDENTexTrace = (STUDENTexTrace&(1<<C3_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][355] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = (now.STUDENTexTrace&(1<<((int)now.C3_bo.id)));
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 356 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][356] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 357 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][357] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 358 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][358] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 360 - EduOperation.h:298 - [ChooseReject_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][360] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 361 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][361] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 362 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][362] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 364 - EduOperation.h:298 - [C1_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][364] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 365 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][365] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 366 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][366] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 368 - EduOperation.h:298 - [C2_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][368] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 369 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][369] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 370 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][370] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 372 - EduOperation.h:298 - [C3_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][372] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 373 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][373] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 374 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][374] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 376 - Case2Rules.h:257 - [choose3 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][376] = 1;
		(trpt+1)->bup.oval = ((int)now.choose3);
		now.choose3 = 1;
#ifdef VAR_RANGES
		logval("choose3", ((int)now.choose3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 377 - Case2Rules.h:258 - [printf('C3 is chosen')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][377] = 1;
		Printf("C3 is chosen");
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 378 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][378] = 1;
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
	case 215: // STATE 381 - Case2Rules.h:263 - [((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][381] = 1;
		if (!((((((int)now.C3_bo.oblig)==1)&&((((int)now.C3_bo.role_pl)==12)==1))&&((((int)now.C3_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 382 - Case2Rules.h:265 - [printf('\\n\\n')] (0:393:0 - 1)
		IfNotBlocked
		reached[1][382] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>STUDENT</originator>\\n')(393, 383, 393) */
		reached[1][383] = 1;
		Printf("<originator>STUDENT</originator>\n");
		/* merge: printf('<responder>LMS</responder>\\n')(393, 384, 393) */
		reached[1][384] = 1;
		Printf("<responder>LMS</responder>\n");
		/* merge: printf('<type>C3</type>\\n')(393, 385, 393) */
		reached[1][385] = 1;
		Printf("<type>C3</type>\n");
		/* merge: printf('<status>techfail</status>\\n')(393, 386, 393) */
		reached[1][386] = 1;
		Printf("<status>techfail</status>\n");
		/* merge: printf('\\n\\n')(393, 387, 393) */
		reached[1][387] = 1;
		Printf("\n\n");
		/* merge: printf('Technical fail on choosing C3')(393, 389, 393) */
		reached[1][389] = 1;
		Printf("Technical fail on choosing C3");
		_m = 3; goto P999; /* 6 */
	case 217: // STATE 390 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][390] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 391 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][391] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 392 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][392] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 394 - EduOperation.h:298 - [ChooseReject_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][394] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 395 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][395] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 396 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][396] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 398 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][398] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 399 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][399] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 400 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][400] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 402 - Case2Rules.h:278 - [printf('\\n\\n')] (0:410:0 - 1)
		IfNotBlocked
		reached[1][402] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(410, 403, 410) */
		reached[1][403] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(410, 404, 410) */
		reached[1][404] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(410, 405, 410) */
		reached[1][405] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(410, 406, 410) */
		reached[1][406] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(410, 407, 410) */
		reached[1][407] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 227: // STATE 409 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][409] = 1;
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
	case 228: // STATE 412 - Case2Rules.h:286 - [((((C3_bo.prohib==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==P)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][412] = 1;
		if (!((((((int)now.C3_bo.prohib)==1)&&((((int)now.C3_bo.role_pl)==12)==1))&&((((int)now.C3_bo.status)==13)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 413 - Case2Rules.h:288 - [printf('Prohibited choice')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][413] = 1;
		Printf("Prohibited choice");
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 414 - EduOperation.h:426 - [CRM2LEG!7,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][414] = 1;
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
	case 231: // STATE 418 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][418] = 1;
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
	case 232: // STATE 423 - EduOperation.h:390 - [(LEG2CRM?[23,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][423] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 424 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][424] = 1;
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
	case 234: // STATE 425 - EduOperation.h:391 - [(LEG2CRM?[23,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][425] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 426 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 236: // STATE 427 - EduOperation.h:392 - [(LEG2CRM?[23,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][427] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 428 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 238: // STATE 429 - EduOperation.h:393 - [(LEG2CRM?[23,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][429] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 430 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 240: // STATE 431 - EduOperation.h:394 - [(LEG2CRM?[23,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][431] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 432 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 242: // STATE 436 - Case2Rules.h:298 - [printf('Accept the choice ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][436] = 1;
		Printf("Accept the choice ");
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 437 - Case2Rules.h:300 - [((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][437] = 1;
		if (!((((((int)now.ChooseAccept_bo.oblig)==1)&&((((int)now.ChooseAccept_bo.role_pl)==11)==1))&&((((int)now.ChooseAccept_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 438 - Case2Rules.h:302 - [printf('\\n\\n')] (0:445:0 - 1)
		IfNotBlocked
		reached[1][438] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(445, 439, 445) */
		reached[1][439] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>STUDENT</responder>\\n')(445, 440, 445) */
		reached[1][440] = 1;
		Printf("<responder>STUDENT</responder>\n");
		/* merge: printf('<type>ChooseAccept</type>\\n')(445, 441, 445) */
		reached[1][441] = 1;
		Printf("<type>ChooseAccept</type>\n");
		/* merge: printf('<status>success</status>\\n')(445, 442, 445) */
		reached[1][442] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(445, 443, 445) */
		reached[1][443] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 245: // STATE 445 - Case2Rules.h:309 - [LMSexTrace = (LMSexTrace&(1<<ChooseAccept_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][445] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = (now.LMSexTrace&(1<<((int)now.ChooseAccept_bo.id)));
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 446 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][446] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 447 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][447] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 448 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][448] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 450 - Case2Rules.h:312 - [printf('\\n\\n')] (0:458:0 - 1)
		IfNotBlocked
		reached[1][450] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(458, 451, 458) */
		reached[1][451] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(458, 452, 458) */
		reached[1][452] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(458, 453, 458) */
		reached[1][453] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(458, 454, 458) */
		reached[1][454] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(458, 455, 458) */
		reached[1][455] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 250: // STATE 457 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][457] = 1;
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
	case 251: // STATE 460 - Case2Rules.h:321 - [((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][460] = 1;
		if (!((((((int)now.ChooseAccept_bo.oblig)==1)&&((((int)now.ChooseAccept_bo.role_pl)==11)==1))&&((((int)now.ChooseAccept_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 461 - Case2Rules.h:324 - [printf('\\n\\n')] (0:472:0 - 1)
		IfNotBlocked
		reached[1][461] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(472, 462, 472) */
		reached[1][462] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>LSTUDENT</responder>\\n')(472, 463, 472) */
		reached[1][463] = 1;
		Printf("<responder>LSTUDENT</responder>\n");
		/* merge: printf('<type>ChooseAccept</type>\\n')(472, 464, 472) */
		reached[1][464] = 1;
		Printf("<type>ChooseAccept</type>\n");
		/* merge: printf('<status>technical fail</status>\\n')(472, 465, 472) */
		reached[1][465] = 1;
		Printf("<status>technical fail</status>\n");
		/* merge: printf('\\n\\n')(472, 466, 472) */
		reached[1][466] = 1;
		Printf("\n\n");
		/* merge: printf('Technical fail on validating choice of course')(472, 468, 472) */
		reached[1][468] = 1;
		Printf("Technical fail on validating choice of course");
		_m = 3; goto P999; /* 6 */
	case 253: // STATE 469 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][469] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 470 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][470] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 471 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][471] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 473 - EduOperation.h:298 - [ChooseReject_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][473] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 474 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][474] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 475 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][475] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 477 - Case2Rules.h:336 - [printf('\\n\\n')] (0:485:0 - 1)
		IfNotBlocked
		reached[1][477] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(485, 478, 485) */
		reached[1][478] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(485, 479, 485) */
		reached[1][479] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(485, 480, 485) */
		reached[1][480] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(485, 481, 485) */
		reached[1][481] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(485, 482, 485) */
		reached[1][482] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 260: // STATE 484 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][484] = 1;
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
	case 261: // STATE 488 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][488] = 1;
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
	case 262: // STATE 493 - EduOperation.h:390 - [(LEG2CRM?[24,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][493] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 17)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 494 - EduOperation.h:390 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 264: // STATE 495 - EduOperation.h:391 - [(LEG2CRM?[24,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][495] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 496 - EduOperation.h:391 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 266: // STATE 497 - EduOperation.h:392 - [(LEG2CRM?[24,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][497] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 498 - EduOperation.h:392 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 268: // STATE 499 - EduOperation.h:393 - [(LEG2CRM?[24,LF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][499] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 16)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 500 - EduOperation.h:393 - [LEG2CRM?_,_] (0:0:2 - 1)
		reached[1][500] = 1;
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
	case 270: // STATE 501 - EduOperation.h:394 - [(LEG2CRM?[24,P])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][501] = 1;
		if (!(not_RV(now.LEG2CRM) && \
		(q_len(now.LEG2CRM) > 0 \
		&& qrecv(now.LEG2CRM, 0, 0, 0) == 24 \
		&& qrecv(now.LEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 502 - EduOperation.h:394 - [LEG2CRM?_,_] (0:0:2 - 1)
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
	case 272: // STATE 506 - Case2Rules.h:348 - [printf('Reject the choice ')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][506] = 1;
		Printf("Reject the choice ");
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 507 - Case2Rules.h:350 - [((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][507] = 1;
		if (!((((((int)now.ChooseReject_bo.oblig)==1)&&((((int)now.ChooseReject_bo.role_pl)==11)==1))&&((((int)now.ChooseReject_bo.status)==17)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 508 - Case2Rules.h:352 - [printf('\\n\\n')] (0:515:0 - 1)
		IfNotBlocked
		reached[1][508] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(515, 509, 515) */
		reached[1][509] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>STUDENT</responder>\\n')(515, 510, 515) */
		reached[1][510] = 1;
		Printf("<responder>STUDENT</responder>\n");
		/* merge: printf('<type>ChooseReject</type>\\n')(515, 511, 515) */
		reached[1][511] = 1;
		Printf("<type>ChooseReject</type>\n");
		/* merge: printf('<status>success</status>\\n')(515, 512, 515) */
		reached[1][512] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('\\n\\n')(515, 513, 515) */
		reached[1][513] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 275: // STATE 515 - Case2Rules.h:359 - [LMSexTrace = (LMSexTrace&(1<<ChooseReject_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][515] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = (now.LMSexTrace&(1<<((int)now.ChooseReject_bo.id)));
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 516 - EduOperation.h:298 - [ChooseReject_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][516] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 517 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][517] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 518 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][518] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 520 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][520] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 521 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][521] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 522 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][522] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 524 - Case2Rules.h:363 - [((choose1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][524] = 1;
		if (!((((int)now.choose1)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 525 - EduOperation.h:312 - [C1_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][525] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.prohib);
		now.C1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 526 - EduOperation.h:313 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][526] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 527 - EduOperation.h:314 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][527] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.oblig)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 529 - Case2Rules.h:366 - [((choose2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][529] = 1;
		if (!((((int)now.choose2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 287: // STATE 530 - EduOperation.h:312 - [C2_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][530] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.prohib);
		now.C2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 531 - EduOperation.h:313 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][531] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 532 - EduOperation.h:314 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][532] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.oblig)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 534 - Case2Rules.h:369 - [((choose3==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][534] = 1;
		if (!((((int)now.choose3)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 535 - EduOperation.h:312 - [C3_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][535] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.prohib);
		now.C3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 536 - EduOperation.h:313 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][536] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 537 - EduOperation.h:314 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][537] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.oblig)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 539 - Case2Rules.h:371 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][539] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 541 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][541] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 542 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][542] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 543 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][543] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 548 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][548] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 549 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][549] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 550 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][550] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 554 - Case2Rules.h:377 - [((choose3==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][554] = 1;
		if (!((((int)now.choose3)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 555 - EduOperation.h:312 - [C3_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][555] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.prohib);
		now.C3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 556 - EduOperation.h:313 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][556] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 557 - EduOperation.h:314 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][557] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.oblig)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 559 - Case2Rules.h:380 - [((choose2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][559] = 1;
		if (!((((int)now.choose2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 560 - EduOperation.h:312 - [C2_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][560] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.prohib);
		now.C2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 561 - EduOperation.h:313 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][561] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 562 - EduOperation.h:314 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][562] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.oblig)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 564 - Case2Rules.h:382 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][564] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 566 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][566] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 567 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][567] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 568 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][568] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 573 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][573] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 574 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][574] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 575 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][575] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 579 - Case2Rules.h:387 - [((choose2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][579] = 1;
		if (!((((int)now.choose2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 580 - EduOperation.h:312 - [C2_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][580] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.prohib);
		now.C2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 581 - EduOperation.h:313 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][581] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 582 - EduOperation.h:314 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][582] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.oblig)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 584 - Case2Rules.h:390 - [((choose1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][584] = 1;
		if (!((((int)now.choose1)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 585 - EduOperation.h:312 - [C1_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][585] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.prohib);
		now.C1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 586 - EduOperation.h:313 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][586] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 587 - EduOperation.h:314 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][587] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.oblig)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 589 - Case2Rules.h:393 - [((choose3==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][589] = 1;
		if (!((((int)now.choose3)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 590 - EduOperation.h:312 - [C3_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][590] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.prohib);
		now.C3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 591 - EduOperation.h:313 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][591] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 592 - EduOperation.h:314 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][592] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.oblig)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 594 - Case2Rules.h:395 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][594] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 596 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][596] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 597 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][597] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 598 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][598] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 603 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][603] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 604 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][604] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 605 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][605] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 609 - Case2Rules.h:401 - [((choose3==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][609] = 1;
		if (!((((int)now.choose3)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 610 - EduOperation.h:312 - [C3_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][610] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.prohib);
		now.C3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 611 - EduOperation.h:313 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][611] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 612 - EduOperation.h:314 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][612] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.oblig)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 614 - Case2Rules.h:404 - [((choose1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][614] = 1;
		if (!((((int)now.choose1)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 615 - EduOperation.h:312 - [C1_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][615] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.prohib);
		now.C1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 616 - EduOperation.h:313 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][616] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 617 - EduOperation.h:314 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][617] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.oblig)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 619 - Case2Rules.h:406 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][619] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 621 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][621] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 622 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][622] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 623 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][623] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 628 - EduOperation.h:298 - [C3_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][628] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.oblig);
		now.C3_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 629 - EduOperation.h:299 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][629] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.prohib)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 630 - EduOperation.h:300 - [assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][630] = 1;
		spin_assert( !(((((int)now.C3_bo.oblig)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.oblig==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 634 - Case2Rules.h:411 - [((choose3==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][634] = 1;
		if (!((((int)now.choose3)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 635 - EduOperation.h:312 - [C3_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][635] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.prohib);
		now.C3_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 636 - EduOperation.h:313 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][636] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.right)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 637 - EduOperation.h:314 - [assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][637] = 1;
		spin_assert( !(((((int)now.C3_bo.prohib)==1)&&(((int)now.C3_bo.oblig)==1))), " !(((C3_bo.prohib==1)&&(C3_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 639 - Case2Rules.h:414 - [((choose2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][639] = 1;
		if (!((((int)now.choose2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 640 - EduOperation.h:312 - [C2_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][640] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.prohib);
		now.C2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 641 - EduOperation.h:313 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][641] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 642 - EduOperation.h:314 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][642] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.oblig)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 644 - Case2Rules.h:417 - [((choose1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][644] = 1;
		if (!((((int)now.choose1)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 359: // STATE 645 - EduOperation.h:312 - [C1_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][645] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.prohib);
		now.C1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 646 - EduOperation.h:313 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][646] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 647 - EduOperation.h:314 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][647] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.oblig)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 649 - Case2Rules.h:419 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][649] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 651 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][651] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 652 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][652] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 653 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][653] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 658 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][658] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 659 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][659] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 660 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][660] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 664 - Case2Rules.h:425 - [((choose1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][664] = 1;
		if (!((((int)now.choose1)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 665 - EduOperation.h:312 - [C1_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][665] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.prohib);
		now.C1_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 666 - EduOperation.h:313 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][666] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 667 - EduOperation.h:314 - [assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][667] = 1;
		spin_assert( !(((((int)now.C1_bo.prohib)==1)&&(((int)now.C1_bo.oblig)==1))), " !(((C1_bo.prohib==1)&&(C1_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 669 - Case2Rules.h:428 - [((choose2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][669] = 1;
		if (!((((int)now.choose2)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 670 - EduOperation.h:312 - [C2_bo.prohib = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][670] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.prohib);
		now.C2_bo.prohib = 1;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 671 - EduOperation.h:313 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][671] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 672 - EduOperation.h:314 - [assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][672] = 1;
		spin_assert( !(((((int)now.C2_bo.prohib)==1)&&(((int)now.C2_bo.oblig)==1))), " !(((C2_bo.prohib==1)&&(C2_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 674 - Case2Rules.h:430 - [all = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][674] = 1;
		(trpt+1)->bup.oval = ((int)now.all);
		now.all = 1;
#ifdef VAR_RANGES
		logval("all", ((int)now.all));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 676 - EduOperation.h:298 - [C2_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][676] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.oblig);
		now.C2_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 677 - EduOperation.h:299 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][677] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.prohib)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 678 - EduOperation.h:300 - [assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][678] = 1;
		spin_assert( !(((((int)now.C2_bo.oblig)==1)&&(((int)now.C2_bo.right)==1))), " !(((C2_bo.oblig==1)&&(C2_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 683 - EduOperation.h:298 - [C1_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][683] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.oblig);
		now.C1_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 382: // STATE 684 - EduOperation.h:299 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][684] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.prohib)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 685 - EduOperation.h:300 - [assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][685] = 1;
		spin_assert( !(((((int)now.C1_bo.oblig)==1)&&(((int)now.C1_bo.right)==1))), " !(((C1_bo.oblig==1)&&(C1_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 384: // STATE 691 - Case2Rules.h:437 - [printf('\\n\\n')] (0:705:0 - 1)
		IfNotBlocked
		reached[1][691] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(705, 692, 705) */
		reached[1][692] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(705, 693, 705) */
		reached[1][693] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(705, 694, 705) */
		reached[1][694] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(705, 695, 705) */
		reached[1][695] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(705, 696, 705) */
		reached[1][696] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 385: // STATE 698 - Case2Rules.h:444 - [((all==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][698] = 1;
		if (!((((int)now.all)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 699 - Case2Rules.h:445 - [printf('No course is suitable for you')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][699] = 1;
		Printf("No course is suitable for you");
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 700 - EduOperation.h:426 - [CRM2LEG!8,2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][700] = 1;
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
	case 388: // STATE 703 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][703] = 1;
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
	case 389: // STATE 708 - Case2Rules.h:452 - [((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==TF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][708] = 1;
		if (!((((((int)now.ChooseReject_bo.oblig)==1)&&((((int)now.ChooseReject_bo.role_pl)==11)==1))&&((((int)now.ChooseReject_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 709 - Case2Rules.h:455 - [printf('\\n\\n')] (0:720:0 - 1)
		IfNotBlocked
		reached[1][709] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>LMS</originator>\\n')(720, 710, 720) */
		reached[1][710] = 1;
		Printf("<originator>LMS</originator>\n");
		/* merge: printf('<responder>LSTUDENT</responder>\\n')(720, 711, 720) */
		reached[1][711] = 1;
		Printf("<responder>LSTUDENT</responder>\n");
		/* merge: printf('<type>ChooseReject</type>\\n')(720, 712, 720) */
		reached[1][712] = 1;
		Printf("<type>ChooseReject</type>\n");
		/* merge: printf('<status>technical fail</status>\\n')(720, 713, 720) */
		reached[1][713] = 1;
		Printf("<status>technical fail</status>\n");
		/* merge: printf('\\n\\n')(720, 714, 720) */
		reached[1][714] = 1;
		Printf("\n\n");
		/* merge: printf('Technical fail on validating choice of course')(720, 716, 720) */
		reached[1][716] = 1;
		Printf("Technical fail on validating choice of course");
		_m = 3; goto P999; /* 6 */
	case 391: // STATE 717 - EduOperation.h:298 - [ChooseAccept_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][717] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.oblig);
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 718 - EduOperation.h:299 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][718] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.prohib)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 719 - EduOperation.h:300 - [assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][719] = 1;
		spin_assert( !(((((int)now.ChooseAccept_bo.oblig)==1)&&(((int)now.ChooseAccept_bo.right)==1))), " !(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 721 - EduOperation.h:298 - [ChooseReject_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][721] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.oblig);
		now.ChooseReject_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 722 - EduOperation.h:299 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][722] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.prohib)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 723 - EduOperation.h:300 - [assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][723] = 1;
		spin_assert( !(((((int)now.ChooseReject_bo.oblig)==1)&&(((int)now.ChooseReject_bo.right)==1))), " !(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 725 - Case2Rules.h:467 - [printf('\\n\\n')] (0:733:0 - 1)
		IfNotBlocked
		reached[1][725] = 1;
		Printf("\n\n");
		/* merge: printf('<originator>reset</originator>\\n')(733, 726, 733) */
		reached[1][726] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(733, 727, 733) */
		reached[1][727] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(733, 728, 733) */
		reached[1][728] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(733, 729, 733) */
		reached[1][729] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('\\n\\n')(733, 730, 733) */
		reached[1][730] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 5 */
	case 398: // STATE 732 - EduOperation.h:426 - [CRM2LEG!8,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][732] = 1;
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
	case 399: // STATE 736 - EduOperation.h:433 - [CRM2LEG!6,5] (0:0:0 - 1)
		IfNotBlocked
		reached[1][736] = 1;
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
	case 400: // STATE 744 - Case2.pml:146 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][744] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC LEG */
	case 401: // STATE 1 - EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 3 - Case2.pml:85 - [STUDENTexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.STUDENTexTrace;
		now.STUDENTexTrace = 0;
#ifdef VAR_RANGES
		logval("STUDENTexTrace", now.STUDENTexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 4 - EduOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 404: // STATE 6 - Case2.pml:86 - [LMSexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.LMSexTrace;
		now.LMSexTrace = 0;
#ifdef VAR_RANGES
		logval("LMSexTrace", now.LMSexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 14 - EduOperation.h:174 - [D_STEP174]
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
		now.RegReq_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("RegReq_bo.role_pl", ((int)now.RegReq_bo.role_pl));
#endif
		;
S_008_0: /* 2 */
		now.RegReq_bo.right = 1;
#ifdef VAR_RANGES
		logval("RegReq_bo.right", ((int)now.RegReq_bo.right));
#endif
		;
S_009_0: /* 2 */
		now.RegReq_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("RegReq_bo.oblig", ((int)now.RegReq_bo.oblig));
#endif
		;
S_010_0: /* 2 */
		now.RegReq_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("RegReq_bo.prohib", ((int)now.RegReq_bo.prohib));
#endif
		;
S_011_0: /* 2 */
		now.RegReq_bo.executed = 0;
#ifdef VAR_RANGES
		logval("RegReq_bo.executed", ((int)now.RegReq_bo.executed));
#endif
		;
S_012_0: /* 2 */
		now.RegReq_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("RegReq_bo.id", ((int)now.RegReq_bo.id));
#endif
		;
		goto S_023_0;
S_023_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 406: // STATE 23 - EduOperation.h:174 - [D_STEP174]
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
		now.RegReply_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("RegReply_bo.role_pl", ((int)now.RegReply_bo.role_pl));
#endif
		;
S_017_0: /* 2 */
		now.RegReply_bo.right = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.right", ((int)now.RegReply_bo.right));
#endif
		;
S_018_0: /* 2 */
		now.RegReply_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.oblig", ((int)now.RegReply_bo.oblig));
#endif
		;
S_019_0: /* 2 */
		now.RegReply_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.prohib", ((int)now.RegReply_bo.prohib));
#endif
		;
S_020_0: /* 2 */
		now.RegReply_bo.executed = 0;
#ifdef VAR_RANGES
		logval("RegReply_bo.executed", ((int)now.RegReply_bo.executed));
#endif
		;
S_021_0: /* 2 */
		now.RegReply_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("RegReply_bo.id", ((int)now.RegReply_bo.id));
#endif
		;
		goto S_032_0;
S_032_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 407: // STATE 32 - EduOperation.h:174 - [D_STEP174]
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
		now.C1_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("C1_bo.role_pl", ((int)now.C1_bo.role_pl));
#endif
		;
S_026_0: /* 2 */
		now.C1_bo.right = 0;
#ifdef VAR_RANGES
		logval("C1_bo.right", ((int)now.C1_bo.right));
#endif
		;
S_027_0: /* 2 */
		now.C1_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C1_bo.oblig", ((int)now.C1_bo.oblig));
#endif
		;
S_028_0: /* 2 */
		now.C1_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("C1_bo.prohib", ((int)now.C1_bo.prohib));
#endif
		;
S_029_0: /* 2 */
		now.C1_bo.executed = 0;
#ifdef VAR_RANGES
		logval("C1_bo.executed", ((int)now.C1_bo.executed));
#endif
		;
S_030_0: /* 2 */
		now.C1_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("C1_bo.id", ((int)now.C1_bo.id));
#endif
		;
		goto S_041_0;
S_041_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 408: // STATE 41 - EduOperation.h:174 - [D_STEP174]
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
		now.C2_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("C2_bo.role_pl", ((int)now.C2_bo.role_pl));
#endif
		;
S_035_0: /* 2 */
		now.C2_bo.right = 0;
#ifdef VAR_RANGES
		logval("C2_bo.right", ((int)now.C2_bo.right));
#endif
		;
S_036_0: /* 2 */
		now.C2_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C2_bo.oblig", ((int)now.C2_bo.oblig));
#endif
		;
S_037_0: /* 2 */
		now.C2_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("C2_bo.prohib", ((int)now.C2_bo.prohib));
#endif
		;
S_038_0: /* 2 */
		now.C2_bo.executed = 0;
#ifdef VAR_RANGES
		logval("C2_bo.executed", ((int)now.C2_bo.executed));
#endif
		;
S_039_0: /* 2 */
		now.C2_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("C2_bo.id", ((int)now.C2_bo.id));
#endif
		;
		goto S_050_0;
S_050_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 409: // STATE 50 - EduOperation.h:174 - [D_STEP174]
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
		now.C3_bo.role_pl = 12;
#ifdef VAR_RANGES
		logval("C3_bo.role_pl", ((int)now.C3_bo.role_pl));
#endif
		;
S_044_0: /* 2 */
		now.C3_bo.right = 0;
#ifdef VAR_RANGES
		logval("C3_bo.right", ((int)now.C3_bo.right));
#endif
		;
S_045_0: /* 2 */
		now.C3_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("C3_bo.oblig", ((int)now.C3_bo.oblig));
#endif
		;
S_046_0: /* 2 */
		now.C3_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("C3_bo.prohib", ((int)now.C3_bo.prohib));
#endif
		;
S_047_0: /* 2 */
		now.C3_bo.executed = 0;
#ifdef VAR_RANGES
		logval("C3_bo.executed", ((int)now.C3_bo.executed));
#endif
		;
S_048_0: /* 2 */
		now.C3_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("C3_bo.id", ((int)now.C3_bo.id));
#endif
		;
		goto S_059_0;
S_059_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 410: // STATE 59 - EduOperation.h:174 - [D_STEP174]
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
		now.ChooseAccept_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.role_pl", ((int)now.ChooseAccept_bo.role_pl));
#endif
		;
S_053_0: /* 2 */
		now.ChooseAccept_bo.right = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.right", ((int)now.ChooseAccept_bo.right));
#endif
		;
S_054_0: /* 2 */
		now.ChooseAccept_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.oblig", ((int)now.ChooseAccept_bo.oblig));
#endif
		;
S_055_0: /* 2 */
		now.ChooseAccept_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.prohib", ((int)now.ChooseAccept_bo.prohib));
#endif
		;
S_056_0: /* 2 */
		now.ChooseAccept_bo.executed = 0;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.executed", ((int)now.ChooseAccept_bo.executed));
#endif
		;
S_057_0: /* 2 */
		now.ChooseAccept_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.id", ((int)now.ChooseAccept_bo.id));
#endif
		;
		goto S_068_0;
S_068_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 411: // STATE 68 - EduOperation.h:174 - [D_STEP174]
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
		now.ChooseReject_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.role_pl", ((int)now.ChooseReject_bo.role_pl));
#endif
		;
S_062_0: /* 2 */
		now.ChooseReject_bo.right = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.right", ((int)now.ChooseReject_bo.right));
#endif
		;
S_063_0: /* 2 */
		now.ChooseReject_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.oblig", ((int)now.ChooseReject_bo.oblig));
#endif
		;
S_064_0: /* 2 */
		now.ChooseReject_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.prohib", ((int)now.ChooseReject_bo.prohib));
#endif
		;
S_065_0: /* 2 */
		now.ChooseReject_bo.executed = 0;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.executed", ((int)now.ChooseReject_bo.executed));
#endif
		;
S_066_0: /* 2 */
		now.ChooseReject_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("ChooseReject_bo.id", ((int)now.ChooseReject_bo.id));
#endif
		;
		goto S_853_0;
S_853_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 412: // STATE 71 - Case2.pml:101 - [((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((((int)now.RegReq_bo.right)==1)||(((int)now.RegReq_bo.oblig)==1))||(((int)now.RegReq_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 72 - Case2.pml:101 - [RegReq_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReq_bo.status);
		now.RegReq_bo.status = 17;
#ifdef VAR_RANGES
		logval("RegReq_bo.status", ((int)now.RegReq_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 73 - EduOperation.h:404 - [LEG2CRM!18,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][73] = 1;
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
	case 415: // STATE 75 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][75] = 1;
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
	case 416: // STATE 78 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][78] = 1;
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
	case 417: // STATE 81 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][81] = 1;
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
	case 418: // STATE 84 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][84] = 1;
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
	case 419: // STATE 87 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][87] = 1;
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
	case 420: // STATE 90 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][90] = 1;
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
	case 421: // STATE 93 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][93] = 1;
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
	case 422: // STATE 96 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][96] = 1;
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
	case 423: // STATE 99 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][99] = 1;
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
	case 424: // STATE 102 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][102] = 1;
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
	case 425: // STATE 105 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][105] = 1;
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
	case 426: // STATE 108 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][108] = 1;
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
	case 427: // STATE 111 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][111] = 1;
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
	case 428: // STATE 117 - Case2.pml:102 - [((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!((((((int)now.RegReq_bo.right)==1)||(((int)now.RegReq_bo.oblig)==1))||(((int)now.RegReq_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 118 - Case2.pml:102 - [RegReq_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReq_bo.status);
		now.RegReq_bo.status = 15;
#ifdef VAR_RANGES
		logval("RegReq_bo.status", ((int)now.RegReq_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 119 - EduOperation.h:404 - [LEG2CRM!18,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		if (q_full(now.LEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.LEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.LEG2CRM, 0, 18, 15, 2);
		if (q_zero(now.LEG2CRM)) { boq = now.LEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 431: // STATE 121 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][121] = 1;
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
	case 432: // STATE 124 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][124] = 1;
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
	case 433: // STATE 127 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][127] = 1;
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
	case 434: // STATE 130 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][130] = 1;
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
	case 435: // STATE 133 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][133] = 1;
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
	case 436: // STATE 136 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][136] = 1;
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
	case 437: // STATE 139 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][139] = 1;
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
	case 438: // STATE 142 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][142] = 1;
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
	case 439: // STATE 145 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][145] = 1;
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
	case 440: // STATE 148 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][148] = 1;
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
	case 441: // STATE 151 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][151] = 1;
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
	case 442: // STATE 154 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][154] = 1;
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
	case 443: // STATE 157 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][157] = 1;
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
	case 444: // STATE 163 - Case2.pml:104 - [((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][163] = 1;
		if (!((((((int)now.RegReply_bo.right)==1)||(((int)now.RegReply_bo.oblig)==1))||(((int)now.RegReply_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 164 - Case2.pml:104 - [RegReply_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.status);
		now.RegReply_bo.status = 17;
#ifdef VAR_RANGES
		logval("RegReply_bo.status", ((int)now.RegReply_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 165 - EduOperation.h:404 - [LEG2CRM!19,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][165] = 1;
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
	case 447: // STATE 167 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][167] = 1;
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
	case 448: // STATE 170 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][170] = 1;
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
	case 449: // STATE 173 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][173] = 1;
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
	case 450: // STATE 176 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][176] = 1;
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
	case 451: // STATE 179 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][179] = 1;
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
	case 452: // STATE 182 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][182] = 1;
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
	case 453: // STATE 185 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][185] = 1;
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
	case 454: // STATE 188 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][188] = 1;
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
	case 455: // STATE 191 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][191] = 1;
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
	case 456: // STATE 194 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][194] = 1;
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
	case 457: // STATE 197 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][197] = 1;
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
	case 458: // STATE 200 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][200] = 1;
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
	case 459: // STATE 203 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][203] = 1;
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
	case 460: // STATE 209 - Case2.pml:105 - [((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		if (!((((((int)now.RegReply_bo.right)==1)||(((int)now.RegReply_bo.oblig)==1))||(((int)now.RegReply_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 210 - Case2.pml:105 - [RegReply_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		(trpt+1)->bup.oval = ((int)now.RegReply_bo.status);
		now.RegReply_bo.status = 15;
#ifdef VAR_RANGES
		logval("RegReply_bo.status", ((int)now.RegReply_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 211 - EduOperation.h:404 - [LEG2CRM!19,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][211] = 1;
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
	case 463: // STATE 213 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][213] = 1;
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
	case 464: // STATE 216 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][216] = 1;
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
	case 465: // STATE 219 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][219] = 1;
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
	case 466: // STATE 222 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][222] = 1;
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
	case 467: // STATE 225 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][225] = 1;
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
	case 468: // STATE 228 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][228] = 1;
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
	case 469: // STATE 231 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][231] = 1;
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
	case 470: // STATE 234 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][234] = 1;
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
	case 471: // STATE 237 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][237] = 1;
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
	case 472: // STATE 240 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][240] = 1;
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
	case 473: // STATE 243 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][243] = 1;
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
	case 474: // STATE 246 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][246] = 1;
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
	case 475: // STATE 249 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][249] = 1;
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
	case 476: // STATE 255 - Case2.pml:107 - [((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		if (!((((((int)now.C1_bo.right)==1)||(((int)now.C1_bo.oblig)==1))||(((int)now.C1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 256 - Case2.pml:107 - [C1_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.status);
		now.C1_bo.status = 17;
#ifdef VAR_RANGES
		logval("C1_bo.status", ((int)now.C1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 257 - EduOperation.h:404 - [LEG2CRM!20,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][257] = 1;
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
	case 479: // STATE 259 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][259] = 1;
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
	case 480: // STATE 262 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][262] = 1;
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
	case 481: // STATE 265 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][265] = 1;
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
	case 482: // STATE 268 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][268] = 1;
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
	case 483: // STATE 271 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][271] = 1;
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
	case 484: // STATE 274 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][274] = 1;
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
	case 485: // STATE 277 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][277] = 1;
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
	case 486: // STATE 280 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][280] = 1;
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
	case 487: // STATE 283 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][283] = 1;
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
	case 488: // STATE 286 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][286] = 1;
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
	case 489: // STATE 289 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][289] = 1;
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
	case 490: // STATE 292 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][292] = 1;
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
	case 491: // STATE 295 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][295] = 1;
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
	case 492: // STATE 301 - Case2.pml:108 - [((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		if (!((((((int)now.C1_bo.right)==1)||(((int)now.C1_bo.oblig)==1))||(((int)now.C1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 302 - Case2.pml:108 - [C1_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][302] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.status);
		now.C1_bo.status = 13;
#ifdef VAR_RANGES
		logval("C1_bo.status", ((int)now.C1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 303 - EduOperation.h:404 - [LEG2CRM!20,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][303] = 1;
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
	case 495: // STATE 305 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][305] = 1;
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
	case 496: // STATE 308 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][308] = 1;
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
	case 497: // STATE 311 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][311] = 1;
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
	case 498: // STATE 314 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][314] = 1;
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
	case 499: // STATE 317 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][317] = 1;
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
	case 500: // STATE 320 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][320] = 1;
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
	case 501: // STATE 323 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][323] = 1;
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
	case 502: // STATE 326 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][326] = 1;
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
	case 503: // STATE 329 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][329] = 1;
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
	case 504: // STATE 332 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][332] = 1;
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
	case 505: // STATE 335 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][335] = 1;
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
	case 506: // STATE 338 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][338] = 1;
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
	case 507: // STATE 341 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][341] = 1;
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
	case 508: // STATE 347 - Case2.pml:109 - [((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][347] = 1;
		if (!((((((int)now.C1_bo.right)==1)||(((int)now.C1_bo.oblig)==1))||(((int)now.C1_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 348 - Case2.pml:109 - [C1_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][348] = 1;
		(trpt+1)->bup.oval = ((int)now.C1_bo.status);
		now.C1_bo.status = 15;
#ifdef VAR_RANGES
		logval("C1_bo.status", ((int)now.C1_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 349 - EduOperation.h:404 - [LEG2CRM!20,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][349] = 1;
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
	case 511: // STATE 351 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][351] = 1;
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
	case 512: // STATE 354 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][354] = 1;
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
	case 513: // STATE 357 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][357] = 1;
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
	case 514: // STATE 360 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][360] = 1;
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
	case 515: // STATE 363 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][363] = 1;
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
	case 516: // STATE 366 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][366] = 1;
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
	case 517: // STATE 369 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][369] = 1;
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
	case 518: // STATE 372 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][372] = 1;
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
	case 519: // STATE 375 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][375] = 1;
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
	case 520: // STATE 378 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][378] = 1;
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
	case 521: // STATE 381 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][381] = 1;
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
	case 522: // STATE 384 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][384] = 1;
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
	case 523: // STATE 387 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][387] = 1;
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
	case 524: // STATE 393 - Case2.pml:111 - [((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		if (!((((((int)now.C2_bo.right)==1)||(((int)now.C2_bo.oblig)==1))||(((int)now.C2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 394 - Case2.pml:111 - [C2_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][394] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.status);
		now.C2_bo.status = 17;
#ifdef VAR_RANGES
		logval("C2_bo.status", ((int)now.C2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 526: // STATE 395 - EduOperation.h:404 - [LEG2CRM!21,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][395] = 1;
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
	case 527: // STATE 397 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][397] = 1;
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
	case 528: // STATE 400 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][400] = 1;
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
	case 529: // STATE 403 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][403] = 1;
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
	case 530: // STATE 406 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][406] = 1;
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
	case 531: // STATE 409 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][409] = 1;
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
	case 532: // STATE 412 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][412] = 1;
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
	case 533: // STATE 415 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][415] = 1;
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
	case 534: // STATE 418 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][418] = 1;
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
	case 535: // STATE 421 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][421] = 1;
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
	case 536: // STATE 424 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][424] = 1;
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
	case 537: // STATE 427 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][427] = 1;
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
	case 538: // STATE 430 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][430] = 1;
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
	case 539: // STATE 433 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][433] = 1;
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
	case 540: // STATE 439 - Case2.pml:112 - [((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		if (!((((((int)now.C2_bo.right)==1)||(((int)now.C2_bo.oblig)==1))||(((int)now.C2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 440 - Case2.pml:112 - [C2_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][440] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.status);
		now.C2_bo.status = 13;
#ifdef VAR_RANGES
		logval("C2_bo.status", ((int)now.C2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 441 - EduOperation.h:404 - [LEG2CRM!21,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][441] = 1;
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
	case 543: // STATE 443 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][443] = 1;
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
	case 544: // STATE 446 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][446] = 1;
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
	case 545: // STATE 449 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][449] = 1;
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
	case 546: // STATE 452 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][452] = 1;
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
	case 547: // STATE 455 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][455] = 1;
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
	case 548: // STATE 458 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][458] = 1;
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
	case 549: // STATE 461 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][461] = 1;
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
	case 550: // STATE 464 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][464] = 1;
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
	case 551: // STATE 467 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][467] = 1;
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
	case 552: // STATE 470 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][470] = 1;
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
	case 553: // STATE 473 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][473] = 1;
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
	case 554: // STATE 476 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][476] = 1;
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
	case 555: // STATE 479 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][479] = 1;
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
	case 556: // STATE 485 - Case2.pml:113 - [((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		if (!((((((int)now.C2_bo.right)==1)||(((int)now.C2_bo.oblig)==1))||(((int)now.C2_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 486 - Case2.pml:113 - [C2_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		(trpt+1)->bup.oval = ((int)now.C2_bo.status);
		now.C2_bo.status = 15;
#ifdef VAR_RANGES
		logval("C2_bo.status", ((int)now.C2_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 487 - EduOperation.h:404 - [LEG2CRM!21,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][487] = 1;
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
	case 559: // STATE 489 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][489] = 1;
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
	case 560: // STATE 492 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][492] = 1;
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
	case 561: // STATE 495 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][495] = 1;
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
	case 562: // STATE 498 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][498] = 1;
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
	case 563: // STATE 501 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][501] = 1;
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
	case 564: // STATE 504 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][504] = 1;
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
	case 565: // STATE 507 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][507] = 1;
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
	case 566: // STATE 510 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][510] = 1;
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
	case 567: // STATE 513 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][513] = 1;
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
	case 568: // STATE 516 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][516] = 1;
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
	case 569: // STATE 519 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][519] = 1;
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
	case 570: // STATE 522 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][522] = 1;
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
	case 571: // STATE 525 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][525] = 1;
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
	case 572: // STATE 531 - Case2.pml:115 - [((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][531] = 1;
		if (!((((((int)now.C3_bo.right)==1)||(((int)now.C3_bo.oblig)==1))||(((int)now.C3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 532 - Case2.pml:115 - [C3_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][532] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.status);
		now.C3_bo.status = 17;
#ifdef VAR_RANGES
		logval("C3_bo.status", ((int)now.C3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 533 - EduOperation.h:404 - [LEG2CRM!22,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][533] = 1;
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
	case 575: // STATE 535 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][535] = 1;
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
	case 576: // STATE 538 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][538] = 1;
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
	case 577: // STATE 541 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][541] = 1;
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
	case 578: // STATE 544 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][544] = 1;
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
	case 579: // STATE 547 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][547] = 1;
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
	case 580: // STATE 550 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][550] = 1;
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
	case 581: // STATE 553 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][553] = 1;
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
	case 582: // STATE 556 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][556] = 1;
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
	case 583: // STATE 559 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][559] = 1;
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
	case 584: // STATE 562 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][562] = 1;
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
	case 585: // STATE 565 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][565] = 1;
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
	case 586: // STATE 568 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][568] = 1;
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
	case 587: // STATE 571 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][571] = 1;
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
	case 588: // STATE 577 - Case2.pml:116 - [((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		if (!((((((int)now.C3_bo.right)==1)||(((int)now.C3_bo.oblig)==1))||(((int)now.C3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 578 - Case2.pml:116 - [C3_bo.status = P] (0:0:1 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.status);
		now.C3_bo.status = 13;
#ifdef VAR_RANGES
		logval("C3_bo.status", ((int)now.C3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 579 - EduOperation.h:404 - [LEG2CRM!22,13] (0:0:0 - 1)
		IfNotBlocked
		reached[0][579] = 1;
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
	case 591: // STATE 581 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][581] = 1;
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
	case 592: // STATE 584 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][584] = 1;
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
	case 593: // STATE 587 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][587] = 1;
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
	case 594: // STATE 590 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][590] = 1;
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
	case 595: // STATE 593 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][593] = 1;
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
	case 596: // STATE 596 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][596] = 1;
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
	case 597: // STATE 599 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][599] = 1;
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
	case 598: // STATE 602 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][602] = 1;
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
	case 599: // STATE 605 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][605] = 1;
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
	case 600: // STATE 608 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][608] = 1;
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
	case 601: // STATE 611 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][611] = 1;
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
	case 602: // STATE 614 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][614] = 1;
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
	case 603: // STATE 617 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][617] = 1;
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
	case 604: // STATE 623 - Case2.pml:117 - [((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][623] = 1;
		if (!((((((int)now.C3_bo.right)==1)||(((int)now.C3_bo.oblig)==1))||(((int)now.C3_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 624 - Case2.pml:117 - [C3_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][624] = 1;
		(trpt+1)->bup.oval = ((int)now.C3_bo.status);
		now.C3_bo.status = 15;
#ifdef VAR_RANGES
		logval("C3_bo.status", ((int)now.C3_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 625 - EduOperation.h:404 - [LEG2CRM!22,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][625] = 1;
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
	case 607: // STATE 627 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][627] = 1;
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
	case 608: // STATE 630 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][630] = 1;
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
	case 609: // STATE 633 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][633] = 1;
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
	case 610: // STATE 636 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][636] = 1;
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
	case 611: // STATE 639 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][639] = 1;
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
	case 612: // STATE 642 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][642] = 1;
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
	case 613: // STATE 645 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][645] = 1;
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
	case 614: // STATE 648 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][648] = 1;
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
	case 615: // STATE 651 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][651] = 1;
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
	case 616: // STATE 654 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][654] = 1;
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
	case 617: // STATE 657 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][657] = 1;
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
	case 618: // STATE 660 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][660] = 1;
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
	case 619: // STATE 663 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][663] = 1;
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
	case 620: // STATE 669 - Case2.pml:119 - [((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][669] = 1;
		if (!((((((int)now.ChooseAccept_bo.right)==1)||(((int)now.ChooseAccept_bo.oblig)==1))||(((int)now.ChooseAccept_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 670 - Case2.pml:119 - [ChooseAccept_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][670] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.status);
		now.ChooseAccept_bo.status = 17;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.status", ((int)now.ChooseAccept_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 671 - EduOperation.h:404 - [LEG2CRM!23,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][671] = 1;
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
	case 623: // STATE 673 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][673] = 1;
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
	case 624: // STATE 676 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][676] = 1;
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
	case 625: // STATE 679 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][679] = 1;
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
	case 626: // STATE 682 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][682] = 1;
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
	case 627: // STATE 685 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][685] = 1;
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
	case 628: // STATE 688 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][688] = 1;
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
	case 629: // STATE 691 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][691] = 1;
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
	case 630: // STATE 694 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][694] = 1;
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
	case 631: // STATE 697 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][697] = 1;
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
	case 632: // STATE 700 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][700] = 1;
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
	case 633: // STATE 703 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][703] = 1;
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
	case 634: // STATE 706 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][706] = 1;
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
	case 635: // STATE 709 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][709] = 1;
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
	case 636: // STATE 715 - Case2.pml:120 - [((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][715] = 1;
		if (!((((((int)now.ChooseAccept_bo.right)==1)||(((int)now.ChooseAccept_bo.oblig)==1))||(((int)now.ChooseAccept_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 716 - Case2.pml:120 - [ChooseAccept_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][716] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseAccept_bo.status);
		now.ChooseAccept_bo.status = 15;
#ifdef VAR_RANGES
		logval("ChooseAccept_bo.status", ((int)now.ChooseAccept_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 717 - EduOperation.h:404 - [LEG2CRM!23,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][717] = 1;
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
	case 639: // STATE 719 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][719] = 1;
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
	case 640: // STATE 722 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][722] = 1;
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
	case 641: // STATE 725 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][725] = 1;
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
	case 642: // STATE 728 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][728] = 1;
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
	case 643: // STATE 731 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][731] = 1;
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
	case 644: // STATE 734 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][734] = 1;
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
	case 645: // STATE 737 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][737] = 1;
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
	case 646: // STATE 740 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][740] = 1;
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
	case 647: // STATE 743 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][743] = 1;
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
	case 648: // STATE 746 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][746] = 1;
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
	case 649: // STATE 749 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][749] = 1;
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
	case 650: // STATE 752 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][752] = 1;
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
	case 651: // STATE 755 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][755] = 1;
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
	case 652: // STATE 761 - Case2.pml:122 - [((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][761] = 1;
		if (!((((((int)now.ChooseReject_bo.right)==1)||(((int)now.ChooseReject_bo.oblig)==1))||(((int)now.ChooseReject_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 762 - Case2.pml:122 - [ChooseReject_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][762] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.status);
		now.ChooseReject_bo.status = 17;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.status", ((int)now.ChooseReject_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 763 - EduOperation.h:404 - [LEG2CRM!24,17] (0:0:0 - 1)
		IfNotBlocked
		reached[0][763] = 1;
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
	case 655: // STATE 765 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][765] = 1;
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
	case 656: // STATE 768 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][768] = 1;
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
	case 657: // STATE 771 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][771] = 1;
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
	case 658: // STATE 774 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][774] = 1;
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
	case 659: // STATE 777 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][777] = 1;
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
	case 660: // STATE 780 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][780] = 1;
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
	case 661: // STATE 783 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][783] = 1;
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
	case 662: // STATE 786 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][786] = 1;
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
	case 663: // STATE 789 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][789] = 1;
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
	case 664: // STATE 792 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][792] = 1;
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
	case 665: // STATE 795 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][795] = 1;
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
	case 666: // STATE 798 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][798] = 1;
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
	case 667: // STATE 801 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][801] = 1;
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
	case 668: // STATE 807 - Case2.pml:123 - [((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][807] = 1;
		if (!((((((int)now.ChooseReject_bo.right)==1)||(((int)now.ChooseReject_bo.oblig)==1))||(((int)now.ChooseReject_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 808 - Case2.pml:123 - [ChooseReject_bo.status = TF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][808] = 1;
		(trpt+1)->bup.oval = ((int)now.ChooseReject_bo.status);
		now.ChooseReject_bo.status = 15;
#ifdef VAR_RANGES
		logval("ChooseReject_bo.status", ((int)now.ChooseReject_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 809 - EduOperation.h:404 - [LEG2CRM!24,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][809] = 1;
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
	case 671: // STATE 811 - EduOperation.h:411 - [CRM2LEG?9,5] (0:0:0 - 1)
		reached[0][811] = 1;
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
	case 672: // STATE 814 - EduOperation.h:411 - [CRM2LEG?8,5] (0:0:0 - 1)
		reached[0][814] = 1;
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
	case 673: // STATE 817 - EduOperation.h:411 - [CRM2LEG?7,5] (0:0:0 - 1)
		reached[0][817] = 1;
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
	case 674: // STATE 820 - EduOperation.h:411 - [CRM2LEG?6,5] (0:0:0 - 1)
		reached[0][820] = 1;
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
	case 675: // STATE 823 - EduOperation.h:411 - [CRM2LEG?9,3] (0:0:0 - 1)
		reached[0][823] = 1;
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
	case 676: // STATE 826 - EduOperation.h:411 - [CRM2LEG?8,3] (0:0:0 - 1)
		reached[0][826] = 1;
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
	case 677: // STATE 829 - EduOperation.h:411 - [CRM2LEG?7,3] (0:0:0 - 1)
		reached[0][829] = 1;
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
	case 678: // STATE 832 - EduOperation.h:411 - [CRM2LEG?9,1] (0:0:0 - 1)
		reached[0][832] = 1;
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
	case 679: // STATE 835 - EduOperation.h:411 - [CRM2LEG?8,1] (0:0:0 - 1)
		reached[0][835] = 1;
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
	case 680: // STATE 838 - EduOperation.h:411 - [CRM2LEG?7,1] (0:0:0 - 1)
		reached[0][838] = 1;
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
	case 681: // STATE 841 - EduOperation.h:411 - [CRM2LEG?9,2] (0:0:0 - 1)
		reached[0][841] = 1;
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
	case 682: // STATE 844 - EduOperation.h:411 - [CRM2LEG?8,2] (0:0:0 - 1)
		reached[0][844] = 1;
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
	case 683: // STATE 847 - EduOperation.h:411 - [CRM2LEG?7,2] (0:0:0 - 1)
		reached[0][847] = 1;
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
	case 684: // STATE 856 - Case2.pml:126 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][856] = 1;
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

