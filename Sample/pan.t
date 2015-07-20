#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(4*sizeof(Trans **));

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(5*sizeof(Trans *));

	T = trans[ 2][3] = settr(1454,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1454,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(1452,2,2,3,3,"(run LEG())", 0, 2, 0);
	trans[2][2]	= settr(1453,0,4,4,4,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(1455,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(735*sizeof(Trans *));

	trans[1][1]	= settr(718,0,731,6,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][732]	= settr(1449,0,731,1,0,".(goto)", 0, 2, 0);
	T = trans[1][731] = settr(1448,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,78,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,159,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,247,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,335,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,423,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1448,0,495,0,0,"DO", 0, 2, 0);
	T = trans[ 1][12] = settr(729,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(729,0,10,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][10] = settr(727,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(727,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(727,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(727,0,6,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(727,0,8,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(719,0,3,7,0,"(LEG2CRM?[18,S])", 1, 2, 0);
	trans[1][3]	= settr(720,0,67,8,8,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][11]	= settr(728,0,67,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(721,0,5,9,0,"(LEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][5]	= settr(722,0,67,10,10,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(723,0,7,11,0,"(LEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][7]	= settr(724,0,67,12,12,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(725,0,9,13,0,"(LEG2CRM?[18,LF])", 1, 2, 0);
	trans[1][9]	= settr(726,0,67,14,14,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][67] = settr(784,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(784,0,13,0,0,"sub-sequence", 0, 2, 0);
	trans[1][13]	= settr(730,0,65,15,15,"printf('Start\\n')", 0, 2, 0); /* m: 14 -> 0,65 */
	reached1[14] = 1;
	trans[1][14]	= settr(0,0,0,0,0,"printf('Registration Request by Student')",0,0,0);
	T = trans[1][65] = settr(782,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,15,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(782,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(782,0,62,0,0,"IF", 0, 2, 0);
	trans[1][15]	= settr(732,0,34,16,0,"((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][34] = settr(751,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(751,0,16,0,0,"sub-sequence", 0, 2, 0);
	trans[1][16]	= settr(733,0,23,17,17,"STUDENTexTrace = (STUDENTexTrace|(1<<RegReq_bo.id))", 1, 2, 0);
	T = trans[ 1][23] = settr(740,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(740,2,17,0,0,"ATOMIC", 0, 2, 0);
	trans[1][17]	= settr(734,4,27,18,18,"printf('\\n\\n')", 0, 2, 0); /* m: 18 -> 0,27 */
	reached1[18] = 1;
	trans[1][18]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"printf('<type>Registration Request</type>\\n')",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][22]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][27] = settr(744,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(744,0,24,0,0,"sub-sequence", 0, 2, 0);
	trans[1][24]	= settr(741,0,25,19,19,"RegReply_bo.oblig = 1", 1, 2, 0);
	trans[1][25]	= settr(742,0,26,20,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][26]	= settr(743,0,31,21,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][31] = settr(748,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(748,0,28,0,0,"sub-sequence", 0, 2, 0);
	trans[1][28]	= settr(745,0,29,22,22,"RegReq_bo.right = 0", 1, 2, 0);
	trans[1][29]	= settr(746,0,30,23,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))", 1, 2, 0);
	trans[1][30]	= settr(747,0,33,24,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][33] = settr(750,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(750,0,32,0,0,"sub-sequence", 0, 2, 0);
	trans[1][32]	= settr(749,0,731,25,25,"CRM2LEG!9,5", 1, 4, 0);
	trans[1][66]	= settr(783,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][35]	= settr(752,0,61,26,0,"((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][61] = settr(778,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(778,0,42,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][42] = settr(759,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(759,2,36,0,0,"ATOMIC", 0, 2, 0);
	trans[1][36]	= settr(753,0,47,27,27,"printf('\\n\\n')", 0, 2, 0); /* m: 37 -> 0,47 */
	reached1[37] = 1;
	trans[1][37]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][38]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][39]	= settr(0,0,0,0,0,"printf('<type>RegReq</type>\\n')",0,0,0);
	trans[1][40]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][41]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][43]	= settr(0,0,0,0,0,"printf('RegReq-TechnicalFailure')",0,0,0);
	T = trans[ 1][47] = settr(764,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(764,0,44,0,0,"sub-sequence", 0, 2, 0);
	trans[1][44]	= settr(761,0,45,28,28,"RegReply_bo.oblig = 0", 1, 2, 0);
	trans[1][45]	= settr(762,0,46,29,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][46]	= settr(763,0,51,30,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][51] = settr(768,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(768,0,48,0,0,"sub-sequence", 0, 2, 0);
	trans[1][48]	= settr(765,0,49,31,31,"RegReq_bo.right = 1", 1, 2, 0);
	trans[1][49]	= settr(766,0,50,32,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))", 1, 2, 0);
	trans[1][50]	= settr(767,0,58,33,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][58] = settr(775,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(775,2,52,0,0,"ATOMIC", 0, 2, 0);
	trans[1][52]	= settr(769,4,60,34,34,"printf('\\n\\n')", 0, 2, 0); /* m: 53 -> 0,60 */
	reached1[53] = 1;
	trans[1][53]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][54]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][55]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][56]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][57]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][60] = settr(777,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(777,0,59,0,0,"sub-sequence", 0, 2, 0);
	trans[1][59]	= settr(776,0,731,35,35,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][62]	= settr(779,0,64,2,0,"else", 0, 2, 0);
	T = trans[ 1][64] = settr(781,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(781,0,63,0,0,"sub-sequence", 0, 2, 0);
	trans[1][63]	= settr(780,0,731,36,36,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][78] = settr(795,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(795,0,76,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][76] = settr(793,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,68,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,72,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(793,0,74,0,0,"IF", 0, 2, 0);
	trans[1][68]	= settr(785,0,69,37,0,"(LEG2CRM?[19,S])", 1, 2, 0);
	trans[1][69]	= settr(786,0,148,38,38,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][77]	= settr(794,0,148,1,0,".(goto)", 0, 2, 0);
	trans[1][70]	= settr(787,0,71,39,0,"(LEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][71]	= settr(788,0,148,40,40,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][72]	= settr(789,0,73,41,0,"(LEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][73]	= settr(790,0,148,42,42,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][74]	= settr(791,0,75,43,0,"(LEG2CRM?[19,LF])", 1, 2, 0);
	trans[1][75]	= settr(792,0,148,44,44,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][148] = settr(865,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(865,0,79,0,0,"sub-sequence", 0, 2, 0);
	trans[1][79]	= settr(796,0,146,45,0,"printf('Course list reply')", 0, 2, 0);
	T = trans[1][146] = settr(863,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(863,0,80,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(863,0,108,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(863,0,143,0,0,"IF", 0, 2, 0);
	trans[1][80]	= settr(797,0,107,46,0,"((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][107] = settr(824,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(824,0,87,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][87] = settr(804,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(804,2,81,0,0,"ATOMIC", 0, 2, 0);
	trans[1][81]	= settr(798,4,88,47,47,"printf('\\n\\n')", 0, 2, 0); /* m: 82 -> 0,88 */
	reached1[82] = 1;
	trans[1][82]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][83]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][84]	= settr(0,0,0,0,0,"printf('<type>RegReply</type>\\n')",0,0,0);
	trans[1][85]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][86]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][88]	= settr(805,0,92,48,48,"LMSexTrace = (LMSexTrace|(1<<RegReply_bo.id))", 1, 2, 0);
	T = trans[ 1][92] = settr(809,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(809,0,89,0,0,"sub-sequence", 0, 2, 0);
	trans[1][89]	= settr(806,0,90,49,49,"RegReply_bo.oblig = 0", 1, 2, 0);
	trans[1][90]	= settr(807,0,91,50,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][91]	= settr(808,0,96,51,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][96] = settr(813,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(813,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[1][93]	= settr(810,0,94,52,52,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][94]	= settr(811,0,95,53,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][95]	= settr(812,0,100,54,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][100] = settr(817,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(817,0,97,0,0,"sub-sequence", 0, 2, 0);
	trans[1][97]	= settr(814,0,98,55,55,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][98]	= settr(815,0,99,56,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][99]	= settr(816,0,104,57,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][104] = settr(821,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(821,0,101,0,0,"sub-sequence", 0, 2, 0);
	trans[1][101]	= settr(818,0,102,58,58,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][102]	= settr(819,0,103,59,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][103]	= settr(820,0,106,60,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][106] = settr(823,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(823,0,105,0,0,"sub-sequence", 0, 2, 0);
	trans[1][105]	= settr(822,0,731,61,61,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][147]	= settr(864,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][108]	= settr(825,0,142,62,0,"((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][142] = settr(859,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(859,0,115,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][115] = settr(832,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(832,2,109,0,0,"ATOMIC", 0, 2, 0);
	trans[1][109]	= settr(826,0,120,63,63,"printf('\\n\\n')", 0, 2, 0); /* m: 110 -> 0,120 */
	reached1[110] = 1;
	trans[1][110]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][111]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][112]	= settr(0,0,0,0,0,"printf('<type>RegReply</type>\\n')",0,0,0);
	trans[1][113]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][114]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][116]	= settr(0,0,0,0,0,"printf('RegReply-TechnicalFailure')",0,0,0);
	T = trans[ 1][120] = settr(837,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(837,0,117,0,0,"sub-sequence", 0, 2, 0);
	trans[1][117]	= settr(834,0,118,64,64,"RegReply_bo.oblig = 1", 1, 2, 0);
	trans[1][118]	= settr(835,0,119,65,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][119]	= settr(836,0,124,66,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][124] = settr(841,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(841,0,121,0,0,"sub-sequence", 0, 2, 0);
	trans[1][121]	= settr(838,0,122,67,67,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][122]	= settr(839,0,123,68,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][123]	= settr(840,0,128,69,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][128] = settr(845,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(845,0,125,0,0,"sub-sequence", 0, 2, 0);
	trans[1][125]	= settr(842,0,126,70,70,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][126]	= settr(843,0,127,71,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][127]	= settr(844,0,132,72,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][132] = settr(849,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(849,0,129,0,0,"sub-sequence", 0, 2, 0);
	trans[1][129]	= settr(846,0,130,73,73,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][130]	= settr(847,0,131,74,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][131]	= settr(848,0,139,75,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][139] = settr(856,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(856,2,133,0,0,"ATOMIC", 0, 2, 0);
	trans[1][133]	= settr(850,4,141,76,76,"printf('\\n\\n')", 0, 2, 0); /* m: 134 -> 0,141 */
	reached1[134] = 1;
	trans[1][134]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][135]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][136]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][137]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][138]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][141] = settr(858,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(858,0,140,0,0,"sub-sequence", 0, 2, 0);
	trans[1][140]	= settr(857,0,731,77,77,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][143]	= settr(860,0,145,2,0,"else", 0, 2, 0);
	T = trans[ 1][145] = settr(862,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(862,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[1][144]	= settr(861,0,731,78,78,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][159] = settr(876,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(876,0,157,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][157] = settr(874,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(874,0,149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(874,0,151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(874,0,153,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(874,0,155,0,0,"IF", 0, 2, 0);
	trans[1][149]	= settr(866,0,150,79,0,"(LEG2CRM?[20,S])", 1, 2, 0);
	trans[1][150]	= settr(867,0,236,80,80,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][158]	= settr(875,0,236,1,0,".(goto)", 0, 2, 0);
	trans[1][151]	= settr(868,0,152,81,0,"(LEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][152]	= settr(869,0,236,82,82,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][153]	= settr(870,0,154,83,0,"(LEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][154]	= settr(871,0,236,84,84,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][155]	= settr(872,0,156,85,0,"(LEG2CRM?[20,LF])", 1, 2, 0);
	trans[1][156]	= settr(873,0,236,86,86,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][236] = settr(953,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(953,0,160,0,0,"sub-sequence", 0, 2, 0);
	trans[1][160]	= settr(877,0,234,87,0,"printf('C1')", 0, 2, 0);
	T = trans[1][234] = settr(951,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(951,0,161,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(951,0,195,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(951,0,226,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(951,0,231,0,0,"IF", 0, 2, 0);
	trans[1][161]	= settr(878,0,194,88,0,"((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][194] = settr(911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(911,0,168,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][168] = settr(885,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(885,2,162,0,0,"ATOMIC", 0, 2, 0);
	trans[1][162]	= settr(879,4,169,89,89,"printf('\\n\\n')", 0, 2, 0); /* m: 163 -> 0,169 */
	reached1[163] = 1;
	trans[1][163]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][164]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][165]	= settr(0,0,0,0,0,"printf('<type>C1</type>\\n')",0,0,0);
	trans[1][166]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][167]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][169]	= settr(886,0,173,90,90,"STUDENTexTrace = (STUDENTexTrace|(1<<C1_bo.id))", 1, 2, 0);
	T = trans[ 1][173] = settr(890,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(890,0,170,0,0,"sub-sequence", 0, 2, 0);
	trans[1][170]	= settr(887,0,171,91,91,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][171]	= settr(888,0,172,92,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][172]	= settr(889,0,177,93,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][177] = settr(894,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(894,0,174,0,0,"sub-sequence", 0, 2, 0);
	trans[1][174]	= settr(891,0,175,94,94,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][175]	= settr(892,0,176,95,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][176]	= settr(893,0,181,96,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][181] = settr(898,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(898,0,178,0,0,"sub-sequence", 0, 2, 0);
	trans[1][178]	= settr(895,0,179,97,97,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][179]	= settr(896,0,180,98,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][180]	= settr(897,0,185,99,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][185] = settr(902,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(902,0,182,0,0,"sub-sequence", 0, 2, 0);
	trans[1][182]	= settr(899,0,183,100,100,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][183]	= settr(900,0,184,101,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][184]	= settr(901,0,189,102,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][189] = settr(906,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(906,0,186,0,0,"sub-sequence", 0, 2, 0);
	trans[1][186]	= settr(903,0,187,103,103,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][187]	= settr(904,0,188,104,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][188]	= settr(905,0,190,105,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][190]	= settr(907,0,191,106,106,"choose1 = 1", 1, 2, 0);
	trans[1][191]	= settr(908,0,193,107,0,"printf('C1 is chosen')", 0, 2, 0);
	T = trans[ 1][193] = settr(910,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(910,0,192,0,0,"sub-sequence", 0, 2, 0);
	trans[1][192]	= settr(909,0,731,108,108,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][235]	= settr(952,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][195]	= settr(912,0,225,109,0,"((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][225] = settr(942,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(942,0,202,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][202] = settr(919,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(919,2,196,0,0,"ATOMIC", 0, 2, 0);
	trans[1][196]	= settr(913,0,207,110,110,"printf('\\n\\n')", 0, 2, 0); /* m: 197 -> 0,207 */
	reached1[197] = 1;
	trans[1][197]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][198]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][199]	= settr(0,0,0,0,0,"printf('<type>C1</type>\\n')",0,0,0);
	trans[1][200]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][201]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][203]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C1')",0,0,0);
	T = trans[ 1][207] = settr(924,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(924,0,204,0,0,"sub-sequence", 0, 2, 0);
	trans[1][204]	= settr(921,0,205,111,111,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][205]	= settr(922,0,206,112,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][206]	= settr(923,0,211,113,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][211] = settr(928,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(928,0,208,0,0,"sub-sequence", 0, 2, 0);
	trans[1][208]	= settr(925,0,209,114,114,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][209]	= settr(926,0,210,115,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][210]	= settr(927,0,215,116,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][215] = settr(932,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(932,0,212,0,0,"sub-sequence", 0, 2, 0);
	trans[1][212]	= settr(929,0,213,117,117,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][213]	= settr(930,0,214,118,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][214]	= settr(931,0,222,119,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][222] = settr(939,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(939,2,216,0,0,"ATOMIC", 0, 2, 0);
	trans[1][216]	= settr(933,4,224,120,120,"printf('\\n\\n')", 0, 2, 0); /* m: 217 -> 0,224 */
	reached1[217] = 1;
	trans[1][217]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][218]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][219]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][220]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][221]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][224] = settr(941,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(941,0,223,0,0,"sub-sequence", 0, 2, 0);
	trans[1][223]	= settr(940,0,731,121,121,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][226]	= settr(943,0,230,122,0,"((((C1_bo.prohib==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][230] = settr(947,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(947,0,227,0,0,"sub-sequence", 0, 2, 0);
	trans[1][227]	= settr(944,0,229,123,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][229] = settr(946,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(946,0,228,0,0,"sub-sequence", 0, 2, 0);
	trans[1][228]	= settr(945,0,731,124,124,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][231]	= settr(948,0,233,2,0,"else", 0, 2, 0);
	T = trans[ 1][233] = settr(950,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(950,0,232,0,0,"sub-sequence", 0, 2, 0);
	trans[1][232]	= settr(949,0,731,125,125,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][247] = settr(964,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(964,0,245,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][245] = settr(962,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(962,0,237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(962,0,239,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(962,0,241,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(962,0,243,0,0,"IF", 0, 2, 0);
	trans[1][237]	= settr(954,0,238,126,0,"(LEG2CRM?[21,S])", 1, 2, 0);
	trans[1][238]	= settr(955,0,324,127,127,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][246]	= settr(963,0,324,1,0,".(goto)", 0, 2, 0);
	trans[1][239]	= settr(956,0,240,128,0,"(LEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][240]	= settr(957,0,324,129,129,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][241]	= settr(958,0,242,130,0,"(LEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][242]	= settr(959,0,324,131,131,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][243]	= settr(960,0,244,132,0,"(LEG2CRM?[21,LF])", 1, 2, 0);
	trans[1][244]	= settr(961,0,324,133,133,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][324] = settr(1041,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1041,0,248,0,0,"sub-sequence", 0, 2, 0);
	trans[1][248]	= settr(965,0,322,134,0,"printf('C2')", 0, 2, 0);
	T = trans[1][322] = settr(1039,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1039,0,249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1039,0,283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1039,0,314,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1039,0,319,0,0,"IF", 0, 2, 0);
	trans[1][249]	= settr(966,0,282,135,0,"((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][282] = settr(999,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(999,0,256,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][256] = settr(973,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(973,2,250,0,0,"ATOMIC", 0, 2, 0);
	trans[1][250]	= settr(967,4,257,136,136,"printf('\\n\\n')", 0, 2, 0); /* m: 251 -> 0,257 */
	reached1[251] = 1;
	trans[1][251]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][252]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][253]	= settr(0,0,0,0,0,"printf('<type>C2</type>\\n')",0,0,0);
	trans[1][254]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][255]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][257]	= settr(974,0,261,137,137,"STUDENTexTrace = (STUDENTexTrace|(1<<C2_bo.id))", 1, 2, 0);
	T = trans[ 1][261] = settr(978,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(978,0,258,0,0,"sub-sequence", 0, 2, 0);
	trans[1][258]	= settr(975,0,259,138,138,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][259]	= settr(976,0,260,139,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][260]	= settr(977,0,265,140,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][265] = settr(982,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(982,0,262,0,0,"sub-sequence", 0, 2, 0);
	trans[1][262]	= settr(979,0,263,141,141,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][263]	= settr(980,0,264,142,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][264]	= settr(981,0,269,143,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][269] = settr(986,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(986,0,266,0,0,"sub-sequence", 0, 2, 0);
	trans[1][266]	= settr(983,0,267,144,144,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][267]	= settr(984,0,268,145,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][268]	= settr(985,0,273,146,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][273] = settr(990,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(990,0,270,0,0,"sub-sequence", 0, 2, 0);
	trans[1][270]	= settr(987,0,271,147,147,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][271]	= settr(988,0,272,148,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][272]	= settr(989,0,277,149,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][277] = settr(994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(994,0,274,0,0,"sub-sequence", 0, 2, 0);
	trans[1][274]	= settr(991,0,275,150,150,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][275]	= settr(992,0,276,151,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][276]	= settr(993,0,278,152,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][278]	= settr(995,0,279,153,153,"choose2 = 1", 1, 2, 0);
	trans[1][279]	= settr(996,0,281,154,0,"printf('C2 is chosen')", 0, 2, 0);
	T = trans[ 1][281] = settr(998,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(998,0,280,0,0,"sub-sequence", 0, 2, 0);
	trans[1][280]	= settr(997,0,731,155,155,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][323]	= settr(1040,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][283]	= settr(1000,0,313,156,0,"((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][313] = settr(1030,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1030,0,290,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][290] = settr(1007,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1007,2,284,0,0,"ATOMIC", 0, 2, 0);
	trans[1][284]	= settr(1001,0,295,157,157,"printf('\\n\\n')", 0, 2, 0); /* m: 285 -> 0,295 */
	reached1[285] = 1;
	trans[1][285]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][286]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][287]	= settr(0,0,0,0,0,"printf('<type>C2</type>\\n')",0,0,0);
	trans[1][288]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][289]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][291]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C2')",0,0,0);
	T = trans[ 1][295] = settr(1012,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1012,0,292,0,0,"sub-sequence", 0, 2, 0);
	trans[1][292]	= settr(1009,0,293,158,158,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][293]	= settr(1010,0,294,159,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][294]	= settr(1011,0,299,160,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][299] = settr(1016,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1016,0,296,0,0,"sub-sequence", 0, 2, 0);
	trans[1][296]	= settr(1013,0,297,161,161,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][297]	= settr(1014,0,298,162,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][298]	= settr(1015,0,303,163,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][303] = settr(1020,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1020,0,300,0,0,"sub-sequence", 0, 2, 0);
	trans[1][300]	= settr(1017,0,301,164,164,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][301]	= settr(1018,0,302,165,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][302]	= settr(1019,0,310,166,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][310] = settr(1027,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1027,2,304,0,0,"ATOMIC", 0, 2, 0);
	trans[1][304]	= settr(1021,4,312,167,167,"printf('\\n\\n')", 0, 2, 0); /* m: 305 -> 0,312 */
	reached1[305] = 1;
	trans[1][305]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][306]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][307]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][308]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][309]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][312] = settr(1029,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1029,0,311,0,0,"sub-sequence", 0, 2, 0);
	trans[1][311]	= settr(1028,0,731,168,168,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][314]	= settr(1031,0,318,169,0,"((((C2_bo.prohib==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][318] = settr(1035,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1035,0,315,0,0,"sub-sequence", 0, 2, 0);
	trans[1][315]	= settr(1032,0,317,170,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][317] = settr(1034,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1034,0,316,0,0,"sub-sequence", 0, 2, 0);
	trans[1][316]	= settr(1033,0,731,171,171,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][319]	= settr(1036,0,321,2,0,"else", 0, 2, 0);
	T = trans[ 1][321] = settr(1038,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1038,0,320,0,0,"sub-sequence", 0, 2, 0);
	trans[1][320]	= settr(1037,0,731,172,172,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][335] = settr(1052,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1052,0,333,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][333] = settr(1050,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1050,0,325,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1050,0,327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1050,0,329,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1050,0,331,0,0,"IF", 0, 2, 0);
	trans[1][325]	= settr(1042,0,326,173,0,"(LEG2CRM?[22,S])", 1, 2, 0);
	trans[1][326]	= settr(1043,0,412,174,174,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][334]	= settr(1051,0,412,1,0,".(goto)", 0, 2, 0);
	trans[1][327]	= settr(1044,0,328,175,0,"(LEG2CRM?[22,TO])", 1, 2, 0);
	trans[1][328]	= settr(1045,0,412,176,176,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][329]	= settr(1046,0,330,177,0,"(LEG2CRM?[22,TF])", 1, 2, 0);
	trans[1][330]	= settr(1047,0,412,178,178,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][331]	= settr(1048,0,332,179,0,"(LEG2CRM?[22,LF])", 1, 2, 0);
	trans[1][332]	= settr(1049,0,412,180,180,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][412] = settr(1129,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1129,0,336,0,0,"sub-sequence", 0, 2, 0);
	trans[1][336]	= settr(1053,0,410,181,0,"printf('C3')", 0, 2, 0);
	T = trans[1][410] = settr(1127,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1127,0,337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1127,0,371,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1127,0,402,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1127,0,407,0,0,"IF", 0, 2, 0);
	trans[1][337]	= settr(1054,0,370,182,0,"((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][370] = settr(1087,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1087,0,344,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][344] = settr(1061,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1061,2,338,0,0,"ATOMIC", 0, 2, 0);
	trans[1][338]	= settr(1055,4,345,183,183,"printf('\\n\\n')", 0, 2, 0); /* m: 339 -> 0,345 */
	reached1[339] = 1;
	trans[1][339]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][340]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][341]	= settr(0,0,0,0,0,"printf('<type>C3</type>\\n')",0,0,0);
	trans[1][342]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][343]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][345]	= settr(1062,0,349,184,184,"STUDENTexTrace = (STUDENTexTrace|(1<<C3_bo.id))", 1, 2, 0);
	T = trans[ 1][349] = settr(1066,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1066,0,346,0,0,"sub-sequence", 0, 2, 0);
	trans[1][346]	= settr(1063,0,347,185,185,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][347]	= settr(1064,0,348,186,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][348]	= settr(1065,0,353,187,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][353] = settr(1070,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1070,0,350,0,0,"sub-sequence", 0, 2, 0);
	trans[1][350]	= settr(1067,0,351,188,188,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][351]	= settr(1068,0,352,189,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][352]	= settr(1069,0,357,190,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][357] = settr(1074,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1074,0,354,0,0,"sub-sequence", 0, 2, 0);
	trans[1][354]	= settr(1071,0,355,191,191,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][355]	= settr(1072,0,356,192,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][356]	= settr(1073,0,361,193,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][361] = settr(1078,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1078,0,358,0,0,"sub-sequence", 0, 2, 0);
	trans[1][358]	= settr(1075,0,359,194,194,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][359]	= settr(1076,0,360,195,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][360]	= settr(1077,0,365,196,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][365] = settr(1082,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1082,0,362,0,0,"sub-sequence", 0, 2, 0);
	trans[1][362]	= settr(1079,0,363,197,197,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][363]	= settr(1080,0,364,198,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][364]	= settr(1081,0,366,199,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][366]	= settr(1083,0,367,200,200,"choose3 = 1", 1, 2, 0);
	trans[1][367]	= settr(1084,0,369,201,0,"printf('C3 is chosen')", 0, 2, 0);
	T = trans[ 1][369] = settr(1086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1086,0,368,0,0,"sub-sequence", 0, 2, 0);
	trans[1][368]	= settr(1085,0,731,202,202,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][411]	= settr(1128,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][371]	= settr(1088,0,401,203,0,"((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][401] = settr(1118,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1118,0,378,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][378] = settr(1095,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1095,2,372,0,0,"ATOMIC", 0, 2, 0);
	trans[1][372]	= settr(1089,0,383,204,204,"printf('\\n\\n')", 0, 2, 0); /* m: 373 -> 0,383 */
	reached1[373] = 1;
	trans[1][373]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][374]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][375]	= settr(0,0,0,0,0,"printf('<type>C3</type>\\n')",0,0,0);
	trans[1][376]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][377]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][379]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C3')",0,0,0);
	T = trans[ 1][383] = settr(1100,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1100,0,380,0,0,"sub-sequence", 0, 2, 0);
	trans[1][380]	= settr(1097,0,381,205,205,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][381]	= settr(1098,0,382,206,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][382]	= settr(1099,0,387,207,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][387] = settr(1104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1104,0,384,0,0,"sub-sequence", 0, 2, 0);
	trans[1][384]	= settr(1101,0,385,208,208,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][385]	= settr(1102,0,386,209,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][386]	= settr(1103,0,391,210,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][391] = settr(1108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1108,0,388,0,0,"sub-sequence", 0, 2, 0);
	trans[1][388]	= settr(1105,0,389,211,211,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][389]	= settr(1106,0,390,212,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][390]	= settr(1107,0,398,213,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][398] = settr(1115,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1115,2,392,0,0,"ATOMIC", 0, 2, 0);
	trans[1][392]	= settr(1109,4,400,214,214,"printf('\\n\\n')", 0, 2, 0); /* m: 393 -> 0,400 */
	reached1[393] = 1;
	trans[1][393]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][394]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][395]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][396]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][397]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][400] = settr(1117,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1117,0,399,0,0,"sub-sequence", 0, 2, 0);
	trans[1][399]	= settr(1116,0,731,215,215,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][402]	= settr(1119,0,406,216,0,"((((C3_bo.prohib==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][406] = settr(1123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1123,0,403,0,0,"sub-sequence", 0, 2, 0);
	trans[1][403]	= settr(1120,0,405,217,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][405] = settr(1122,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1122,0,404,0,0,"sub-sequence", 0, 2, 0);
	trans[1][404]	= settr(1121,0,731,218,218,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][407]	= settr(1124,0,409,2,0,"else", 0, 2, 0);
	T = trans[ 1][409] = settr(1126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1126,0,408,0,0,"sub-sequence", 0, 2, 0);
	trans[1][408]	= settr(1125,0,731,219,219,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][423] = settr(1140,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1140,0,421,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][421] = settr(1138,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1138,0,413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1138,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1138,0,417,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1138,0,419,0,0,"IF", 0, 2, 0);
	trans[1][413]	= settr(1130,0,414,220,0,"(LEG2CRM?[23,S])", 1, 2, 0);
	trans[1][414]	= settr(1131,0,484,221,221,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][422]	= settr(1139,0,484,1,0,".(goto)", 0, 2, 0);
	trans[1][415]	= settr(1132,0,416,222,0,"(LEG2CRM?[23,TO])", 1, 2, 0);
	trans[1][416]	= settr(1133,0,484,223,223,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][417]	= settr(1134,0,418,224,0,"(LEG2CRM?[23,TF])", 1, 2, 0);
	trans[1][418]	= settr(1135,0,484,225,225,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][419]	= settr(1136,0,420,226,0,"(LEG2CRM?[23,LF])", 1, 2, 0);
	trans[1][420]	= settr(1137,0,484,227,227,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][484] = settr(1201,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1201,0,424,0,0,"sub-sequence", 0, 2, 0);
	trans[1][424]	= settr(1141,0,482,228,0,"printf('Accept the choice ')", 0, 2, 0);
	T = trans[1][482] = settr(1199,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1199,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1199,0,452,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1199,0,479,0,0,"IF", 0, 2, 0);
	trans[1][425]	= settr(1142,0,451,229,0,"((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][451] = settr(1168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1168,0,432,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][432] = settr(1149,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1149,2,426,0,0,"ATOMIC", 0, 2, 0);
	trans[1][426]	= settr(1143,4,433,230,230,"printf('\\n\\n')", 0, 2, 0); /* m: 427 -> 0,433 */
	reached1[427] = 1;
	trans[1][427]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][428]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][429]	= settr(0,0,0,0,0,"printf('<type>ChooseAccept</type>\\n')",0,0,0);
	trans[1][430]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][431]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][433]	= settr(1150,0,437,231,231,"LMSexTrace = (LMSexTrace|(1<<ChooseAccept_bo.id))", 1, 2, 0);
	T = trans[ 1][437] = settr(1154,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1154,0,434,0,0,"sub-sequence", 0, 2, 0);
	trans[1][434]	= settr(1151,0,435,232,232,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][435]	= settr(1152,0,436,233,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][436]	= settr(1153,0,441,234,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][441] = settr(1158,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1158,0,438,0,0,"sub-sequence", 0, 2, 0);
	trans[1][438]	= settr(1155,0,439,235,235,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][439]	= settr(1156,0,440,236,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][440]	= settr(1157,0,448,237,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][448] = settr(1165,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1165,2,442,0,0,"ATOMIC", 0, 2, 0);
	trans[1][442]	= settr(1159,4,450,238,238,"printf('\\n\\n')", 0, 2, 0); /* m: 443 -> 0,450 */
	reached1[443] = 1;
	trans[1][443]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][444]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][445]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][446]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][447]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][450] = settr(1167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1167,0,449,0,0,"sub-sequence", 0, 2, 0);
	trans[1][449]	= settr(1166,0,731,239,239,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][483]	= settr(1200,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][452]	= settr(1169,0,478,240,0,"((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][478] = settr(1195,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1195,0,459,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][459] = settr(1176,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1176,2,453,0,0,"ATOMIC", 0, 2, 0);
	trans[1][453]	= settr(1170,0,464,241,241,"printf('\\n\\n')", 0, 2, 0); /* m: 454 -> 0,464 */
	reached1[454] = 1;
	trans[1][454]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][455]	= settr(0,0,0,0,0,"printf('<responder>LSTUDENT</responder>\\n')",0,0,0);
	trans[1][456]	= settr(0,0,0,0,0,"printf('<type>ChooseAccept</type>\\n')",0,0,0);
	trans[1][457]	= settr(0,0,0,0,0,"printf('<status>technical fail</status>\\n')",0,0,0);
	trans[1][458]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][460]	= settr(0,0,0,0,0,"printf('Technical fail on validating choice of course')",0,0,0);
	T = trans[ 1][464] = settr(1181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1181,0,461,0,0,"sub-sequence", 0, 2, 0);
	trans[1][461]	= settr(1178,0,462,242,242,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][462]	= settr(1179,0,463,243,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][463]	= settr(1180,0,468,244,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][468] = settr(1185,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1185,0,465,0,0,"sub-sequence", 0, 2, 0);
	trans[1][465]	= settr(1182,0,466,245,245,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][466]	= settr(1183,0,467,246,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][467]	= settr(1184,0,475,247,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][475] = settr(1192,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1192,2,469,0,0,"ATOMIC", 0, 2, 0);
	trans[1][469]	= settr(1186,4,477,248,248,"printf('\\n\\n')", 0, 2, 0); /* m: 470 -> 0,477 */
	reached1[470] = 1;
	trans[1][470]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][471]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][472]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][473]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][474]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][477] = settr(1194,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1194,0,476,0,0,"sub-sequence", 0, 2, 0);
	trans[1][476]	= settr(1193,0,731,249,249,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][479]	= settr(1196,0,481,2,0,"else", 0, 2, 0);
	T = trans[ 1][481] = settr(1198,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1198,0,480,0,0,"sub-sequence", 0, 2, 0);
	trans[1][480]	= settr(1197,0,731,250,250,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][495] = settr(1212,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1212,0,493,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][493] = settr(1210,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1210,0,485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1210,0,487,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1210,0,489,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1210,0,491,0,0,"IF", 0, 2, 0);
	trans[1][485]	= settr(1202,0,486,251,0,"(LEG2CRM?[24,S])", 1, 2, 0);
	trans[1][486]	= settr(1203,0,730,252,252,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][494]	= settr(1211,0,730,1,0,".(goto)", 0, 2, 0);
	trans[1][487]	= settr(1204,0,488,253,0,"(LEG2CRM?[24,TO])", 1, 2, 0);
	trans[1][488]	= settr(1205,0,730,254,254,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][489]	= settr(1206,0,490,255,0,"(LEG2CRM?[24,TF])", 1, 2, 0);
	trans[1][490]	= settr(1207,0,730,256,256,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][491]	= settr(1208,0,492,257,0,"(LEG2CRM?[24,LF])", 1, 2, 0);
	trans[1][492]	= settr(1209,0,730,258,258,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][730] = settr(1447,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1447,0,496,0,0,"sub-sequence", 0, 2, 0);
	trans[1][496]	= settr(1213,0,728,259,0,"printf('Reject the choice ')", 0, 2, 0);
	T = trans[1][728] = settr(1445,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1445,0,497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1445,0,698,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1445,0,725,0,0,"IF", 0, 2, 0);
	trans[1][497]	= settr(1214,0,697,260,0,"((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][697] = settr(1414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1414,0,504,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][504] = settr(1221,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1221,2,498,0,0,"ATOMIC", 0, 2, 0);
	trans[1][498]	= settr(1215,4,505,261,261,"printf('\\n\\n')", 0, 2, 0); /* m: 499 -> 0,505 */
	reached1[499] = 1;
	trans[1][499]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][500]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][501]	= settr(0,0,0,0,0,"printf('<type>ChooseReject</type>\\n')",0,0,0);
	trans[1][502]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][503]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][505]	= settr(1222,0,509,262,262,"LMSexTrace = (LMSexTrace|(1<<ChooseReject_bo.id))", 1, 2, 0);
	T = trans[ 1][509] = settr(1226,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1226,0,506,0,0,"sub-sequence", 0, 2, 0);
	trans[1][506]	= settr(1223,0,507,263,263,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][507]	= settr(1224,0,508,264,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][508]	= settr(1225,0,513,265,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][513] = settr(1230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1230,0,510,0,0,"sub-sequence", 0, 2, 0);
	trans[1][510]	= settr(1227,0,511,266,266,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][511]	= settr(1228,0,512,267,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][512]	= settr(1229,0,679,268,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[1][679] = settr(1396,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1396,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1396,0,569,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1396,0,624,0,0,"IF", 0, 2, 0);
	trans[1][514]	= settr(1231,0,518,269,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][518] = settr(1235,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1235,0,515,0,0,"sub-sequence", 0, 2, 0);
	trans[1][515]	= settr(1232,0,516,270,270,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][516]	= settr(1233,0,517,271,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][517]	= settr(1234,0,542,272,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][542] = settr(1259,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1259,0,519,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1259,0,537,0,0,"IF", 0, 2, 0);
	trans[1][519]	= settr(1236,0,523,273,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][523] = settr(1240,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1240,0,520,0,0,"sub-sequence", 0, 2, 0);
	trans[1][520]	= settr(1237,0,521,274,274,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][521]	= settr(1238,0,522,275,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][522]	= settr(1239,0,535,276,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][535] = settr(1252,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1252,0,524,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1252,0,530,0,0,"IF", 0, 2, 0);
	trans[1][524]	= settr(1241,0,528,277,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][528] = settr(1245,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1245,0,525,0,0,"sub-sequence", 0, 2, 0);
	trans[1][525]	= settr(1242,0,526,278,278,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][526]	= settr(1243,0,527,279,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][527]	= settr(1244,0,529,280,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	trans[1][529]	= settr(1246,0,567,281,281,"all = 1", 1, 2, 0);
	trans[1][536]	= settr(1253,0,567,1,0,".(goto)", 0, 2, 0);
	trans[1][530]	= settr(1247,0,534,2,0,"else", 0, 2, 0);
	T = trans[ 1][534] = settr(1251,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1251,0,531,0,0,"sub-sequence", 0, 2, 0);
	trans[1][531]	= settr(1248,0,532,282,282,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][532]	= settr(1249,0,533,283,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][533]	= settr(1250,0,567,284,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][543]	= settr(1260,0,567,1,0,".(goto)", 0, 2, 0);
	trans[1][537]	= settr(1254,0,541,2,0,"else", 0, 2, 0);
	T = trans[ 1][541] = settr(1258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1258,0,538,0,0,"sub-sequence", 0, 2, 0);
	trans[1][538]	= settr(1255,0,539,285,285,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][539]	= settr(1256,0,540,286,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][540]	= settr(1257,0,567,287,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[1][567] = settr(1284,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1284,0,544,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1284,0,562,0,0,"IF", 0, 2, 0);
	trans[1][544]	= settr(1261,0,548,288,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][548] = settr(1265,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1265,0,545,0,0,"sub-sequence", 0, 2, 0);
	trans[1][545]	= settr(1262,0,546,289,289,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][546]	= settr(1263,0,547,290,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][547]	= settr(1264,0,560,291,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][560] = settr(1277,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1277,0,549,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1277,0,555,0,0,"IF", 0, 2, 0);
	trans[1][549]	= settr(1266,0,553,292,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][553] = settr(1270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1270,0,550,0,0,"sub-sequence", 0, 2, 0);
	trans[1][550]	= settr(1267,0,551,293,293,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][551]	= settr(1268,0,552,294,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][552]	= settr(1269,0,554,295,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	trans[1][554]	= settr(1271,0,687,296,296,"all = 1", 1, 2, 0);
	trans[1][561]	= settr(1278,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][555]	= settr(1272,0,559,2,0,"else", 0, 2, 0);
	T = trans[ 1][559] = settr(1276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1276,0,556,0,0,"sub-sequence", 0, 2, 0);
	trans[1][556]	= settr(1273,0,557,297,297,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][557]	= settr(1274,0,558,298,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][558]	= settr(1275,0,687,299,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][568]	= settr(1285,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][562]	= settr(1279,0,566,2,0,"else", 0, 2, 0);
	T = trans[ 1][566] = settr(1283,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1283,0,563,0,0,"sub-sequence", 0, 2, 0);
	trans[1][563]	= settr(1280,0,564,300,300,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][564]	= settr(1281,0,565,301,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][565]	= settr(1282,0,687,302,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][680]	= settr(1397,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][569]	= settr(1286,0,573,303,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][573] = settr(1290,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1290,0,570,0,0,"sub-sequence", 0, 2, 0);
	trans[1][570]	= settr(1287,0,571,304,304,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][571]	= settr(1288,0,572,305,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][572]	= settr(1289,0,597,306,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][597] = settr(1314,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1314,0,574,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1314,0,592,0,0,"IF", 0, 2, 0);
	trans[1][574]	= settr(1291,0,578,307,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][578] = settr(1295,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1295,0,575,0,0,"sub-sequence", 0, 2, 0);
	trans[1][575]	= settr(1292,0,576,308,308,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][576]	= settr(1293,0,577,309,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][577]	= settr(1294,0,590,310,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][590] = settr(1307,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1307,0,579,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1307,0,585,0,0,"IF", 0, 2, 0);
	trans[1][579]	= settr(1296,0,583,311,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][583] = settr(1300,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1300,0,580,0,0,"sub-sequence", 0, 2, 0);
	trans[1][580]	= settr(1297,0,581,312,312,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][581]	= settr(1298,0,582,313,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][582]	= settr(1299,0,584,314,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	trans[1][584]	= settr(1301,0,622,315,315,"all = 1", 1, 2, 0);
	trans[1][591]	= settr(1308,0,622,1,0,".(goto)", 0, 2, 0);
	trans[1][585]	= settr(1302,0,589,2,0,"else", 0, 2, 0);
	T = trans[ 1][589] = settr(1306,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1306,0,586,0,0,"sub-sequence", 0, 2, 0);
	trans[1][586]	= settr(1303,0,587,316,316,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][587]	= settr(1304,0,588,317,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][588]	= settr(1305,0,622,318,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][598]	= settr(1315,0,622,1,0,".(goto)", 0, 2, 0);
	trans[1][592]	= settr(1309,0,596,2,0,"else", 0, 2, 0);
	T = trans[ 1][596] = settr(1313,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1313,0,593,0,0,"sub-sequence", 0, 2, 0);
	trans[1][593]	= settr(1310,0,594,319,319,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][594]	= settr(1311,0,595,320,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][595]	= settr(1312,0,622,321,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[1][622] = settr(1339,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1339,0,599,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1339,0,617,0,0,"IF", 0, 2, 0);
	trans[1][599]	= settr(1316,0,603,322,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][603] = settr(1320,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1320,0,600,0,0,"sub-sequence", 0, 2, 0);
	trans[1][600]	= settr(1317,0,601,323,323,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][601]	= settr(1318,0,602,324,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][602]	= settr(1319,0,615,325,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][615] = settr(1332,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1332,0,604,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1332,0,610,0,0,"IF", 0, 2, 0);
	trans[1][604]	= settr(1321,0,608,326,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][608] = settr(1325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1325,0,605,0,0,"sub-sequence", 0, 2, 0);
	trans[1][605]	= settr(1322,0,606,327,327,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][606]	= settr(1323,0,607,328,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][607]	= settr(1324,0,609,329,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	trans[1][609]	= settr(1326,0,687,330,330,"all = 1", 1, 2, 0);
	trans[1][616]	= settr(1333,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][610]	= settr(1327,0,614,2,0,"else", 0, 2, 0);
	T = trans[ 1][614] = settr(1331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1331,0,611,0,0,"sub-sequence", 0, 2, 0);
	trans[1][611]	= settr(1328,0,612,331,331,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][612]	= settr(1329,0,613,332,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][613]	= settr(1330,0,687,333,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][623]	= settr(1340,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][617]	= settr(1334,0,621,2,0,"else", 0, 2, 0);
	T = trans[ 1][621] = settr(1338,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1338,0,618,0,0,"sub-sequence", 0, 2, 0);
	trans[1][618]	= settr(1335,0,619,334,334,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][619]	= settr(1336,0,620,335,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][620]	= settr(1337,0,687,336,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][624]	= settr(1341,0,628,337,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][628] = settr(1345,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1345,0,625,0,0,"sub-sequence", 0, 2, 0);
	trans[1][625]	= settr(1342,0,626,338,338,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][626]	= settr(1343,0,627,339,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][627]	= settr(1344,0,652,340,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][652] = settr(1369,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1369,0,629,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1369,0,647,0,0,"IF", 0, 2, 0);
	trans[1][629]	= settr(1346,0,633,341,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][633] = settr(1350,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1350,0,630,0,0,"sub-sequence", 0, 2, 0);
	trans[1][630]	= settr(1347,0,631,342,342,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][631]	= settr(1348,0,632,343,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][632]	= settr(1349,0,645,344,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][645] = settr(1362,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1362,0,634,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1362,0,640,0,0,"IF", 0, 2, 0);
	trans[1][634]	= settr(1351,0,638,345,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][638] = settr(1355,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1355,0,635,0,0,"sub-sequence", 0, 2, 0);
	trans[1][635]	= settr(1352,0,636,346,346,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][636]	= settr(1353,0,637,347,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][637]	= settr(1354,0,639,348,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	trans[1][639]	= settr(1356,0,677,349,349,"all = 1", 1, 2, 0);
	trans[1][646]	= settr(1363,0,677,1,0,".(goto)", 0, 2, 0);
	trans[1][640]	= settr(1357,0,644,2,0,"else", 0, 2, 0);
	T = trans[ 1][644] = settr(1361,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1361,0,641,0,0,"sub-sequence", 0, 2, 0);
	trans[1][641]	= settr(1358,0,642,350,350,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][642]	= settr(1359,0,643,351,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][643]	= settr(1360,0,677,352,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][653]	= settr(1370,0,677,1,0,".(goto)", 0, 2, 0);
	trans[1][647]	= settr(1364,0,651,2,0,"else", 0, 2, 0);
	T = trans[ 1][651] = settr(1368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1368,0,648,0,0,"sub-sequence", 0, 2, 0);
	trans[1][648]	= settr(1365,0,649,353,353,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][649]	= settr(1366,0,650,354,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][650]	= settr(1367,0,677,355,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[1][677] = settr(1394,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1394,0,654,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1394,0,672,0,0,"IF", 0, 2, 0);
	trans[1][654]	= settr(1371,0,658,356,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][658] = settr(1375,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1375,0,655,0,0,"sub-sequence", 0, 2, 0);
	trans[1][655]	= settr(1372,0,656,357,357,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][656]	= settr(1373,0,657,358,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][657]	= settr(1374,0,670,359,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][670] = settr(1387,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1387,0,659,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1387,0,665,0,0,"IF", 0, 2, 0);
	trans[1][659]	= settr(1376,0,663,360,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][663] = settr(1380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1380,0,660,0,0,"sub-sequence", 0, 2, 0);
	trans[1][660]	= settr(1377,0,661,361,361,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][661]	= settr(1378,0,662,362,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][662]	= settr(1379,0,664,363,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	trans[1][664]	= settr(1381,0,687,364,364,"all = 1", 1, 2, 0);
	trans[1][671]	= settr(1388,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][665]	= settr(1382,0,669,2,0,"else", 0, 2, 0);
	T = trans[ 1][669] = settr(1386,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1386,0,666,0,0,"sub-sequence", 0, 2, 0);
	trans[1][666]	= settr(1383,0,667,365,365,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][667]	= settr(1384,0,668,366,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][668]	= settr(1385,0,687,367,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][678]	= settr(1395,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][672]	= settr(1389,0,676,2,0,"else", 0, 2, 0);
	T = trans[ 1][676] = settr(1393,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1393,0,673,0,0,"sub-sequence", 0, 2, 0);
	trans[1][673]	= settr(1390,0,674,368,368,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][674]	= settr(1391,0,675,369,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][675]	= settr(1392,0,687,370,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][687] = settr(1404,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1404,2,681,0,0,"ATOMIC", 0, 2, 0);
	trans[1][681]	= settr(1398,4,695,371,371,"printf('\\n\\n')", 0, 2, 0); /* m: 682 -> 0,695 */
	reached1[682] = 1;
	trans[1][682]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][683]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][684]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][685]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][686]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][695] = settr(1412,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1412,0,688,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1412,0,692,0,0,"IF", 0, 2, 0);
	trans[1][688]	= settr(1405,0,689,372,0,"((all==1))", 1, 2, 0);
	trans[1][689]	= settr(1406,0,691,373,0,"printf('No course is suitable for you')", 0, 2, 0);
	T = trans[ 1][691] = settr(1408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1408,0,690,0,0,"sub-sequence", 0, 2, 0);
	trans[1][690]	= settr(1407,0,731,374,374,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][696]	= settr(1413,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][692]	= settr(1409,0,694,2,0,"else", 0, 2, 0);
	T = trans[ 1][694] = settr(1411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1411,0,693,0,0,"sub-sequence", 0, 2, 0);
	trans[1][693]	= settr(1410,0,731,375,375,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][729]	= settr(1446,0,731,1,0,".(goto)", 0, 2, 0);
	trans[1][698]	= settr(1415,0,724,376,0,"((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][724] = settr(1441,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1441,0,705,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][705] = settr(1422,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1422,2,699,0,0,"ATOMIC", 0, 2, 0);
	trans[1][699]	= settr(1416,0,710,377,377,"printf('\\n\\n')", 0, 2, 0); /* m: 700 -> 0,710 */
	reached1[700] = 1;
	trans[1][700]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][701]	= settr(0,0,0,0,0,"printf('<responder>LSTUDENT</responder>\\n')",0,0,0);
	trans[1][702]	= settr(0,0,0,0,0,"printf('<type>ChooseReject</type>\\n')",0,0,0);
	trans[1][703]	= settr(0,0,0,0,0,"printf('<status>technical fail</status>\\n')",0,0,0);
	trans[1][704]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][706]	= settr(0,0,0,0,0,"printf('Technical fail on validating choice of course')",0,0,0);
	T = trans[ 1][710] = settr(1427,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1427,0,707,0,0,"sub-sequence", 0, 2, 0);
	trans[1][707]	= settr(1424,0,708,378,378,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][708]	= settr(1425,0,709,379,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][709]	= settr(1426,0,714,380,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][714] = settr(1431,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1431,0,711,0,0,"sub-sequence", 0, 2, 0);
	trans[1][711]	= settr(1428,0,712,381,381,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][712]	= settr(1429,0,713,382,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][713]	= settr(1430,0,721,383,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][721] = settr(1438,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1438,2,715,0,0,"ATOMIC", 0, 2, 0);
	trans[1][715]	= settr(1432,4,723,384,384,"printf('\\n\\n')", 0, 2, 0); /* m: 716 -> 0,723 */
	reached1[716] = 1;
	trans[1][716]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][717]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][718]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][719]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][720]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][723] = settr(1440,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1440,0,722,0,0,"sub-sequence", 0, 2, 0);
	trans[1][722]	= settr(1439,0,731,385,385,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][725]	= settr(1442,0,727,2,0,"else", 0, 2, 0);
	T = trans[ 1][727] = settr(1444,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1444,0,726,0,0,"sub-sequence", 0, 2, 0);
	trans[1][726]	= settr(1443,0,731,386,386,"CRM2LEG!6,5", 1, 4, 0);
	trans[1][733]	= settr(1450,0,734,1,0,"break", 0, 2, 0);
	trans[1][734]	= settr(1451,0,0,387,387,"-end-", 0, 3500, 0);

	/* proctype 0: LEG */

	trans[0] = (Trans **) emalloc(719*sizeof(Trans *));

	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(69,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,388,388,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,389,389,"STUDENTexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,390,390,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,391,391,"LMSexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,392,392,"D_STEP", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,393,393,"D_STEP", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,394,394,"D_STEP", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,51,395,395,"D_STEP", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(50,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,60,396,396,"D_STEP", 1, 2, 0);
	T = trans[ 0][60] = settr(59,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(59,0,59,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][59]	= settr(58,32,69,397,397,"D_STEP", 1, 2, 0);
	T = trans[ 0][69] = settr(68,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(68,0,68,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][68]	= settr(67,32,715,398,398,"D_STEP", 1, 2, 0);
	trans[0][716]	= settr(715,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[0][715] = settr(714,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,71,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,117,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,163,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,209,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,255,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,301,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,347,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,439,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,485,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,531,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,577,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(714,0,623,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(714,0,669,0,0,"DO", 0, 2, 0);
	trans[0][71]	= settr(70,0,72,399,0,"((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))", 1, 2, 0);
	trans[0][72]	= settr(71,0,74,400,400,"RegReq_bo.status = S", 1, 2, 0);
	T = trans[ 0][74] = settr(73,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(73,0,73,0,0,"sub-sequence", 0, 2, 0);
	trans[0][73]	= settr(72,0,116,401,401,"LEG2CRM!18,17", 1, 3, 0);
	T = trans[ 0][116] = settr(115,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(115,0,114,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][114] = settr(113,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,79,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,82,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,88,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,91,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,94,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,97,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,103,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(113,0,109,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(113,0,112,0,0,"IF", 0, 2, 0);
	T = trans[ 0][76] = settr(75,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(75,0,75,0,0,"sub-sequence", 0, 2, 0);
	trans[0][75]	= settr(74,0,77,402,402,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][77]	= settr(76,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][115]	= settr(114,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(78,0,78,0,0,"sub-sequence", 0, 2, 0);
	trans[0][78]	= settr(77,0,80,403,403,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][80]	= settr(79,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[0][81]	= settr(80,0,83,404,404,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][83]	= settr(82,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,84,0,0,"sub-sequence", 0, 2, 0);
	trans[0][84]	= settr(83,0,86,405,405,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][86]	= settr(85,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][88] = settr(87,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(87,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[0][87]	= settr(86,0,70,406,406,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][89]	= settr(88,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][91] = settr(90,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(90,0,90,0,0,"sub-sequence", 0, 2, 0);
	trans[0][90]	= settr(89,0,70,407,407,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][92]	= settr(91,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][94] = settr(93,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(93,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[0][93]	= settr(92,0,70,408,408,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][95]	= settr(94,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][97] = settr(96,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(96,0,96,0,0,"sub-sequence", 0, 2, 0);
	trans[0][96]	= settr(95,0,70,409,409,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][98]	= settr(97,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][100] = settr(99,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(99,0,99,0,0,"sub-sequence", 0, 2, 0);
	trans[0][99]	= settr(98,0,70,410,410,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][101]	= settr(100,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(102,0,102,0,0,"sub-sequence", 0, 2, 0);
	trans[0][102]	= settr(101,0,70,411,411,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][104]	= settr(103,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(105,0,105,0,0,"sub-sequence", 0, 2, 0);
	trans[0][105]	= settr(104,0,715,412,412,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][107]	= settr(106,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][109] = settr(108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(108,0,108,0,0,"sub-sequence", 0, 2, 0);
	trans[0][108]	= settr(107,0,715,413,413,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][110]	= settr(109,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][112] = settr(111,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(111,0,111,0,0,"sub-sequence", 0, 2, 0);
	trans[0][111]	= settr(110,0,715,414,414,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][113]	= settr(112,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][117]	= settr(116,0,118,415,0,"((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))", 1, 2, 0);
	trans[0][118]	= settr(117,0,120,416,416,"RegReq_bo.status = TF", 1, 2, 0);
	T = trans[ 0][120] = settr(119,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(119,0,119,0,0,"sub-sequence", 0, 2, 0);
	trans[0][119]	= settr(118,0,162,417,417,"LEG2CRM!18,15", 1, 3, 0);
	T = trans[ 0][162] = settr(161,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(161,0,160,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][160] = settr(159,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,128,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,137,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,140,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,143,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,146,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,149,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,152,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,155,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(159,0,158,0,0,"IF", 0, 2, 0);
	T = trans[ 0][122] = settr(121,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(121,0,121,0,0,"sub-sequence", 0, 2, 0);
	trans[0][121]	= settr(120,0,123,418,418,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][123]	= settr(122,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][161]	= settr(160,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(124,0,124,0,0,"sub-sequence", 0, 2, 0);
	trans[0][124]	= settr(123,0,126,419,419,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][126]	= settr(125,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][128] = settr(127,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(127,0,127,0,0,"sub-sequence", 0, 2, 0);
	trans[0][127]	= settr(126,0,129,420,420,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][129]	= settr(128,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(130,0,130,0,0,"sub-sequence", 0, 2, 0);
	trans[0][130]	= settr(129,0,132,421,421,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][132]	= settr(131,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][134] = settr(133,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(133,0,133,0,0,"sub-sequence", 0, 2, 0);
	trans[0][133]	= settr(132,0,70,422,422,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][135]	= settr(134,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][137] = settr(136,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(136,0,136,0,0,"sub-sequence", 0, 2, 0);
	trans[0][136]	= settr(135,0,70,423,423,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][138]	= settr(137,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][140] = settr(139,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(139,0,139,0,0,"sub-sequence", 0, 2, 0);
	trans[0][139]	= settr(138,0,70,424,424,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][141]	= settr(140,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(142,0,142,0,0,"sub-sequence", 0, 2, 0);
	trans[0][142]	= settr(141,0,70,425,425,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][144]	= settr(143,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][146] = settr(145,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(145,0,145,0,0,"sub-sequence", 0, 2, 0);
	trans[0][145]	= settr(144,0,70,426,426,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][147]	= settr(146,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][149] = settr(148,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(148,0,148,0,0,"sub-sequence", 0, 2, 0);
	trans[0][148]	= settr(147,0,70,427,427,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][150]	= settr(149,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][152] = settr(151,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(151,0,151,0,0,"sub-sequence", 0, 2, 0);
	trans[0][151]	= settr(150,0,715,428,428,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][153]	= settr(152,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][155] = settr(154,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(154,0,154,0,0,"sub-sequence", 0, 2, 0);
	trans[0][154]	= settr(153,0,715,429,429,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][156]	= settr(155,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][158] = settr(157,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(157,0,157,0,0,"sub-sequence", 0, 2, 0);
	trans[0][157]	= settr(156,0,715,430,430,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][159]	= settr(158,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][163]	= settr(162,0,164,431,0,"((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))", 1, 2, 0);
	trans[0][164]	= settr(163,0,166,432,432,"RegReply_bo.status = S", 1, 2, 0);
	T = trans[ 0][166] = settr(165,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(165,0,165,0,0,"sub-sequence", 0, 2, 0);
	trans[0][165]	= settr(164,0,208,433,433,"LEG2CRM!19,17", 1, 3, 0);
	T = trans[ 0][208] = settr(207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(207,0,206,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][206] = settr(205,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,177,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,180,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,183,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,186,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,189,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,192,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,195,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,198,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(205,0,201,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(205,0,204,0,0,"IF", 0, 2, 0);
	T = trans[ 0][168] = settr(167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(167,0,167,0,0,"sub-sequence", 0, 2, 0);
	trans[0][167]	= settr(166,0,169,434,434,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][169]	= settr(168,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][207]	= settr(206,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][171] = settr(170,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(170,0,170,0,0,"sub-sequence", 0, 2, 0);
	trans[0][170]	= settr(169,0,172,435,435,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][172]	= settr(171,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][174] = settr(173,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(173,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[0][173]	= settr(172,0,175,436,436,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][175]	= settr(174,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][177] = settr(176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(176,0,176,0,0,"sub-sequence", 0, 2, 0);
	trans[0][176]	= settr(175,0,178,437,437,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][178]	= settr(177,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][180] = settr(179,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(179,0,179,0,0,"sub-sequence", 0, 2, 0);
	trans[0][179]	= settr(178,0,70,438,438,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][181]	= settr(180,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(182,0,182,0,0,"sub-sequence", 0, 2, 0);
	trans[0][182]	= settr(181,0,70,439,439,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][184]	= settr(183,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][186] = settr(185,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(185,0,185,0,0,"sub-sequence", 0, 2, 0);
	trans[0][185]	= settr(184,0,70,440,440,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][187]	= settr(186,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][189] = settr(188,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(188,0,188,0,0,"sub-sequence", 0, 2, 0);
	trans[0][188]	= settr(187,0,70,441,441,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][190]	= settr(189,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][192] = settr(191,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(191,0,191,0,0,"sub-sequence", 0, 2, 0);
	trans[0][191]	= settr(190,0,70,442,442,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][193]	= settr(192,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][195] = settr(194,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(194,0,194,0,0,"sub-sequence", 0, 2, 0);
	trans[0][194]	= settr(193,0,70,443,443,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][196]	= settr(195,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][198] = settr(197,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(197,0,197,0,0,"sub-sequence", 0, 2, 0);
	trans[0][197]	= settr(196,0,715,444,444,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][199]	= settr(198,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][201] = settr(200,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(200,0,200,0,0,"sub-sequence", 0, 2, 0);
	trans[0][200]	= settr(199,0,715,445,445,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][202]	= settr(201,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][204] = settr(203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(203,0,203,0,0,"sub-sequence", 0, 2, 0);
	trans[0][203]	= settr(202,0,715,446,446,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][205]	= settr(204,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][209]	= settr(208,0,210,447,0,"((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))", 1, 2, 0);
	trans[0][210]	= settr(209,0,212,448,448,"RegReply_bo.status = TF", 1, 2, 0);
	T = trans[ 0][212] = settr(211,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(211,0,211,0,0,"sub-sequence", 0, 2, 0);
	trans[0][211]	= settr(210,0,254,449,449,"LEG2CRM!19,15", 1, 3, 0);
	T = trans[ 0][254] = settr(253,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(253,0,252,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][252] = settr(251,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,214,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,217,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,220,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,223,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,226,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,229,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,232,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,235,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,238,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,241,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,244,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(251,0,247,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(251,0,250,0,0,"IF", 0, 2, 0);
	T = trans[ 0][214] = settr(213,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(213,0,213,0,0,"sub-sequence", 0, 2, 0);
	trans[0][213]	= settr(212,0,215,450,450,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][215]	= settr(214,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][253]	= settr(252,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][217] = settr(216,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(216,0,216,0,0,"sub-sequence", 0, 2, 0);
	trans[0][216]	= settr(215,0,218,451,451,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][218]	= settr(217,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][220] = settr(219,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(219,0,219,0,0,"sub-sequence", 0, 2, 0);
	trans[0][219]	= settr(218,0,221,452,452,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][221]	= settr(220,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][223] = settr(222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(222,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[0][222]	= settr(221,0,224,453,453,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][224]	= settr(223,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][226] = settr(225,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(225,0,225,0,0,"sub-sequence", 0, 2, 0);
	trans[0][225]	= settr(224,0,70,454,454,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][227]	= settr(226,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][229] = settr(228,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(228,0,228,0,0,"sub-sequence", 0, 2, 0);
	trans[0][228]	= settr(227,0,70,455,455,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][230]	= settr(229,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][232] = settr(231,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(231,0,231,0,0,"sub-sequence", 0, 2, 0);
	trans[0][231]	= settr(230,0,70,456,456,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][233]	= settr(232,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][235] = settr(234,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(234,0,234,0,0,"sub-sequence", 0, 2, 0);
	trans[0][234]	= settr(233,0,70,457,457,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][236]	= settr(235,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][238] = settr(237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(237,0,237,0,0,"sub-sequence", 0, 2, 0);
	trans[0][237]	= settr(236,0,70,458,458,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][239]	= settr(238,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][241] = settr(240,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(240,0,240,0,0,"sub-sequence", 0, 2, 0);
	trans[0][240]	= settr(239,0,70,459,459,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][242]	= settr(241,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][244] = settr(243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(243,0,243,0,0,"sub-sequence", 0, 2, 0);
	trans[0][243]	= settr(242,0,715,460,460,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][245]	= settr(244,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][247] = settr(246,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(246,0,246,0,0,"sub-sequence", 0, 2, 0);
	trans[0][246]	= settr(245,0,715,461,461,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][248]	= settr(247,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][250] = settr(249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(249,0,249,0,0,"sub-sequence", 0, 2, 0);
	trans[0][249]	= settr(248,0,715,462,462,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][251]	= settr(250,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][255]	= settr(254,0,256,463,0,"((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))", 1, 2, 0);
	trans[0][256]	= settr(255,0,258,464,464,"C1_bo.status = S", 1, 2, 0);
	T = trans[ 0][258] = settr(257,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(257,0,257,0,0,"sub-sequence", 0, 2, 0);
	trans[0][257]	= settr(256,0,300,465,465,"LEG2CRM!20,17", 1, 3, 0);
	T = trans[ 0][300] = settr(299,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(299,0,298,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][298] = settr(297,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,278,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,281,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,284,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,287,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(297,0,293,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(297,0,296,0,0,"IF", 0, 2, 0);
	T = trans[ 0][260] = settr(259,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(259,0,259,0,0,"sub-sequence", 0, 2, 0);
	trans[0][259]	= settr(258,0,261,466,466,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][261]	= settr(260,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][299]	= settr(298,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][263] = settr(262,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(262,0,262,0,0,"sub-sequence", 0, 2, 0);
	trans[0][262]	= settr(261,0,264,467,467,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][264]	= settr(263,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][266] = settr(265,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(265,0,265,0,0,"sub-sequence", 0, 2, 0);
	trans[0][265]	= settr(264,0,267,468,468,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][267]	= settr(266,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][269] = settr(268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(268,0,268,0,0,"sub-sequence", 0, 2, 0);
	trans[0][268]	= settr(267,0,270,469,469,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][270]	= settr(269,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][272] = settr(271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(271,0,271,0,0,"sub-sequence", 0, 2, 0);
	trans[0][271]	= settr(270,0,70,470,470,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][273]	= settr(272,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][275] = settr(274,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(274,0,274,0,0,"sub-sequence", 0, 2, 0);
	trans[0][274]	= settr(273,0,70,471,471,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][276]	= settr(275,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][278] = settr(277,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(277,0,277,0,0,"sub-sequence", 0, 2, 0);
	trans[0][277]	= settr(276,0,70,472,472,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][279]	= settr(278,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][281] = settr(280,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(280,0,280,0,0,"sub-sequence", 0, 2, 0);
	trans[0][280]	= settr(279,0,70,473,473,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][282]	= settr(281,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][284] = settr(283,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(283,0,283,0,0,"sub-sequence", 0, 2, 0);
	trans[0][283]	= settr(282,0,70,474,474,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][285]	= settr(284,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][287] = settr(286,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(286,0,286,0,0,"sub-sequence", 0, 2, 0);
	trans[0][286]	= settr(285,0,70,475,475,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][288]	= settr(287,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][290] = settr(289,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(289,0,289,0,0,"sub-sequence", 0, 2, 0);
	trans[0][289]	= settr(288,0,715,476,476,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][291]	= settr(290,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][293] = settr(292,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(292,0,292,0,0,"sub-sequence", 0, 2, 0);
	trans[0][292]	= settr(291,0,715,477,477,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][294]	= settr(293,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][296] = settr(295,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(295,0,295,0,0,"sub-sequence", 0, 2, 0);
	trans[0][295]	= settr(294,0,715,478,478,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][297]	= settr(296,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][301]	= settr(300,0,302,479,0,"((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))", 1, 2, 0);
	trans[0][302]	= settr(301,0,304,480,480,"C1_bo.status = TF", 1, 2, 0);
	T = trans[ 0][304] = settr(303,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(303,0,303,0,0,"sub-sequence", 0, 2, 0);
	trans[0][303]	= settr(302,0,346,481,481,"LEG2CRM!20,15", 1, 3, 0);
	T = trans[ 0][346] = settr(345,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(345,0,344,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][344] = settr(343,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,321,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,324,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,327,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,336,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,339,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(343,0,342,0,0,"IF", 0, 2, 0);
	T = trans[ 0][306] = settr(305,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(305,0,305,0,0,"sub-sequence", 0, 2, 0);
	trans[0][305]	= settr(304,0,307,482,482,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][307]	= settr(306,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][345]	= settr(344,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][309] = settr(308,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(308,0,308,0,0,"sub-sequence", 0, 2, 0);
	trans[0][308]	= settr(307,0,310,483,483,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][310]	= settr(309,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][312] = settr(311,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(311,0,311,0,0,"sub-sequence", 0, 2, 0);
	trans[0][311]	= settr(310,0,313,484,484,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][313]	= settr(312,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][315] = settr(314,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(314,0,314,0,0,"sub-sequence", 0, 2, 0);
	trans[0][314]	= settr(313,0,316,485,485,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][316]	= settr(315,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][318] = settr(317,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(317,0,317,0,0,"sub-sequence", 0, 2, 0);
	trans[0][317]	= settr(316,0,70,486,486,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][319]	= settr(318,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][321] = settr(320,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(320,0,320,0,0,"sub-sequence", 0, 2, 0);
	trans[0][320]	= settr(319,0,70,487,487,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][322]	= settr(321,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][324] = settr(323,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(323,0,323,0,0,"sub-sequence", 0, 2, 0);
	trans[0][323]	= settr(322,0,70,488,488,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][325]	= settr(324,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][327] = settr(326,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(326,0,326,0,0,"sub-sequence", 0, 2, 0);
	trans[0][326]	= settr(325,0,70,489,489,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][328]	= settr(327,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][330] = settr(329,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(329,0,329,0,0,"sub-sequence", 0, 2, 0);
	trans[0][329]	= settr(328,0,70,490,490,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][331]	= settr(330,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][333] = settr(332,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(332,0,332,0,0,"sub-sequence", 0, 2, 0);
	trans[0][332]	= settr(331,0,70,491,491,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][334]	= settr(333,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][336] = settr(335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(335,0,335,0,0,"sub-sequence", 0, 2, 0);
	trans[0][335]	= settr(334,0,715,492,492,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][337]	= settr(336,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][339] = settr(338,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(338,0,338,0,0,"sub-sequence", 0, 2, 0);
	trans[0][338]	= settr(337,0,715,493,493,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][340]	= settr(339,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][342] = settr(341,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(341,0,341,0,0,"sub-sequence", 0, 2, 0);
	trans[0][341]	= settr(340,0,715,494,494,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][343]	= settr(342,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][347]	= settr(346,0,348,495,0,"((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))", 1, 2, 0);
	trans[0][348]	= settr(347,0,350,496,496,"C2_bo.status = S", 1, 2, 0);
	T = trans[ 0][350] = settr(349,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(349,0,349,0,0,"sub-sequence", 0, 2, 0);
	trans[0][349]	= settr(348,0,392,497,497,"LEG2CRM!21,17", 1, 3, 0);
	T = trans[ 0][392] = settr(391,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(391,0,390,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][390] = settr(389,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,352,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,355,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,358,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,361,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,364,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,367,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,370,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,373,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,376,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,379,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,382,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(389,0,385,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(389,0,388,0,0,"IF", 0, 2, 0);
	T = trans[ 0][352] = settr(351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(351,0,351,0,0,"sub-sequence", 0, 2, 0);
	trans[0][351]	= settr(350,0,353,498,498,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][353]	= settr(352,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][391]	= settr(390,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][355] = settr(354,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(354,0,354,0,0,"sub-sequence", 0, 2, 0);
	trans[0][354]	= settr(353,0,356,499,499,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][356]	= settr(355,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][358] = settr(357,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(357,0,357,0,0,"sub-sequence", 0, 2, 0);
	trans[0][357]	= settr(356,0,359,500,500,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][359]	= settr(358,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][361] = settr(360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(360,0,360,0,0,"sub-sequence", 0, 2, 0);
	trans[0][360]	= settr(359,0,362,501,501,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][362]	= settr(361,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][364] = settr(363,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(363,0,363,0,0,"sub-sequence", 0, 2, 0);
	trans[0][363]	= settr(362,0,70,502,502,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][365]	= settr(364,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][367] = settr(366,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(366,0,366,0,0,"sub-sequence", 0, 2, 0);
	trans[0][366]	= settr(365,0,70,503,503,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][368]	= settr(367,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][370] = settr(369,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(369,0,369,0,0,"sub-sequence", 0, 2, 0);
	trans[0][369]	= settr(368,0,70,504,504,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][371]	= settr(370,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][373] = settr(372,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(372,0,372,0,0,"sub-sequence", 0, 2, 0);
	trans[0][372]	= settr(371,0,70,505,505,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][374]	= settr(373,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][376] = settr(375,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(375,0,375,0,0,"sub-sequence", 0, 2, 0);
	trans[0][375]	= settr(374,0,70,506,506,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][377]	= settr(376,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][379] = settr(378,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(378,0,378,0,0,"sub-sequence", 0, 2, 0);
	trans[0][378]	= settr(377,0,70,507,507,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][380]	= settr(379,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][382] = settr(381,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(381,0,381,0,0,"sub-sequence", 0, 2, 0);
	trans[0][381]	= settr(380,0,715,508,508,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][383]	= settr(382,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][385] = settr(384,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(384,0,384,0,0,"sub-sequence", 0, 2, 0);
	trans[0][384]	= settr(383,0,715,509,509,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][386]	= settr(385,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][388] = settr(387,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(387,0,387,0,0,"sub-sequence", 0, 2, 0);
	trans[0][387]	= settr(386,0,715,510,510,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][389]	= settr(388,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][393]	= settr(392,0,394,511,0,"((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))", 1, 2, 0);
	trans[0][394]	= settr(393,0,396,512,512,"C2_bo.status = TF", 1, 2, 0);
	T = trans[ 0][396] = settr(395,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(395,0,395,0,0,"sub-sequence", 0, 2, 0);
	trans[0][395]	= settr(394,0,438,513,513,"LEG2CRM!21,15", 1, 3, 0);
	T = trans[ 0][438] = settr(437,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(437,0,436,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][436] = settr(435,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,416,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,419,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,422,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,428,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(435,0,431,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(435,0,434,0,0,"IF", 0, 2, 0);
	T = trans[ 0][398] = settr(397,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(397,0,397,0,0,"sub-sequence", 0, 2, 0);
	trans[0][397]	= settr(396,0,399,514,514,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][399]	= settr(398,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][437]	= settr(436,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][401] = settr(400,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(400,0,400,0,0,"sub-sequence", 0, 2, 0);
	trans[0][400]	= settr(399,0,402,515,515,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][402]	= settr(401,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][404] = settr(403,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(403,0,403,0,0,"sub-sequence", 0, 2, 0);
	trans[0][403]	= settr(402,0,405,516,516,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][405]	= settr(404,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][407] = settr(406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(406,0,406,0,0,"sub-sequence", 0, 2, 0);
	trans[0][406]	= settr(405,0,408,517,517,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][408]	= settr(407,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][410] = settr(409,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(409,0,409,0,0,"sub-sequence", 0, 2, 0);
	trans[0][409]	= settr(408,0,70,518,518,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][411]	= settr(410,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][413] = settr(412,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(412,0,412,0,0,"sub-sequence", 0, 2, 0);
	trans[0][412]	= settr(411,0,70,519,519,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][414]	= settr(413,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][416] = settr(415,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(415,0,415,0,0,"sub-sequence", 0, 2, 0);
	trans[0][415]	= settr(414,0,70,520,520,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][417]	= settr(416,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][419] = settr(418,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(418,0,418,0,0,"sub-sequence", 0, 2, 0);
	trans[0][418]	= settr(417,0,70,521,521,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][420]	= settr(419,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][422] = settr(421,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(421,0,421,0,0,"sub-sequence", 0, 2, 0);
	trans[0][421]	= settr(420,0,70,522,522,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][423]	= settr(422,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][425] = settr(424,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(424,0,424,0,0,"sub-sequence", 0, 2, 0);
	trans[0][424]	= settr(423,0,70,523,523,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][426]	= settr(425,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][428] = settr(427,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(427,0,427,0,0,"sub-sequence", 0, 2, 0);
	trans[0][427]	= settr(426,0,715,524,524,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][429]	= settr(428,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][431] = settr(430,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(430,0,430,0,0,"sub-sequence", 0, 2, 0);
	trans[0][430]	= settr(429,0,715,525,525,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][432]	= settr(431,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][434] = settr(433,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(433,0,433,0,0,"sub-sequence", 0, 2, 0);
	trans[0][433]	= settr(432,0,715,526,526,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][435]	= settr(434,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][439]	= settr(438,0,440,527,0,"((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))", 1, 2, 0);
	trans[0][440]	= settr(439,0,442,528,528,"C3_bo.status = S", 1, 2, 0);
	T = trans[ 0][442] = settr(441,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(441,0,441,0,0,"sub-sequence", 0, 2, 0);
	trans[0][441]	= settr(440,0,484,529,529,"LEG2CRM!22,17", 1, 3, 0);
	T = trans[ 0][484] = settr(483,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(483,0,482,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][482] = settr(481,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,459,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,462,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,465,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,468,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,471,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,474,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(481,0,477,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(481,0,480,0,0,"IF", 0, 2, 0);
	T = trans[ 0][444] = settr(443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(443,0,443,0,0,"sub-sequence", 0, 2, 0);
	trans[0][443]	= settr(442,0,445,530,530,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][445]	= settr(444,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][483]	= settr(482,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][447] = settr(446,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(446,0,446,0,0,"sub-sequence", 0, 2, 0);
	trans[0][446]	= settr(445,0,448,531,531,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][448]	= settr(447,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][450] = settr(449,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(449,0,449,0,0,"sub-sequence", 0, 2, 0);
	trans[0][449]	= settr(448,0,451,532,532,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][451]	= settr(450,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][453] = settr(452,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(452,0,452,0,0,"sub-sequence", 0, 2, 0);
	trans[0][452]	= settr(451,0,454,533,533,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][454]	= settr(453,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][456] = settr(455,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(455,0,455,0,0,"sub-sequence", 0, 2, 0);
	trans[0][455]	= settr(454,0,70,534,534,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][457]	= settr(456,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][459] = settr(458,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(458,0,458,0,0,"sub-sequence", 0, 2, 0);
	trans[0][458]	= settr(457,0,70,535,535,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][460]	= settr(459,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][462] = settr(461,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(461,0,461,0,0,"sub-sequence", 0, 2, 0);
	trans[0][461]	= settr(460,0,70,536,536,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][463]	= settr(462,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][465] = settr(464,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(464,0,464,0,0,"sub-sequence", 0, 2, 0);
	trans[0][464]	= settr(463,0,70,537,537,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][466]	= settr(465,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][468] = settr(467,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(467,0,467,0,0,"sub-sequence", 0, 2, 0);
	trans[0][467]	= settr(466,0,70,538,538,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][469]	= settr(468,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][471] = settr(470,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(470,0,470,0,0,"sub-sequence", 0, 2, 0);
	trans[0][470]	= settr(469,0,70,539,539,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][472]	= settr(471,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][474] = settr(473,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(473,0,473,0,0,"sub-sequence", 0, 2, 0);
	trans[0][473]	= settr(472,0,715,540,540,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][475]	= settr(474,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][477] = settr(476,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(476,0,476,0,0,"sub-sequence", 0, 2, 0);
	trans[0][476]	= settr(475,0,715,541,541,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][478]	= settr(477,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][480] = settr(479,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(479,0,479,0,0,"sub-sequence", 0, 2, 0);
	trans[0][479]	= settr(478,0,715,542,542,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][481]	= settr(480,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][485]	= settr(484,0,486,543,0,"((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))", 1, 2, 0);
	trans[0][486]	= settr(485,0,488,544,544,"C3_bo.status = TF", 1, 2, 0);
	T = trans[ 0][488] = settr(487,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(487,0,487,0,0,"sub-sequence", 0, 2, 0);
	trans[0][487]	= settr(486,0,530,545,545,"LEG2CRM!22,15", 1, 3, 0);
	T = trans[ 0][530] = settr(529,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(529,0,528,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][528] = settr(527,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,490,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,508,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,511,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,517,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(527,0,523,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(527,0,526,0,0,"IF", 0, 2, 0);
	T = trans[ 0][490] = settr(489,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(489,0,489,0,0,"sub-sequence", 0, 2, 0);
	trans[0][489]	= settr(488,0,491,546,546,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][491]	= settr(490,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][529]	= settr(528,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][493] = settr(492,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(492,0,492,0,0,"sub-sequence", 0, 2, 0);
	trans[0][492]	= settr(491,0,494,547,547,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][494]	= settr(493,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][496] = settr(495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(495,0,495,0,0,"sub-sequence", 0, 2, 0);
	trans[0][495]	= settr(494,0,497,548,548,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][497]	= settr(496,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][499] = settr(498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(498,0,498,0,0,"sub-sequence", 0, 2, 0);
	trans[0][498]	= settr(497,0,500,549,549,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][500]	= settr(499,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][502] = settr(501,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(501,0,501,0,0,"sub-sequence", 0, 2, 0);
	trans[0][501]	= settr(500,0,70,550,550,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][503]	= settr(502,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][505] = settr(504,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(504,0,504,0,0,"sub-sequence", 0, 2, 0);
	trans[0][504]	= settr(503,0,70,551,551,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][506]	= settr(505,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][508] = settr(507,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(507,0,507,0,0,"sub-sequence", 0, 2, 0);
	trans[0][507]	= settr(506,0,70,552,552,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][509]	= settr(508,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][511] = settr(510,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(510,0,510,0,0,"sub-sequence", 0, 2, 0);
	trans[0][510]	= settr(509,0,70,553,553,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][512]	= settr(511,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][514] = settr(513,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(513,0,513,0,0,"sub-sequence", 0, 2, 0);
	trans[0][513]	= settr(512,0,70,554,554,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][515]	= settr(514,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][517] = settr(516,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(516,0,516,0,0,"sub-sequence", 0, 2, 0);
	trans[0][516]	= settr(515,0,70,555,555,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][518]	= settr(517,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][520] = settr(519,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(519,0,519,0,0,"sub-sequence", 0, 2, 0);
	trans[0][519]	= settr(518,0,715,556,556,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][521]	= settr(520,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][523] = settr(522,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(522,0,522,0,0,"sub-sequence", 0, 2, 0);
	trans[0][522]	= settr(521,0,715,557,557,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][524]	= settr(523,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][526] = settr(525,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(525,0,525,0,0,"sub-sequence", 0, 2, 0);
	trans[0][525]	= settr(524,0,715,558,558,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][527]	= settr(526,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][531]	= settr(530,0,532,559,0,"((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))", 1, 2, 0);
	trans[0][532]	= settr(531,0,534,560,560,"ChooseAccept_bo.status = S", 1, 2, 0);
	T = trans[ 0][534] = settr(533,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(533,0,533,0,0,"sub-sequence", 0, 2, 0);
	trans[0][533]	= settr(532,0,576,561,561,"LEG2CRM!23,17", 1, 3, 0);
	T = trans[ 0][576] = settr(575,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(575,0,574,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][574] = settr(573,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,536,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,542,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,545,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,548,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,551,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,557,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,560,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,563,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,566,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(573,0,569,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(573,0,572,0,0,"IF", 0, 2, 0);
	T = trans[ 0][536] = settr(535,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(535,0,535,0,0,"sub-sequence", 0, 2, 0);
	trans[0][535]	= settr(534,0,537,562,562,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][537]	= settr(536,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][575]	= settr(574,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][539] = settr(538,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(538,0,538,0,0,"sub-sequence", 0, 2, 0);
	trans[0][538]	= settr(537,0,540,563,563,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][540]	= settr(539,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][542] = settr(541,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(541,0,541,0,0,"sub-sequence", 0, 2, 0);
	trans[0][541]	= settr(540,0,543,564,564,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][543]	= settr(542,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][545] = settr(544,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(544,0,544,0,0,"sub-sequence", 0, 2, 0);
	trans[0][544]	= settr(543,0,546,565,565,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][546]	= settr(545,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][548] = settr(547,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(547,0,547,0,0,"sub-sequence", 0, 2, 0);
	trans[0][547]	= settr(546,0,70,566,566,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][549]	= settr(548,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][551] = settr(550,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(550,0,550,0,0,"sub-sequence", 0, 2, 0);
	trans[0][550]	= settr(549,0,70,567,567,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][552]	= settr(551,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][554] = settr(553,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(553,0,553,0,0,"sub-sequence", 0, 2, 0);
	trans[0][553]	= settr(552,0,70,568,568,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][555]	= settr(554,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][557] = settr(556,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(556,0,556,0,0,"sub-sequence", 0, 2, 0);
	trans[0][556]	= settr(555,0,70,569,569,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][558]	= settr(557,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][560] = settr(559,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(559,0,559,0,0,"sub-sequence", 0, 2, 0);
	trans[0][559]	= settr(558,0,70,570,570,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][561]	= settr(560,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][563] = settr(562,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(562,0,562,0,0,"sub-sequence", 0, 2, 0);
	trans[0][562]	= settr(561,0,70,571,571,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][564]	= settr(563,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][566] = settr(565,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(565,0,565,0,0,"sub-sequence", 0, 2, 0);
	trans[0][565]	= settr(564,0,715,572,572,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][567]	= settr(566,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][569] = settr(568,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(568,0,568,0,0,"sub-sequence", 0, 2, 0);
	trans[0][568]	= settr(567,0,715,573,573,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][570]	= settr(569,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][572] = settr(571,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(571,0,571,0,0,"sub-sequence", 0, 2, 0);
	trans[0][571]	= settr(570,0,715,574,574,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][573]	= settr(572,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][577]	= settr(576,0,578,575,0,"((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))", 1, 2, 0);
	trans[0][578]	= settr(577,0,580,576,576,"ChooseAccept_bo.status = TF", 1, 2, 0);
	T = trans[ 0][580] = settr(579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(579,0,579,0,0,"sub-sequence", 0, 2, 0);
	trans[0][579]	= settr(578,0,622,577,577,"LEG2CRM!23,15", 1, 3, 0);
	T = trans[ 0][622] = settr(621,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(621,0,620,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][620] = settr(619,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,582,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,585,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,588,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,591,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,594,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,597,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,600,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,603,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,606,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,609,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,612,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(619,0,615,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(619,0,618,0,0,"IF", 0, 2, 0);
	T = trans[ 0][582] = settr(581,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(581,0,581,0,0,"sub-sequence", 0, 2, 0);
	trans[0][581]	= settr(580,0,583,578,578,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][583]	= settr(582,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][621]	= settr(620,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][585] = settr(584,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(584,0,584,0,0,"sub-sequence", 0, 2, 0);
	trans[0][584]	= settr(583,0,586,579,579,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][586]	= settr(585,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][588] = settr(587,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(587,0,587,0,0,"sub-sequence", 0, 2, 0);
	trans[0][587]	= settr(586,0,589,580,580,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][589]	= settr(588,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][591] = settr(590,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(590,0,590,0,0,"sub-sequence", 0, 2, 0);
	trans[0][590]	= settr(589,0,592,581,581,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][592]	= settr(591,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][594] = settr(593,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(593,0,593,0,0,"sub-sequence", 0, 2, 0);
	trans[0][593]	= settr(592,0,70,582,582,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][595]	= settr(594,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][597] = settr(596,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(596,0,596,0,0,"sub-sequence", 0, 2, 0);
	trans[0][596]	= settr(595,0,70,583,583,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][598]	= settr(597,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][600] = settr(599,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(599,0,599,0,0,"sub-sequence", 0, 2, 0);
	trans[0][599]	= settr(598,0,70,584,584,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][601]	= settr(600,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][603] = settr(602,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(602,0,602,0,0,"sub-sequence", 0, 2, 0);
	trans[0][602]	= settr(601,0,70,585,585,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][604]	= settr(603,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][606] = settr(605,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(605,0,605,0,0,"sub-sequence", 0, 2, 0);
	trans[0][605]	= settr(604,0,70,586,586,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][607]	= settr(606,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][609] = settr(608,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(608,0,608,0,0,"sub-sequence", 0, 2, 0);
	trans[0][608]	= settr(607,0,70,587,587,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][610]	= settr(609,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][612] = settr(611,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(611,0,611,0,0,"sub-sequence", 0, 2, 0);
	trans[0][611]	= settr(610,0,715,588,588,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][613]	= settr(612,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][615] = settr(614,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(614,0,614,0,0,"sub-sequence", 0, 2, 0);
	trans[0][614]	= settr(613,0,715,589,589,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][616]	= settr(615,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][618] = settr(617,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(617,0,617,0,0,"sub-sequence", 0, 2, 0);
	trans[0][617]	= settr(616,0,715,590,590,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][619]	= settr(618,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][623]	= settr(622,0,624,591,0,"((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))", 1, 2, 0);
	trans[0][624]	= settr(623,0,626,592,592,"ChooseReject_bo.status = S", 1, 2, 0);
	T = trans[ 0][626] = settr(625,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(625,0,625,0,0,"sub-sequence", 0, 2, 0);
	trans[0][625]	= settr(624,0,668,593,593,"LEG2CRM!24,17", 1, 3, 0);
	T = trans[ 0][668] = settr(667,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(667,0,666,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][666] = settr(665,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,628,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,631,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,634,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,637,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,640,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,646,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,649,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,652,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,655,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(665,0,661,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(665,0,664,0,0,"IF", 0, 2, 0);
	T = trans[ 0][628] = settr(627,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(627,0,627,0,0,"sub-sequence", 0, 2, 0);
	trans[0][627]	= settr(626,0,629,594,594,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][629]	= settr(628,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][667]	= settr(666,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][631] = settr(630,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(630,0,630,0,0,"sub-sequence", 0, 2, 0);
	trans[0][630]	= settr(629,0,632,595,595,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][632]	= settr(631,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][634] = settr(633,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(633,0,633,0,0,"sub-sequence", 0, 2, 0);
	trans[0][633]	= settr(632,0,635,596,596,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][635]	= settr(634,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][637] = settr(636,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(636,0,636,0,0,"sub-sequence", 0, 2, 0);
	trans[0][636]	= settr(635,0,638,597,597,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][638]	= settr(637,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][640] = settr(639,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(639,0,639,0,0,"sub-sequence", 0, 2, 0);
	trans[0][639]	= settr(638,0,70,598,598,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][641]	= settr(640,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][643] = settr(642,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(642,0,642,0,0,"sub-sequence", 0, 2, 0);
	trans[0][642]	= settr(641,0,70,599,599,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][644]	= settr(643,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][646] = settr(645,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(645,0,645,0,0,"sub-sequence", 0, 2, 0);
	trans[0][645]	= settr(644,0,70,600,600,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][647]	= settr(646,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][649] = settr(648,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(648,0,648,0,0,"sub-sequence", 0, 2, 0);
	trans[0][648]	= settr(647,0,70,601,601,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][650]	= settr(649,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][652] = settr(651,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(651,0,651,0,0,"sub-sequence", 0, 2, 0);
	trans[0][651]	= settr(650,0,70,602,602,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][653]	= settr(652,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][655] = settr(654,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(654,0,654,0,0,"sub-sequence", 0, 2, 0);
	trans[0][654]	= settr(653,0,70,603,603,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][656]	= settr(655,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][658] = settr(657,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(657,0,657,0,0,"sub-sequence", 0, 2, 0);
	trans[0][657]	= settr(656,0,715,604,604,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][659]	= settr(658,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][661] = settr(660,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(660,0,660,0,0,"sub-sequence", 0, 2, 0);
	trans[0][660]	= settr(659,0,715,605,605,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][662]	= settr(661,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][664] = settr(663,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(663,0,663,0,0,"sub-sequence", 0, 2, 0);
	trans[0][663]	= settr(662,0,715,606,606,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][665]	= settr(664,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][669]	= settr(668,0,670,607,0,"((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))", 1, 2, 0);
	trans[0][670]	= settr(669,0,672,608,608,"ChooseReject_bo.status = TF", 1, 2, 0);
	T = trans[ 0][672] = settr(671,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(671,0,671,0,0,"sub-sequence", 0, 2, 0);
	trans[0][671]	= settr(670,0,714,609,609,"LEG2CRM!24,15", 1, 3, 0);
	T = trans[ 0][714] = settr(713,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(713,0,712,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][712] = settr(711,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,677,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,680,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,683,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,686,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,689,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,692,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,695,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,698,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,701,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,704,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(711,0,707,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(711,0,710,0,0,"IF", 0, 2, 0);
	T = trans[ 0][674] = settr(673,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(673,0,673,0,0,"sub-sequence", 0, 2, 0);
	trans[0][673]	= settr(672,0,675,610,610,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][675]	= settr(674,0,715,1,0,"(1)", 0, 2, 0);
	trans[0][713]	= settr(712,0,715,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][677] = settr(676,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(676,0,676,0,0,"sub-sequence", 0, 2, 0);
	trans[0][676]	= settr(675,0,678,611,611,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][678]	= settr(677,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][680] = settr(679,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(679,0,679,0,0,"sub-sequence", 0, 2, 0);
	trans[0][679]	= settr(678,0,681,612,612,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][681]	= settr(680,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][683] = settr(682,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(682,0,682,0,0,"sub-sequence", 0, 2, 0);
	trans[0][682]	= settr(681,0,684,613,613,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][684]	= settr(683,0,715,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][686] = settr(685,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(685,0,685,0,0,"sub-sequence", 0, 2, 0);
	trans[0][685]	= settr(684,0,70,614,614,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][687]	= settr(686,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][689] = settr(688,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(688,0,688,0,0,"sub-sequence", 0, 2, 0);
	trans[0][688]	= settr(687,0,70,615,615,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][690]	= settr(689,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][692] = settr(691,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(691,0,691,0,0,"sub-sequence", 0, 2, 0);
	trans[0][691]	= settr(690,0,70,616,616,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][693]	= settr(692,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][695] = settr(694,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(694,0,694,0,0,"sub-sequence", 0, 2, 0);
	trans[0][694]	= settr(693,0,70,617,617,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][696]	= settr(695,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][698] = settr(697,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(697,0,697,0,0,"sub-sequence", 0, 2, 0);
	trans[0][697]	= settr(696,0,70,618,618,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][699]	= settr(698,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][701] = settr(700,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(700,0,700,0,0,"sub-sequence", 0, 2, 0);
	trans[0][700]	= settr(699,0,70,619,619,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][702]	= settr(701,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][704] = settr(703,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(703,0,703,0,0,"sub-sequence", 0, 2, 0);
	trans[0][703]	= settr(702,0,715,620,620,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][705]	= settr(704,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][707] = settr(706,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(706,0,706,0,0,"sub-sequence", 0, 2, 0);
	trans[0][706]	= settr(705,0,715,621,621,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][708]	= settr(707,0,715,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][710] = settr(709,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(709,0,709,0,0,"sub-sequence", 0, 2, 0);
	trans[0][709]	= settr(708,0,715,622,622,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][711]	= settr(710,0,715,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][717]	= settr(716,0,718,1,0,"break", 0, 2, 0);
	trans[0][718]	= settr(717,0,0,623,623,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(2*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
