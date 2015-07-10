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

	T = trans[ 2][3] = settr(1602,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1602,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(1600,2,2,3,3,"(run LEG())", 0, 2, 0);
	trans[2][2]	= settr(1601,0,4,4,4,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(1603,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(745*sizeof(Trans *));

	trans[1][1]	= settr(856,0,741,6,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][742]	= settr(1597,0,741,1,0,".(goto)", 0, 2, 0);
	T = trans[1][741] = settr(1596,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,82,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,165,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,255,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,345,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1596,0,435,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1596,0,505,0,0,"DO", 0, 2, 0);
	T = trans[ 1][14] = settr(869,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(869,0,12,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][12] = settr(867,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(867,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(867,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(867,0,6,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(867,0,8,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(867,0,10,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(857,0,3,7,0,"(LEG2CRM?[18,S])", 1, 2, 0);
	trans[1][3]	= settr(858,0,69,8,8,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][13]	= settr(868,0,69,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(859,0,5,9,0,"(LEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][5]	= settr(860,0,69,10,10,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(861,0,7,11,0,"(LEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][7]	= settr(862,0,69,12,12,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(863,0,9,13,0,"(LEG2CRM?[18,LF])", 1, 2, 0);
	trans[1][9]	= settr(864,0,69,14,14,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][10]	= settr(865,0,11,15,0,"(LEG2CRM?[18,P])", 1, 2, 0);
	trans[1][11]	= settr(866,0,69,16,16,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][69] = settr(924,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(924,0,15,0,0,"sub-sequence", 0, 2, 0);
	trans[1][15]	= settr(870,0,67,17,17,"printf('Start\\n')", 0, 2, 0); /* m: 16 -> 0,67 */
	reached1[16] = 1;
	trans[1][16]	= settr(0,0,0,0,0,"printf('Registration Request by Student')",0,0,0);
	T = trans[1][67] = settr(922,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(922,0,17,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(922,0,37,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(922,0,64,0,0,"IF", 0, 2, 0);
	trans[1][17]	= settr(872,0,36,18,0,"((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][36] = settr(891,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(891,0,18,0,0,"sub-sequence", 0, 2, 0);
	trans[1][18]	= settr(873,0,25,19,19,"STUDENTexTrace = (STUDENTexTrace|(1<<RegReq_bo.id))", 1, 2, 0);
	T = trans[ 1][25] = settr(880,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(880,2,19,0,0,"ATOMIC", 0, 2, 0);
	trans[1][19]	= settr(874,4,29,20,20,"printf('\\n\\n')", 0, 2, 0); /* m: 20 -> 0,29 */
	reached1[20] = 1;
	trans[1][20]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][22]	= settr(0,0,0,0,0,"printf('<type>Registration Request</type>\\n')",0,0,0);
	trans[1][23]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][24]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][29] = settr(884,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(884,0,26,0,0,"sub-sequence", 0, 2, 0);
	trans[1][26]	= settr(881,0,27,21,21,"RegReply_bo.oblig = 1", 1, 2, 0);
	trans[1][27]	= settr(882,0,28,22,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][28]	= settr(883,0,33,23,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][33] = settr(888,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(888,0,30,0,0,"sub-sequence", 0, 2, 0);
	trans[1][30]	= settr(885,0,31,24,24,"RegReq_bo.right = 0", 1, 2, 0);
	trans[1][31]	= settr(886,0,32,25,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))", 1, 2, 0);
	trans[1][32]	= settr(887,0,35,26,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][35] = settr(890,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(890,0,34,0,0,"sub-sequence", 0, 2, 0);
	trans[1][34]	= settr(889,0,741,27,27,"CRM2LEG!9,5", 1, 4, 0);
	trans[1][68]	= settr(923,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][37]	= settr(892,0,63,28,0,"((((RegReq_bo.right==1)&&((RegReq_bo.role_pl==STUDENT)==1))&&((RegReq_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][63] = settr(918,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(918,0,44,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][44] = settr(899,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(899,2,38,0,0,"ATOMIC", 0, 2, 0);
	trans[1][38]	= settr(893,0,49,29,29,"printf('\\n\\n')", 0, 2, 0); /* m: 39 -> 0,49 */
	reached1[39] = 1;
	trans[1][39]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][40]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][41]	= settr(0,0,0,0,0,"printf('<type>RegReq</type>\\n')",0,0,0);
	trans[1][42]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][43]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][45]	= settr(0,0,0,0,0,"printf('RegReq-TechnicalFailure')",0,0,0);
	T = trans[ 1][49] = settr(904,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(904,0,46,0,0,"sub-sequence", 0, 2, 0);
	trans[1][46]	= settr(901,0,47,30,30,"RegReply_bo.oblig = 0", 1, 2, 0);
	trans[1][47]	= settr(902,0,48,31,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][48]	= settr(903,0,53,32,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][53] = settr(908,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(908,0,50,0,0,"sub-sequence", 0, 2, 0);
	trans[1][50]	= settr(905,0,51,33,33,"RegReq_bo.right = 1", 1, 2, 0);
	trans[1][51]	= settr(906,0,52,34,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.oblig==1))))", 1, 2, 0);
	trans[1][52]	= settr(907,0,60,35,0,"assert(!(((RegReq_bo.right==1)&&(RegReq_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][60] = settr(915,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(915,2,54,0,0,"ATOMIC", 0, 2, 0);
	trans[1][54]	= settr(909,4,62,36,36,"printf('\\n\\n')", 0, 2, 0); /* m: 55 -> 0,62 */
	reached1[55] = 1;
	trans[1][55]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][56]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][57]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][58]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][59]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][62] = settr(917,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(917,0,61,0,0,"sub-sequence", 0, 2, 0);
	trans[1][61]	= settr(916,0,741,37,37,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][64]	= settr(919,0,66,2,0,"else", 0, 2, 0);
	T = trans[ 1][66] = settr(921,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(921,0,65,0,0,"sub-sequence", 0, 2, 0);
	trans[1][65]	= settr(920,0,741,38,38,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][82] = settr(937,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(937,0,80,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][80] = settr(935,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(935,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(935,0,72,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(935,0,74,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(935,0,76,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(935,0,78,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(925,0,71,39,0,"(LEG2CRM?[19,S])", 1, 2, 0);
	trans[1][71]	= settr(926,0,152,40,40,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][81]	= settr(936,0,152,1,0,".(goto)", 0, 2, 0);
	trans[1][72]	= settr(927,0,73,41,0,"(LEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][73]	= settr(928,0,152,42,42,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][74]	= settr(929,0,75,43,0,"(LEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][75]	= settr(930,0,152,44,44,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][76]	= settr(931,0,77,45,0,"(LEG2CRM?[19,LF])", 1, 2, 0);
	trans[1][77]	= settr(932,0,152,46,46,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][78]	= settr(933,0,79,47,0,"(LEG2CRM?[19,P])", 1, 2, 0);
	trans[1][79]	= settr(934,0,152,48,48,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][152] = settr(1007,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1007,0,83,0,0,"sub-sequence", 0, 2, 0);
	trans[1][83]	= settr(938,0,150,49,0,"printf('Course list reply')", 0, 2, 0);
	T = trans[1][150] = settr(1005,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1005,0,84,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1005,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1005,0,147,0,0,"IF", 0, 2, 0);
	trans[1][84]	= settr(939,0,111,50,0,"((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][111] = settr(966,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(966,0,91,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][91] = settr(946,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(946,2,85,0,0,"ATOMIC", 0, 2, 0);
	trans[1][85]	= settr(940,4,92,51,51,"printf('\\n\\n')", 0, 2, 0); /* m: 86 -> 0,92 */
	reached1[86] = 1;
	trans[1][86]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][87]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][88]	= settr(0,0,0,0,0,"printf('<type>RegReply</type>\\n')",0,0,0);
	trans[1][89]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][90]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][92]	= settr(947,0,96,52,52,"LMSexTrace = (LMSexTrace|(1<<RegReply_bo.id))", 1, 2, 0);
	T = trans[ 1][96] = settr(951,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(951,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[1][93]	= settr(948,0,94,53,53,"RegReply_bo.oblig = 0", 1, 2, 0);
	trans[1][94]	= settr(949,0,95,54,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][95]	= settr(950,0,100,55,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][100] = settr(955,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(955,0,97,0,0,"sub-sequence", 0, 2, 0);
	trans[1][97]	= settr(952,0,98,56,56,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][98]	= settr(953,0,99,57,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][99]	= settr(954,0,104,58,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][104] = settr(959,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(959,0,101,0,0,"sub-sequence", 0, 2, 0);
	trans[1][101]	= settr(956,0,102,59,59,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][102]	= settr(957,0,103,60,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][103]	= settr(958,0,108,61,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][108] = settr(963,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(963,0,105,0,0,"sub-sequence", 0, 2, 0);
	trans[1][105]	= settr(960,0,106,62,62,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][106]	= settr(961,0,107,63,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][107]	= settr(962,0,110,64,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][110] = settr(965,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(965,0,109,0,0,"sub-sequence", 0, 2, 0);
	trans[1][109]	= settr(964,0,741,65,65,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][151]	= settr(1006,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][112]	= settr(967,0,146,66,0,"((((RegReply_bo.oblig==1)&&((RegReply_bo.role_pl==LMS)==1))&&((RegReply_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][146] = settr(1001,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1001,0,119,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][119] = settr(974,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(974,2,113,0,0,"ATOMIC", 0, 2, 0);
	trans[1][113]	= settr(968,0,124,67,67,"printf('\\n\\n')", 0, 2, 0); /* m: 114 -> 0,124 */
	reached1[114] = 1;
	trans[1][114]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][115]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][116]	= settr(0,0,0,0,0,"printf('<type>RegReply</type>\\n')",0,0,0);
	trans[1][117]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][118]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][120]	= settr(0,0,0,0,0,"printf('RegReply-TechnicalFailure')",0,0,0);
	T = trans[ 1][124] = settr(979,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(979,0,121,0,0,"sub-sequence", 0, 2, 0);
	trans[1][121]	= settr(976,0,122,68,68,"RegReply_bo.oblig = 1", 1, 2, 0);
	trans[1][122]	= settr(977,0,123,69,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.prohib==1))))", 1, 2, 0);
	trans[1][123]	= settr(978,0,128,70,0,"assert(!(((RegReply_bo.oblig==1)&&(RegReply_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][128] = settr(983,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(983,0,125,0,0,"sub-sequence", 0, 2, 0);
	trans[1][125]	= settr(980,0,126,71,71,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][126]	= settr(981,0,127,72,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][127]	= settr(982,0,132,73,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][132] = settr(987,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(987,0,129,0,0,"sub-sequence", 0, 2, 0);
	trans[1][129]	= settr(984,0,130,74,74,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][130]	= settr(985,0,131,75,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][131]	= settr(986,0,136,76,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][136] = settr(991,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(991,0,133,0,0,"sub-sequence", 0, 2, 0);
	trans[1][133]	= settr(988,0,134,77,77,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][134]	= settr(989,0,135,78,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][135]	= settr(990,0,143,79,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][143] = settr(998,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(998,2,137,0,0,"ATOMIC", 0, 2, 0);
	trans[1][137]	= settr(992,4,145,80,80,"printf('\\n\\n')", 0, 2, 0); /* m: 138 -> 0,145 */
	reached1[138] = 1;
	trans[1][138]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][139]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][140]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][141]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][142]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][145] = settr(1000,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1000,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[1][144]	= settr(999,0,741,81,81,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][147]	= settr(1002,0,149,2,0,"else", 0, 2, 0);
	T = trans[ 1][149] = settr(1004,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1004,0,148,0,0,"sub-sequence", 0, 2, 0);
	trans[1][148]	= settr(1003,0,741,82,82,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][165] = settr(1020,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1020,0,163,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][163] = settr(1018,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1018,0,153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1018,0,155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1018,0,157,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1018,0,159,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1018,0,161,0,0,"IF", 0, 2, 0);
	trans[1][153]	= settr(1008,0,154,83,0,"(LEG2CRM?[20,S])", 1, 2, 0);
	trans[1][154]	= settr(1009,0,242,84,84,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][164]	= settr(1019,0,242,1,0,".(goto)", 0, 2, 0);
	trans[1][155]	= settr(1010,0,156,85,0,"(LEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][156]	= settr(1011,0,242,86,86,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][157]	= settr(1012,0,158,87,0,"(LEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][158]	= settr(1013,0,242,88,88,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][159]	= settr(1014,0,160,89,0,"(LEG2CRM?[20,LF])", 1, 2, 0);
	trans[1][160]	= settr(1015,0,242,90,90,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][161]	= settr(1016,0,162,91,0,"(LEG2CRM?[20,P])", 1, 2, 0);
	trans[1][162]	= settr(1017,0,242,92,92,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][242] = settr(1097,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1097,0,166,0,0,"sub-sequence", 0, 2, 0);
	trans[1][166]	= settr(1021,0,240,93,0,"printf('C1')", 0, 2, 0);
	T = trans[1][240] = settr(1095,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1095,0,167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1095,0,201,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1095,0,232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1095,0,237,0,0,"IF", 0, 2, 0);
	trans[1][167]	= settr(1022,0,200,94,0,"((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][200] = settr(1055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1055,0,174,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][174] = settr(1029,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1029,2,168,0,0,"ATOMIC", 0, 2, 0);
	trans[1][168]	= settr(1023,4,175,95,95,"printf('\\n\\n')", 0, 2, 0); /* m: 169 -> 0,175 */
	reached1[169] = 1;
	trans[1][169]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][170]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][171]	= settr(0,0,0,0,0,"printf('<type>C1</type>\\n')",0,0,0);
	trans[1][172]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][173]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][175]	= settr(1030,0,179,96,96,"STUDENTexTrace = (STUDENTexTrace|(1<<C1_bo.id))", 1, 2, 0);
	T = trans[ 1][179] = settr(1034,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1034,0,176,0,0,"sub-sequence", 0, 2, 0);
	trans[1][176]	= settr(1031,0,177,97,97,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][177]	= settr(1032,0,178,98,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][178]	= settr(1033,0,183,99,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][183] = settr(1038,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1038,0,180,0,0,"sub-sequence", 0, 2, 0);
	trans[1][180]	= settr(1035,0,181,100,100,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][181]	= settr(1036,0,182,101,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][182]	= settr(1037,0,187,102,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][187] = settr(1042,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1042,0,184,0,0,"sub-sequence", 0, 2, 0);
	trans[1][184]	= settr(1039,0,185,103,103,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][185]	= settr(1040,0,186,104,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][186]	= settr(1041,0,191,105,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][191] = settr(1046,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1046,0,188,0,0,"sub-sequence", 0, 2, 0);
	trans[1][188]	= settr(1043,0,189,106,106,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][189]	= settr(1044,0,190,107,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][190]	= settr(1045,0,195,108,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][195] = settr(1050,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1050,0,192,0,0,"sub-sequence", 0, 2, 0);
	trans[1][192]	= settr(1047,0,193,109,109,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][193]	= settr(1048,0,194,110,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][194]	= settr(1049,0,196,111,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][196]	= settr(1051,0,197,112,112,"choose1 = 1", 1, 2, 0);
	trans[1][197]	= settr(1052,0,199,113,0,"printf('C1 is chosen')", 0, 2, 0);
	T = trans[ 1][199] = settr(1054,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1054,0,198,0,0,"sub-sequence", 0, 2, 0);
	trans[1][198]	= settr(1053,0,741,114,114,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][241]	= settr(1096,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][201]	= settr(1056,0,231,115,0,"((((C1_bo.oblig==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][231] = settr(1086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1086,0,208,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][208] = settr(1063,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1063,2,202,0,0,"ATOMIC", 0, 2, 0);
	trans[1][202]	= settr(1057,0,213,116,116,"printf('\\n\\n')", 0, 2, 0); /* m: 203 -> 0,213 */
	reached1[203] = 1;
	trans[1][203]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][204]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][205]	= settr(0,0,0,0,0,"printf('<type>C1</type>\\n')",0,0,0);
	trans[1][206]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][207]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][209]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C1')",0,0,0);
	T = trans[ 1][213] = settr(1068,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1068,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[1][210]	= settr(1065,0,211,117,117,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][211]	= settr(1066,0,212,118,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][212]	= settr(1067,0,217,119,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][217] = settr(1072,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1072,0,214,0,0,"sub-sequence", 0, 2, 0);
	trans[1][214]	= settr(1069,0,215,120,120,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][215]	= settr(1070,0,216,121,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][216]	= settr(1071,0,221,122,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][221] = settr(1076,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1076,0,218,0,0,"sub-sequence", 0, 2, 0);
	trans[1][218]	= settr(1073,0,219,123,123,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][219]	= settr(1074,0,220,124,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][220]	= settr(1075,0,228,125,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][228] = settr(1083,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1083,2,222,0,0,"ATOMIC", 0, 2, 0);
	trans[1][222]	= settr(1077,4,230,126,126,"printf('\\n\\n')", 0, 2, 0); /* m: 223 -> 0,230 */
	reached1[223] = 1;
	trans[1][223]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][224]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][225]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][226]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][227]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][230] = settr(1085,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1085,0,229,0,0,"sub-sequence", 0, 2, 0);
	trans[1][229]	= settr(1084,0,741,127,127,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][232]	= settr(1087,0,236,128,0,"((((C1_bo.prohib==1)&&((C1_bo.role_pl==STUDENT)==1))&&((C1_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][236] = settr(1091,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1091,0,233,0,0,"sub-sequence", 0, 2, 0);
	trans[1][233]	= settr(1088,0,235,129,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][235] = settr(1090,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1090,0,234,0,0,"sub-sequence", 0, 2, 0);
	trans[1][234]	= settr(1089,0,741,130,130,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][237]	= settr(1092,0,239,2,0,"else", 0, 2, 0);
	T = trans[ 1][239] = settr(1094,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1094,0,238,0,0,"sub-sequence", 0, 2, 0);
	trans[1][238]	= settr(1093,0,741,131,131,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][255] = settr(1110,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1110,0,253,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][253] = settr(1108,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1108,0,243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1108,0,245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1108,0,247,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1108,0,249,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1108,0,251,0,0,"IF", 0, 2, 0);
	trans[1][243]	= settr(1098,0,244,132,0,"(LEG2CRM?[21,S])", 1, 2, 0);
	trans[1][244]	= settr(1099,0,332,133,133,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][254]	= settr(1109,0,332,1,0,".(goto)", 0, 2, 0);
	trans[1][245]	= settr(1100,0,246,134,0,"(LEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][246]	= settr(1101,0,332,135,135,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][247]	= settr(1102,0,248,136,0,"(LEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][248]	= settr(1103,0,332,137,137,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][249]	= settr(1104,0,250,138,0,"(LEG2CRM?[21,LF])", 1, 2, 0);
	trans[1][250]	= settr(1105,0,332,139,139,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][251]	= settr(1106,0,252,140,0,"(LEG2CRM?[21,P])", 1, 2, 0);
	trans[1][252]	= settr(1107,0,332,141,141,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][332] = settr(1187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1187,0,256,0,0,"sub-sequence", 0, 2, 0);
	trans[1][256]	= settr(1111,0,330,142,0,"printf('C2')", 0, 2, 0);
	T = trans[1][330] = settr(1185,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1185,0,257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1185,0,291,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1185,0,322,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1185,0,327,0,0,"IF", 0, 2, 0);
	trans[1][257]	= settr(1112,0,290,143,0,"((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][290] = settr(1145,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1145,0,264,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][264] = settr(1119,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1119,2,258,0,0,"ATOMIC", 0, 2, 0);
	trans[1][258]	= settr(1113,4,265,144,144,"printf('\\n\\n')", 0, 2, 0); /* m: 259 -> 0,265 */
	reached1[259] = 1;
	trans[1][259]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][260]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][261]	= settr(0,0,0,0,0,"printf('<type>C2</type>\\n')",0,0,0);
	trans[1][262]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][263]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][265]	= settr(1120,0,269,145,145,"STUDENTexTrace = (STUDENTexTrace|(1<<C2_bo.id))", 1, 2, 0);
	T = trans[ 1][269] = settr(1124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1124,0,266,0,0,"sub-sequence", 0, 2, 0);
	trans[1][266]	= settr(1121,0,267,146,146,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][267]	= settr(1122,0,268,147,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][268]	= settr(1123,0,273,148,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][273] = settr(1128,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1128,0,270,0,0,"sub-sequence", 0, 2, 0);
	trans[1][270]	= settr(1125,0,271,149,149,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][271]	= settr(1126,0,272,150,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][272]	= settr(1127,0,277,151,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][277] = settr(1132,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1132,0,274,0,0,"sub-sequence", 0, 2, 0);
	trans[1][274]	= settr(1129,0,275,152,152,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][275]	= settr(1130,0,276,153,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][276]	= settr(1131,0,281,154,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][281] = settr(1136,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1136,0,278,0,0,"sub-sequence", 0, 2, 0);
	trans[1][278]	= settr(1133,0,279,155,155,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][279]	= settr(1134,0,280,156,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][280]	= settr(1135,0,285,157,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][285] = settr(1140,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1140,0,282,0,0,"sub-sequence", 0, 2, 0);
	trans[1][282]	= settr(1137,0,283,158,158,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][283]	= settr(1138,0,284,159,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][284]	= settr(1139,0,286,160,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][286]	= settr(1141,0,287,161,161,"choose2 = 1", 1, 2, 0);
	trans[1][287]	= settr(1142,0,289,162,0,"printf('C2 is chosen')", 0, 2, 0);
	T = trans[ 1][289] = settr(1144,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1144,0,288,0,0,"sub-sequence", 0, 2, 0);
	trans[1][288]	= settr(1143,0,741,163,163,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][331]	= settr(1186,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][291]	= settr(1146,0,321,164,0,"((((C2_bo.oblig==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][321] = settr(1176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1176,0,298,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][298] = settr(1153,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1153,2,292,0,0,"ATOMIC", 0, 2, 0);
	trans[1][292]	= settr(1147,0,303,165,165,"printf('\\n\\n')", 0, 2, 0); /* m: 293 -> 0,303 */
	reached1[293] = 1;
	trans[1][293]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][294]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][295]	= settr(0,0,0,0,0,"printf('<type>C2</type>\\n')",0,0,0);
	trans[1][296]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][297]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][299]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C2')",0,0,0);
	T = trans[ 1][303] = settr(1158,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1158,0,300,0,0,"sub-sequence", 0, 2, 0);
	trans[1][300]	= settr(1155,0,301,166,166,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][301]	= settr(1156,0,302,167,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][302]	= settr(1157,0,307,168,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][307] = settr(1162,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1162,0,304,0,0,"sub-sequence", 0, 2, 0);
	trans[1][304]	= settr(1159,0,305,169,169,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][305]	= settr(1160,0,306,170,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][306]	= settr(1161,0,311,171,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][311] = settr(1166,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1166,0,308,0,0,"sub-sequence", 0, 2, 0);
	trans[1][308]	= settr(1163,0,309,172,172,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][309]	= settr(1164,0,310,173,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][310]	= settr(1165,0,318,174,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][318] = settr(1173,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1173,2,312,0,0,"ATOMIC", 0, 2, 0);
	trans[1][312]	= settr(1167,4,320,175,175,"printf('\\n\\n')", 0, 2, 0); /* m: 313 -> 0,320 */
	reached1[313] = 1;
	trans[1][313]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][314]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][315]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][316]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][317]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][320] = settr(1175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1175,0,319,0,0,"sub-sequence", 0, 2, 0);
	trans[1][319]	= settr(1174,0,741,176,176,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][322]	= settr(1177,0,326,177,0,"((((C2_bo.prohib==1)&&((C2_bo.role_pl==STUDENT)==1))&&((C2_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][326] = settr(1181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1181,0,323,0,0,"sub-sequence", 0, 2, 0);
	trans[1][323]	= settr(1178,0,325,178,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][325] = settr(1180,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1180,0,324,0,0,"sub-sequence", 0, 2, 0);
	trans[1][324]	= settr(1179,0,741,179,179,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][327]	= settr(1182,0,329,2,0,"else", 0, 2, 0);
	T = trans[ 1][329] = settr(1184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1184,0,328,0,0,"sub-sequence", 0, 2, 0);
	trans[1][328]	= settr(1183,0,741,180,180,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][345] = settr(1200,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1200,0,343,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][343] = settr(1198,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1198,0,333,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1198,0,335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1198,0,337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1198,0,339,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1198,0,341,0,0,"IF", 0, 2, 0);
	trans[1][333]	= settr(1188,0,334,181,0,"(LEG2CRM?[22,S])", 1, 2, 0);
	trans[1][334]	= settr(1189,0,422,182,182,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][344]	= settr(1199,0,422,1,0,".(goto)", 0, 2, 0);
	trans[1][335]	= settr(1190,0,336,183,0,"(LEG2CRM?[22,TO])", 1, 2, 0);
	trans[1][336]	= settr(1191,0,422,184,184,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][337]	= settr(1192,0,338,185,0,"(LEG2CRM?[22,TF])", 1, 2, 0);
	trans[1][338]	= settr(1193,0,422,186,186,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][339]	= settr(1194,0,340,187,0,"(LEG2CRM?[22,LF])", 1, 2, 0);
	trans[1][340]	= settr(1195,0,422,188,188,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][341]	= settr(1196,0,342,189,0,"(LEG2CRM?[22,P])", 1, 2, 0);
	trans[1][342]	= settr(1197,0,422,190,190,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][422] = settr(1277,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1277,0,346,0,0,"sub-sequence", 0, 2, 0);
	trans[1][346]	= settr(1201,0,420,191,0,"printf('C3')", 0, 2, 0);
	T = trans[1][420] = settr(1275,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1275,0,347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1275,0,381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1275,0,412,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1275,0,417,0,0,"IF", 0, 2, 0);
	trans[1][347]	= settr(1202,0,380,192,0,"((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][380] = settr(1235,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1235,0,354,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][354] = settr(1209,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1209,2,348,0,0,"ATOMIC", 0, 2, 0);
	trans[1][348]	= settr(1203,4,355,193,193,"printf('\\n\\n')", 0, 2, 0); /* m: 349 -> 0,355 */
	reached1[349] = 1;
	trans[1][349]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][350]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][351]	= settr(0,0,0,0,0,"printf('<type>C3</type>\\n')",0,0,0);
	trans[1][352]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][353]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][355]	= settr(1210,0,359,194,194,"STUDENTexTrace = (STUDENTexTrace|(1<<C3_bo.id))", 1, 2, 0);
	T = trans[ 1][359] = settr(1214,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1214,0,356,0,0,"sub-sequence", 0, 2, 0);
	trans[1][356]	= settr(1211,0,357,195,195,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][357]	= settr(1212,0,358,196,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][358]	= settr(1213,0,363,197,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][363] = settr(1218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1218,0,360,0,0,"sub-sequence", 0, 2, 0);
	trans[1][360]	= settr(1215,0,361,198,198,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][361]	= settr(1216,0,362,199,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][362]	= settr(1217,0,367,200,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][367] = settr(1222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1222,0,364,0,0,"sub-sequence", 0, 2, 0);
	trans[1][364]	= settr(1219,0,365,201,201,"C1_bo.oblig = 0", 1, 2, 0);
	trans[1][365]	= settr(1220,0,366,202,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][366]	= settr(1221,0,371,203,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][371] = settr(1226,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1226,0,368,0,0,"sub-sequence", 0, 2, 0);
	trans[1][368]	= settr(1223,0,369,204,204,"C2_bo.oblig = 0", 1, 2, 0);
	trans[1][369]	= settr(1224,0,370,205,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][370]	= settr(1225,0,375,206,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][375] = settr(1230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1230,0,372,0,0,"sub-sequence", 0, 2, 0);
	trans[1][372]	= settr(1227,0,373,207,207,"C3_bo.oblig = 0", 1, 2, 0);
	trans[1][373]	= settr(1228,0,374,208,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][374]	= settr(1229,0,376,209,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][376]	= settr(1231,0,377,210,210,"choose3 = 1", 1, 2, 0);
	trans[1][377]	= settr(1232,0,379,211,0,"printf('C3 is chosen')", 0, 2, 0);
	T = trans[ 1][379] = settr(1234,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1234,0,378,0,0,"sub-sequence", 0, 2, 0);
	trans[1][378]	= settr(1233,0,741,212,212,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][421]	= settr(1276,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][381]	= settr(1236,0,411,213,0,"((((C3_bo.oblig==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][411] = settr(1266,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1266,0,388,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][388] = settr(1243,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1243,2,382,0,0,"ATOMIC", 0, 2, 0);
	trans[1][382]	= settr(1237,0,393,214,214,"printf('\\n\\n')", 0, 2, 0); /* m: 383 -> 0,393 */
	reached1[383] = 1;
	trans[1][383]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][384]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][385]	= settr(0,0,0,0,0,"printf('<type>C3</type>\\n')",0,0,0);
	trans[1][386]	= settr(0,0,0,0,0,"printf('<status>techfail</status>\\n')",0,0,0);
	trans[1][387]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][389]	= settr(0,0,0,0,0,"printf('Technical fail on choosing C3')",0,0,0);
	T = trans[ 1][393] = settr(1248,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1248,0,390,0,0,"sub-sequence", 0, 2, 0);
	trans[1][390]	= settr(1245,0,391,215,215,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][391]	= settr(1246,0,392,216,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][392]	= settr(1247,0,397,217,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][397] = settr(1252,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1252,0,394,0,0,"sub-sequence", 0, 2, 0);
	trans[1][394]	= settr(1249,0,395,218,218,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][395]	= settr(1250,0,396,219,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][396]	= settr(1251,0,401,220,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][401] = settr(1256,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1256,0,398,0,0,"sub-sequence", 0, 2, 0);
	trans[1][398]	= settr(1253,0,399,221,221,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][399]	= settr(1254,0,400,222,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][400]	= settr(1255,0,408,223,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][408] = settr(1263,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1263,2,402,0,0,"ATOMIC", 0, 2, 0);
	trans[1][402]	= settr(1257,4,410,224,224,"printf('\\n\\n')", 0, 2, 0); /* m: 403 -> 0,410 */
	reached1[403] = 1;
	trans[1][403]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][404]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][405]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][406]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][407]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][410] = settr(1265,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1265,0,409,0,0,"sub-sequence", 0, 2, 0);
	trans[1][409]	= settr(1264,0,741,225,225,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][412]	= settr(1267,0,416,226,0,"((((C3_bo.prohib==1)&&((C3_bo.role_pl==STUDENT)==1))&&((C3_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][416] = settr(1271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1271,0,413,0,0,"sub-sequence", 0, 2, 0);
	trans[1][413]	= settr(1268,0,415,227,0,"printf('Prohibited choice')", 0, 2, 0);
	T = trans[ 1][415] = settr(1270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1270,0,414,0,0,"sub-sequence", 0, 2, 0);
	trans[1][414]	= settr(1269,0,741,228,228,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][417]	= settr(1272,0,419,2,0,"else", 0, 2, 0);
	T = trans[ 1][419] = settr(1274,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1274,0,418,0,0,"sub-sequence", 0, 2, 0);
	trans[1][418]	= settr(1273,0,741,229,229,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][435] = settr(1290,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1290,0,433,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][433] = settr(1288,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1288,0,423,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1288,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1288,0,427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1288,0,429,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1288,0,431,0,0,"IF", 0, 2, 0);
	trans[1][423]	= settr(1278,0,424,230,0,"(LEG2CRM?[23,S])", 1, 2, 0);
	trans[1][424]	= settr(1279,0,492,231,231,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][434]	= settr(1289,0,492,1,0,".(goto)", 0, 2, 0);
	trans[1][425]	= settr(1280,0,426,232,0,"(LEG2CRM?[23,TO])", 1, 2, 0);
	trans[1][426]	= settr(1281,0,492,233,233,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][427]	= settr(1282,0,428,234,0,"(LEG2CRM?[23,TF])", 1, 2, 0);
	trans[1][428]	= settr(1283,0,492,235,235,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][429]	= settr(1284,0,430,236,0,"(LEG2CRM?[23,LF])", 1, 2, 0);
	trans[1][430]	= settr(1285,0,492,237,237,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][431]	= settr(1286,0,432,238,0,"(LEG2CRM?[23,P])", 1, 2, 0);
	trans[1][432]	= settr(1287,0,492,239,239,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][492] = settr(1347,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1347,0,436,0,0,"sub-sequence", 0, 2, 0);
	trans[1][436]	= settr(1291,0,490,240,0,"printf('Accept the choice ')", 0, 2, 0);
	T = trans[1][490] = settr(1345,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,437,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,460,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1345,0,487,0,0,"IF", 0, 2, 0);
	trans[1][437]	= settr(1292,0,459,241,0,"((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][459] = settr(1314,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1314,0,444,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][444] = settr(1299,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1299,2,438,0,0,"ATOMIC", 0, 2, 0);
	trans[1][438]	= settr(1293,4,445,242,242,"printf('\\n\\n')", 0, 2, 0); /* m: 439 -> 0,445 */
	reached1[439] = 1;
	trans[1][439]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][440]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][441]	= settr(0,0,0,0,0,"printf('<type>ChooseAccept</type>\\n')",0,0,0);
	trans[1][442]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][443]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][445]	= settr(1300,0,449,243,243,"LMSexTrace = (LMSexTrace|(1<<ChooseAccept_bo.id))", 1, 2, 0);
	T = trans[ 1][449] = settr(1304,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1304,0,446,0,0,"sub-sequence", 0, 2, 0);
	trans[1][446]	= settr(1301,0,447,244,244,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][447]	= settr(1302,0,448,245,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][448]	= settr(1303,0,456,246,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][456] = settr(1311,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1311,2,450,0,0,"ATOMIC", 0, 2, 0);
	trans[1][450]	= settr(1305,4,458,247,247,"printf('\\n\\n')", 0, 2, 0); /* m: 451 -> 0,458 */
	reached1[451] = 1;
	trans[1][451]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][452]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][453]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][454]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][455]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][458] = settr(1313,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1313,0,457,0,0,"sub-sequence", 0, 2, 0);
	trans[1][457]	= settr(1312,0,741,248,248,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][491]	= settr(1346,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][460]	= settr(1315,0,486,249,0,"((((ChooseAccept_bo.oblig==1)&&((ChooseAccept_bo.role_pl==LMS)==1))&&((ChooseAccept_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][486] = settr(1341,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1341,0,467,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][467] = settr(1322,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1322,2,461,0,0,"ATOMIC", 0, 2, 0);
	trans[1][461]	= settr(1316,0,472,250,250,"printf('\\n\\n')", 0, 2, 0); /* m: 462 -> 0,472 */
	reached1[462] = 1;
	trans[1][462]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][463]	= settr(0,0,0,0,0,"printf('<responder>LSTUDENT</responder>\\n')",0,0,0);
	trans[1][464]	= settr(0,0,0,0,0,"printf('<type>ChooseAccept</type>\\n')",0,0,0);
	trans[1][465]	= settr(0,0,0,0,0,"printf('<status>technical fail</status>\\n')",0,0,0);
	trans[1][466]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][468]	= settr(0,0,0,0,0,"printf('Technical fail on validating choice of course')",0,0,0);
	T = trans[ 1][472] = settr(1327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1327,0,469,0,0,"sub-sequence", 0, 2, 0);
	trans[1][469]	= settr(1324,0,470,251,251,"ChooseAccept_bo.oblig = 1", 1, 2, 0);
	trans[1][470]	= settr(1325,0,471,252,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][471]	= settr(1326,0,476,253,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][476] = settr(1331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1331,0,473,0,0,"sub-sequence", 0, 2, 0);
	trans[1][473]	= settr(1328,0,474,254,254,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][474]	= settr(1329,0,475,255,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][475]	= settr(1330,0,483,256,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][483] = settr(1338,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1338,2,477,0,0,"ATOMIC", 0, 2, 0);
	trans[1][477]	= settr(1332,4,485,257,257,"printf('\\n\\n')", 0, 2, 0); /* m: 478 -> 0,485 */
	reached1[478] = 1;
	trans[1][478]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][479]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][480]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][481]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][482]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][485] = settr(1340,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1340,0,484,0,0,"sub-sequence", 0, 2, 0);
	trans[1][484]	= settr(1339,0,741,258,258,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][487]	= settr(1342,0,489,2,0,"else", 0, 2, 0);
	T = trans[ 1][489] = settr(1344,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1344,0,488,0,0,"sub-sequence", 0, 2, 0);
	trans[1][488]	= settr(1343,0,741,259,259,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][505] = settr(1360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1360,0,503,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][503] = settr(1358,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,497,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1358,0,499,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1358,0,501,0,0,"IF", 0, 2, 0);
	trans[1][493]	= settr(1348,0,494,260,0,"(LEG2CRM?[24,S])", 1, 2, 0);
	trans[1][494]	= settr(1349,0,740,261,261,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][504]	= settr(1359,0,740,1,0,".(goto)", 0, 2, 0);
	trans[1][495]	= settr(1350,0,496,262,0,"(LEG2CRM?[24,TO])", 1, 2, 0);
	trans[1][496]	= settr(1351,0,740,263,263,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][497]	= settr(1352,0,498,264,0,"(LEG2CRM?[24,TF])", 1, 2, 0);
	trans[1][498]	= settr(1353,0,740,265,265,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][499]	= settr(1354,0,500,266,0,"(LEG2CRM?[24,LF])", 1, 2, 0);
	trans[1][500]	= settr(1355,0,740,267,267,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][501]	= settr(1356,0,502,268,0,"(LEG2CRM?[24,P])", 1, 2, 0);
	trans[1][502]	= settr(1357,0,740,269,269,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][740] = settr(1595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1595,0,506,0,0,"sub-sequence", 0, 2, 0);
	trans[1][506]	= settr(1361,0,738,270,0,"printf('Reject the choice ')", 0, 2, 0);
	T = trans[1][738] = settr(1593,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1593,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1593,0,708,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1593,0,735,0,0,"IF", 0, 2, 0);
	trans[1][507]	= settr(1362,0,707,271,0,"((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][707] = settr(1562,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1562,0,514,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][514] = settr(1369,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1369,2,508,0,0,"ATOMIC", 0, 2, 0);
	trans[1][508]	= settr(1363,4,515,272,272,"printf('\\n\\n')", 0, 2, 0); /* m: 509 -> 0,515 */
	reached1[509] = 1;
	trans[1][509]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][510]	= settr(0,0,0,0,0,"printf('<responder>STUDENT</responder>\\n')",0,0,0);
	trans[1][511]	= settr(0,0,0,0,0,"printf('<type>ChooseReject</type>\\n')",0,0,0);
	trans[1][512]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][513]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][515]	= settr(1370,0,519,273,273,"LMSexTrace = (LMSexTrace|(1<<ChooseReject_bo.id))", 1, 2, 0);
	T = trans[ 1][519] = settr(1374,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1374,0,516,0,0,"sub-sequence", 0, 2, 0);
	trans[1][516]	= settr(1371,0,517,274,274,"ChooseReject_bo.oblig = 0", 1, 2, 0);
	trans[1][517]	= settr(1372,0,518,275,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][518]	= settr(1373,0,523,276,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][523] = settr(1378,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1378,0,520,0,0,"sub-sequence", 0, 2, 0);
	trans[1][520]	= settr(1375,0,521,277,277,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][521]	= settr(1376,0,522,278,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][522]	= settr(1377,0,689,279,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[1][689] = settr(1544,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1544,0,524,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1544,0,579,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1544,0,634,0,0,"IF", 0, 2, 0);
	trans[1][524]	= settr(1379,0,528,280,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][528] = settr(1383,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1383,0,525,0,0,"sub-sequence", 0, 2, 0);
	trans[1][525]	= settr(1380,0,526,281,281,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][526]	= settr(1381,0,527,282,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][527]	= settr(1382,0,552,283,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][552] = settr(1407,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1407,0,529,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1407,0,547,0,0,"IF", 0, 2, 0);
	trans[1][529]	= settr(1384,0,533,284,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][533] = settr(1388,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1388,0,530,0,0,"sub-sequence", 0, 2, 0);
	trans[1][530]	= settr(1385,0,531,285,285,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][531]	= settr(1386,0,532,286,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][532]	= settr(1387,0,545,287,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][545] = settr(1400,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,534,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1400,0,540,0,0,"IF", 0, 2, 0);
	trans[1][534]	= settr(1389,0,538,288,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][538] = settr(1393,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1393,0,535,0,0,"sub-sequence", 0, 2, 0);
	trans[1][535]	= settr(1390,0,536,289,289,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][536]	= settr(1391,0,537,290,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][537]	= settr(1392,0,539,291,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	trans[1][539]	= settr(1394,0,577,292,292,"all = 1", 1, 2, 0);
	trans[1][546]	= settr(1401,0,577,1,0,".(goto)", 0, 2, 0);
	trans[1][540]	= settr(1395,0,544,2,0,"else", 0, 2, 0);
	T = trans[ 1][544] = settr(1399,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1399,0,541,0,0,"sub-sequence", 0, 2, 0);
	trans[1][541]	= settr(1396,0,542,293,293,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][542]	= settr(1397,0,543,294,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][543]	= settr(1398,0,577,295,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][553]	= settr(1408,0,577,1,0,".(goto)", 0, 2, 0);
	trans[1][547]	= settr(1402,0,551,2,0,"else", 0, 2, 0);
	T = trans[ 1][551] = settr(1406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1406,0,548,0,0,"sub-sequence", 0, 2, 0);
	trans[1][548]	= settr(1403,0,549,296,296,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][549]	= settr(1404,0,550,297,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][550]	= settr(1405,0,577,298,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[1][577] = settr(1432,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1432,0,554,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1432,0,572,0,0,"IF", 0, 2, 0);
	trans[1][554]	= settr(1409,0,558,299,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][558] = settr(1413,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1413,0,555,0,0,"sub-sequence", 0, 2, 0);
	trans[1][555]	= settr(1410,0,556,300,300,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][556]	= settr(1411,0,557,301,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][557]	= settr(1412,0,570,302,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][570] = settr(1425,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1425,0,559,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1425,0,565,0,0,"IF", 0, 2, 0);
	trans[1][559]	= settr(1414,0,563,303,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][563] = settr(1418,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1418,0,560,0,0,"sub-sequence", 0, 2, 0);
	trans[1][560]	= settr(1415,0,561,304,304,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][561]	= settr(1416,0,562,305,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][562]	= settr(1417,0,564,306,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	trans[1][564]	= settr(1419,0,697,307,307,"all = 1", 1, 2, 0);
	trans[1][571]	= settr(1426,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][565]	= settr(1420,0,569,2,0,"else", 0, 2, 0);
	T = trans[ 1][569] = settr(1424,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1424,0,566,0,0,"sub-sequence", 0, 2, 0);
	trans[1][566]	= settr(1421,0,567,308,308,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][567]	= settr(1422,0,568,309,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][568]	= settr(1423,0,697,310,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][578]	= settr(1433,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][572]	= settr(1427,0,576,2,0,"else", 0, 2, 0);
	T = trans[ 1][576] = settr(1431,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1431,0,573,0,0,"sub-sequence", 0, 2, 0);
	trans[1][573]	= settr(1428,0,574,311,311,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][574]	= settr(1429,0,575,312,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][575]	= settr(1430,0,697,313,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][690]	= settr(1545,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][579]	= settr(1434,0,583,314,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][583] = settr(1438,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1438,0,580,0,0,"sub-sequence", 0, 2, 0);
	trans[1][580]	= settr(1435,0,581,315,315,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][581]	= settr(1436,0,582,316,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][582]	= settr(1437,0,607,317,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][607] = settr(1462,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1462,0,584,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1462,0,602,0,0,"IF", 0, 2, 0);
	trans[1][584]	= settr(1439,0,588,318,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][588] = settr(1443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1443,0,585,0,0,"sub-sequence", 0, 2, 0);
	trans[1][585]	= settr(1440,0,586,319,319,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][586]	= settr(1441,0,587,320,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][587]	= settr(1442,0,600,321,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][600] = settr(1455,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1455,0,589,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1455,0,595,0,0,"IF", 0, 2, 0);
	trans[1][589]	= settr(1444,0,593,322,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][593] = settr(1448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1448,0,590,0,0,"sub-sequence", 0, 2, 0);
	trans[1][590]	= settr(1445,0,591,323,323,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][591]	= settr(1446,0,592,324,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][592]	= settr(1447,0,594,325,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	trans[1][594]	= settr(1449,0,632,326,326,"all = 1", 1, 2, 0);
	trans[1][601]	= settr(1456,0,632,1,0,".(goto)", 0, 2, 0);
	trans[1][595]	= settr(1450,0,599,2,0,"else", 0, 2, 0);
	T = trans[ 1][599] = settr(1454,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1454,0,596,0,0,"sub-sequence", 0, 2, 0);
	trans[1][596]	= settr(1451,0,597,327,327,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][597]	= settr(1452,0,598,328,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][598]	= settr(1453,0,632,329,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][608]	= settr(1463,0,632,1,0,".(goto)", 0, 2, 0);
	trans[1][602]	= settr(1457,0,606,2,0,"else", 0, 2, 0);
	T = trans[ 1][606] = settr(1461,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1461,0,603,0,0,"sub-sequence", 0, 2, 0);
	trans[1][603]	= settr(1458,0,604,330,330,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][604]	= settr(1459,0,605,331,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][605]	= settr(1460,0,632,332,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[1][632] = settr(1487,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1487,0,609,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1487,0,627,0,0,"IF", 0, 2, 0);
	trans[1][609]	= settr(1464,0,613,333,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][613] = settr(1468,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1468,0,610,0,0,"sub-sequence", 0, 2, 0);
	trans[1][610]	= settr(1465,0,611,334,334,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][611]	= settr(1466,0,612,335,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][612]	= settr(1467,0,625,336,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][625] = settr(1480,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1480,0,614,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1480,0,620,0,0,"IF", 0, 2, 0);
	trans[1][614]	= settr(1469,0,618,337,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][618] = settr(1473,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1473,0,615,0,0,"sub-sequence", 0, 2, 0);
	trans[1][615]	= settr(1470,0,616,338,338,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][616]	= settr(1471,0,617,339,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][617]	= settr(1472,0,619,340,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	trans[1][619]	= settr(1474,0,697,341,341,"all = 1", 1, 2, 0);
	trans[1][626]	= settr(1481,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][620]	= settr(1475,0,624,2,0,"else", 0, 2, 0);
	T = trans[ 1][624] = settr(1479,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1479,0,621,0,0,"sub-sequence", 0, 2, 0);
	trans[1][621]	= settr(1476,0,622,342,342,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][622]	= settr(1477,0,623,343,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][623]	= settr(1478,0,697,344,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][633]	= settr(1488,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][627]	= settr(1482,0,631,2,0,"else", 0, 2, 0);
	T = trans[ 1][631] = settr(1486,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1486,0,628,0,0,"sub-sequence", 0, 2, 0);
	trans[1][628]	= settr(1483,0,629,345,345,"C3_bo.oblig = 1", 1, 2, 0);
	trans[1][629]	= settr(1484,0,630,346,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.prohib==1))))", 1, 2, 0);
	trans[1][630]	= settr(1485,0,697,347,0,"assert(!(((C3_bo.oblig==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][634]	= settr(1489,0,638,348,0,"((choose3==1))", 1, 2, 0);
	T = trans[ 1][638] = settr(1493,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1493,0,635,0,0,"sub-sequence", 0, 2, 0);
	trans[1][635]	= settr(1490,0,636,349,349,"C3_bo.prohib = 1", 1, 2, 0);
	trans[1][636]	= settr(1491,0,637,350,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.right==1))))", 1, 2, 0);
	trans[1][637]	= settr(1492,0,662,351,0,"assert(!(((C3_bo.prohib==1)&&(C3_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][662] = settr(1517,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1517,0,639,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1517,0,657,0,0,"IF", 0, 2, 0);
	trans[1][639]	= settr(1494,0,643,352,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][643] = settr(1498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1498,0,640,0,0,"sub-sequence", 0, 2, 0);
	trans[1][640]	= settr(1495,0,641,353,353,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][641]	= settr(1496,0,642,354,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][642]	= settr(1497,0,655,355,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][655] = settr(1510,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1510,0,644,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1510,0,650,0,0,"IF", 0, 2, 0);
	trans[1][644]	= settr(1499,0,648,356,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][648] = settr(1503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1503,0,645,0,0,"sub-sequence", 0, 2, 0);
	trans[1][645]	= settr(1500,0,646,357,357,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][646]	= settr(1501,0,647,358,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][647]	= settr(1502,0,649,359,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	trans[1][649]	= settr(1504,0,687,360,360,"all = 1", 1, 2, 0);
	trans[1][656]	= settr(1511,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][650]	= settr(1505,0,654,2,0,"else", 0, 2, 0);
	T = trans[ 1][654] = settr(1509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1509,0,651,0,0,"sub-sequence", 0, 2, 0);
	trans[1][651]	= settr(1506,0,652,361,361,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][652]	= settr(1507,0,653,362,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][653]	= settr(1508,0,687,363,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][663]	= settr(1518,0,687,1,0,".(goto)", 0, 2, 0);
	trans[1][657]	= settr(1512,0,661,2,0,"else", 0, 2, 0);
	T = trans[ 1][661] = settr(1516,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1516,0,658,0,0,"sub-sequence", 0, 2, 0);
	trans[1][658]	= settr(1513,0,659,364,364,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][659]	= settr(1514,0,660,365,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][660]	= settr(1515,0,687,366,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	T = trans[1][687] = settr(1542,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1542,0,664,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1542,0,682,0,0,"IF", 0, 2, 0);
	trans[1][664]	= settr(1519,0,668,367,0,"((choose1==1))", 1, 2, 0);
	T = trans[ 1][668] = settr(1523,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1523,0,665,0,0,"sub-sequence", 0, 2, 0);
	trans[1][665]	= settr(1520,0,666,368,368,"C1_bo.prohib = 1", 1, 2, 0);
	trans[1][666]	= settr(1521,0,667,369,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.right==1))))", 1, 2, 0);
	trans[1][667]	= settr(1522,0,680,370,0,"assert(!(((C1_bo.prohib==1)&&(C1_bo.oblig==1))))", 1, 2, 0);
	T = trans[1][680] = settr(1535,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1535,0,669,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1535,0,675,0,0,"IF", 0, 2, 0);
	trans[1][669]	= settr(1524,0,673,371,0,"((choose2==1))", 1, 2, 0);
	T = trans[ 1][673] = settr(1528,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1528,0,670,0,0,"sub-sequence", 0, 2, 0);
	trans[1][670]	= settr(1525,0,671,372,372,"C2_bo.prohib = 1", 1, 2, 0);
	trans[1][671]	= settr(1526,0,672,373,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][672]	= settr(1527,0,674,374,0,"assert(!(((C2_bo.prohib==1)&&(C2_bo.oblig==1))))", 1, 2, 0);
	trans[1][674]	= settr(1529,0,697,375,375,"all = 1", 1, 2, 0);
	trans[1][681]	= settr(1536,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][675]	= settr(1530,0,679,2,0,"else", 0, 2, 0);
	T = trans[ 1][679] = settr(1534,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1534,0,676,0,0,"sub-sequence", 0, 2, 0);
	trans[1][676]	= settr(1531,0,677,376,376,"C2_bo.oblig = 1", 1, 2, 0);
	trans[1][677]	= settr(1532,0,678,377,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.prohib==1))))", 1, 2, 0);
	trans[1][678]	= settr(1533,0,697,378,0,"assert(!(((C2_bo.oblig==1)&&(C2_bo.right==1))))", 1, 2, 0);
	trans[1][688]	= settr(1543,0,697,1,0,".(goto)", 0, 2, 0);
	trans[1][682]	= settr(1537,0,686,2,0,"else", 0, 2, 0);
	T = trans[ 1][686] = settr(1541,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1541,0,683,0,0,"sub-sequence", 0, 2, 0);
	trans[1][683]	= settr(1538,0,684,379,379,"C1_bo.oblig = 1", 1, 2, 0);
	trans[1][684]	= settr(1539,0,685,380,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.prohib==1))))", 1, 2, 0);
	trans[1][685]	= settr(1540,0,697,381,0,"assert(!(((C1_bo.oblig==1)&&(C1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][697] = settr(1552,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1552,2,691,0,0,"ATOMIC", 0, 2, 0);
	trans[1][691]	= settr(1546,4,705,382,382,"printf('\\n\\n')", 0, 2, 0); /* m: 692 -> 0,705 */
	reached1[692] = 1;
	trans[1][692]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][693]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][694]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][695]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][696]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][705] = settr(1560,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1560,0,698,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1560,0,702,0,0,"IF", 0, 2, 0);
	trans[1][698]	= settr(1553,0,699,383,0,"((all==1))", 1, 2, 0);
	trans[1][699]	= settr(1554,0,701,384,0,"printf('No course is suitable for you')", 0, 2, 0);
	T = trans[ 1][701] = settr(1556,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1556,0,700,0,0,"sub-sequence", 0, 2, 0);
	trans[1][700]	= settr(1555,0,741,385,385,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][706]	= settr(1561,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][702]	= settr(1557,0,704,2,0,"else", 0, 2, 0);
	T = trans[ 1][704] = settr(1559,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1559,0,703,0,0,"sub-sequence", 0, 2, 0);
	trans[1][703]	= settr(1558,0,741,386,386,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][739]	= settr(1594,0,741,1,0,".(goto)", 0, 2, 0);
	trans[1][708]	= settr(1563,0,734,387,0,"((((ChooseReject_bo.oblig==1)&&((ChooseReject_bo.role_pl==LMS)==1))&&((ChooseReject_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][734] = settr(1589,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1589,0,715,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][715] = settr(1570,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1570,2,709,0,0,"ATOMIC", 0, 2, 0);
	trans[1][709]	= settr(1564,0,720,388,388,"printf('\\n\\n')", 0, 2, 0); /* m: 710 -> 0,720 */
	reached1[710] = 1;
	trans[1][710]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][711]	= settr(0,0,0,0,0,"printf('<responder>LSTUDENT</responder>\\n')",0,0,0);
	trans[1][712]	= settr(0,0,0,0,0,"printf('<type>ChooseReject</type>\\n')",0,0,0);
	trans[1][713]	= settr(0,0,0,0,0,"printf('<status>technical fail</status>\\n')",0,0,0);
	trans[1][714]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][716]	= settr(0,0,0,0,0,"printf('Technical fail on validating choice of course')",0,0,0);
	T = trans[ 1][720] = settr(1575,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1575,0,717,0,0,"sub-sequence", 0, 2, 0);
	trans[1][717]	= settr(1572,0,718,389,389,"ChooseAccept_bo.oblig = 0", 1, 2, 0);
	trans[1][718]	= settr(1573,0,719,390,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.prohib==1))))", 1, 2, 0);
	trans[1][719]	= settr(1574,0,724,391,0,"assert(!(((ChooseAccept_bo.oblig==1)&&(ChooseAccept_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][724] = settr(1579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1579,0,721,0,0,"sub-sequence", 0, 2, 0);
	trans[1][721]	= settr(1576,0,722,392,392,"ChooseReject_bo.oblig = 1", 1, 2, 0);
	trans[1][722]	= settr(1577,0,723,393,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.prohib==1))))", 1, 2, 0);
	trans[1][723]	= settr(1578,0,731,394,0,"assert(!(((ChooseReject_bo.oblig==1)&&(ChooseReject_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][731] = settr(1586,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1586,2,725,0,0,"ATOMIC", 0, 2, 0);
	trans[1][725]	= settr(1580,4,733,395,395,"printf('\\n\\n')", 0, 2, 0); /* m: 726 -> 0,733 */
	reached1[726] = 1;
	trans[1][726]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][727]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][728]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][729]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][730]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][733] = settr(1588,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1588,0,732,0,0,"sub-sequence", 0, 2, 0);
	trans[1][732]	= settr(1587,0,741,396,396,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][735]	= settr(1590,0,737,2,0,"else", 0, 2, 0);
	T = trans[ 1][737] = settr(1592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1592,0,736,0,0,"sub-sequence", 0, 2, 0);
	trans[1][736]	= settr(1591,0,741,397,397,"CRM2LEG!6,5", 1, 4, 0);
	trans[1][743]	= settr(1598,0,744,1,0,"break", 0, 2, 0);
	trans[1][744]	= settr(1599,0,0,398,398,"-end-", 0, 3500, 0);

	/* proctype 0: LEG */

	trans[0] = (Trans **) emalloc(857*sizeof(Trans *));

	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(69,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,399,399,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,400,400,"STUDENTexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,401,401,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,402,402,"LMSexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,403,403,"D_STEP174", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,404,404,"D_STEP174", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,405,405,"D_STEP174", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,51,406,406,"D_STEP174", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(50,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,60,407,407,"D_STEP174", 1, 2, 0);
	T = trans[ 0][60] = settr(59,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(59,0,59,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][59]	= settr(58,32,69,408,408,"D_STEP174", 1, 2, 0);
	T = trans[ 0][69] = settr(68,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(68,0,68,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][68]	= settr(67,32,853,409,409,"D_STEP174", 1, 2, 0);
	trans[0][854]	= settr(853,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[0][853] = settr(852,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,71,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,117,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,163,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,209,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,255,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,301,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,347,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,439,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,485,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,531,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,577,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,623,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,669,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,715,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(852,0,761,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(852,0,807,0,0,"DO", 0, 2, 0);
	trans[0][71]	= settr(70,0,72,410,0,"((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))", 1, 2, 0);
	trans[0][72]	= settr(71,0,74,411,411,"RegReq_bo.status = S", 1, 2, 0);
	T = trans[ 0][74] = settr(73,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(73,0,73,0,0,"sub-sequence", 0, 2, 0);
	trans[0][73]	= settr(72,0,116,412,412,"LEG2CRM!18,17", 1, 3, 0);
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
	trans[0][75]	= settr(74,0,77,413,413,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][77]	= settr(76,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][115]	= settr(114,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(78,0,78,0,0,"sub-sequence", 0, 2, 0);
	trans[0][78]	= settr(77,0,80,414,414,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][80]	= settr(79,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[0][81]	= settr(80,0,83,415,415,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][83]	= settr(82,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,84,0,0,"sub-sequence", 0, 2, 0);
	trans[0][84]	= settr(83,0,86,416,416,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][86]	= settr(85,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][88] = settr(87,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(87,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[0][87]	= settr(86,0,70,417,417,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][89]	= settr(88,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][91] = settr(90,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(90,0,90,0,0,"sub-sequence", 0, 2, 0);
	trans[0][90]	= settr(89,0,70,418,418,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][92]	= settr(91,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][94] = settr(93,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(93,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[0][93]	= settr(92,0,70,419,419,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][95]	= settr(94,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][97] = settr(96,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(96,0,96,0,0,"sub-sequence", 0, 2, 0);
	trans[0][96]	= settr(95,0,70,420,420,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][98]	= settr(97,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][100] = settr(99,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(99,0,99,0,0,"sub-sequence", 0, 2, 0);
	trans[0][99]	= settr(98,0,70,421,421,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][101]	= settr(100,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(102,0,102,0,0,"sub-sequence", 0, 2, 0);
	trans[0][102]	= settr(101,0,70,422,422,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][104]	= settr(103,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(105,0,105,0,0,"sub-sequence", 0, 2, 0);
	trans[0][105]	= settr(104,0,853,423,423,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][107]	= settr(106,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][109] = settr(108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(108,0,108,0,0,"sub-sequence", 0, 2, 0);
	trans[0][108]	= settr(107,0,853,424,424,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][110]	= settr(109,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][112] = settr(111,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(111,0,111,0,0,"sub-sequence", 0, 2, 0);
	trans[0][111]	= settr(110,0,853,425,425,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][113]	= settr(112,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][117]	= settr(116,0,118,426,0,"((((RegReq_bo.right==1)||(RegReq_bo.oblig==1))||(RegReq_bo.prohib==1)))", 1, 2, 0);
	trans[0][118]	= settr(117,0,120,427,427,"RegReq_bo.status = TF", 1, 2, 0);
	T = trans[ 0][120] = settr(119,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(119,0,119,0,0,"sub-sequence", 0, 2, 0);
	trans[0][119]	= settr(118,0,162,428,428,"LEG2CRM!18,15", 1, 3, 0);
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
	trans[0][121]	= settr(120,0,123,429,429,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][123]	= settr(122,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][161]	= settr(160,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(124,0,124,0,0,"sub-sequence", 0, 2, 0);
	trans[0][124]	= settr(123,0,126,430,430,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][126]	= settr(125,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][128] = settr(127,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(127,0,127,0,0,"sub-sequence", 0, 2, 0);
	trans[0][127]	= settr(126,0,129,431,431,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][129]	= settr(128,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(130,0,130,0,0,"sub-sequence", 0, 2, 0);
	trans[0][130]	= settr(129,0,132,432,432,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][132]	= settr(131,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][134] = settr(133,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(133,0,133,0,0,"sub-sequence", 0, 2, 0);
	trans[0][133]	= settr(132,0,70,433,433,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][135]	= settr(134,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][137] = settr(136,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(136,0,136,0,0,"sub-sequence", 0, 2, 0);
	trans[0][136]	= settr(135,0,70,434,434,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][138]	= settr(137,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][140] = settr(139,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(139,0,139,0,0,"sub-sequence", 0, 2, 0);
	trans[0][139]	= settr(138,0,70,435,435,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][141]	= settr(140,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(142,0,142,0,0,"sub-sequence", 0, 2, 0);
	trans[0][142]	= settr(141,0,70,436,436,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][144]	= settr(143,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][146] = settr(145,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(145,0,145,0,0,"sub-sequence", 0, 2, 0);
	trans[0][145]	= settr(144,0,70,437,437,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][147]	= settr(146,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][149] = settr(148,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(148,0,148,0,0,"sub-sequence", 0, 2, 0);
	trans[0][148]	= settr(147,0,70,438,438,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][150]	= settr(149,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][152] = settr(151,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(151,0,151,0,0,"sub-sequence", 0, 2, 0);
	trans[0][151]	= settr(150,0,853,439,439,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][153]	= settr(152,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][155] = settr(154,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(154,0,154,0,0,"sub-sequence", 0, 2, 0);
	trans[0][154]	= settr(153,0,853,440,440,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][156]	= settr(155,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][158] = settr(157,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(157,0,157,0,0,"sub-sequence", 0, 2, 0);
	trans[0][157]	= settr(156,0,853,441,441,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][159]	= settr(158,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][163]	= settr(162,0,164,442,0,"((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))", 1, 2, 0);
	trans[0][164]	= settr(163,0,166,443,443,"RegReply_bo.status = S", 1, 2, 0);
	T = trans[ 0][166] = settr(165,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(165,0,165,0,0,"sub-sequence", 0, 2, 0);
	trans[0][165]	= settr(164,0,208,444,444,"LEG2CRM!19,17", 1, 3, 0);
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
	trans[0][167]	= settr(166,0,169,445,445,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][169]	= settr(168,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][207]	= settr(206,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][171] = settr(170,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(170,0,170,0,0,"sub-sequence", 0, 2, 0);
	trans[0][170]	= settr(169,0,172,446,446,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][172]	= settr(171,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][174] = settr(173,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(173,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[0][173]	= settr(172,0,175,447,447,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][175]	= settr(174,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][177] = settr(176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(176,0,176,0,0,"sub-sequence", 0, 2, 0);
	trans[0][176]	= settr(175,0,178,448,448,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][178]	= settr(177,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][180] = settr(179,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(179,0,179,0,0,"sub-sequence", 0, 2, 0);
	trans[0][179]	= settr(178,0,70,449,449,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][181]	= settr(180,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(182,0,182,0,0,"sub-sequence", 0, 2, 0);
	trans[0][182]	= settr(181,0,70,450,450,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][184]	= settr(183,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][186] = settr(185,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(185,0,185,0,0,"sub-sequence", 0, 2, 0);
	trans[0][185]	= settr(184,0,70,451,451,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][187]	= settr(186,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][189] = settr(188,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(188,0,188,0,0,"sub-sequence", 0, 2, 0);
	trans[0][188]	= settr(187,0,70,452,452,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][190]	= settr(189,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][192] = settr(191,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(191,0,191,0,0,"sub-sequence", 0, 2, 0);
	trans[0][191]	= settr(190,0,70,453,453,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][193]	= settr(192,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][195] = settr(194,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(194,0,194,0,0,"sub-sequence", 0, 2, 0);
	trans[0][194]	= settr(193,0,70,454,454,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][196]	= settr(195,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][198] = settr(197,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(197,0,197,0,0,"sub-sequence", 0, 2, 0);
	trans[0][197]	= settr(196,0,853,455,455,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][199]	= settr(198,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][201] = settr(200,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(200,0,200,0,0,"sub-sequence", 0, 2, 0);
	trans[0][200]	= settr(199,0,853,456,456,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][202]	= settr(201,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][204] = settr(203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(203,0,203,0,0,"sub-sequence", 0, 2, 0);
	trans[0][203]	= settr(202,0,853,457,457,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][205]	= settr(204,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][209]	= settr(208,0,210,458,0,"((((RegReply_bo.right==1)||(RegReply_bo.oblig==1))||(RegReply_bo.prohib==1)))", 1, 2, 0);
	trans[0][210]	= settr(209,0,212,459,459,"RegReply_bo.status = TF", 1, 2, 0);
	T = trans[ 0][212] = settr(211,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(211,0,211,0,0,"sub-sequence", 0, 2, 0);
	trans[0][211]	= settr(210,0,254,460,460,"LEG2CRM!19,15", 1, 3, 0);
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
	trans[0][213]	= settr(212,0,215,461,461,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][215]	= settr(214,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][253]	= settr(252,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][217] = settr(216,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(216,0,216,0,0,"sub-sequence", 0, 2, 0);
	trans[0][216]	= settr(215,0,218,462,462,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][218]	= settr(217,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][220] = settr(219,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(219,0,219,0,0,"sub-sequence", 0, 2, 0);
	trans[0][219]	= settr(218,0,221,463,463,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][221]	= settr(220,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][223] = settr(222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(222,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[0][222]	= settr(221,0,224,464,464,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][224]	= settr(223,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][226] = settr(225,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(225,0,225,0,0,"sub-sequence", 0, 2, 0);
	trans[0][225]	= settr(224,0,70,465,465,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][227]	= settr(226,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][229] = settr(228,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(228,0,228,0,0,"sub-sequence", 0, 2, 0);
	trans[0][228]	= settr(227,0,70,466,466,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][230]	= settr(229,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][232] = settr(231,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(231,0,231,0,0,"sub-sequence", 0, 2, 0);
	trans[0][231]	= settr(230,0,70,467,467,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][233]	= settr(232,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][235] = settr(234,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(234,0,234,0,0,"sub-sequence", 0, 2, 0);
	trans[0][234]	= settr(233,0,70,468,468,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][236]	= settr(235,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][238] = settr(237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(237,0,237,0,0,"sub-sequence", 0, 2, 0);
	trans[0][237]	= settr(236,0,70,469,469,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][239]	= settr(238,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][241] = settr(240,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(240,0,240,0,0,"sub-sequence", 0, 2, 0);
	trans[0][240]	= settr(239,0,70,470,470,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][242]	= settr(241,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][244] = settr(243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(243,0,243,0,0,"sub-sequence", 0, 2, 0);
	trans[0][243]	= settr(242,0,853,471,471,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][245]	= settr(244,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][247] = settr(246,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(246,0,246,0,0,"sub-sequence", 0, 2, 0);
	trans[0][246]	= settr(245,0,853,472,472,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][248]	= settr(247,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][250] = settr(249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(249,0,249,0,0,"sub-sequence", 0, 2, 0);
	trans[0][249]	= settr(248,0,853,473,473,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][251]	= settr(250,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][255]	= settr(254,0,256,474,0,"((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))", 1, 2, 0);
	trans[0][256]	= settr(255,0,258,475,475,"C1_bo.status = S", 1, 2, 0);
	T = trans[ 0][258] = settr(257,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(257,0,257,0,0,"sub-sequence", 0, 2, 0);
	trans[0][257]	= settr(256,0,300,476,476,"LEG2CRM!20,17", 1, 3, 0);
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
	trans[0][259]	= settr(258,0,261,477,477,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][261]	= settr(260,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][299]	= settr(298,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][263] = settr(262,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(262,0,262,0,0,"sub-sequence", 0, 2, 0);
	trans[0][262]	= settr(261,0,264,478,478,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][264]	= settr(263,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][266] = settr(265,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(265,0,265,0,0,"sub-sequence", 0, 2, 0);
	trans[0][265]	= settr(264,0,267,479,479,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][267]	= settr(266,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][269] = settr(268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(268,0,268,0,0,"sub-sequence", 0, 2, 0);
	trans[0][268]	= settr(267,0,270,480,480,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][270]	= settr(269,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][272] = settr(271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(271,0,271,0,0,"sub-sequence", 0, 2, 0);
	trans[0][271]	= settr(270,0,70,481,481,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][273]	= settr(272,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][275] = settr(274,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(274,0,274,0,0,"sub-sequence", 0, 2, 0);
	trans[0][274]	= settr(273,0,70,482,482,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][276]	= settr(275,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][278] = settr(277,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(277,0,277,0,0,"sub-sequence", 0, 2, 0);
	trans[0][277]	= settr(276,0,70,483,483,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][279]	= settr(278,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][281] = settr(280,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(280,0,280,0,0,"sub-sequence", 0, 2, 0);
	trans[0][280]	= settr(279,0,70,484,484,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][282]	= settr(281,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][284] = settr(283,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(283,0,283,0,0,"sub-sequence", 0, 2, 0);
	trans[0][283]	= settr(282,0,70,485,485,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][285]	= settr(284,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][287] = settr(286,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(286,0,286,0,0,"sub-sequence", 0, 2, 0);
	trans[0][286]	= settr(285,0,70,486,486,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][288]	= settr(287,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][290] = settr(289,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(289,0,289,0,0,"sub-sequence", 0, 2, 0);
	trans[0][289]	= settr(288,0,853,487,487,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][291]	= settr(290,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][293] = settr(292,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(292,0,292,0,0,"sub-sequence", 0, 2, 0);
	trans[0][292]	= settr(291,0,853,488,488,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][294]	= settr(293,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][296] = settr(295,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(295,0,295,0,0,"sub-sequence", 0, 2, 0);
	trans[0][295]	= settr(294,0,853,489,489,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][297]	= settr(296,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][301]	= settr(300,0,302,490,0,"((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))", 1, 2, 0);
	trans[0][302]	= settr(301,0,304,491,491,"C1_bo.status = P", 1, 2, 0);
	T = trans[ 0][304] = settr(303,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(303,0,303,0,0,"sub-sequence", 0, 2, 0);
	trans[0][303]	= settr(302,0,346,492,492,"LEG2CRM!20,13", 1, 3, 0);
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
	trans[0][305]	= settr(304,0,307,493,493,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][307]	= settr(306,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][345]	= settr(344,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][309] = settr(308,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(308,0,308,0,0,"sub-sequence", 0, 2, 0);
	trans[0][308]	= settr(307,0,310,494,494,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][310]	= settr(309,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][312] = settr(311,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(311,0,311,0,0,"sub-sequence", 0, 2, 0);
	trans[0][311]	= settr(310,0,313,495,495,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][313]	= settr(312,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][315] = settr(314,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(314,0,314,0,0,"sub-sequence", 0, 2, 0);
	trans[0][314]	= settr(313,0,316,496,496,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][316]	= settr(315,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][318] = settr(317,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(317,0,317,0,0,"sub-sequence", 0, 2, 0);
	trans[0][317]	= settr(316,0,70,497,497,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][319]	= settr(318,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][321] = settr(320,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(320,0,320,0,0,"sub-sequence", 0, 2, 0);
	trans[0][320]	= settr(319,0,70,498,498,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][322]	= settr(321,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][324] = settr(323,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(323,0,323,0,0,"sub-sequence", 0, 2, 0);
	trans[0][323]	= settr(322,0,70,499,499,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][325]	= settr(324,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][327] = settr(326,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(326,0,326,0,0,"sub-sequence", 0, 2, 0);
	trans[0][326]	= settr(325,0,70,500,500,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][328]	= settr(327,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][330] = settr(329,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(329,0,329,0,0,"sub-sequence", 0, 2, 0);
	trans[0][329]	= settr(328,0,70,501,501,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][331]	= settr(330,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][333] = settr(332,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(332,0,332,0,0,"sub-sequence", 0, 2, 0);
	trans[0][332]	= settr(331,0,70,502,502,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][334]	= settr(333,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][336] = settr(335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(335,0,335,0,0,"sub-sequence", 0, 2, 0);
	trans[0][335]	= settr(334,0,853,503,503,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][337]	= settr(336,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][339] = settr(338,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(338,0,338,0,0,"sub-sequence", 0, 2, 0);
	trans[0][338]	= settr(337,0,853,504,504,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][340]	= settr(339,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][342] = settr(341,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(341,0,341,0,0,"sub-sequence", 0, 2, 0);
	trans[0][341]	= settr(340,0,853,505,505,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][343]	= settr(342,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][347]	= settr(346,0,348,506,0,"((((C1_bo.right==1)||(C1_bo.oblig==1))||(C1_bo.prohib==1)))", 1, 2, 0);
	trans[0][348]	= settr(347,0,350,507,507,"C1_bo.status = TF", 1, 2, 0);
	T = trans[ 0][350] = settr(349,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(349,0,349,0,0,"sub-sequence", 0, 2, 0);
	trans[0][349]	= settr(348,0,392,508,508,"LEG2CRM!20,15", 1, 3, 0);
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
	trans[0][351]	= settr(350,0,353,509,509,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][353]	= settr(352,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][391]	= settr(390,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][355] = settr(354,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(354,0,354,0,0,"sub-sequence", 0, 2, 0);
	trans[0][354]	= settr(353,0,356,510,510,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][356]	= settr(355,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][358] = settr(357,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(357,0,357,0,0,"sub-sequence", 0, 2, 0);
	trans[0][357]	= settr(356,0,359,511,511,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][359]	= settr(358,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][361] = settr(360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(360,0,360,0,0,"sub-sequence", 0, 2, 0);
	trans[0][360]	= settr(359,0,362,512,512,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][362]	= settr(361,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][364] = settr(363,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(363,0,363,0,0,"sub-sequence", 0, 2, 0);
	trans[0][363]	= settr(362,0,70,513,513,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][365]	= settr(364,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][367] = settr(366,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(366,0,366,0,0,"sub-sequence", 0, 2, 0);
	trans[0][366]	= settr(365,0,70,514,514,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][368]	= settr(367,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][370] = settr(369,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(369,0,369,0,0,"sub-sequence", 0, 2, 0);
	trans[0][369]	= settr(368,0,70,515,515,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][371]	= settr(370,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][373] = settr(372,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(372,0,372,0,0,"sub-sequence", 0, 2, 0);
	trans[0][372]	= settr(371,0,70,516,516,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][374]	= settr(373,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][376] = settr(375,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(375,0,375,0,0,"sub-sequence", 0, 2, 0);
	trans[0][375]	= settr(374,0,70,517,517,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][377]	= settr(376,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][379] = settr(378,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(378,0,378,0,0,"sub-sequence", 0, 2, 0);
	trans[0][378]	= settr(377,0,70,518,518,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][380]	= settr(379,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][382] = settr(381,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(381,0,381,0,0,"sub-sequence", 0, 2, 0);
	trans[0][381]	= settr(380,0,853,519,519,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][383]	= settr(382,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][385] = settr(384,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(384,0,384,0,0,"sub-sequence", 0, 2, 0);
	trans[0][384]	= settr(383,0,853,520,520,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][386]	= settr(385,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][388] = settr(387,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(387,0,387,0,0,"sub-sequence", 0, 2, 0);
	trans[0][387]	= settr(386,0,853,521,521,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][389]	= settr(388,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][393]	= settr(392,0,394,522,0,"((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))", 1, 2, 0);
	trans[0][394]	= settr(393,0,396,523,523,"C2_bo.status = S", 1, 2, 0);
	T = trans[ 0][396] = settr(395,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(395,0,395,0,0,"sub-sequence", 0, 2, 0);
	trans[0][395]	= settr(394,0,438,524,524,"LEG2CRM!21,17", 1, 3, 0);
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
	trans[0][397]	= settr(396,0,399,525,525,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][399]	= settr(398,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][437]	= settr(436,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][401] = settr(400,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(400,0,400,0,0,"sub-sequence", 0, 2, 0);
	trans[0][400]	= settr(399,0,402,526,526,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][402]	= settr(401,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][404] = settr(403,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(403,0,403,0,0,"sub-sequence", 0, 2, 0);
	trans[0][403]	= settr(402,0,405,527,527,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][405]	= settr(404,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][407] = settr(406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(406,0,406,0,0,"sub-sequence", 0, 2, 0);
	trans[0][406]	= settr(405,0,408,528,528,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][408]	= settr(407,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][410] = settr(409,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(409,0,409,0,0,"sub-sequence", 0, 2, 0);
	trans[0][409]	= settr(408,0,70,529,529,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][411]	= settr(410,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][413] = settr(412,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(412,0,412,0,0,"sub-sequence", 0, 2, 0);
	trans[0][412]	= settr(411,0,70,530,530,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][414]	= settr(413,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][416] = settr(415,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(415,0,415,0,0,"sub-sequence", 0, 2, 0);
	trans[0][415]	= settr(414,0,70,531,531,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][417]	= settr(416,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][419] = settr(418,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(418,0,418,0,0,"sub-sequence", 0, 2, 0);
	trans[0][418]	= settr(417,0,70,532,532,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][420]	= settr(419,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][422] = settr(421,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(421,0,421,0,0,"sub-sequence", 0, 2, 0);
	trans[0][421]	= settr(420,0,70,533,533,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][423]	= settr(422,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][425] = settr(424,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(424,0,424,0,0,"sub-sequence", 0, 2, 0);
	trans[0][424]	= settr(423,0,70,534,534,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][426]	= settr(425,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][428] = settr(427,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(427,0,427,0,0,"sub-sequence", 0, 2, 0);
	trans[0][427]	= settr(426,0,853,535,535,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][429]	= settr(428,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][431] = settr(430,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(430,0,430,0,0,"sub-sequence", 0, 2, 0);
	trans[0][430]	= settr(429,0,853,536,536,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][432]	= settr(431,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][434] = settr(433,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(433,0,433,0,0,"sub-sequence", 0, 2, 0);
	trans[0][433]	= settr(432,0,853,537,537,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][435]	= settr(434,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][439]	= settr(438,0,440,538,0,"((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))", 1, 2, 0);
	trans[0][440]	= settr(439,0,442,539,539,"C2_bo.status = P", 1, 2, 0);
	T = trans[ 0][442] = settr(441,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(441,0,441,0,0,"sub-sequence", 0, 2, 0);
	trans[0][441]	= settr(440,0,484,540,540,"LEG2CRM!21,13", 1, 3, 0);
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
	trans[0][443]	= settr(442,0,445,541,541,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][445]	= settr(444,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][483]	= settr(482,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][447] = settr(446,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(446,0,446,0,0,"sub-sequence", 0, 2, 0);
	trans[0][446]	= settr(445,0,448,542,542,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][448]	= settr(447,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][450] = settr(449,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(449,0,449,0,0,"sub-sequence", 0, 2, 0);
	trans[0][449]	= settr(448,0,451,543,543,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][451]	= settr(450,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][453] = settr(452,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(452,0,452,0,0,"sub-sequence", 0, 2, 0);
	trans[0][452]	= settr(451,0,454,544,544,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][454]	= settr(453,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][456] = settr(455,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(455,0,455,0,0,"sub-sequence", 0, 2, 0);
	trans[0][455]	= settr(454,0,70,545,545,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][457]	= settr(456,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][459] = settr(458,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(458,0,458,0,0,"sub-sequence", 0, 2, 0);
	trans[0][458]	= settr(457,0,70,546,546,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][460]	= settr(459,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][462] = settr(461,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(461,0,461,0,0,"sub-sequence", 0, 2, 0);
	trans[0][461]	= settr(460,0,70,547,547,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][463]	= settr(462,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][465] = settr(464,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(464,0,464,0,0,"sub-sequence", 0, 2, 0);
	trans[0][464]	= settr(463,0,70,548,548,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][466]	= settr(465,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][468] = settr(467,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(467,0,467,0,0,"sub-sequence", 0, 2, 0);
	trans[0][467]	= settr(466,0,70,549,549,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][469]	= settr(468,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][471] = settr(470,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(470,0,470,0,0,"sub-sequence", 0, 2, 0);
	trans[0][470]	= settr(469,0,70,550,550,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][472]	= settr(471,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][474] = settr(473,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(473,0,473,0,0,"sub-sequence", 0, 2, 0);
	trans[0][473]	= settr(472,0,853,551,551,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][475]	= settr(474,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][477] = settr(476,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(476,0,476,0,0,"sub-sequence", 0, 2, 0);
	trans[0][476]	= settr(475,0,853,552,552,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][478]	= settr(477,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][480] = settr(479,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(479,0,479,0,0,"sub-sequence", 0, 2, 0);
	trans[0][479]	= settr(478,0,853,553,553,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][481]	= settr(480,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][485]	= settr(484,0,486,554,0,"((((C2_bo.right==1)||(C2_bo.oblig==1))||(C2_bo.prohib==1)))", 1, 2, 0);
	trans[0][486]	= settr(485,0,488,555,555,"C2_bo.status = TF", 1, 2, 0);
	T = trans[ 0][488] = settr(487,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(487,0,487,0,0,"sub-sequence", 0, 2, 0);
	trans[0][487]	= settr(486,0,530,556,556,"LEG2CRM!21,15", 1, 3, 0);
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
	trans[0][489]	= settr(488,0,491,557,557,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][491]	= settr(490,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][529]	= settr(528,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][493] = settr(492,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(492,0,492,0,0,"sub-sequence", 0, 2, 0);
	trans[0][492]	= settr(491,0,494,558,558,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][494]	= settr(493,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][496] = settr(495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(495,0,495,0,0,"sub-sequence", 0, 2, 0);
	trans[0][495]	= settr(494,0,497,559,559,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][497]	= settr(496,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][499] = settr(498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(498,0,498,0,0,"sub-sequence", 0, 2, 0);
	trans[0][498]	= settr(497,0,500,560,560,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][500]	= settr(499,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][502] = settr(501,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(501,0,501,0,0,"sub-sequence", 0, 2, 0);
	trans[0][501]	= settr(500,0,70,561,561,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][503]	= settr(502,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][505] = settr(504,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(504,0,504,0,0,"sub-sequence", 0, 2, 0);
	trans[0][504]	= settr(503,0,70,562,562,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][506]	= settr(505,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][508] = settr(507,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(507,0,507,0,0,"sub-sequence", 0, 2, 0);
	trans[0][507]	= settr(506,0,70,563,563,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][509]	= settr(508,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][511] = settr(510,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(510,0,510,0,0,"sub-sequence", 0, 2, 0);
	trans[0][510]	= settr(509,0,70,564,564,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][512]	= settr(511,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][514] = settr(513,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(513,0,513,0,0,"sub-sequence", 0, 2, 0);
	trans[0][513]	= settr(512,0,70,565,565,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][515]	= settr(514,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][517] = settr(516,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(516,0,516,0,0,"sub-sequence", 0, 2, 0);
	trans[0][516]	= settr(515,0,70,566,566,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][518]	= settr(517,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][520] = settr(519,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(519,0,519,0,0,"sub-sequence", 0, 2, 0);
	trans[0][519]	= settr(518,0,853,567,567,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][521]	= settr(520,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][523] = settr(522,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(522,0,522,0,0,"sub-sequence", 0, 2, 0);
	trans[0][522]	= settr(521,0,853,568,568,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][524]	= settr(523,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][526] = settr(525,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(525,0,525,0,0,"sub-sequence", 0, 2, 0);
	trans[0][525]	= settr(524,0,853,569,569,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][527]	= settr(526,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][531]	= settr(530,0,532,570,0,"((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))", 1, 2, 0);
	trans[0][532]	= settr(531,0,534,571,571,"C3_bo.status = S", 1, 2, 0);
	T = trans[ 0][534] = settr(533,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(533,0,533,0,0,"sub-sequence", 0, 2, 0);
	trans[0][533]	= settr(532,0,576,572,572,"LEG2CRM!22,17", 1, 3, 0);
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
	trans[0][535]	= settr(534,0,537,573,573,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][537]	= settr(536,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][575]	= settr(574,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][539] = settr(538,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(538,0,538,0,0,"sub-sequence", 0, 2, 0);
	trans[0][538]	= settr(537,0,540,574,574,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][540]	= settr(539,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][542] = settr(541,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(541,0,541,0,0,"sub-sequence", 0, 2, 0);
	trans[0][541]	= settr(540,0,543,575,575,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][543]	= settr(542,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][545] = settr(544,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(544,0,544,0,0,"sub-sequence", 0, 2, 0);
	trans[0][544]	= settr(543,0,546,576,576,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][546]	= settr(545,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][548] = settr(547,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(547,0,547,0,0,"sub-sequence", 0, 2, 0);
	trans[0][547]	= settr(546,0,70,577,577,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][549]	= settr(548,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][551] = settr(550,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(550,0,550,0,0,"sub-sequence", 0, 2, 0);
	trans[0][550]	= settr(549,0,70,578,578,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][552]	= settr(551,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][554] = settr(553,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(553,0,553,0,0,"sub-sequence", 0, 2, 0);
	trans[0][553]	= settr(552,0,70,579,579,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][555]	= settr(554,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][557] = settr(556,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(556,0,556,0,0,"sub-sequence", 0, 2, 0);
	trans[0][556]	= settr(555,0,70,580,580,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][558]	= settr(557,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][560] = settr(559,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(559,0,559,0,0,"sub-sequence", 0, 2, 0);
	trans[0][559]	= settr(558,0,70,581,581,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][561]	= settr(560,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][563] = settr(562,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(562,0,562,0,0,"sub-sequence", 0, 2, 0);
	trans[0][562]	= settr(561,0,70,582,582,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][564]	= settr(563,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][566] = settr(565,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(565,0,565,0,0,"sub-sequence", 0, 2, 0);
	trans[0][565]	= settr(564,0,853,583,583,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][567]	= settr(566,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][569] = settr(568,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(568,0,568,0,0,"sub-sequence", 0, 2, 0);
	trans[0][568]	= settr(567,0,853,584,584,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][570]	= settr(569,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][572] = settr(571,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(571,0,571,0,0,"sub-sequence", 0, 2, 0);
	trans[0][571]	= settr(570,0,853,585,585,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][573]	= settr(572,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][577]	= settr(576,0,578,586,0,"((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))", 1, 2, 0);
	trans[0][578]	= settr(577,0,580,587,587,"C3_bo.status = P", 1, 2, 0);
	T = trans[ 0][580] = settr(579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(579,0,579,0,0,"sub-sequence", 0, 2, 0);
	trans[0][579]	= settr(578,0,622,588,588,"LEG2CRM!22,13", 1, 3, 0);
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
	trans[0][581]	= settr(580,0,583,589,589,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][583]	= settr(582,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][621]	= settr(620,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][585] = settr(584,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(584,0,584,0,0,"sub-sequence", 0, 2, 0);
	trans[0][584]	= settr(583,0,586,590,590,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][586]	= settr(585,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][588] = settr(587,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(587,0,587,0,0,"sub-sequence", 0, 2, 0);
	trans[0][587]	= settr(586,0,589,591,591,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][589]	= settr(588,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][591] = settr(590,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(590,0,590,0,0,"sub-sequence", 0, 2, 0);
	trans[0][590]	= settr(589,0,592,592,592,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][592]	= settr(591,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][594] = settr(593,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(593,0,593,0,0,"sub-sequence", 0, 2, 0);
	trans[0][593]	= settr(592,0,70,593,593,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][595]	= settr(594,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][597] = settr(596,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(596,0,596,0,0,"sub-sequence", 0, 2, 0);
	trans[0][596]	= settr(595,0,70,594,594,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][598]	= settr(597,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][600] = settr(599,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(599,0,599,0,0,"sub-sequence", 0, 2, 0);
	trans[0][599]	= settr(598,0,70,595,595,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][601]	= settr(600,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][603] = settr(602,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(602,0,602,0,0,"sub-sequence", 0, 2, 0);
	trans[0][602]	= settr(601,0,70,596,596,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][604]	= settr(603,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][606] = settr(605,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(605,0,605,0,0,"sub-sequence", 0, 2, 0);
	trans[0][605]	= settr(604,0,70,597,597,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][607]	= settr(606,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][609] = settr(608,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(608,0,608,0,0,"sub-sequence", 0, 2, 0);
	trans[0][608]	= settr(607,0,70,598,598,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][610]	= settr(609,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][612] = settr(611,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(611,0,611,0,0,"sub-sequence", 0, 2, 0);
	trans[0][611]	= settr(610,0,853,599,599,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][613]	= settr(612,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][615] = settr(614,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(614,0,614,0,0,"sub-sequence", 0, 2, 0);
	trans[0][614]	= settr(613,0,853,600,600,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][616]	= settr(615,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][618] = settr(617,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(617,0,617,0,0,"sub-sequence", 0, 2, 0);
	trans[0][617]	= settr(616,0,853,601,601,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][619]	= settr(618,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][623]	= settr(622,0,624,602,0,"((((C3_bo.right==1)||(C3_bo.oblig==1))||(C3_bo.prohib==1)))", 1, 2, 0);
	trans[0][624]	= settr(623,0,626,603,603,"C3_bo.status = TF", 1, 2, 0);
	T = trans[ 0][626] = settr(625,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(625,0,625,0,0,"sub-sequence", 0, 2, 0);
	trans[0][625]	= settr(624,0,668,604,604,"LEG2CRM!22,15", 1, 3, 0);
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
	trans[0][627]	= settr(626,0,629,605,605,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][629]	= settr(628,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][667]	= settr(666,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][631] = settr(630,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(630,0,630,0,0,"sub-sequence", 0, 2, 0);
	trans[0][630]	= settr(629,0,632,606,606,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][632]	= settr(631,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][634] = settr(633,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(633,0,633,0,0,"sub-sequence", 0, 2, 0);
	trans[0][633]	= settr(632,0,635,607,607,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][635]	= settr(634,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][637] = settr(636,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(636,0,636,0,0,"sub-sequence", 0, 2, 0);
	trans[0][636]	= settr(635,0,638,608,608,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][638]	= settr(637,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][640] = settr(639,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(639,0,639,0,0,"sub-sequence", 0, 2, 0);
	trans[0][639]	= settr(638,0,70,609,609,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][641]	= settr(640,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][643] = settr(642,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(642,0,642,0,0,"sub-sequence", 0, 2, 0);
	trans[0][642]	= settr(641,0,70,610,610,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][644]	= settr(643,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][646] = settr(645,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(645,0,645,0,0,"sub-sequence", 0, 2, 0);
	trans[0][645]	= settr(644,0,70,611,611,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][647]	= settr(646,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][649] = settr(648,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(648,0,648,0,0,"sub-sequence", 0, 2, 0);
	trans[0][648]	= settr(647,0,70,612,612,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][650]	= settr(649,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][652] = settr(651,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(651,0,651,0,0,"sub-sequence", 0, 2, 0);
	trans[0][651]	= settr(650,0,70,613,613,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][653]	= settr(652,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][655] = settr(654,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(654,0,654,0,0,"sub-sequence", 0, 2, 0);
	trans[0][654]	= settr(653,0,70,614,614,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][656]	= settr(655,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][658] = settr(657,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(657,0,657,0,0,"sub-sequence", 0, 2, 0);
	trans[0][657]	= settr(656,0,853,615,615,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][659]	= settr(658,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][661] = settr(660,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(660,0,660,0,0,"sub-sequence", 0, 2, 0);
	trans[0][660]	= settr(659,0,853,616,616,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][662]	= settr(661,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][664] = settr(663,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(663,0,663,0,0,"sub-sequence", 0, 2, 0);
	trans[0][663]	= settr(662,0,853,617,617,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][665]	= settr(664,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][669]	= settr(668,0,670,618,0,"((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))", 1, 2, 0);
	trans[0][670]	= settr(669,0,672,619,619,"ChooseAccept_bo.status = S", 1, 2, 0);
	T = trans[ 0][672] = settr(671,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(671,0,671,0,0,"sub-sequence", 0, 2, 0);
	trans[0][671]	= settr(670,0,714,620,620,"LEG2CRM!23,17", 1, 3, 0);
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
	trans[0][673]	= settr(672,0,675,621,621,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][675]	= settr(674,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][713]	= settr(712,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][677] = settr(676,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(676,0,676,0,0,"sub-sequence", 0, 2, 0);
	trans[0][676]	= settr(675,0,678,622,622,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][678]	= settr(677,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][680] = settr(679,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(679,0,679,0,0,"sub-sequence", 0, 2, 0);
	trans[0][679]	= settr(678,0,681,623,623,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][681]	= settr(680,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][683] = settr(682,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(682,0,682,0,0,"sub-sequence", 0, 2, 0);
	trans[0][682]	= settr(681,0,684,624,624,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][684]	= settr(683,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][686] = settr(685,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(685,0,685,0,0,"sub-sequence", 0, 2, 0);
	trans[0][685]	= settr(684,0,70,625,625,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][687]	= settr(686,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][689] = settr(688,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(688,0,688,0,0,"sub-sequence", 0, 2, 0);
	trans[0][688]	= settr(687,0,70,626,626,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][690]	= settr(689,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][692] = settr(691,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(691,0,691,0,0,"sub-sequence", 0, 2, 0);
	trans[0][691]	= settr(690,0,70,627,627,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][693]	= settr(692,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][695] = settr(694,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(694,0,694,0,0,"sub-sequence", 0, 2, 0);
	trans[0][694]	= settr(693,0,70,628,628,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][696]	= settr(695,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][698] = settr(697,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(697,0,697,0,0,"sub-sequence", 0, 2, 0);
	trans[0][697]	= settr(696,0,70,629,629,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][699]	= settr(698,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][701] = settr(700,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(700,0,700,0,0,"sub-sequence", 0, 2, 0);
	trans[0][700]	= settr(699,0,70,630,630,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][702]	= settr(701,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][704] = settr(703,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(703,0,703,0,0,"sub-sequence", 0, 2, 0);
	trans[0][703]	= settr(702,0,853,631,631,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][705]	= settr(704,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][707] = settr(706,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(706,0,706,0,0,"sub-sequence", 0, 2, 0);
	trans[0][706]	= settr(705,0,853,632,632,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][708]	= settr(707,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][710] = settr(709,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(709,0,709,0,0,"sub-sequence", 0, 2, 0);
	trans[0][709]	= settr(708,0,853,633,633,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][711]	= settr(710,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][715]	= settr(714,0,716,634,0,"((((ChooseAccept_bo.right==1)||(ChooseAccept_bo.oblig==1))||(ChooseAccept_bo.prohib==1)))", 1, 2, 0);
	trans[0][716]	= settr(715,0,718,635,635,"ChooseAccept_bo.status = TF", 1, 2, 0);
	T = trans[ 0][718] = settr(717,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(717,0,717,0,0,"sub-sequence", 0, 2, 0);
	trans[0][717]	= settr(716,0,760,636,636,"LEG2CRM!23,15", 1, 3, 0);
	T = trans[ 0][760] = settr(759,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(759,0,758,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][758] = settr(757,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,720,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,723,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,726,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,729,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,732,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,738,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,741,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,744,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,747,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,750,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,753,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(757,0,756,0,0,"IF", 0, 2, 0);
	T = trans[ 0][720] = settr(719,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(719,0,719,0,0,"sub-sequence", 0, 2, 0);
	trans[0][719]	= settr(718,0,721,637,637,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][721]	= settr(720,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][759]	= settr(758,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][723] = settr(722,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(722,0,722,0,0,"sub-sequence", 0, 2, 0);
	trans[0][722]	= settr(721,0,724,638,638,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][724]	= settr(723,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][726] = settr(725,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(725,0,725,0,0,"sub-sequence", 0, 2, 0);
	trans[0][725]	= settr(724,0,727,639,639,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][727]	= settr(726,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][729] = settr(728,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(728,0,728,0,0,"sub-sequence", 0, 2, 0);
	trans[0][728]	= settr(727,0,730,640,640,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][730]	= settr(729,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][732] = settr(731,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(731,0,731,0,0,"sub-sequence", 0, 2, 0);
	trans[0][731]	= settr(730,0,70,641,641,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][733]	= settr(732,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][735] = settr(734,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(734,0,734,0,0,"sub-sequence", 0, 2, 0);
	trans[0][734]	= settr(733,0,70,642,642,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][736]	= settr(735,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][738] = settr(737,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(737,0,737,0,0,"sub-sequence", 0, 2, 0);
	trans[0][737]	= settr(736,0,70,643,643,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][739]	= settr(738,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][741] = settr(740,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(740,0,740,0,0,"sub-sequence", 0, 2, 0);
	trans[0][740]	= settr(739,0,70,644,644,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][742]	= settr(741,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][744] = settr(743,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(743,0,743,0,0,"sub-sequence", 0, 2, 0);
	trans[0][743]	= settr(742,0,70,645,645,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][745]	= settr(744,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][747] = settr(746,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(746,0,746,0,0,"sub-sequence", 0, 2, 0);
	trans[0][746]	= settr(745,0,70,646,646,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][748]	= settr(747,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][750] = settr(749,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(749,0,749,0,0,"sub-sequence", 0, 2, 0);
	trans[0][749]	= settr(748,0,853,647,647,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][751]	= settr(750,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][753] = settr(752,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(752,0,752,0,0,"sub-sequence", 0, 2, 0);
	trans[0][752]	= settr(751,0,853,648,648,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][754]	= settr(753,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][756] = settr(755,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(755,0,755,0,0,"sub-sequence", 0, 2, 0);
	trans[0][755]	= settr(754,0,853,649,649,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][757]	= settr(756,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][761]	= settr(760,0,762,650,0,"((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))", 1, 2, 0);
	trans[0][762]	= settr(761,0,764,651,651,"ChooseReject_bo.status = S", 1, 2, 0);
	T = trans[ 0][764] = settr(763,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(763,0,763,0,0,"sub-sequence", 0, 2, 0);
	trans[0][763]	= settr(762,0,806,652,652,"LEG2CRM!24,17", 1, 3, 0);
	T = trans[ 0][806] = settr(805,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(805,0,804,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][804] = settr(803,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,766,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,769,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,772,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,775,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,778,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,781,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,784,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,787,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,790,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,793,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,796,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(803,0,799,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(803,0,802,0,0,"IF", 0, 2, 0);
	T = trans[ 0][766] = settr(765,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(765,0,765,0,0,"sub-sequence", 0, 2, 0);
	trans[0][765]	= settr(764,0,767,653,653,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][767]	= settr(766,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][805]	= settr(804,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][769] = settr(768,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(768,0,768,0,0,"sub-sequence", 0, 2, 0);
	trans[0][768]	= settr(767,0,770,654,654,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][770]	= settr(769,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][772] = settr(771,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(771,0,771,0,0,"sub-sequence", 0, 2, 0);
	trans[0][771]	= settr(770,0,773,655,655,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][773]	= settr(772,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][775] = settr(774,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(774,0,774,0,0,"sub-sequence", 0, 2, 0);
	trans[0][774]	= settr(773,0,776,656,656,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][776]	= settr(775,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][778] = settr(777,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(777,0,777,0,0,"sub-sequence", 0, 2, 0);
	trans[0][777]	= settr(776,0,70,657,657,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][779]	= settr(778,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][781] = settr(780,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(780,0,780,0,0,"sub-sequence", 0, 2, 0);
	trans[0][780]	= settr(779,0,70,658,658,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][782]	= settr(781,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][784] = settr(783,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(783,0,783,0,0,"sub-sequence", 0, 2, 0);
	trans[0][783]	= settr(782,0,70,659,659,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][785]	= settr(784,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][787] = settr(786,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(786,0,786,0,0,"sub-sequence", 0, 2, 0);
	trans[0][786]	= settr(785,0,70,660,660,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][788]	= settr(787,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][790] = settr(789,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(789,0,789,0,0,"sub-sequence", 0, 2, 0);
	trans[0][789]	= settr(788,0,70,661,661,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][791]	= settr(790,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][793] = settr(792,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(792,0,792,0,0,"sub-sequence", 0, 2, 0);
	trans[0][792]	= settr(791,0,70,662,662,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][794]	= settr(793,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][796] = settr(795,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(795,0,795,0,0,"sub-sequence", 0, 2, 0);
	trans[0][795]	= settr(794,0,853,663,663,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][797]	= settr(796,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][799] = settr(798,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(798,0,798,0,0,"sub-sequence", 0, 2, 0);
	trans[0][798]	= settr(797,0,853,664,664,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][800]	= settr(799,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][802] = settr(801,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(801,0,801,0,0,"sub-sequence", 0, 2, 0);
	trans[0][801]	= settr(800,0,853,665,665,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][803]	= settr(802,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][807]	= settr(806,0,808,666,0,"((((ChooseReject_bo.right==1)||(ChooseReject_bo.oblig==1))||(ChooseReject_bo.prohib==1)))", 1, 2, 0);
	trans[0][808]	= settr(807,0,810,667,667,"ChooseReject_bo.status = TF", 1, 2, 0);
	T = trans[ 0][810] = settr(809,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(809,0,809,0,0,"sub-sequence", 0, 2, 0);
	trans[0][809]	= settr(808,0,852,668,668,"LEG2CRM!24,15", 1, 3, 0);
	T = trans[ 0][852] = settr(851,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(851,0,850,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][850] = settr(849,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,812,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,815,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,818,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,821,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,824,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,827,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,830,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,833,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,836,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,839,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,842,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(849,0,845,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(849,0,848,0,0,"IF", 0, 2, 0);
	T = trans[ 0][812] = settr(811,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(811,0,811,0,0,"sub-sequence", 0, 2, 0);
	trans[0][811]	= settr(810,0,813,669,669,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][813]	= settr(812,0,853,1,0,"(1)", 0, 2, 0);
	trans[0][851]	= settr(850,0,853,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][815] = settr(814,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(814,0,814,0,0,"sub-sequence", 0, 2, 0);
	trans[0][814]	= settr(813,0,816,670,670,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][816]	= settr(815,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][818] = settr(817,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(817,0,817,0,0,"sub-sequence", 0, 2, 0);
	trans[0][817]	= settr(816,0,819,671,671,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][819]	= settr(818,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][821] = settr(820,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(820,0,820,0,0,"sub-sequence", 0, 2, 0);
	trans[0][820]	= settr(819,0,822,672,672,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][822]	= settr(821,0,853,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][824] = settr(823,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(823,0,823,0,0,"sub-sequence", 0, 2, 0);
	trans[0][823]	= settr(822,0,70,673,673,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][825]	= settr(824,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][827] = settr(826,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(826,0,826,0,0,"sub-sequence", 0, 2, 0);
	trans[0][826]	= settr(825,0,70,674,674,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][828]	= settr(827,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][830] = settr(829,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(829,0,829,0,0,"sub-sequence", 0, 2, 0);
	trans[0][829]	= settr(828,0,70,675,675,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][831]	= settr(830,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][833] = settr(832,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(832,0,832,0,0,"sub-sequence", 0, 2, 0);
	trans[0][832]	= settr(831,0,70,676,676,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][834]	= settr(833,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][836] = settr(835,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(835,0,835,0,0,"sub-sequence", 0, 2, 0);
	trans[0][835]	= settr(834,0,70,677,677,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][837]	= settr(836,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][839] = settr(838,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(838,0,838,0,0,"sub-sequence", 0, 2, 0);
	trans[0][838]	= settr(837,0,70,678,678,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][840]	= settr(839,0,70,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][842] = settr(841,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(841,0,841,0,0,"sub-sequence", 0, 2, 0);
	trans[0][841]	= settr(840,0,853,679,679,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][843]	= settr(842,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][845] = settr(844,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(844,0,844,0,0,"sub-sequence", 0, 2, 0);
	trans[0][844]	= settr(843,0,853,680,680,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][846]	= settr(845,0,853,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][848] = settr(847,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(847,0,847,0,0,"sub-sequence", 0, 2, 0);
	trans[0][847]	= settr(846,0,853,681,681,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][849]	= settr(848,0,853,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][855]	= settr(854,0,856,1,0,"break", 0, 2, 0);
	trans[0][856]	= settr(855,0,0,682,682,"-end-", 0, 3500, 0);
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
			printf("  GT -> S%d;\n", is);
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
