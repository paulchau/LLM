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

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: ltlCheck */

	trans[3] = (Trans **) emalloc(7*sizeof(Trans *));

	trans[3][4]	= settr(476,0,3,1,0,".(goto)", 0, 2, 0);
	T = trans[3][3] = settr(475,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(475,0,1,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(473,0,3,3,0,"((!(((a_lo.right==1)&&(a_lo.role_pl==STUDENT)))||((c_lo.prohib==1)&&(c_lo.role_pl==STUDENT))))", 1, 2, 0);
	trans[3][2]	= settr(474,0,3,1,0,"goto T0_init", 0, 2, 0);
	trans[3][5]	= settr(477,0,6,1,0,"break", 0, 2, 0);
	trans[3][6]	= settr(478,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(5*sizeof(Trans *));

	T = trans[ 2][3] = settr(471,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(471,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(469,2,2,5,5,"(run LEG())", 0, 2, 0);
	trans[2][2]	= settr(470,0,4,6,6,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(472,0,0,7,7,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(239*sizeof(Trans *));

	trans[1][1]	= settr(231,0,235,8,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][236]	= settr(466,0,235,1,0,".(goto)", 0, 2, 0);
	T = trans[1][235] = settr(465,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(465,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(465,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(465,0,141,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(465,0,196,0,0,"DO", 0, 2, 0);
	T = trans[ 1][12] = settr(242,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(242,0,10,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][10] = settr(240,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(240,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(240,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(240,0,6,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(240,0,8,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(232,0,3,9,0,"(LEG2CRM?[17,S])", 1, 2, 0);
	trans[1][3]	= settr(233,0,75,10,10,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][11]	= settr(241,0,75,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(234,0,5,11,0,"(LEG2CRM?[17,TO])", 1, 2, 0);
	trans[1][5]	= settr(235,0,75,12,12,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(236,0,7,13,0,"(LEG2CRM?[17,TF])", 1, 2, 0);
	trans[1][7]	= settr(237,0,75,14,14,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(238,0,9,15,0,"(LEG2CRM?[17,LF])", 1, 2, 0);
	trans[1][9]	= settr(239,0,75,16,16,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][75] = settr(305,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(305,0,73,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][73] = settr(303,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(303,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(303,0,66,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(303,0,70,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(243,0,65,17,0,"((((a_lo.right==1)&&((a_lo.role_pl==STUDENT)==1))&&((a_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][65] = settr(295,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(295,0,17,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][17] = settr(247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(247,0,14,0,0,"sub-sequence", 0, 2, 0);
	trans[1][14]	= settr(244,0,15,18,18,"a_lo.right = 0", 1, 2, 0);
	trans[1][15]	= settr(245,0,16,19,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][16]	= settr(246,0,21,20,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][21] = settr(251,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(251,0,18,0,0,"sub-sequence", 0, 2, 0);
	trans[1][18]	= settr(248,0,19,21,21,"d_lo.prohib = 0", 1, 2, 0);
	trans[1][19]	= settr(249,0,20,22,0,"assert(!(((d_lo.prohib==1)&&(d_lo.right==1))))", 1, 2, 0);
	trans[1][20]	= settr(250,0,32,23,0,"assert(!(((d_lo.prohib==1)&&(d_lo.oblig==1))))", 1, 2, 0);
	T = trans[1][32] = settr(262,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(262,0,22,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(262,0,27,0,0,"IF", 0, 2, 0);
	trans[1][22]	= settr(252,0,26,24,0,"(((b_lo.prohib==1)&&(b_lo.role_pl==STUDENT)))", 1, 2, 0);
	T = trans[ 1][26] = settr(256,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(256,0,23,0,0,"sub-sequence", 0, 2, 0);
	trans[1][23]	= settr(253,0,24,25,25,"b_lo.prohib = 1", 1, 2, 0);
	trans[1][24]	= settr(254,0,25,26,0,"assert(!(((b_lo.prohib==1)&&(b_lo.right==1))))", 1, 2, 0);
	trans[1][25]	= settr(255,0,44,27,0,"assert(!(((b_lo.prohib==1)&&(b_lo.oblig==1))))", 1, 2, 0);
	trans[1][33]	= settr(263,0,44,1,0,".(goto)", 0, 2, 0);
	trans[1][27]	= settr(257,0,31,2,0,"else", 0, 2, 0);
	T = trans[ 1][31] = settr(261,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(261,0,28,0,0,"sub-sequence", 0, 2, 0);
	trans[1][28]	= settr(258,0,29,28,28,"b_lo.oblig = 1", 1, 2, 0);
	trans[1][29]	= settr(259,0,30,29,0,"assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))", 1, 2, 0);
	trans[1][30]	= settr(260,0,44,30,0,"assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))", 1, 2, 0);
	T = trans[1][44] = settr(274,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(274,0,34,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(274,0,39,0,0,"IF", 0, 2, 0);
	trans[1][34]	= settr(264,0,38,31,0,"(((c_lo.prohib==1)&&(c_lo.role_pl==STUDENT)))", 1, 2, 0);
	T = trans[ 1][38] = settr(268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(268,0,35,0,0,"sub-sequence", 0, 2, 0);
	trans[1][35]	= settr(265,0,36,32,32,"c_lo.prohib = 1", 1, 2, 0);
	trans[1][36]	= settr(266,0,37,33,0,"assert(!(((c_lo.prohib==1)&&(c_lo.right==1))))", 1, 2, 0);
	trans[1][37]	= settr(267,0,61,34,0,"assert(!(((c_lo.prohib==1)&&(c_lo.oblig==1))))", 1, 2, 0);
	trans[1][45]	= settr(275,0,61,1,0,".(goto)", 0, 2, 0);
	trans[1][39]	= settr(269,0,43,2,0,"else", 0, 2, 0);
	T = trans[ 1][43] = settr(273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(273,0,40,0,0,"sub-sequence", 0, 2, 0);
	trans[1][40]	= settr(270,0,41,35,35,"c_lo.oblig = 1", 1, 2, 0);
	trans[1][41]	= settr(271,0,42,36,0,"assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))", 1, 2, 0);
	trans[1][42]	= settr(272,0,61,37,0,"assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))", 1, 2, 0);
	T = trans[1][61] = settr(291,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(291,0,46,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(291,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(291,0,56,0,0,"IF", 0, 2, 0);
	trans[1][46]	= settr(276,0,50,38,0,"(((b_lo.executed==1)&&(b_lo.role_pl==STUDENT)))", 1, 2, 0);
	T = trans[ 1][50] = settr(280,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(280,0,47,0,0,"sub-sequence", 0, 2, 0);
	trans[1][47]	= settr(277,0,48,39,39,"d_lo.oblig = 1", 1, 2, 0);
	trans[1][48]	= settr(278,0,49,40,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][49]	= settr(279,0,64,41,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	trans[1][62]	= settr(292,0,64,1,0,".(goto)", 0, 2, 0);
	trans[1][51]	= settr(281,0,55,42,0,"(((c_lo.executed==1)&&(c_lo.role_pl==STUDENT)))", 1, 2, 0);
	T = trans[ 1][55] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,52,0,0,"sub-sequence", 0, 2, 0);
	trans[1][52]	= settr(282,0,53,43,43,"d_lo.oblig = 1", 1, 2, 0);
	trans[1][53]	= settr(283,0,54,44,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][54]	= settr(284,0,64,45,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	trans[1][56]	= settr(286,0,60,2,0,"else", 0, 2, 0);
	T = trans[ 1][60] = settr(290,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(290,0,57,0,0,"sub-sequence", 0, 2, 0);
	trans[1][57]	= settr(287,0,58,46,46,"d_lo.prohib = 1", 1, 2, 0);
	trans[1][58]	= settr(288,0,59,47,0,"assert(!(((d_lo.prohib==1)&&(d_lo.right==1))))", 1, 2, 0);
	trans[1][59]	= settr(289,0,64,48,0,"assert(!(((d_lo.prohib==1)&&(d_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][64] = settr(294,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(294,0,63,0,0,"sub-sequence", 0, 2, 0);
	trans[1][63]	= settr(293,0,235,49,49,"CRM2LEG!9,5", 1, 4, 0);
	trans[1][74]	= settr(304,0,235,1,0,".(goto)", 0, 2, 0);
	trans[1][66]	= settr(296,0,69,50,0,"((((a_lo.prohib==1)&&((a_lo.role_pl==STUDENT)==1))&&((a_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][69] = settr(299,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(299,0,68,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][68] = settr(298,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(298,0,67,0,0,"sub-sequence", 0, 2, 0);
	trans[1][67]	= settr(297,0,235,51,51,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][70]	= settr(300,0,72,2,0,"else", 0, 2, 0);
	T = trans[ 1][72] = settr(302,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(302,0,71,0,0,"sub-sequence", 0, 2, 0);
	trans[1][71]	= settr(301,0,235,52,52,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][86] = settr(316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(316,0,84,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][84] = settr(314,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(314,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(314,0,78,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(314,0,80,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(314,0,82,0,0,"IF", 0, 2, 0);
	trans[1][76]	= settr(306,0,77,53,0,"(LEG2CRM?[18,S])", 1, 2, 0);
	trans[1][77]	= settr(307,0,130,54,54,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][85]	= settr(315,0,130,1,0,".(goto)", 0, 2, 0);
	trans[1][78]	= settr(308,0,79,55,0,"(LEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][79]	= settr(309,0,130,56,56,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][80]	= settr(310,0,81,57,0,"(LEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][81]	= settr(311,0,130,58,58,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][82]	= settr(312,0,83,59,0,"(LEG2CRM?[18,LF])", 1, 2, 0);
	trans[1][83]	= settr(313,0,130,60,60,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][130] = settr(360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(360,0,128,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][128] = settr(358,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(358,0,87,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(358,0,105,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(358,0,125,0,0,"IF", 0, 2, 0);
	trans[1][87]	= settr(317,0,104,61,0,"((((b_lo.oblig==1)&&((b_lo.role_pl==STUDENT)==1))&&((b_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][104] = settr(334,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(334,0,91,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][91] = settr(321,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(321,0,88,0,0,"sub-sequence", 0, 2, 0);
	trans[1][88]	= settr(318,0,89,62,62,"a_lo.right = 1", 1, 2, 0);
	trans[1][89]	= settr(319,0,90,63,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][90]	= settr(320,0,95,64,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][95] = settr(325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(325,0,92,0,0,"sub-sequence", 0, 2, 0);
	trans[1][92]	= settr(322,0,93,65,65,"b_lo.oblig = 0", 1, 2, 0);
	trans[1][93]	= settr(323,0,94,66,0,"assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))", 1, 2, 0);
	trans[1][94]	= settr(324,0,99,67,0,"assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][99] = settr(329,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(329,0,96,0,0,"sub-sequence", 0, 2, 0);
	trans[1][96]	= settr(326,0,97,68,68,"b_lo.prohib = 1", 1, 2, 0);
	trans[1][97]	= settr(327,0,98,69,0,"assert(!(((b_lo.prohib==1)&&(b_lo.right==1))))", 1, 2, 0);
	trans[1][98]	= settr(328,0,100,70,0,"assert(!(((b_lo.prohib==1)&&(b_lo.oblig==1))))", 1, 2, 0);
	trans[1][100]	= settr(330,0,101,71,71,"STUDENTexTrace = (STUDENTexTrace|(1<<b_lo.id))", 1, 2, 0);
	trans[1][101]	= settr(331,0,103,72,72,"b_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][103] = settr(333,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(333,0,102,0,0,"sub-sequence", 0, 2, 0);
	trans[1][102]	= settr(332,0,235,73,73,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][129]	= settr(359,0,235,1,0,".(goto)", 0, 2, 0);
	trans[1][105]	= settr(335,0,124,74,0,"((((b_lo.prohib==1)&&((b_lo.role_pl==STUDENT)==1))&&((b_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][124] = settr(354,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(354,0,109,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][109] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,106,0,0,"sub-sequence", 0, 2, 0);
	trans[1][106]	= settr(336,0,107,75,75,"a_lo.right = 1", 1, 2, 0);
	trans[1][107]	= settr(337,0,108,76,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][108]	= settr(338,0,113,77,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][113] = settr(343,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(343,0,110,0,0,"sub-sequence", 0, 2, 0);
	trans[1][110]	= settr(340,0,111,78,78,"b_lo.oblig = 0", 1, 2, 0);
	trans[1][111]	= settr(341,0,112,79,0,"assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))", 1, 2, 0);
	trans[1][112]	= settr(342,0,117,80,0,"assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][117] = settr(347,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(347,0,114,0,0,"sub-sequence", 0, 2, 0);
	trans[1][114]	= settr(344,0,115,81,81,"c_lo.oblig = 0", 1, 2, 0);
	trans[1][115]	= settr(345,0,116,82,0,"assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))", 1, 2, 0);
	trans[1][116]	= settr(346,0,121,83,0,"assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][121] = settr(351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(351,0,118,0,0,"sub-sequence", 0, 2, 0);
	trans[1][118]	= settr(348,0,119,84,84,"d_lo.oblig = 0", 1, 2, 0);
	trans[1][119]	= settr(349,0,120,85,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][120]	= settr(350,0,123,86,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][123] = settr(353,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(353,0,122,0,0,"sub-sequence", 0, 2, 0);
	trans[1][122]	= settr(352,0,235,87,87,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][125]	= settr(355,0,127,2,0,"else", 0, 2, 0);
	T = trans[ 1][127] = settr(357,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(357,0,126,0,0,"sub-sequence", 0, 2, 0);
	trans[1][126]	= settr(356,0,235,88,88,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][141] = settr(371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(371,0,139,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][139] = settr(369,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(369,0,131,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(369,0,133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(369,0,135,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(369,0,137,0,0,"IF", 0, 2, 0);
	trans[1][131]	= settr(361,0,132,89,0,"(LEG2CRM?[19,S])", 1, 2, 0);
	trans[1][132]	= settr(362,0,185,90,90,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][140]	= settr(370,0,185,1,0,".(goto)", 0, 2, 0);
	trans[1][133]	= settr(363,0,134,91,0,"(LEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][134]	= settr(364,0,185,92,92,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][135]	= settr(365,0,136,93,0,"(LEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][136]	= settr(366,0,185,94,94,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][137]	= settr(367,0,138,95,0,"(LEG2CRM?[19,LF])", 1, 2, 0);
	trans[1][138]	= settr(368,0,185,96,96,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][185] = settr(415,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(415,0,183,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][183] = settr(413,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(413,0,142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(413,0,160,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(413,0,180,0,0,"IF", 0, 2, 0);
	trans[1][142]	= settr(372,0,159,97,0,"((((c_lo.oblig==1)&&((c_lo.role_pl==STUDENT)==1))&&((c_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][159] = settr(389,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(389,0,146,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][146] = settr(376,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(376,0,143,0,0,"sub-sequence", 0, 2, 0);
	trans[1][143]	= settr(373,0,144,98,98,"a_lo.right = 1", 1, 2, 0);
	trans[1][144]	= settr(374,0,145,99,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][145]	= settr(375,0,150,100,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][150] = settr(380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(380,0,147,0,0,"sub-sequence", 0, 2, 0);
	trans[1][147]	= settr(377,0,148,101,101,"c_lo.oblig = 0", 1, 2, 0);
	trans[1][148]	= settr(378,0,149,102,0,"assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))", 1, 2, 0);
	trans[1][149]	= settr(379,0,154,103,0,"assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][154] = settr(384,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(384,0,151,0,0,"sub-sequence", 0, 2, 0);
	trans[1][151]	= settr(381,0,152,104,104,"c_lo.prohib = 1", 1, 2, 0);
	trans[1][152]	= settr(382,0,153,105,0,"assert(!(((c_lo.prohib==1)&&(c_lo.right==1))))", 1, 2, 0);
	trans[1][153]	= settr(383,0,155,106,0,"assert(!(((c_lo.prohib==1)&&(c_lo.oblig==1))))", 1, 2, 0);
	trans[1][155]	= settr(385,0,156,107,107,"STUDENTexTrace = (STUDENTexTrace|(1<<c_lo.id))", 1, 2, 0);
	trans[1][156]	= settr(386,0,158,108,108,"c_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][158] = settr(388,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(388,0,157,0,0,"sub-sequence", 0, 2, 0);
	trans[1][157]	= settr(387,0,235,109,109,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][184]	= settr(414,0,235,1,0,".(goto)", 0, 2, 0);
	trans[1][160]	= settr(390,0,179,110,0,"((((c_lo.prohib==1)&&((c_lo.role_pl==STUDENT)==1))&&((c_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][179] = settr(409,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(409,0,164,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][164] = settr(394,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(394,0,161,0,0,"sub-sequence", 0, 2, 0);
	trans[1][161]	= settr(391,0,162,111,111,"a_lo.right = 1", 1, 2, 0);
	trans[1][162]	= settr(392,0,163,112,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][163]	= settr(393,0,168,113,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][168] = settr(398,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(398,0,165,0,0,"sub-sequence", 0, 2, 0);
	trans[1][165]	= settr(395,0,166,114,114,"b_lo.oblig = 0", 1, 2, 0);
	trans[1][166]	= settr(396,0,167,115,0,"assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))", 1, 2, 0);
	trans[1][167]	= settr(397,0,172,116,0,"assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][172] = settr(402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(402,0,169,0,0,"sub-sequence", 0, 2, 0);
	trans[1][169]	= settr(399,0,170,117,117,"c_lo.oblig = 0", 1, 2, 0);
	trans[1][170]	= settr(400,0,171,118,0,"assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))", 1, 2, 0);
	trans[1][171]	= settr(401,0,176,119,0,"assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][176] = settr(406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(406,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[1][173]	= settr(403,0,174,120,120,"d_lo.oblig = 0", 1, 2, 0);
	trans[1][174]	= settr(404,0,175,121,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][175]	= settr(405,0,178,122,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][178] = settr(408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(408,0,177,0,0,"sub-sequence", 0, 2, 0);
	trans[1][177]	= settr(407,0,235,123,123,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][180]	= settr(410,0,182,2,0,"else", 0, 2, 0);
	T = trans[ 1][182] = settr(412,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(412,0,181,0,0,"sub-sequence", 0, 2, 0);
	trans[1][181]	= settr(411,0,235,124,124,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][196] = settr(426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(426,0,194,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][194] = settr(424,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(424,0,186,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(424,0,188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(424,0,190,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(424,0,192,0,0,"IF", 0, 2, 0);
	trans[1][186]	= settr(416,0,187,125,0,"(LEG2CRM?[20,S])", 1, 2, 0);
	trans[1][187]	= settr(417,0,234,126,126,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][195]	= settr(425,0,234,1,0,".(goto)", 0, 2, 0);
	trans[1][188]	= settr(418,0,189,127,0,"(LEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][189]	= settr(419,0,234,128,128,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][190]	= settr(420,0,191,129,0,"(LEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][191]	= settr(421,0,234,130,130,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][192]	= settr(422,0,193,131,0,"(LEG2CRM?[20,LF])", 1, 2, 0);
	trans[1][193]	= settr(423,0,234,132,132,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][234] = settr(464,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(464,0,232,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][232] = settr(462,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(462,0,197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(462,0,209,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(462,0,229,0,0,"IF", 0, 2, 0);
	trans[1][197]	= settr(427,0,208,133,0,"((((d_lo.oblig==1)&&((d_lo.role_pl==STUDENT)==1))&&((d_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][208] = settr(438,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(438,0,201,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][201] = settr(431,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(431,0,198,0,0,"sub-sequence", 0, 2, 0);
	trans[1][198]	= settr(428,0,199,134,134,"d_lo.oblig = 0", 1, 2, 0);
	trans[1][199]	= settr(429,0,200,135,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][200]	= settr(430,0,205,136,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][205] = settr(435,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(435,0,202,0,0,"sub-sequence", 0, 2, 0);
	trans[1][202]	= settr(432,0,203,137,137,"a_lo.right = 1", 1, 2, 0);
	trans[1][203]	= settr(433,0,204,138,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][204]	= settr(434,0,207,139,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][207] = settr(437,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(437,0,206,0,0,"sub-sequence", 0, 2, 0);
	trans[1][206]	= settr(436,0,235,140,140,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][233]	= settr(463,0,235,1,0,".(goto)", 0, 2, 0);
	trans[1][209]	= settr(439,0,228,141,0,"((((d_lo.prohib==1)&&((d_lo.role_pl==STUDENT)==1))&&((d_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][228] = settr(458,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(458,0,213,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][213] = settr(443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(443,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[1][210]	= settr(440,0,211,142,142,"a_lo.right = 1", 1, 2, 0);
	trans[1][211]	= settr(441,0,212,143,0,"assert(!(((a_lo.right==1)&&(a_lo.oblig==1))))", 1, 2, 0);
	trans[1][212]	= settr(442,0,217,144,0,"assert(!(((a_lo.right==1)&&(a_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][217] = settr(447,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(447,0,214,0,0,"sub-sequence", 0, 2, 0);
	trans[1][214]	= settr(444,0,215,145,145,"b_lo.oblig = 0", 1, 2, 0);
	trans[1][215]	= settr(445,0,216,146,0,"assert(!(((b_lo.oblig==1)&&(b_lo.prohib==1))))", 1, 2, 0);
	trans[1][216]	= settr(446,0,221,147,0,"assert(!(((b_lo.oblig==1)&&(b_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][221] = settr(451,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(451,0,218,0,0,"sub-sequence", 0, 2, 0);
	trans[1][218]	= settr(448,0,219,148,148,"c_lo.oblig = 0", 1, 2, 0);
	trans[1][219]	= settr(449,0,220,149,0,"assert(!(((c_lo.oblig==1)&&(c_lo.prohib==1))))", 1, 2, 0);
	trans[1][220]	= settr(450,0,225,150,0,"assert(!(((c_lo.oblig==1)&&(c_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][225] = settr(455,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(455,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[1][222]	= settr(452,0,223,151,151,"d_lo.oblig = 0", 1, 2, 0);
	trans[1][223]	= settr(453,0,224,152,0,"assert(!(((d_lo.oblig==1)&&(d_lo.prohib==1))))", 1, 2, 0);
	trans[1][224]	= settr(454,0,227,153,0,"assert(!(((d_lo.oblig==1)&&(d_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][227] = settr(457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(457,0,226,0,0,"sub-sequence", 0, 2, 0);
	trans[1][226]	= settr(456,0,235,154,154,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][229]	= settr(459,0,231,2,0,"else", 0, 2, 0);
	T = trans[ 1][231] = settr(461,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(461,0,230,0,0,"sub-sequence", 0, 2, 0);
	trans[1][230]	= settr(460,0,235,155,155,"CRM2LEG!6,5", 1, 4, 0);
	trans[1][237]	= settr(467,0,238,1,0,"break", 0, 2, 0);
	trans[1][238]	= settr(468,0,0,156,156,"-end-", 0, 3500, 0);

	/* proctype 0: LEG */

	trans[0] = (Trans **) emalloc(232*sizeof(Trans *));

	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(42,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,157,157,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,158,158,"STUDENTexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,159,159,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,160,160,"LMSexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,161,161,"D_STEP174", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,162,162,"D_STEP174", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,163,163,"D_STEP174", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,228,164,164,"D_STEP174", 1, 2, 0);
	trans[0][229]	= settr(228,0,228,1,0,".(goto)", 0, 2, 0);
	T = trans[0][228] = settr(227,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(227,0,44,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(227,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(227,0,136,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(227,0,182,0,0,"DO", 0, 2, 0);
	trans[0][44]	= settr(43,0,45,165,0,"((((a_lo.right==1)||(a_lo.oblig==1))||(a_lo.prohib==1)))", 1, 2, 0);
	trans[0][45]	= settr(44,0,47,166,166,"a_lo.status = S", 1, 2, 0);
	T = trans[ 0][47] = settr(46,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(46,0,46,0,0,"sub-sequence", 0, 2, 0);
	trans[0][46]	= settr(45,0,89,167,167,"LEG2CRM!17,16", 1, 3, 0);
	T = trans[ 0][89] = settr(88,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(88,0,87,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][87] = settr(86,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,49,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,52,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,55,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,58,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,61,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,67,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,73,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,76,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,79,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(86,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(86,0,85,0,0,"IF", 0, 2, 0);
	T = trans[ 0][49] = settr(48,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(48,0,48,0,0,"sub-sequence", 0, 2, 0);
	trans[0][48]	= settr(47,0,50,168,168,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][50]	= settr(49,0,228,1,0,"(1)", 0, 2, 0);
	trans[0][88]	= settr(87,0,228,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][52] = settr(51,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(51,0,51,0,0,"sub-sequence", 0, 2, 0);
	trans[0][51]	= settr(50,0,53,169,169,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][53]	= settr(52,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][55] = settr(54,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(54,0,54,0,0,"sub-sequence", 0, 2, 0);
	trans[0][54]	= settr(53,0,56,170,170,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][56]	= settr(55,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][58] = settr(57,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(57,0,57,0,0,"sub-sequence", 0, 2, 0);
	trans[0][57]	= settr(56,0,59,171,171,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][59]	= settr(58,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][61] = settr(60,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(60,0,60,0,0,"sub-sequence", 0, 2, 0);
	trans[0][60]	= settr(59,0,43,172,172,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][62]	= settr(61,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][64] = settr(63,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(63,0,63,0,0,"sub-sequence", 0, 2, 0);
	trans[0][63]	= settr(62,0,43,173,173,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][65]	= settr(64,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][67] = settr(66,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(66,0,66,0,0,"sub-sequence", 0, 2, 0);
	trans[0][66]	= settr(65,0,43,174,174,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][68]	= settr(67,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][70] = settr(69,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(69,0,69,0,0,"sub-sequence", 0, 2, 0);
	trans[0][69]	= settr(68,0,43,175,175,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][71]	= settr(70,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][73] = settr(72,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(72,0,72,0,0,"sub-sequence", 0, 2, 0);
	trans[0][72]	= settr(71,0,43,176,176,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][74]	= settr(73,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][76] = settr(75,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(75,0,75,0,0,"sub-sequence", 0, 2, 0);
	trans[0][75]	= settr(74,0,43,177,177,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][77]	= settr(76,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(78,0,78,0,0,"sub-sequence", 0, 2, 0);
	trans[0][78]	= settr(77,0,228,178,178,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][80]	= settr(79,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[0][81]	= settr(80,0,228,179,179,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][83]	= settr(82,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,84,0,0,"sub-sequence", 0, 2, 0);
	trans[0][84]	= settr(83,0,228,180,180,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][86]	= settr(85,0,228,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][90]	= settr(89,0,91,181,0,"((((b_lo.right==1)||(b_lo.oblig==1))||(b_lo.prohib==1)))", 1, 2, 0);
	trans[0][91]	= settr(90,0,93,182,182,"b_lo.status = S", 1, 2, 0);
	T = trans[ 0][93] = settr(92,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(92,0,92,0,0,"sub-sequence", 0, 2, 0);
	trans[0][92]	= settr(91,0,135,183,183,"LEG2CRM!18,16", 1, 3, 0);
	T = trans[ 0][135] = settr(134,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(134,0,133,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][133] = settr(132,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,95,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,98,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,101,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,104,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,107,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,113,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,116,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,119,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,122,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,128,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(132,0,131,0,0,"IF", 0, 2, 0);
	T = trans[ 0][95] = settr(94,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(94,0,94,0,0,"sub-sequence", 0, 2, 0);
	trans[0][94]	= settr(93,0,96,184,184,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][96]	= settr(95,0,228,1,0,"(1)", 0, 2, 0);
	trans[0][134]	= settr(133,0,228,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][98] = settr(97,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(97,0,97,0,0,"sub-sequence", 0, 2, 0);
	trans[0][97]	= settr(96,0,99,185,185,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][99]	= settr(98,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][101] = settr(100,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(100,0,100,0,0,"sub-sequence", 0, 2, 0);
	trans[0][100]	= settr(99,0,102,186,186,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][102]	= settr(101,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][104] = settr(103,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(103,0,103,0,0,"sub-sequence", 0, 2, 0);
	trans[0][103]	= settr(102,0,105,187,187,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][105]	= settr(104,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][107] = settr(106,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(106,0,106,0,0,"sub-sequence", 0, 2, 0);
	trans[0][106]	= settr(105,0,43,188,188,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][108]	= settr(107,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(109,0,109,0,0,"sub-sequence", 0, 2, 0);
	trans[0][109]	= settr(108,0,43,189,189,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][111]	= settr(110,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][113] = settr(112,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(112,0,112,0,0,"sub-sequence", 0, 2, 0);
	trans[0][112]	= settr(111,0,43,190,190,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][114]	= settr(113,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][116] = settr(115,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(115,0,115,0,0,"sub-sequence", 0, 2, 0);
	trans[0][115]	= settr(114,0,43,191,191,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][117]	= settr(116,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(118,0,118,0,0,"sub-sequence", 0, 2, 0);
	trans[0][118]	= settr(117,0,43,192,192,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][120]	= settr(119,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][122] = settr(121,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(121,0,121,0,0,"sub-sequence", 0, 2, 0);
	trans[0][121]	= settr(120,0,43,193,193,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][123]	= settr(122,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(124,0,124,0,0,"sub-sequence", 0, 2, 0);
	trans[0][124]	= settr(123,0,228,194,194,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][126]	= settr(125,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][128] = settr(127,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(127,0,127,0,0,"sub-sequence", 0, 2, 0);
	trans[0][127]	= settr(126,0,228,195,195,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][129]	= settr(128,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(130,0,130,0,0,"sub-sequence", 0, 2, 0);
	trans[0][130]	= settr(129,0,228,196,196,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][132]	= settr(131,0,228,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][136]	= settr(135,0,137,197,0,"((((c_lo.right==1)||(c_lo.oblig==1))||(c_lo.prohib==1)))", 1, 2, 0);
	trans[0][137]	= settr(136,0,139,198,198,"c_lo.status = S", 1, 2, 0);
	T = trans[ 0][139] = settr(138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(138,0,138,0,0,"sub-sequence", 0, 2, 0);
	trans[0][138]	= settr(137,0,181,199,199,"LEG2CRM!19,16", 1, 3, 0);
	T = trans[ 0][181] = settr(180,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(180,0,179,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][179] = settr(178,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,141,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,147,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,156,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,162,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,168,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,171,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,174,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(178,0,177,0,0,"IF", 0, 2, 0);
	T = trans[ 0][141] = settr(140,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(140,0,140,0,0,"sub-sequence", 0, 2, 0);
	trans[0][140]	= settr(139,0,142,200,200,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][142]	= settr(141,0,228,1,0,"(1)", 0, 2, 0);
	trans[0][180]	= settr(179,0,228,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][144] = settr(143,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(143,0,143,0,0,"sub-sequence", 0, 2, 0);
	trans[0][143]	= settr(142,0,145,201,201,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][145]	= settr(144,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][147] = settr(146,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(146,0,146,0,0,"sub-sequence", 0, 2, 0);
	trans[0][146]	= settr(145,0,148,202,202,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][148]	= settr(147,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][150] = settr(149,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(149,0,149,0,0,"sub-sequence", 0, 2, 0);
	trans[0][149]	= settr(148,0,151,203,203,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][151]	= settr(150,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][153] = settr(152,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(152,0,152,0,0,"sub-sequence", 0, 2, 0);
	trans[0][152]	= settr(151,0,43,204,204,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][154]	= settr(153,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][156] = settr(155,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(155,0,155,0,0,"sub-sequence", 0, 2, 0);
	trans[0][155]	= settr(154,0,43,205,205,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][157]	= settr(156,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][159] = settr(158,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(158,0,158,0,0,"sub-sequence", 0, 2, 0);
	trans[0][158]	= settr(157,0,43,206,206,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][160]	= settr(159,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][162] = settr(161,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(161,0,161,0,0,"sub-sequence", 0, 2, 0);
	trans[0][161]	= settr(160,0,43,207,207,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][163]	= settr(162,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][165] = settr(164,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(164,0,164,0,0,"sub-sequence", 0, 2, 0);
	trans[0][164]	= settr(163,0,43,208,208,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][166]	= settr(165,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][168] = settr(167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(167,0,167,0,0,"sub-sequence", 0, 2, 0);
	trans[0][167]	= settr(166,0,43,209,209,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][169]	= settr(168,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][171] = settr(170,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(170,0,170,0,0,"sub-sequence", 0, 2, 0);
	trans[0][170]	= settr(169,0,228,210,210,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][172]	= settr(171,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][174] = settr(173,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(173,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[0][173]	= settr(172,0,228,211,211,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][175]	= settr(174,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][177] = settr(176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(176,0,176,0,0,"sub-sequence", 0, 2, 0);
	trans[0][176]	= settr(175,0,228,212,212,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][178]	= settr(177,0,228,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][182]	= settr(181,0,183,213,0,"((((d_lo.right==1)||(d_lo.oblig==1))||(d_lo.prohib==1)))", 1, 2, 0);
	trans[0][183]	= settr(182,0,185,214,214,"d_lo.status = S", 1, 2, 0);
	T = trans[ 0][185] = settr(184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(184,0,184,0,0,"sub-sequence", 0, 2, 0);
	trans[0][184]	= settr(183,0,227,215,215,"LEG2CRM!20,16", 1, 3, 0);
	T = trans[ 0][227] = settr(226,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(226,0,225,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][225] = settr(224,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,187,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,193,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,196,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,202,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,205,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,214,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,217,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(224,0,220,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(224,0,223,0,0,"IF", 0, 2, 0);
	T = trans[ 0][187] = settr(186,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(186,0,186,0,0,"sub-sequence", 0, 2, 0);
	trans[0][186]	= settr(185,0,188,216,216,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][188]	= settr(187,0,228,1,0,"(1)", 0, 2, 0);
	trans[0][226]	= settr(225,0,228,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][190] = settr(189,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(189,0,189,0,0,"sub-sequence", 0, 2, 0);
	trans[0][189]	= settr(188,0,191,217,217,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][191]	= settr(190,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][193] = settr(192,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(192,0,192,0,0,"sub-sequence", 0, 2, 0);
	trans[0][192]	= settr(191,0,194,218,218,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][194]	= settr(193,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][196] = settr(195,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(195,0,195,0,0,"sub-sequence", 0, 2, 0);
	trans[0][195]	= settr(194,0,197,219,219,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][197]	= settr(196,0,228,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][199] = settr(198,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(198,0,198,0,0,"sub-sequence", 0, 2, 0);
	trans[0][198]	= settr(197,0,43,220,220,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][200]	= settr(199,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][202] = settr(201,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(201,0,201,0,0,"sub-sequence", 0, 2, 0);
	trans[0][201]	= settr(200,0,43,221,221,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][203]	= settr(202,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][205] = settr(204,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(204,0,204,0,0,"sub-sequence", 0, 2, 0);
	trans[0][204]	= settr(203,0,43,222,222,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][206]	= settr(205,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][208] = settr(207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(207,0,207,0,0,"sub-sequence", 0, 2, 0);
	trans[0][207]	= settr(206,0,43,223,223,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][209]	= settr(208,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][211] = settr(210,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(210,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[0][210]	= settr(209,0,43,224,224,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][212]	= settr(211,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][214] = settr(213,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(213,0,213,0,0,"sub-sequence", 0, 2, 0);
	trans[0][213]	= settr(212,0,43,225,225,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][215]	= settr(214,0,43,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][217] = settr(216,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(216,0,216,0,0,"sub-sequence", 0, 2, 0);
	trans[0][216]	= settr(215,0,228,226,226,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][218]	= settr(217,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][220] = settr(219,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(219,0,219,0,0,"sub-sequence", 0, 2, 0);
	trans[0][219]	= settr(218,0,228,227,227,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][221]	= settr(220,0,228,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][223] = settr(222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(222,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[0][222]	= settr(221,0,228,228,228,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][224]	= settr(223,0,228,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][230]	= settr(229,0,231,1,0,"break", 0, 2, 0);
	trans[0][231]	= settr(230,0,0,229,229,"-end-", 0, 3500, 0);
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
