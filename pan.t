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

	T = trans[ 2][3] = settr(918,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(918,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(916,2,2,3,3,"(run BEG())", 0, 2, 0);
	trans[2][2]	= settr(917,0,4,4,4,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(919,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(401*sizeof(Trans *));

	trans[1][1]	= settr(516,0,397,6,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][398]	= settr(913,0,397,1,0,".(goto)", 0, 2, 0);
	T = trans[1][397] = settr(912,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(912,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(912,0,85,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(912,0,165,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(912,0,246,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(912,0,327,0,0,"DO", 0, 2, 0);
	T = trans[ 1][12] = settr(527,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(527,0,10,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][10] = settr(525,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(525,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(525,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(525,0,6,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(525,0,8,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(517,0,3,7,0,"(BEG2CRM?[17,S])", 1, 2, 0);
	trans[1][3]	= settr(518,0,74,8,8,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][11]	= settr(526,0,74,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(519,0,5,9,0,"(BEG2CRM?[17,TO])", 1, 2, 0);
	trans[1][5]	= settr(520,0,74,10,10,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(521,0,7,11,0,"(BEG2CRM?[17,TF])", 1, 2, 0);
	trans[1][7]	= settr(522,0,74,12,12,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(523,0,9,13,0,"(BEG2CRM?[17,BF])", 1, 2, 0);
	trans[1][9]	= settr(524,0,74,14,14,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][74] = settr(589,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(589,0,72,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][72] = settr(587,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(587,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(587,0,37,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(587,0,69,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(528,0,36,15,0,"((((BUYREQ_bo.right==1)&&((BUYREQ_bo.role_pl==BUYER)==1))&&((BUYREQ_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][36] = settr(551,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(551,0,14,0,0,"sub-sequence", 0, 2, 0);
	trans[1][14]	= settr(529,0,21,16,16,"BUYERexTrace = (BUYERexTrace|(1<<BUYREQ_bo.id))", 1, 2, 0);
	T = trans[ 1][21] = settr(536,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(536,2,15,0,0,"ATOMIC", 0, 2, 0);
	trans[1][15]	= settr(530,4,25,17,17,"printf('\\n\\n')", 0, 2, 0); /* m: 16 -> 0,25 */
	reached1[16] = 1;
	trans[1][16]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][17]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"printf('<type>BUYREQ</type>\\n')",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][25] = settr(540,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(540,0,22,0,0,"sub-sequence", 0, 2, 0);
	trans[1][22]	= settr(537,0,23,18,18,"BUYREQ_bo.right = 0", 1, 2, 0);
	trans[1][23]	= settr(538,0,24,19,0,"assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1))))", 1, 2, 0);
	trans[1][24]	= settr(539,0,29,20,0,"assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][29] = settr(544,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(544,0,26,0,0,"sub-sequence", 0, 2, 0);
	trans[1][26]	= settr(541,0,27,21,21,"BUYREJ_bo.oblig = 1", 1, 2, 0);
	trans[1][27]	= settr(542,0,28,22,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][28]	= settr(543,0,33,23,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][33] = settr(548,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(548,0,30,0,0,"sub-sequence", 0, 2, 0);
	trans[1][30]	= settr(545,0,31,24,24,"BUYCONF_bo.oblig = 1", 1, 2, 0);
	trans[1][31]	= settr(546,0,32,25,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][32]	= settr(547,0,35,26,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][35] = settr(550,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(550,0,34,0,0,"sub-sequence", 0, 2, 0);
	trans[1][34]	= settr(549,0,397,27,27,"CRM2BEG!9,5", 1, 4, 0);
	trans[1][73]	= settr(588,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][37]	= settr(552,0,68,28,0,"((((BUYREQ_bo.right==1)&&((BUYREQ_bo.role_pl==BUYER)==1))&&((BUYREQ_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][68] = settr(583,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(583,0,44,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][44] = settr(559,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(559,2,38,0,0,"ATOMIC", 0, 2, 0);
	trans[1][38]	= settr(553,4,66,29,29,"printf('\\n\\n')", 0, 2, 0); /* m: 39 -> 0,66 */
	reached1[39] = 1;
	trans[1][39]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][40]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][41]	= settr(0,0,0,0,0,"printf('<type>BUYREQ</type>\\n')",0,0,0);
	trans[1][42]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][43]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][66] = settr(581,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(581,0,45,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(581,0,50,0,0,"IF", 0, 2, 0);
	trans[1][45]	= settr(560,0,46,30,0,"((ReqFailBefore==0))", 1, 2, 0);
	trans[1][46]	= settr(561,0,47,31,31,"ReqFailBefore = 1", 1, 2, 0);
	trans[1][47]	= settr(562,0,49,32,0,"printf('First BUYREQ-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][49] = settr(564,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(564,0,48,0,0,"sub-sequence", 0, 2, 0);
	trans[1][48]	= settr(563,0,397,33,33,"CRM2BEG!9,5", 1, 4, 0);
	trans[1][67]	= settr(582,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][50]	= settr(565,0,51,34,0,"((ReqFailBefore==1))", 1, 2, 0);
	trans[1][51]	= settr(566,0,52,35,35,"abncoend = 1", 1, 2, 0);
	trans[1][52]	= settr(567,0,56,36,0,"printf('Last BUYREQ-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][56] = settr(571,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(571,0,53,0,0,"sub-sequence", 0, 2, 0);
	trans[1][53]	= settr(568,0,54,37,37,"BUYREQ_bo.right = 0", 1, 2, 0);
	trans[1][54]	= settr(569,0,55,38,0,"assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.oblig==1))))", 1, 2, 0);
	trans[1][55]	= settr(570,0,63,39,0,"assert(!(((BUYREQ_bo.right==1)&&(BUYREQ_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][63] = settr(578,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(578,2,57,0,0,"ATOMIC", 0, 2, 0);
	trans[1][57]	= settr(572,4,65,40,40,"printf('\\n\\n')", 0, 2, 0); /* m: 58 -> 0,65 */
	reached1[58] = 1;
	trans[1][58]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][59]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][60]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][61]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][62]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][65] = settr(580,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(580,0,64,0,0,"sub-sequence", 0, 2, 0);
	trans[1][64]	= settr(579,0,397,41,41,"CRM2BEG!9,2", 1, 4, 0);
	trans[1][69]	= settr(584,0,71,2,0,"else", 0, 2, 0);
	T = trans[ 1][71] = settr(586,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(586,0,70,0,0,"sub-sequence", 0, 2, 0);
	trans[1][70]	= settr(585,0,397,42,42,"CRM2BEG!6,5", 1, 4, 0);
	T = trans[ 1][85] = settr(600,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(600,0,83,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][83] = settr(598,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(598,0,75,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(598,0,77,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(598,0,79,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(598,0,81,0,0,"IF", 0, 2, 0);
	trans[1][75]	= settr(590,0,76,43,0,"(BEG2CRM?[18,S])", 1, 2, 0);
	trans[1][76]	= settr(591,0,154,44,44,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][84]	= settr(599,0,154,1,0,".(goto)", 0, 2, 0);
	trans[1][77]	= settr(592,0,78,45,0,"(BEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][78]	= settr(593,0,154,46,46,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][79]	= settr(594,0,80,47,0,"(BEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][80]	= settr(595,0,154,48,48,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][81]	= settr(596,0,82,49,0,"(BEG2CRM?[18,BF])", 1, 2, 0);
	trans[1][82]	= settr(597,0,154,50,50,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][154] = settr(669,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(669,0,152,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][152] = settr(667,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(667,0,86,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(667,0,113,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(667,0,149,0,0,"IF", 0, 2, 0);
	trans[1][86]	= settr(601,0,112,51,0,"((((BUYREJ_bo.oblig==1)&&((BUYREJ_bo.role_pl==STORE)==1))&&((BUYREJ_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][112] = settr(627,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(627,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[1][87]	= settr(602,0,94,52,52,"STOREexTrace = (STOREexTrace|(1<<BUYREJ_bo.id))", 1, 2, 0);
	T = trans[ 1][94] = settr(609,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(609,2,88,0,0,"ATOMIC", 0, 2, 0);
	trans[1][88]	= settr(603,4,98,53,53,"printf('\\n\\n')", 0, 2, 0); /* m: 89 -> 0,98 */
	reached1[89] = 1;
	trans[1][89]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][90]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"printf('<type>BUYREJ</type>\\n')",0,0,0);
	trans[1][92]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][93]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][98] = settr(613,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(613,0,95,0,0,"sub-sequence", 0, 2, 0);
	trans[1][95]	= settr(610,0,96,54,54,"BUYREJ_bo.oblig = 0", 1, 2, 0);
	trans[1][96]	= settr(611,0,97,55,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][97]	= settr(612,0,102,56,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][102] = settr(617,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(617,0,99,0,0,"sub-sequence", 0, 2, 0);
	trans[1][99]	= settr(614,0,100,57,57,"BUYCONF_bo.oblig = 0", 1, 2, 0);
	trans[1][100]	= settr(615,0,101,58,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][101]	= settr(616,0,109,59,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][109] = settr(624,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(624,2,103,0,0,"ATOMIC", 0, 2, 0);
	trans[1][103]	= settr(618,4,111,60,60,"printf('\\n\\n')", 0, 2, 0); /* m: 104 -> 0,111 */
	reached1[104] = 1;
	trans[1][104]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][105]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][106]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][107]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][108]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][111] = settr(626,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(626,0,110,0,0,"sub-sequence", 0, 2, 0);
	trans[1][110]	= settr(625,0,397,61,61,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][153]	= settr(668,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][113]	= settr(628,0,148,62,0,"((((BUYREJ_bo.oblig==1)&&((BUYREJ_bo.role_pl==STORE)==1))&&((BUYREJ_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][148] = settr(663,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(663,0,120,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][120] = settr(635,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(635,2,114,0,0,"ATOMIC", 0, 2, 0);
	trans[1][114]	= settr(629,4,146,63,63,"printf('\\n\\n')", 0, 2, 0); /* m: 115 -> 0,146 */
	reached1[115] = 1;
	trans[1][115]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][116]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][117]	= settr(0,0,0,0,0,"printf('<type>BUYREJ</type>\\n')",0,0,0);
	trans[1][118]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][119]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][146] = settr(661,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(661,0,121,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(661,0,126,0,0,"IF", 0, 2, 0);
	trans[1][121]	= settr(636,0,122,64,0,"((RejFailBefore==0))", 1, 2, 0);
	trans[1][122]	= settr(637,0,123,65,65,"RejFailBefore = 1", 1, 2, 0);
	trans[1][123]	= settr(638,0,125,66,0,"printf('First BUYREJ-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][125] = settr(640,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(640,0,124,0,0,"sub-sequence", 0, 2, 0);
	trans[1][124]	= settr(639,0,397,67,67,"CRM2BEG!8,5", 1, 4, 0);
	trans[1][147]	= settr(662,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][126]	= settr(641,0,127,68,0,"((RejFailBefore==1))", 1, 2, 0);
	trans[1][127]	= settr(642,0,128,69,69,"abncoend = 1", 1, 2, 0);
	trans[1][128]	= settr(643,0,132,70,0,"printf('Last BUYREJ-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][132] = settr(647,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(647,0,129,0,0,"sub-sequence", 0, 2, 0);
	trans[1][129]	= settr(644,0,130,71,71,"BUYREJ_bo.oblig = 0", 1, 2, 0);
	trans[1][130]	= settr(645,0,131,72,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][131]	= settr(646,0,136,73,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][136] = settr(651,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(651,0,133,0,0,"sub-sequence", 0, 2, 0);
	trans[1][133]	= settr(648,0,134,74,74,"BUYCONF_bo.oblig = 0", 1, 2, 0);
	trans[1][134]	= settr(649,0,135,75,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][135]	= settr(650,0,143,76,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][143] = settr(658,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(658,2,137,0,0,"ATOMIC", 0, 2, 0);
	trans[1][137]	= settr(652,4,145,77,77,"printf('\\n\\n')", 0, 2, 0); /* m: 138 -> 0,145 */
	reached1[138] = 1;
	trans[1][138]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][139]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][140]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][141]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][142]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][145] = settr(660,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(660,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[1][144]	= settr(659,0,397,78,78,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][149]	= settr(664,0,151,2,0,"else", 0, 2, 0);
	T = trans[ 1][151] = settr(666,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(666,0,150,0,0,"sub-sequence", 0, 2, 0);
	trans[1][150]	= settr(665,0,397,79,79,"CRM2BEG!6,5", 1, 4, 0);
	T = trans[ 1][165] = settr(680,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(680,0,163,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][163] = settr(678,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(678,0,155,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(678,0,157,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(678,0,159,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(678,0,161,0,0,"IF", 0, 2, 0);
	trans[1][155]	= settr(670,0,156,80,0,"(BEG2CRM?[19,S])", 1, 2, 0);
	trans[1][156]	= settr(671,0,235,81,81,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][164]	= settr(679,0,235,1,0,".(goto)", 0, 2, 0);
	trans[1][157]	= settr(672,0,158,82,0,"(BEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][158]	= settr(673,0,235,83,83,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][159]	= settr(674,0,160,84,0,"(BEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][160]	= settr(675,0,235,85,85,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][161]	= settr(676,0,162,86,0,"(BEG2CRM?[19,BF])", 1, 2, 0);
	trans[1][162]	= settr(677,0,235,87,87,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][235] = settr(750,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(750,0,233,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][233] = settr(748,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(748,0,166,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(748,0,194,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(748,0,230,0,0,"IF", 0, 2, 0);
	trans[1][166]	= settr(681,0,193,88,0,"((((BUYCONF_bo.oblig==1)&&((BUYCONF_bo.role_pl==STORE)==1))&&((BUYCONF_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][193] = settr(708,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(708,0,167,0,0,"sub-sequence", 0, 2, 0);
	trans[1][167]	= settr(682,0,174,89,89,"STOREexTrace = (STOREexTrace|(1<<BUYCONF_bo.id))", 1, 2, 0);
	T = trans[ 1][174] = settr(689,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(689,2,168,0,0,"ATOMIC", 0, 2, 0);
	trans[1][168]	= settr(683,4,178,90,90,"printf('\\n\\n')", 0, 2, 0); /* m: 169 -> 0,178 */
	reached1[169] = 1;
	trans[1][169]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][170]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][171]	= settr(0,0,0,0,0,"printf('<type>BUYCONF</type>\\n')",0,0,0);
	trans[1][172]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][173]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][178] = settr(693,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(693,0,175,0,0,"sub-sequence", 0, 2, 0);
	trans[1][175]	= settr(690,0,176,91,91,"BUYREJ_bo.oblig = 0", 1, 2, 0);
	trans[1][176]	= settr(691,0,177,92,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][177]	= settr(692,0,182,93,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][182] = settr(697,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(697,0,179,0,0,"sub-sequence", 0, 2, 0);
	trans[1][179]	= settr(694,0,180,94,94,"BUYCONF_bo.oblig = 0", 1, 2, 0);
	trans[1][180]	= settr(695,0,181,95,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][181]	= settr(696,0,186,96,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][186] = settr(701,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(701,0,183,0,0,"sub-sequence", 0, 2, 0);
	trans[1][183]	= settr(698,0,184,97,97,"BUYPAY_bo.oblig = 1", 1, 2, 0);
	trans[1][184]	= settr(699,0,185,98,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][185]	= settr(700,0,190,99,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][190] = settr(705,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(705,0,187,0,0,"sub-sequence", 0, 2, 0);
	trans[1][187]	= settr(702,0,188,100,100,"BUYCANC_bo.oblig = 1", 1, 2, 0);
	trans[1][188]	= settr(703,0,189,101,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][189]	= settr(704,0,192,102,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][192] = settr(707,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(707,0,191,0,0,"sub-sequence", 0, 2, 0);
	trans[1][191]	= settr(706,0,397,103,103,"CRM2BEG!8,5", 1, 4, 0);
	trans[1][234]	= settr(749,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][194]	= settr(709,0,229,104,0,"((((BUYCONF_bo.oblig==1)&&((BUYCONF_bo.role_pl==STORE)==1))&&((BUYCONF_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][229] = settr(744,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(744,0,201,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][201] = settr(716,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(716,2,195,0,0,"ATOMIC", 0, 2, 0);
	trans[1][195]	= settr(710,4,227,105,105,"printf('\\n\\n')", 0, 2, 0); /* m: 196 -> 0,227 */
	reached1[196] = 1;
	trans[1][196]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][197]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][198]	= settr(0,0,0,0,0,"printf('<type>BUYCONF</type>\\n')",0,0,0);
	trans[1][199]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][200]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][227] = settr(742,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(742,0,202,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(742,0,207,0,0,"IF", 0, 2, 0);
	trans[1][202]	= settr(717,0,203,106,0,"((ConfFailBefore==0))", 1, 2, 0);
	trans[1][203]	= settr(718,0,204,107,107,"ConfFailBefore = 1", 1, 2, 0);
	trans[1][204]	= settr(719,0,206,108,0,"printf('First BUYCONF-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][206] = settr(721,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(721,0,205,0,0,"sub-sequence", 0, 2, 0);
	trans[1][205]	= settr(720,0,397,109,109,"CRM2BEG!8,5", 1, 4, 0);
	trans[1][228]	= settr(743,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][207]	= settr(722,0,208,110,0,"((ConfFailBefore==1))", 1, 2, 0);
	trans[1][208]	= settr(723,0,209,111,111,"abncoend = 1", 1, 2, 0);
	trans[1][209]	= settr(724,0,213,112,0,"printf('Last BUYCONF-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][213] = settr(728,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(728,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[1][210]	= settr(725,0,211,113,113,"BUYREJ_bo.oblig = 0", 1, 2, 0);
	trans[1][211]	= settr(726,0,212,114,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][212]	= settr(727,0,217,115,0,"assert(!(((BUYREJ_bo.oblig==1)&&(BUYREJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][217] = settr(732,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(732,0,214,0,0,"sub-sequence", 0, 2, 0);
	trans[1][214]	= settr(729,0,215,116,116,"BUYCONF_bo.oblig = 0", 1, 2, 0);
	trans[1][215]	= settr(730,0,216,117,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][216]	= settr(731,0,224,118,0,"assert(!(((BUYCONF_bo.oblig==1)&&(BUYCONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][224] = settr(739,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(739,2,218,0,0,"ATOMIC", 0, 2, 0);
	trans[1][218]	= settr(733,4,226,119,119,"printf('\\n\\n')", 0, 2, 0); /* m: 219 -> 0,226 */
	reached1[219] = 1;
	trans[1][219]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][220]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][221]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][222]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][223]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][226] = settr(741,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(741,0,225,0,0,"sub-sequence", 0, 2, 0);
	trans[1][225]	= settr(740,0,397,120,120,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][230]	= settr(745,0,232,2,0,"else", 0, 2, 0);
	T = trans[ 1][232] = settr(747,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(747,0,231,0,0,"sub-sequence", 0, 2, 0);
	trans[1][231]	= settr(746,0,397,121,121,"CRM2BEG!6,5", 1, 4, 0);
	T = trans[ 1][246] = settr(761,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(761,0,244,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][244] = settr(759,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(759,0,236,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(759,0,238,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(759,0,240,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(759,0,242,0,0,"IF", 0, 2, 0);
	trans[1][236]	= settr(751,0,237,122,0,"(BEG2CRM?[20,S])", 1, 2, 0);
	trans[1][237]	= settr(752,0,316,123,123,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][245]	= settr(760,0,316,1,0,".(goto)", 0, 2, 0);
	trans[1][238]	= settr(753,0,239,124,0,"(BEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][239]	= settr(754,0,316,125,125,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][240]	= settr(755,0,241,126,0,"(BEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][241]	= settr(756,0,316,127,127,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][242]	= settr(757,0,243,128,0,"(BEG2CRM?[20,BF])", 1, 2, 0);
	trans[1][243]	= settr(758,0,316,129,129,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][316] = settr(831,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(831,0,247,0,0,"sub-sequence", 0, 2, 0);
	trans[1][247]	= settr(762,0,314,130,0,"printf('BUYPAY rule (first lines) \\n')", 0, 2, 0);
	T = trans[1][314] = settr(829,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(829,0,248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(829,0,275,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(829,0,311,0,0,"IF", 0, 2, 0);
	trans[1][248]	= settr(763,0,274,131,0,"((((BUYPAY_bo.oblig==1)&&((BUYPAY_bo.role_pl==BUYER)==1))&&((BUYPAY_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][274] = settr(789,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(789,0,249,0,0,"sub-sequence", 0, 2, 0);
	trans[1][249]	= settr(764,0,256,132,132,"BUYERexTrace = (BUYERexTrace|(1<<BUYPAY_bo.id))", 1, 2, 0);
	T = trans[ 1][256] = settr(771,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(771,2,250,0,0,"ATOMIC", 0, 2, 0);
	trans[1][250]	= settr(765,4,260,133,133,"printf('\\n\\n')", 0, 2, 0); /* m: 251 -> 0,260 */
	reached1[251] = 1;
	trans[1][251]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][252]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][253]	= settr(0,0,0,0,0,"printf('<type>BUYPAY</type>\\n')",0,0,0);
	trans[1][254]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][255]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][260] = settr(775,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(775,0,257,0,0,"sub-sequence", 0, 2, 0);
	trans[1][257]	= settr(772,0,258,134,134,"BUYPAY_bo.oblig = 0", 1, 2, 0);
	trans[1][258]	= settr(773,0,259,135,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][259]	= settr(774,0,264,136,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][264] = settr(779,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(779,0,261,0,0,"sub-sequence", 0, 2, 0);
	trans[1][261]	= settr(776,0,262,137,137,"BUYCANC_bo.oblig = 0", 1, 2, 0);
	trans[1][262]	= settr(777,0,263,138,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][263]	= settr(778,0,271,139,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][271] = settr(786,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(786,2,265,0,0,"ATOMIC", 0, 2, 0);
	trans[1][265]	= settr(780,4,273,140,140,"printf('\\n\\n')", 0, 2, 0); /* m: 266 -> 0,273 */
	reached1[266] = 1;
	trans[1][266]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][267]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][268]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][269]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][270]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][273] = settr(788,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(788,0,272,0,0,"sub-sequence", 0, 2, 0);
	trans[1][272]	= settr(787,0,397,141,141,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][315]	= settr(830,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][275]	= settr(790,0,310,142,0,"((((BUYPAY_bo.oblig==1)&&((BUYPAY_bo.role_pl==BUYER)==1))&&((BUYPAY_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][310] = settr(825,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(825,0,282,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][282] = settr(797,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(797,2,276,0,0,"ATOMIC", 0, 2, 0);
	trans[1][276]	= settr(791,4,308,143,143,"printf('\\n\\n')", 0, 2, 0); /* m: 277 -> 0,308 */
	reached1[277] = 1;
	trans[1][277]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][278]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][279]	= settr(0,0,0,0,0,"printf('<type>BUYPAY</type>\\n')",0,0,0);
	trans[1][280]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][281]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][308] = settr(823,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(823,0,283,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(823,0,288,0,0,"IF", 0, 2, 0);
	trans[1][283]	= settr(798,0,284,144,0,"((PayFailBefore==0))", 1, 2, 0);
	trans[1][284]	= settr(799,0,285,145,145,"PayFailBefore = 1", 1, 2, 0);
	trans[1][285]	= settr(800,0,287,146,0,"printf('First BUYPAY-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][287] = settr(802,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(802,0,286,0,0,"sub-sequence", 0, 2, 0);
	trans[1][286]	= settr(801,0,397,147,147,"CRM2BEG!8,5", 1, 4, 0);
	trans[1][309]	= settr(824,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][288]	= settr(803,0,289,148,0,"((PayFailBefore==1))", 1, 2, 0);
	trans[1][289]	= settr(804,0,290,149,149,"abncoend = 1", 1, 2, 0);
	trans[1][290]	= settr(805,0,294,150,0,"printf('Last BUYPAY-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][294] = settr(809,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(809,0,291,0,0,"sub-sequence", 0, 2, 0);
	trans[1][291]	= settr(806,0,292,151,151,"BUYPAY_bo.oblig = 0", 1, 2, 0);
	trans[1][292]	= settr(807,0,293,152,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][293]	= settr(808,0,298,153,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][298] = settr(813,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(813,0,295,0,0,"sub-sequence", 0, 2, 0);
	trans[1][295]	= settr(810,0,296,154,154,"BUYCANC_bo.oblig = 0", 1, 2, 0);
	trans[1][296]	= settr(811,0,297,155,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][297]	= settr(812,0,305,156,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][305] = settr(820,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(820,2,299,0,0,"ATOMIC", 0, 2, 0);
	trans[1][299]	= settr(814,4,307,157,157,"printf('\\n\\n')", 0, 2, 0); /* m: 300 -> 0,307 */
	reached1[300] = 1;
	trans[1][300]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][301]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][302]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][303]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][304]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][307] = settr(822,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(822,0,306,0,0,"sub-sequence", 0, 2, 0);
	trans[1][306]	= settr(821,0,397,158,158,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][311]	= settr(826,0,313,2,0,"else", 0, 2, 0);
	T = trans[ 1][313] = settr(828,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(828,0,312,0,0,"sub-sequence", 0, 2, 0);
	trans[1][312]	= settr(827,0,397,159,159,"CRM2BEG!6,5", 1, 4, 0);
	T = trans[ 1][327] = settr(842,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(842,0,325,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][325] = settr(840,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(840,0,317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(840,0,319,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(840,0,321,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(840,0,323,0,0,"IF", 0, 2, 0);
	trans[1][317]	= settr(832,0,318,160,0,"(BEG2CRM?[21,S])", 1, 2, 0);
	trans[1][318]	= settr(833,0,396,161,161,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][326]	= settr(841,0,396,1,0,".(goto)", 0, 2, 0);
	trans[1][319]	= settr(834,0,320,162,0,"(BEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][320]	= settr(835,0,396,163,163,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][321]	= settr(836,0,322,164,0,"(BEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][322]	= settr(837,0,396,165,165,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][323]	= settr(838,0,324,166,0,"(BEG2CRM?[21,BF])", 1, 2, 0);
	trans[1][324]	= settr(839,0,396,167,167,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][396] = settr(911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(911,0,394,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][394] = settr(909,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(909,0,328,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(909,0,355,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(909,0,391,0,0,"IF", 0, 2, 0);
	trans[1][328]	= settr(843,0,354,168,0,"((((BUYCANC_bo.oblig==1)&&((BUYCANC_bo.role_pl==BUYER)==1))&&((BUYCANC_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][354] = settr(869,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(869,0,329,0,0,"sub-sequence", 0, 2, 0);
	trans[1][329]	= settr(844,0,336,169,169,"BUYERexTrace = (BUYERexTrace|(1<<BUYCANC_bo.id))", 1, 2, 0);
	T = trans[ 1][336] = settr(851,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(851,2,330,0,0,"ATOMIC", 0, 2, 0);
	trans[1][330]	= settr(845,4,340,170,170,"printf('\\n\\n')", 0, 2, 0); /* m: 331 -> 0,340 */
	reached1[331] = 1;
	trans[1][331]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][332]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][333]	= settr(0,0,0,0,0,"printf('<type>BUYCANC</type>\\n')",0,0,0);
	trans[1][334]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][335]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][340] = settr(855,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(855,0,337,0,0,"sub-sequence", 0, 2, 0);
	trans[1][337]	= settr(852,0,338,171,171,"BUYPAY_bo.oblig = 0", 1, 2, 0);
	trans[1][338]	= settr(853,0,339,172,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][339]	= settr(854,0,344,173,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][344] = settr(859,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(859,0,341,0,0,"sub-sequence", 0, 2, 0);
	trans[1][341]	= settr(856,0,342,174,174,"BUYCANC_bo.oblig = 0", 1, 2, 0);
	trans[1][342]	= settr(857,0,343,175,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][343]	= settr(858,0,351,176,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][351] = settr(866,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(866,2,345,0,0,"ATOMIC", 0, 2, 0);
	trans[1][345]	= settr(860,4,353,177,177,"printf('\\n\\n')", 0, 2, 0); /* m: 346 -> 0,353 */
	reached1[346] = 1;
	trans[1][346]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][347]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][348]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][349]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][350]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][353] = settr(868,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(868,0,352,0,0,"sub-sequence", 0, 2, 0);
	trans[1][352]	= settr(867,0,397,178,178,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][395]	= settr(910,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][355]	= settr(870,0,390,179,0,"((((BUYCANC_bo.oblig==1)&&((BUYCANC_bo.role_pl==BUYER)==1))&&((BUYCANC_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][390] = settr(905,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(905,0,362,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][362] = settr(877,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(877,2,356,0,0,"ATOMIC", 0, 2, 0);
	trans[1][356]	= settr(871,4,388,180,180,"printf('\\n\\n')", 0, 2, 0); /* m: 357 -> 0,388 */
	reached1[357] = 1;
	trans[1][357]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][358]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][359]	= settr(0,0,0,0,0,"printf('<type>BUYCANC</type>\\n')",0,0,0);
	trans[1][360]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][361]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][388] = settr(903,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(903,0,363,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(903,0,368,0,0,"IF", 0, 2, 0);
	trans[1][363]	= settr(878,0,364,181,0,"((CancFailBefore==0))", 1, 2, 0);
	trans[1][364]	= settr(879,0,365,182,182,"CancFailBefore = 1", 1, 2, 0);
	trans[1][365]	= settr(880,0,367,183,0,"printf('First BUYCANC-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][367] = settr(882,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(882,0,366,0,0,"sub-sequence", 0, 2, 0);
	trans[1][366]	= settr(881,0,397,184,184,"CRM2BEG!8,5", 1, 4, 0);
	trans[1][389]	= settr(904,0,397,1,0,".(goto)", 0, 2, 0);
	trans[1][368]	= settr(883,0,369,185,0,"((CancFailBefore==1))", 1, 2, 0);
	trans[1][369]	= settr(884,0,370,186,186,"abncoend = 1", 1, 2, 0);
	trans[1][370]	= settr(885,0,374,187,0,"printf('Last BUYCANC-TechnicalFailure')", 0, 2, 0);
	T = trans[ 1][374] = settr(889,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(889,0,371,0,0,"sub-sequence", 0, 2, 0);
	trans[1][371]	= settr(886,0,372,188,188,"BUYPAY_bo.oblig = 0", 1, 2, 0);
	trans[1][372]	= settr(887,0,373,189,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][373]	= settr(888,0,378,190,0,"assert(!(((BUYPAY_bo.oblig==1)&&(BUYPAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][378] = settr(893,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(893,0,375,0,0,"sub-sequence", 0, 2, 0);
	trans[1][375]	= settr(890,0,376,191,191,"BUYCANC_bo.oblig = 0", 1, 2, 0);
	trans[1][376]	= settr(891,0,377,192,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][377]	= settr(892,0,385,193,0,"assert(!(((BUYCANC_bo.oblig==1)&&(BUYCANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][385] = settr(900,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(900,2,379,0,0,"ATOMIC", 0, 2, 0);
	trans[1][379]	= settr(894,4,387,194,194,"printf('\\n\\n')", 0, 2, 0); /* m: 380 -> 0,387 */
	reached1[380] = 1;
	trans[1][380]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][381]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][382]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][383]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][384]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][387] = settr(902,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(902,0,386,0,0,"sub-sequence", 0, 2, 0);
	trans[1][386]	= settr(901,0,397,195,195,"CRM2BEG!8,2", 1, 4, 0);
	trans[1][391]	= settr(906,0,393,2,0,"else", 0, 2, 0);
	T = trans[ 1][393] = settr(908,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(908,0,392,0,0,"sub-sequence", 0, 2, 0);
	trans[1][392]	= settr(907,0,397,196,196,"CRM2BEG!6,5", 1, 4, 0);
	trans[1][399]	= settr(914,0,400,1,0,"break", 0, 2, 0);
	trans[1][400]	= settr(915,0,0,197,197,"-end-", 0, 3500, 0);

	/* proctype 0: BEG */

	trans[0] = (Trans **) emalloc(517*sizeof(Trans *));

	T = trans[ 0][52] = settr(51,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(51,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,198,198,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,199,199,"BUYERexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,200,200,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,201,201,"STOREexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,202,202,"D_STEP174", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,203,203,"D_STEP174", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,204,204,"D_STEP174", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,51,205,205,"D_STEP174", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(50,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,513,206,206,"D_STEP174", 1, 2, 0);
	trans[0][514]	= settr(513,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[0][513] = settr(512,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,99,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,145,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,191,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,237,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,283,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,329,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,375,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(512,0,421,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(512,0,467,0,0,"DO", 0, 2, 0);
	trans[0][53]	= settr(52,0,54,207,0,"((((BUYREQ_bo.right==1)||(BUYREQ_bo.oblig==1))||(BUYREQ_bo.prohib==1)))", 1, 2, 0);
	trans[0][54]	= settr(53,0,56,208,208,"BUYREQ_bo.status = S", 1, 2, 0);
	T = trans[ 0][56] = settr(55,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(55,0,55,0,0,"sub-sequence", 0, 2, 0);
	trans[0][55]	= settr(54,0,98,209,209,"BEG2CRM!17,16", 1, 3, 0);
	T = trans[ 0][98] = settr(97,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(97,0,96,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][96] = settr(95,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,58,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,61,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,67,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,73,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,79,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,82,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,88,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(95,0,91,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(95,0,94,0,0,"IF", 0, 2, 0);
	T = trans[ 0][58] = settr(57,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(57,0,57,0,0,"sub-sequence", 0, 2, 0);
	trans[0][57]	= settr(56,0,59,210,210,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][59]	= settr(58,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][97]	= settr(96,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][61] = settr(60,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(60,0,60,0,0,"sub-sequence", 0, 2, 0);
	trans[0][60]	= settr(59,0,62,211,211,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][62]	= settr(61,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][64] = settr(63,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(63,0,63,0,0,"sub-sequence", 0, 2, 0);
	trans[0][63]	= settr(62,0,65,212,212,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][65]	= settr(64,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][67] = settr(66,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(66,0,66,0,0,"sub-sequence", 0, 2, 0);
	trans[0][66]	= settr(65,0,68,213,213,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][68]	= settr(67,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(69,0,69,0,0,"sub-sequence", 0, 2, 0);
	trans[0][69]	= settr(68,0,52,214,214,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][71]	= settr(70,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][73] = settr(72,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(72,0,72,0,0,"sub-sequence", 0, 2, 0);
	trans[0][72]	= settr(71,0,52,215,215,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][74]	= settr(73,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][76] = settr(75,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(75,0,75,0,0,"sub-sequence", 0, 2, 0);
	trans[0][75]	= settr(74,0,52,216,216,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][77]	= settr(76,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(78,0,78,0,0,"sub-sequence", 0, 2, 0);
	trans[0][78]	= settr(77,0,52,217,217,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][80]	= settr(79,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[0][81]	= settr(80,0,52,218,218,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][83]	= settr(82,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,84,0,0,"sub-sequence", 0, 2, 0);
	trans[0][84]	= settr(83,0,52,219,219,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][86]	= settr(85,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][88] = settr(87,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(87,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[0][87]	= settr(86,0,513,220,220,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][89]	= settr(88,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][91] = settr(90,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(90,0,90,0,0,"sub-sequence", 0, 2, 0);
	trans[0][90]	= settr(89,0,513,221,221,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][92]	= settr(91,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][94] = settr(93,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(93,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[0][93]	= settr(92,0,513,222,222,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][95]	= settr(94,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][99]	= settr(98,0,100,223,0,"((((BUYREQ_bo.right==1)||(BUYREQ_bo.oblig==1))||(BUYREQ_bo.prohib==1)))", 1, 2, 0);
	trans[0][100]	= settr(99,0,102,224,224,"BUYREQ_bo.status = TF", 1, 2, 0);
	T = trans[ 0][102] = settr(101,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(101,0,101,0,0,"sub-sequence", 0, 2, 0);
	trans[0][101]	= settr(100,0,144,225,225,"BEG2CRM!17,14", 1, 3, 0);
	T = trans[ 0][144] = settr(143,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(143,0,142,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][142] = settr(141,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,104,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,107,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,113,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,119,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,128,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,134,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(141,0,137,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(141,0,140,0,0,"IF", 0, 2, 0);
	T = trans[ 0][104] = settr(103,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(103,0,103,0,0,"sub-sequence", 0, 2, 0);
	trans[0][103]	= settr(102,0,105,226,226,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][105]	= settr(104,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][143]	= settr(142,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][107] = settr(106,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(106,0,106,0,0,"sub-sequence", 0, 2, 0);
	trans[0][106]	= settr(105,0,108,227,227,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][108]	= settr(107,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(109,0,109,0,0,"sub-sequence", 0, 2, 0);
	trans[0][109]	= settr(108,0,111,228,228,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][111]	= settr(110,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][113] = settr(112,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(112,0,112,0,0,"sub-sequence", 0, 2, 0);
	trans[0][112]	= settr(111,0,114,229,229,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][114]	= settr(113,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][116] = settr(115,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(115,0,115,0,0,"sub-sequence", 0, 2, 0);
	trans[0][115]	= settr(114,0,52,230,230,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][117]	= settr(116,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(118,0,118,0,0,"sub-sequence", 0, 2, 0);
	trans[0][118]	= settr(117,0,52,231,231,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][120]	= settr(119,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][122] = settr(121,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(121,0,121,0,0,"sub-sequence", 0, 2, 0);
	trans[0][121]	= settr(120,0,52,232,232,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][123]	= settr(122,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(124,0,124,0,0,"sub-sequence", 0, 2, 0);
	trans[0][124]	= settr(123,0,52,233,233,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][126]	= settr(125,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][128] = settr(127,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(127,0,127,0,0,"sub-sequence", 0, 2, 0);
	trans[0][127]	= settr(126,0,52,234,234,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][129]	= settr(128,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(130,0,130,0,0,"sub-sequence", 0, 2, 0);
	trans[0][130]	= settr(129,0,52,235,235,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][132]	= settr(131,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][134] = settr(133,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(133,0,133,0,0,"sub-sequence", 0, 2, 0);
	trans[0][133]	= settr(132,0,513,236,236,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][135]	= settr(134,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][137] = settr(136,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(136,0,136,0,0,"sub-sequence", 0, 2, 0);
	trans[0][136]	= settr(135,0,513,237,237,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][138]	= settr(137,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][140] = settr(139,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(139,0,139,0,0,"sub-sequence", 0, 2, 0);
	trans[0][139]	= settr(138,0,513,238,238,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][141]	= settr(140,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][145]	= settr(144,0,146,239,0,"((((BUYREJ_bo.right==1)||(BUYREJ_bo.oblig==1))||(BUYREJ_bo.prohib==1)))", 1, 2, 0);
	trans[0][146]	= settr(145,0,148,240,240,"BUYREJ_bo.status = S", 1, 2, 0);
	T = trans[ 0][148] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,147,0,0,"sub-sequence", 0, 2, 0);
	trans[0][147]	= settr(146,0,190,241,241,"BEG2CRM!18,16", 1, 3, 0);
	T = trans[ 0][190] = settr(189,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(189,0,188,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][188] = settr(187,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,174,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,177,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,180,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(187,0,183,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(187,0,186,0,0,"IF", 0, 2, 0);
	T = trans[ 0][150] = settr(149,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(149,0,149,0,0,"sub-sequence", 0, 2, 0);
	trans[0][149]	= settr(148,0,151,242,242,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][151]	= settr(150,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][189]	= settr(188,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][153] = settr(152,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(152,0,152,0,0,"sub-sequence", 0, 2, 0);
	trans[0][152]	= settr(151,0,154,243,243,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][154]	= settr(153,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][156] = settr(155,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(155,0,155,0,0,"sub-sequence", 0, 2, 0);
	trans[0][155]	= settr(154,0,157,244,244,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][157]	= settr(156,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][159] = settr(158,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(158,0,158,0,0,"sub-sequence", 0, 2, 0);
	trans[0][158]	= settr(157,0,160,245,245,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][160]	= settr(159,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][162] = settr(161,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(161,0,161,0,0,"sub-sequence", 0, 2, 0);
	trans[0][161]	= settr(160,0,52,246,246,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][163]	= settr(162,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][165] = settr(164,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(164,0,164,0,0,"sub-sequence", 0, 2, 0);
	trans[0][164]	= settr(163,0,52,247,247,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][166]	= settr(165,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][168] = settr(167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(167,0,167,0,0,"sub-sequence", 0, 2, 0);
	trans[0][167]	= settr(166,0,52,248,248,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][169]	= settr(168,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][171] = settr(170,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(170,0,170,0,0,"sub-sequence", 0, 2, 0);
	trans[0][170]	= settr(169,0,52,249,249,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][172]	= settr(171,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][174] = settr(173,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(173,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[0][173]	= settr(172,0,52,250,250,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][175]	= settr(174,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][177] = settr(176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(176,0,176,0,0,"sub-sequence", 0, 2, 0);
	trans[0][176]	= settr(175,0,52,251,251,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][178]	= settr(177,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][180] = settr(179,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(179,0,179,0,0,"sub-sequence", 0, 2, 0);
	trans[0][179]	= settr(178,0,513,252,252,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][181]	= settr(180,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(182,0,182,0,0,"sub-sequence", 0, 2, 0);
	trans[0][182]	= settr(181,0,513,253,253,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][184]	= settr(183,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][186] = settr(185,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(185,0,185,0,0,"sub-sequence", 0, 2, 0);
	trans[0][185]	= settr(184,0,513,254,254,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][187]	= settr(186,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][191]	= settr(190,0,192,255,0,"((((BUYREJ_bo.right==1)||(BUYREJ_bo.oblig==1))||(BUYREJ_bo.prohib==1)))", 1, 2, 0);
	trans[0][192]	= settr(191,0,194,256,256,"BUYREJ_bo.status = TF", 1, 2, 0);
	T = trans[ 0][194] = settr(193,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(193,0,193,0,0,"sub-sequence", 0, 2, 0);
	trans[0][193]	= settr(192,0,236,257,257,"BEG2CRM!18,14", 1, 3, 0);
	T = trans[ 0][236] = settr(235,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(235,0,234,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][234] = settr(233,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,202,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,214,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,217,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,220,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,223,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,226,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(233,0,229,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(233,0,232,0,0,"IF", 0, 2, 0);
	T = trans[ 0][196] = settr(195,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(195,0,195,0,0,"sub-sequence", 0, 2, 0);
	trans[0][195]	= settr(194,0,197,258,258,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][197]	= settr(196,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][235]	= settr(234,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][199] = settr(198,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(198,0,198,0,0,"sub-sequence", 0, 2, 0);
	trans[0][198]	= settr(197,0,200,259,259,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][200]	= settr(199,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][202] = settr(201,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(201,0,201,0,0,"sub-sequence", 0, 2, 0);
	trans[0][201]	= settr(200,0,203,260,260,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][203]	= settr(202,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][205] = settr(204,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(204,0,204,0,0,"sub-sequence", 0, 2, 0);
	trans[0][204]	= settr(203,0,206,261,261,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][206]	= settr(205,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][208] = settr(207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(207,0,207,0,0,"sub-sequence", 0, 2, 0);
	trans[0][207]	= settr(206,0,52,262,262,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][209]	= settr(208,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][211] = settr(210,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(210,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[0][210]	= settr(209,0,52,263,263,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][212]	= settr(211,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][214] = settr(213,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(213,0,213,0,0,"sub-sequence", 0, 2, 0);
	trans[0][213]	= settr(212,0,52,264,264,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][215]	= settr(214,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][217] = settr(216,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(216,0,216,0,0,"sub-sequence", 0, 2, 0);
	trans[0][216]	= settr(215,0,52,265,265,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][218]	= settr(217,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][220] = settr(219,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(219,0,219,0,0,"sub-sequence", 0, 2, 0);
	trans[0][219]	= settr(218,0,52,266,266,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][221]	= settr(220,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][223] = settr(222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(222,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[0][222]	= settr(221,0,52,267,267,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][224]	= settr(223,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][226] = settr(225,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(225,0,225,0,0,"sub-sequence", 0, 2, 0);
	trans[0][225]	= settr(224,0,513,268,268,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][227]	= settr(226,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][229] = settr(228,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(228,0,228,0,0,"sub-sequence", 0, 2, 0);
	trans[0][228]	= settr(227,0,513,269,269,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][230]	= settr(229,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][232] = settr(231,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(231,0,231,0,0,"sub-sequence", 0, 2, 0);
	trans[0][231]	= settr(230,0,513,270,270,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][233]	= settr(232,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][237]	= settr(236,0,238,271,0,"((((BUYCONF_bo.right==1)||(BUYCONF_bo.oblig==1))||(BUYCONF_bo.prohib==1)))", 1, 2, 0);
	trans[0][238]	= settr(237,0,240,272,272,"BUYCONF_bo.status = S", 1, 2, 0);
	T = trans[ 0][240] = settr(239,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(239,0,239,0,0,"sub-sequence", 0, 2, 0);
	trans[0][239]	= settr(238,0,282,273,273,"BEG2CRM!19,16", 1, 3, 0);
	T = trans[ 0][282] = settr(281,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(281,0,280,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][280] = settr(279,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,242,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,245,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,248,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,251,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,254,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,257,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,260,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,263,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,266,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,272,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(279,0,275,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(279,0,278,0,0,"IF", 0, 2, 0);
	T = trans[ 0][242] = settr(241,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(241,0,241,0,0,"sub-sequence", 0, 2, 0);
	trans[0][241]	= settr(240,0,243,274,274,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][243]	= settr(242,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][281]	= settr(280,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][245] = settr(244,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(244,0,244,0,0,"sub-sequence", 0, 2, 0);
	trans[0][244]	= settr(243,0,246,275,275,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][246]	= settr(245,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][248] = settr(247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(247,0,247,0,0,"sub-sequence", 0, 2, 0);
	trans[0][247]	= settr(246,0,249,276,276,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][249]	= settr(248,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][251] = settr(250,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(250,0,250,0,0,"sub-sequence", 0, 2, 0);
	trans[0][250]	= settr(249,0,252,277,277,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][252]	= settr(251,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][254] = settr(253,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(253,0,253,0,0,"sub-sequence", 0, 2, 0);
	trans[0][253]	= settr(252,0,52,278,278,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][255]	= settr(254,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][257] = settr(256,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(256,0,256,0,0,"sub-sequence", 0, 2, 0);
	trans[0][256]	= settr(255,0,52,279,279,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][258]	= settr(257,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][260] = settr(259,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(259,0,259,0,0,"sub-sequence", 0, 2, 0);
	trans[0][259]	= settr(258,0,52,280,280,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][261]	= settr(260,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][263] = settr(262,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(262,0,262,0,0,"sub-sequence", 0, 2, 0);
	trans[0][262]	= settr(261,0,52,281,281,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][264]	= settr(263,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][266] = settr(265,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(265,0,265,0,0,"sub-sequence", 0, 2, 0);
	trans[0][265]	= settr(264,0,52,282,282,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][267]	= settr(266,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][269] = settr(268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(268,0,268,0,0,"sub-sequence", 0, 2, 0);
	trans[0][268]	= settr(267,0,52,283,283,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][270]	= settr(269,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][272] = settr(271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(271,0,271,0,0,"sub-sequence", 0, 2, 0);
	trans[0][271]	= settr(270,0,513,284,284,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][273]	= settr(272,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][275] = settr(274,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(274,0,274,0,0,"sub-sequence", 0, 2, 0);
	trans[0][274]	= settr(273,0,513,285,285,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][276]	= settr(275,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][278] = settr(277,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(277,0,277,0,0,"sub-sequence", 0, 2, 0);
	trans[0][277]	= settr(276,0,513,286,286,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][279]	= settr(278,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][283]	= settr(282,0,284,287,0,"((((BUYCONF_bo.right==1)||(BUYCONF_bo.oblig==1))||(BUYCONF_bo.prohib==1)))", 1, 2, 0);
	trans[0][284]	= settr(283,0,286,288,288,"BUYCONF_bo.status = TF", 1, 2, 0);
	T = trans[ 0][286] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,285,0,0,"sub-sequence", 0, 2, 0);
	trans[0][285]	= settr(284,0,328,289,289,"BEG2CRM!19,14", 1, 3, 0);
	T = trans[ 0][328] = settr(327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(327,0,326,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][326] = settr(325,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,288,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,291,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,294,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,297,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,300,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,303,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,306,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,312,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,318,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,321,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(325,0,324,0,0,"IF", 0, 2, 0);
	T = trans[ 0][288] = settr(287,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(287,0,287,0,0,"sub-sequence", 0, 2, 0);
	trans[0][287]	= settr(286,0,289,290,290,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][289]	= settr(288,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][327]	= settr(326,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][291] = settr(290,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(290,0,290,0,0,"sub-sequence", 0, 2, 0);
	trans[0][290]	= settr(289,0,292,291,291,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][292]	= settr(291,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][294] = settr(293,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(293,0,293,0,0,"sub-sequence", 0, 2, 0);
	trans[0][293]	= settr(292,0,295,292,292,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][295]	= settr(294,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][297] = settr(296,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(296,0,296,0,0,"sub-sequence", 0, 2, 0);
	trans[0][296]	= settr(295,0,298,293,293,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][298]	= settr(297,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][300] = settr(299,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(299,0,299,0,0,"sub-sequence", 0, 2, 0);
	trans[0][299]	= settr(298,0,52,294,294,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][301]	= settr(300,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][303] = settr(302,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(302,0,302,0,0,"sub-sequence", 0, 2, 0);
	trans[0][302]	= settr(301,0,52,295,295,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][304]	= settr(303,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][306] = settr(305,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(305,0,305,0,0,"sub-sequence", 0, 2, 0);
	trans[0][305]	= settr(304,0,52,296,296,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][307]	= settr(306,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][309] = settr(308,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(308,0,308,0,0,"sub-sequence", 0, 2, 0);
	trans[0][308]	= settr(307,0,52,297,297,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][310]	= settr(309,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][312] = settr(311,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(311,0,311,0,0,"sub-sequence", 0, 2, 0);
	trans[0][311]	= settr(310,0,52,298,298,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][313]	= settr(312,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][315] = settr(314,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(314,0,314,0,0,"sub-sequence", 0, 2, 0);
	trans[0][314]	= settr(313,0,52,299,299,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][316]	= settr(315,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][318] = settr(317,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(317,0,317,0,0,"sub-sequence", 0, 2, 0);
	trans[0][317]	= settr(316,0,513,300,300,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][319]	= settr(318,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][321] = settr(320,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(320,0,320,0,0,"sub-sequence", 0, 2, 0);
	trans[0][320]	= settr(319,0,513,301,301,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][322]	= settr(321,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][324] = settr(323,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(323,0,323,0,0,"sub-sequence", 0, 2, 0);
	trans[0][323]	= settr(322,0,513,302,302,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][325]	= settr(324,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][329]	= settr(328,0,330,303,0,"((((BUYPAY_bo.right==1)||(BUYPAY_bo.oblig==1))||(BUYPAY_bo.prohib==1)))", 1, 2, 0);
	trans[0][330]	= settr(329,0,332,304,304,"BUYPAY_bo.status = S", 1, 2, 0);
	T = trans[ 0][332] = settr(331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(331,0,331,0,0,"sub-sequence", 0, 2, 0);
	trans[0][331]	= settr(330,0,374,305,305,"BEG2CRM!20,16", 1, 3, 0);
	T = trans[ 0][374] = settr(373,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(373,0,372,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][372] = settr(371,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,346,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,352,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,355,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,358,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,361,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,364,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,367,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(371,0,370,0,0,"IF", 0, 2, 0);
	T = trans[ 0][334] = settr(333,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(333,0,333,0,0,"sub-sequence", 0, 2, 0);
	trans[0][333]	= settr(332,0,335,306,306,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][335]	= settr(334,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][373]	= settr(372,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][337] = settr(336,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(336,0,336,0,0,"sub-sequence", 0, 2, 0);
	trans[0][336]	= settr(335,0,338,307,307,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][338]	= settr(337,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,339,0,0,"sub-sequence", 0, 2, 0);
	trans[0][339]	= settr(338,0,341,308,308,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][341]	= settr(340,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][343] = settr(342,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(342,0,342,0,0,"sub-sequence", 0, 2, 0);
	trans[0][342]	= settr(341,0,344,309,309,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][344]	= settr(343,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][346] = settr(345,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(345,0,345,0,0,"sub-sequence", 0, 2, 0);
	trans[0][345]	= settr(344,0,52,310,310,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][347]	= settr(346,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][349] = settr(348,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(348,0,348,0,0,"sub-sequence", 0, 2, 0);
	trans[0][348]	= settr(347,0,52,311,311,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][350]	= settr(349,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][352] = settr(351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(351,0,351,0,0,"sub-sequence", 0, 2, 0);
	trans[0][351]	= settr(350,0,52,312,312,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][353]	= settr(352,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][355] = settr(354,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(354,0,354,0,0,"sub-sequence", 0, 2, 0);
	trans[0][354]	= settr(353,0,52,313,313,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][356]	= settr(355,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][358] = settr(357,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(357,0,357,0,0,"sub-sequence", 0, 2, 0);
	trans[0][357]	= settr(356,0,52,314,314,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][359]	= settr(358,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][361] = settr(360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(360,0,360,0,0,"sub-sequence", 0, 2, 0);
	trans[0][360]	= settr(359,0,52,315,315,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][362]	= settr(361,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][364] = settr(363,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(363,0,363,0,0,"sub-sequence", 0, 2, 0);
	trans[0][363]	= settr(362,0,513,316,316,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][365]	= settr(364,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][367] = settr(366,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(366,0,366,0,0,"sub-sequence", 0, 2, 0);
	trans[0][366]	= settr(365,0,513,317,317,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][368]	= settr(367,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][370] = settr(369,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(369,0,369,0,0,"sub-sequence", 0, 2, 0);
	trans[0][369]	= settr(368,0,513,318,318,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][371]	= settr(370,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][375]	= settr(374,0,376,319,0,"((((BUYPAY_bo.right==1)||(BUYPAY_bo.oblig==1))||(BUYPAY_bo.prohib==1)))", 1, 2, 0);
	trans[0][376]	= settr(375,0,378,320,320,"BUYPAY_bo.status = TF", 1, 2, 0);
	T = trans[ 0][378] = settr(377,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(377,0,377,0,0,"sub-sequence", 0, 2, 0);
	trans[0][377]	= settr(376,0,420,321,321,"BEG2CRM!20,14", 1, 3, 0);
	T = trans[ 0][420] = settr(419,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(419,0,418,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][418] = settr(417,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,380,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,383,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,386,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,389,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,392,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,398,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,401,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,404,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,407,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,410,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(417,0,413,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(417,0,416,0,0,"IF", 0, 2, 0);
	T = trans[ 0][380] = settr(379,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(379,0,379,0,0,"sub-sequence", 0, 2, 0);
	trans[0][379]	= settr(378,0,381,322,322,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][381]	= settr(380,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][419]	= settr(418,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][383] = settr(382,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(382,0,382,0,0,"sub-sequence", 0, 2, 0);
	trans[0][382]	= settr(381,0,384,323,323,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][384]	= settr(383,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][386] = settr(385,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(385,0,385,0,0,"sub-sequence", 0, 2, 0);
	trans[0][385]	= settr(384,0,387,324,324,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][387]	= settr(386,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][389] = settr(388,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(388,0,388,0,0,"sub-sequence", 0, 2, 0);
	trans[0][388]	= settr(387,0,390,325,325,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][390]	= settr(389,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][392] = settr(391,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(391,0,391,0,0,"sub-sequence", 0, 2, 0);
	trans[0][391]	= settr(390,0,52,326,326,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][393]	= settr(392,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][395] = settr(394,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(394,0,394,0,0,"sub-sequence", 0, 2, 0);
	trans[0][394]	= settr(393,0,52,327,327,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][396]	= settr(395,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][398] = settr(397,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(397,0,397,0,0,"sub-sequence", 0, 2, 0);
	trans[0][397]	= settr(396,0,52,328,328,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][399]	= settr(398,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][401] = settr(400,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(400,0,400,0,0,"sub-sequence", 0, 2, 0);
	trans[0][400]	= settr(399,0,52,329,329,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][402]	= settr(401,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][404] = settr(403,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(403,0,403,0,0,"sub-sequence", 0, 2, 0);
	trans[0][403]	= settr(402,0,52,330,330,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][405]	= settr(404,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][407] = settr(406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(406,0,406,0,0,"sub-sequence", 0, 2, 0);
	trans[0][406]	= settr(405,0,52,331,331,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][408]	= settr(407,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][410] = settr(409,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(409,0,409,0,0,"sub-sequence", 0, 2, 0);
	trans[0][409]	= settr(408,0,513,332,332,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][411]	= settr(410,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][413] = settr(412,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(412,0,412,0,0,"sub-sequence", 0, 2, 0);
	trans[0][412]	= settr(411,0,513,333,333,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][414]	= settr(413,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][416] = settr(415,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(415,0,415,0,0,"sub-sequence", 0, 2, 0);
	trans[0][415]	= settr(414,0,513,334,334,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][417]	= settr(416,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][421]	= settr(420,0,422,335,0,"((((BUYCANC_bo.right==1)||(BUYCANC_bo.oblig==1))||(BUYCANC_bo.prohib==1)))", 1, 2, 0);
	trans[0][422]	= settr(421,0,424,336,336,"BUYCANC_bo.status = S", 1, 2, 0);
	T = trans[ 0][424] = settr(423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(423,0,423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][423]	= settr(422,0,466,337,337,"BEG2CRM!21,16", 1, 3, 0);
	T = trans[ 0][466] = settr(465,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(465,0,464,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][464] = settr(463,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,426,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,429,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,432,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,438,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,441,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,444,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,447,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,450,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,453,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,456,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(463,0,459,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(463,0,462,0,0,"IF", 0, 2, 0);
	T = trans[ 0][426] = settr(425,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(425,0,425,0,0,"sub-sequence", 0, 2, 0);
	trans[0][425]	= settr(424,0,427,338,338,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][427]	= settr(426,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][465]	= settr(464,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][429] = settr(428,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(428,0,428,0,0,"sub-sequence", 0, 2, 0);
	trans[0][428]	= settr(427,0,430,339,339,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][430]	= settr(429,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][432] = settr(431,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(431,0,431,0,0,"sub-sequence", 0, 2, 0);
	trans[0][431]	= settr(430,0,433,340,340,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][433]	= settr(432,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][435] = settr(434,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(434,0,434,0,0,"sub-sequence", 0, 2, 0);
	trans[0][434]	= settr(433,0,436,341,341,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][436]	= settr(435,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][438] = settr(437,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(437,0,437,0,0,"sub-sequence", 0, 2, 0);
	trans[0][437]	= settr(436,0,52,342,342,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][439]	= settr(438,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][441] = settr(440,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(440,0,440,0,0,"sub-sequence", 0, 2, 0);
	trans[0][440]	= settr(439,0,52,343,343,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][442]	= settr(441,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][444] = settr(443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(443,0,443,0,0,"sub-sequence", 0, 2, 0);
	trans[0][443]	= settr(442,0,52,344,344,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][445]	= settr(444,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][447] = settr(446,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(446,0,446,0,0,"sub-sequence", 0, 2, 0);
	trans[0][446]	= settr(445,0,52,345,345,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][448]	= settr(447,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][450] = settr(449,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(449,0,449,0,0,"sub-sequence", 0, 2, 0);
	trans[0][449]	= settr(448,0,52,346,346,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][451]	= settr(450,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][453] = settr(452,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(452,0,452,0,0,"sub-sequence", 0, 2, 0);
	trans[0][452]	= settr(451,0,52,347,347,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][454]	= settr(453,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][456] = settr(455,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(455,0,455,0,0,"sub-sequence", 0, 2, 0);
	trans[0][455]	= settr(454,0,513,348,348,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][457]	= settr(456,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][459] = settr(458,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(458,0,458,0,0,"sub-sequence", 0, 2, 0);
	trans[0][458]	= settr(457,0,513,349,349,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][460]	= settr(459,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][462] = settr(461,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(461,0,461,0,0,"sub-sequence", 0, 2, 0);
	trans[0][461]	= settr(460,0,513,350,350,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][463]	= settr(462,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][467]	= settr(466,0,468,351,0,"((((BUYCANC_bo.right==1)||(BUYCANC_bo.oblig==1))||(BUYCANC_bo.prohib==1)))", 1, 2, 0);
	trans[0][468]	= settr(467,0,470,352,352,"BUYCANC_bo.status = TF", 1, 2, 0);
	T = trans[ 0][470] = settr(469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(469,0,469,0,0,"sub-sequence", 0, 2, 0);
	trans[0][469]	= settr(468,0,512,353,353,"BEG2CRM!21,14", 1, 3, 0);
	T = trans[ 0][512] = settr(511,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(511,0,510,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][510] = settr(509,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,472,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,478,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,481,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,484,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,487,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,490,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(509,0,505,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(509,0,508,0,0,"IF", 0, 2, 0);
	T = trans[ 0][472] = settr(471,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(471,0,471,0,0,"sub-sequence", 0, 2, 0);
	trans[0][471]	= settr(470,0,473,354,354,"CRM2BEG?9,5", 1, 504, 0);
	trans[0][473]	= settr(472,0,513,1,0,"(1)", 0, 2, 0);
	trans[0][511]	= settr(510,0,513,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][475] = settr(474,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(474,0,474,0,0,"sub-sequence", 0, 2, 0);
	trans[0][474]	= settr(473,0,476,355,355,"CRM2BEG?8,5", 1, 504, 0);
	trans[0][476]	= settr(475,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][478] = settr(477,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(477,0,477,0,0,"sub-sequence", 0, 2, 0);
	trans[0][477]	= settr(476,0,479,356,356,"CRM2BEG?7,5", 1, 504, 0);
	trans[0][479]	= settr(478,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][481] = settr(480,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(480,0,480,0,0,"sub-sequence", 0, 2, 0);
	trans[0][480]	= settr(479,0,482,357,357,"CRM2BEG?6,5", 1, 504, 0);
	trans[0][482]	= settr(481,0,513,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][484] = settr(483,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(483,0,483,0,0,"sub-sequence", 0, 2, 0);
	trans[0][483]	= settr(482,0,52,358,358,"CRM2BEG?9,3", 1, 504, 0);
	trans[0][485]	= settr(484,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][487] = settr(486,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(486,0,486,0,0,"sub-sequence", 0, 2, 0);
	trans[0][486]	= settr(485,0,52,359,359,"CRM2BEG?8,3", 1, 504, 0);
	trans[0][488]	= settr(487,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][490] = settr(489,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(489,0,489,0,0,"sub-sequence", 0, 2, 0);
	trans[0][489]	= settr(488,0,52,360,360,"CRM2BEG?7,3", 1, 504, 0);
	trans[0][491]	= settr(490,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][493] = settr(492,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(492,0,492,0,0,"sub-sequence", 0, 2, 0);
	trans[0][492]	= settr(491,0,52,361,361,"CRM2BEG?9,1", 1, 504, 0);
	trans[0][494]	= settr(493,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][496] = settr(495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(495,0,495,0,0,"sub-sequence", 0, 2, 0);
	trans[0][495]	= settr(494,0,52,362,362,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][497]	= settr(496,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][499] = settr(498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(498,0,498,0,0,"sub-sequence", 0, 2, 0);
	trans[0][498]	= settr(497,0,52,363,363,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][500]	= settr(499,0,52,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][502] = settr(501,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(501,0,501,0,0,"sub-sequence", 0, 2, 0);
	trans[0][501]	= settr(500,0,513,364,364,"CRM2BEG?9,2", 1, 504, 0);
	trans[0][503]	= settr(502,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][505] = settr(504,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(504,0,504,0,0,"sub-sequence", 0, 2, 0);
	trans[0][504]	= settr(503,0,513,365,365,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][506]	= settr(505,0,513,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][508] = settr(507,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(507,0,507,0,0,"sub-sequence", 0, 2, 0);
	trans[0][507]	= settr(506,0,513,366,366,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][509]	= settr(508,0,513,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][515]	= settr(514,0,516,1,0,"break", 0, 2, 0);
	trans[0][516]	= settr(515,0,0,367,367,"-end-", 0, 3500, 0);
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
