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

	T = trans[ 2][3] = settr(2349,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2349,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(2347,2,2,3,3,"(run LEG())", 0, 2, 0);
	trans[2][2]	= settr(2348,0,4,4,4,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(2350,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(812*sizeof(Trans *));

	trans[1][1]	= settr(1536,0,808,6,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][809]	= settr(2344,0,808,1,0,".(goto)", 0, 2, 0);
	T = trans[1][808] = settr(2343,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,57,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,133,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,209,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,285,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,361,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,437,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,513,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,589,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2343,0,668,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2343,0,747,0,0,"DO", 0, 2, 0);
	T = trans[ 1][14] = settr(1549,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1549,0,12,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][12] = settr(1547,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1547,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1547,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1547,0,6,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1547,0,8,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1547,0,10,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(1537,0,3,7,0,"(LEG2CRM?[18,S])", 1, 2, 0);
	trans[1][3]	= settr(1538,0,44,8,8,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][13]	= settr(1548,0,44,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(1539,0,5,9,0,"(LEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][5]	= settr(1540,0,44,10,10,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(1541,0,7,11,0,"(LEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][7]	= settr(1542,0,44,12,12,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(1543,0,9,13,0,"(LEG2CRM?[18,LF])", 1, 2, 0);
	trans[1][9]	= settr(1544,0,44,14,14,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][10]	= settr(1545,0,11,15,0,"(LEG2CRM?[18,P])", 1, 2, 0);
	trans[1][11]	= settr(1546,0,44,16,16,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][44] = settr(1579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1579,0,15,0,0,"sub-sequence", 0, 2, 0);
	trans[1][15]	= settr(1550,0,42,17,0,"printf('Start')", 0, 2, 0);
	T = trans[1][42] = settr(1577,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1577,0,16,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1577,0,39,0,0,"IF", 0, 2, 0);
	trans[1][16]	= settr(1551,0,38,18,0,"((((START_bo.right==1)&&((START_bo.role_pl==LMS)==1))&&((START_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][38] = settr(1573,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1573,0,17,0,0,"sub-sequence", 0, 2, 0);
	trans[1][17]	= settr(1552,0,23,19,19,"LMSexTrace = (LMSexTrace|(1<<START_bo.id))", 1, 2, 0);
	T = trans[ 1][23] = settr(1558,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1558,2,18,0,0,"ATOMIC", 0, 2, 0);
	trans[1][18]	= settr(1553,4,27,20,20,"printf('\\n\\n')", 0, 2, 0); /* m: 19 -> 0,27 */
	reached1[19] = 1;
	trans[1][19]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"printf('<type>START</type>\\n')",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][22]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][27] = settr(1562,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1562,0,24,0,0,"sub-sequence", 0, 2, 0);
	trans[1][24]	= settr(1559,0,25,21,21,"L1_bo.prohib = 0", 1, 2, 0);
	trans[1][25]	= settr(1560,0,26,22,0,"assert(!(((L1_bo.prohib==1)&&(L1_bo.right==1))))", 1, 2, 0);
	trans[1][26]	= settr(1561,0,31,23,0,"assert(!(((L1_bo.prohib==1)&&(L1_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][31] = settr(1566,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1566,0,28,0,0,"sub-sequence", 0, 2, 0);
	trans[1][28]	= settr(1563,0,29,24,24,"L1_bo.oblig = 1", 1, 2, 0);
	trans[1][29]	= settr(1564,0,30,25,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))", 1, 2, 0);
	trans[1][30]	= settr(1565,0,35,26,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][35] = settr(1570,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1570,0,32,0,0,"sub-sequence", 0, 2, 0);
	trans[1][32]	= settr(1567,0,33,27,27,"START_bo.right = 0", 1, 2, 0);
	trans[1][33]	= settr(1568,0,34,28,0,"assert(!(((START_bo.right==1)&&(START_bo.oblig==1))))", 1, 2, 0);
	trans[1][34]	= settr(1569,0,37,29,0,"assert(!(((START_bo.right==1)&&(START_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][37] = settr(1572,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1572,0,36,0,0,"sub-sequence", 0, 2, 0);
	trans[1][36]	= settr(1571,0,808,30,30,"CRM2LEG!9,5", 1, 4, 0);
	trans[1][43]	= settr(1578,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][39]	= settr(1574,0,41,2,0,"else", 0, 2, 0);
	T = trans[ 1][41] = settr(1576,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1576,0,40,0,0,"sub-sequence", 0, 2, 0);
	trans[1][40]	= settr(1575,0,808,31,31,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][57] = settr(1592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1592,0,55,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][55] = settr(1590,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1590,0,45,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1590,0,47,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1590,0,49,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1590,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1590,0,53,0,0,"IF", 0, 2, 0);
	trans[1][45]	= settr(1580,0,46,32,0,"(LEG2CRM?[19,S])", 1, 2, 0);
	trans[1][46]	= settr(1581,0,120,33,33,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][56]	= settr(1591,0,120,1,0,".(goto)", 0, 2, 0);
	trans[1][47]	= settr(1582,0,48,34,0,"(LEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][48]	= settr(1583,0,120,35,35,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][49]	= settr(1584,0,50,36,0,"(LEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][50]	= settr(1585,0,120,37,37,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][51]	= settr(1586,0,52,38,0,"(LEG2CRM?[19,LF])", 1, 2, 0);
	trans[1][52]	= settr(1587,0,120,39,39,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][53]	= settr(1588,0,54,40,0,"(LEG2CRM?[19,P])", 1, 2, 0);
	trans[1][54]	= settr(1589,0,120,41,41,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][120] = settr(1655,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1655,0,58,0,0,"sub-sequence", 0, 2, 0);
	trans[1][58]	= settr(1593,0,118,42,0,"printf('L1')", 0, 2, 0);
	T = trans[1][118] = settr(1653,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1653,0,59,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1653,0,83,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1653,0,110,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1653,0,115,0,0,"IF", 0, 2, 0);
	trans[1][59]	= settr(1594,0,82,43,0,"((((L1_bo.oblig==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][82] = settr(1617,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1617,0,66,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][66] = settr(1601,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1601,2,60,0,0,"ATOMIC", 0, 2, 0);
	trans[1][60]	= settr(1595,4,67,44,44,"printf('\\n\\n')", 0, 2, 0); /* m: 61 -> 0,67 */
	reached1[61] = 1;
	trans[1][61]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][62]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][63]	= settr(0,0,0,0,0,"printf('<type>L1</type>\\n')",0,0,0);
	trans[1][64]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][65]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][67]	= settr(1602,0,71,45,45,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][71] = settr(1606,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1606,0,68,0,0,"sub-sequence", 0, 2, 0);
	trans[1][68]	= settr(1603,0,69,46,46,"L1_bo.oblig = 0", 1, 2, 0);
	trans[1][69]	= settr(1604,0,70,47,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))", 1, 2, 0);
	trans[1][70]	= settr(1605,0,75,48,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][75] = settr(1610,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1610,0,72,0,0,"sub-sequence", 0, 2, 0);
	trans[1][72]	= settr(1607,0,73,49,49,"L2_bo.prohib = 0", 1, 2, 0);
	trans[1][73]	= settr(1608,0,74,50,0,"assert(!(((L2_bo.prohib==1)&&(L2_bo.right==1))))", 1, 2, 0);
	trans[1][74]	= settr(1609,0,79,51,0,"assert(!(((L2_bo.prohib==1)&&(L2_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][79] = settr(1614,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1614,0,76,0,0,"sub-sequence", 0, 2, 0);
	trans[1][76]	= settr(1611,0,77,52,52,"L2_bo.oblig = 1", 1, 2, 0);
	trans[1][77]	= settr(1612,0,78,53,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))", 1, 2, 0);
	trans[1][78]	= settr(1613,0,81,54,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][81] = settr(1616,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1616,0,80,0,0,"sub-sequence", 0, 2, 0);
	trans[1][80]	= settr(1615,0,808,55,55,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][119]	= settr(1654,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][83]	= settr(1618,0,109,56,0,"((((L1_bo.oblig==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][109] = settr(1644,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1644,0,90,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][90] = settr(1625,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1625,2,84,0,0,"ATOMIC", 0, 2, 0);
	trans[1][84]	= settr(1619,0,95,57,57,"printf('\\n\\n')", 0, 2, 0); /* m: 85 -> 0,95 */
	reached1[85] = 1;
	trans[1][85]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][86]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][87]	= settr(0,0,0,0,0,"printf('<type>L1</type>\\n')",0,0,0);
	trans[1][88]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][89]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"printf('L1-TechnicalFailure')",0,0,0);
	T = trans[ 1][95] = settr(1630,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1630,0,92,0,0,"sub-sequence", 0, 2, 0);
	trans[1][92]	= settr(1627,0,93,58,58,"L1_bo.oblig = 1", 1, 2, 0);
	trans[1][93]	= settr(1628,0,94,59,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.prohib==1))))", 1, 2, 0);
	trans[1][94]	= settr(1629,0,99,60,0,"assert(!(((L1_bo.oblig==1)&&(L1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][99] = settr(1634,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1634,0,96,0,0,"sub-sequence", 0, 2, 0);
	trans[1][96]	= settr(1631,0,97,61,61,"L2_bo.oblig = 0", 1, 2, 0);
	trans[1][97]	= settr(1632,0,98,62,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))", 1, 2, 0);
	trans[1][98]	= settr(1633,0,106,63,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][106] = settr(1641,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1641,2,100,0,0,"ATOMIC", 0, 2, 0);
	trans[1][100]	= settr(1635,4,108,64,64,"printf('\\n\\n')", 0, 2, 0); /* m: 101 -> 0,108 */
	reached1[101] = 1;
	trans[1][101]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][102]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][103]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][104]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][105]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][108] = settr(1643,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1643,0,107,0,0,"sub-sequence", 0, 2, 0);
	trans[1][107]	= settr(1642,0,808,65,65,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][110]	= settr(1645,0,114,66,0,"((((L1_bo.prohib==1)&&((L1_bo.role_pl==STUDENT)==1))&&((L1_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][114] = settr(1649,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1649,0,111,0,0,"sub-sequence", 0, 2, 0);
	trans[1][111]	= settr(1646,0,113,67,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][113] = settr(1648,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1648,0,112,0,0,"sub-sequence", 0, 2, 0);
	trans[1][112]	= settr(1647,0,808,68,68,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][115]	= settr(1650,0,117,2,0,"else", 0, 2, 0);
	T = trans[ 1][117] = settr(1652,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1652,0,116,0,0,"sub-sequence", 0, 2, 0);
	trans[1][116]	= settr(1651,0,808,69,69,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][133] = settr(1668,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1668,0,131,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][131] = settr(1666,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1666,0,121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1666,0,123,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1666,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1666,0,127,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1666,0,129,0,0,"IF", 0, 2, 0);
	trans[1][121]	= settr(1656,0,122,70,0,"(LEG2CRM?[20,S])", 1, 2, 0);
	trans[1][122]	= settr(1657,0,196,71,71,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][132]	= settr(1667,0,196,1,0,".(goto)", 0, 2, 0);
	trans[1][123]	= settr(1658,0,124,72,0,"(LEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][124]	= settr(1659,0,196,73,73,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][125]	= settr(1660,0,126,74,0,"(LEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][126]	= settr(1661,0,196,75,75,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][127]	= settr(1662,0,128,76,0,"(LEG2CRM?[20,LF])", 1, 2, 0);
	trans[1][128]	= settr(1663,0,196,77,77,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][129]	= settr(1664,0,130,78,0,"(LEG2CRM?[20,P])", 1, 2, 0);
	trans[1][130]	= settr(1665,0,196,79,79,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][196] = settr(1731,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1731,0,134,0,0,"sub-sequence", 0, 2, 0);
	trans[1][134]	= settr(1669,0,194,80,0,"printf('L2')", 0, 2, 0);
	T = trans[1][194] = settr(1729,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1729,0,135,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1729,0,159,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1729,0,186,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1729,0,191,0,0,"IF", 0, 2, 0);
	trans[1][135]	= settr(1670,0,158,81,0,"((((L2_bo.oblig==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][158] = settr(1693,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1693,0,142,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][142] = settr(1677,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1677,2,136,0,0,"ATOMIC", 0, 2, 0);
	trans[1][136]	= settr(1671,4,143,82,82,"printf('\\n\\n')", 0, 2, 0); /* m: 137 -> 0,143 */
	reached1[137] = 1;
	trans[1][137]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][138]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][139]	= settr(0,0,0,0,0,"printf('<type>L2</type>\\n')",0,0,0);
	trans[1][140]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][141]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][143]	= settr(1678,0,147,83,83,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][147] = settr(1682,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1682,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[1][144]	= settr(1679,0,145,84,84,"L2_bo.oblig = 0", 1, 2, 0);
	trans[1][145]	= settr(1680,0,146,85,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))", 1, 2, 0);
	trans[1][146]	= settr(1681,0,151,86,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][151] = settr(1686,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1686,0,148,0,0,"sub-sequence", 0, 2, 0);
	trans[1][148]	= settr(1683,0,149,87,87,"L3_bo.prohib = 0", 1, 2, 0);
	trans[1][149]	= settr(1684,0,150,88,0,"assert(!(((L3_bo.prohib==1)&&(L3_bo.right==1))))", 1, 2, 0);
	trans[1][150]	= settr(1685,0,155,89,0,"assert(!(((L3_bo.prohib==1)&&(L3_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][155] = settr(1690,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1690,0,152,0,0,"sub-sequence", 0, 2, 0);
	trans[1][152]	= settr(1687,0,153,90,90,"L3_bo.oblig = 1", 1, 2, 0);
	trans[1][153]	= settr(1688,0,154,91,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))", 1, 2, 0);
	trans[1][154]	= settr(1689,0,157,92,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][157] = settr(1692,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1692,0,156,0,0,"sub-sequence", 0, 2, 0);
	trans[1][156]	= settr(1691,0,808,93,93,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][195]	= settr(1730,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][159]	= settr(1694,0,185,94,0,"((((L2_bo.oblig==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][185] = settr(1720,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1720,0,166,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][166] = settr(1701,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1701,2,160,0,0,"ATOMIC", 0, 2, 0);
	trans[1][160]	= settr(1695,0,171,95,95,"printf('\\n\\n')", 0, 2, 0); /* m: 161 -> 0,171 */
	reached1[161] = 1;
	trans[1][161]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][162]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][163]	= settr(0,0,0,0,0,"printf('<type>L2</type>\\n')",0,0,0);
	trans[1][164]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][165]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][167]	= settr(0,0,0,0,0,"printf('L2-TechnicalFailure')",0,0,0);
	T = trans[ 1][171] = settr(1706,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1706,0,168,0,0,"sub-sequence", 0, 2, 0);
	trans[1][168]	= settr(1703,0,169,96,96,"L2_bo.oblig = 1", 1, 2, 0);
	trans[1][169]	= settr(1704,0,170,97,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.prohib==1))))", 1, 2, 0);
	trans[1][170]	= settr(1705,0,175,98,0,"assert(!(((L2_bo.oblig==1)&&(L2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][175] = settr(1710,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1710,0,172,0,0,"sub-sequence", 0, 2, 0);
	trans[1][172]	= settr(1707,0,173,99,99,"L3_bo.oblig = 0", 1, 2, 0);
	trans[1][173]	= settr(1708,0,174,100,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))", 1, 2, 0);
	trans[1][174]	= settr(1709,0,182,101,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][182] = settr(1717,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1717,2,176,0,0,"ATOMIC", 0, 2, 0);
	trans[1][176]	= settr(1711,4,184,102,102,"printf('\\n\\n')", 0, 2, 0); /* m: 177 -> 0,184 */
	reached1[177] = 1;
	trans[1][177]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][178]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][179]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][180]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][181]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][184] = settr(1719,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1719,0,183,0,0,"sub-sequence", 0, 2, 0);
	trans[1][183]	= settr(1718,0,808,103,103,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][186]	= settr(1721,0,190,104,0,"((((L2_bo.prohib==1)&&((L2_bo.role_pl==STUDENT)==1))&&((L2_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][190] = settr(1725,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1725,0,187,0,0,"sub-sequence", 0, 2, 0);
	trans[1][187]	= settr(1722,0,189,105,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][189] = settr(1724,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1724,0,188,0,0,"sub-sequence", 0, 2, 0);
	trans[1][188]	= settr(1723,0,808,106,106,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][191]	= settr(1726,0,193,2,0,"else", 0, 2, 0);
	T = trans[ 1][193] = settr(1728,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1728,0,192,0,0,"sub-sequence", 0, 2, 0);
	trans[1][192]	= settr(1727,0,808,107,107,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][209] = settr(1744,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1744,0,207,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][207] = settr(1742,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,201,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1742,0,203,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1742,0,205,0,0,"IF", 0, 2, 0);
	trans[1][197]	= settr(1732,0,198,108,0,"(LEG2CRM?[21,S])", 1, 2, 0);
	trans[1][198]	= settr(1733,0,272,109,109,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][208]	= settr(1743,0,272,1,0,".(goto)", 0, 2, 0);
	trans[1][199]	= settr(1734,0,200,110,0,"(LEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][200]	= settr(1735,0,272,111,111,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][201]	= settr(1736,0,202,112,0,"(LEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][202]	= settr(1737,0,272,113,113,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][203]	= settr(1738,0,204,114,0,"(LEG2CRM?[21,LF])", 1, 2, 0);
	trans[1][204]	= settr(1739,0,272,115,115,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][205]	= settr(1740,0,206,116,0,"(LEG2CRM?[21,P])", 1, 2, 0);
	trans[1][206]	= settr(1741,0,272,117,117,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][272] = settr(1807,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1807,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[1][210]	= settr(1745,0,270,118,0,"printf('L3')", 0, 2, 0);
	T = trans[1][270] = settr(1805,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,211,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,235,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,262,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1805,0,267,0,0,"IF", 0, 2, 0);
	trans[1][211]	= settr(1746,0,234,119,0,"((((L3_bo.oblig==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][234] = settr(1769,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1769,0,218,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][218] = settr(1753,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1753,2,212,0,0,"ATOMIC", 0, 2, 0);
	trans[1][212]	= settr(1747,4,219,120,120,"printf('\\n\\n')", 0, 2, 0); /* m: 213 -> 0,219 */
	reached1[213] = 1;
	trans[1][213]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][214]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][215]	= settr(0,0,0,0,0,"printf('<type>L3</type>\\n')",0,0,0);
	trans[1][216]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][217]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][219]	= settr(1754,0,223,121,121,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][223] = settr(1758,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1758,0,220,0,0,"sub-sequence", 0, 2, 0);
	trans[1][220]	= settr(1755,0,221,122,122,"L3_bo.oblig = 0", 1, 2, 0);
	trans[1][221]	= settr(1756,0,222,123,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))", 1, 2, 0);
	trans[1][222]	= settr(1757,0,227,124,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][227] = settr(1762,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1762,0,224,0,0,"sub-sequence", 0, 2, 0);
	trans[1][224]	= settr(1759,0,225,125,125,"CW1_bo.prohib = 0", 1, 2, 0);
	trans[1][225]	= settr(1760,0,226,126,0,"assert(!(((CW1_bo.prohib==1)&&(CW1_bo.right==1))))", 1, 2, 0);
	trans[1][226]	= settr(1761,0,231,127,0,"assert(!(((CW1_bo.prohib==1)&&(CW1_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][231] = settr(1766,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1766,0,228,0,0,"sub-sequence", 0, 2, 0);
	trans[1][228]	= settr(1763,0,229,128,128,"CW1_bo.oblig = 1", 1, 2, 0);
	trans[1][229]	= settr(1764,0,230,129,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))", 1, 2, 0);
	trans[1][230]	= settr(1765,0,233,130,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][233] = settr(1768,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1768,0,232,0,0,"sub-sequence", 0, 2, 0);
	trans[1][232]	= settr(1767,0,808,131,131,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][271]	= settr(1806,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][235]	= settr(1770,0,261,132,0,"((((L3_bo.oblig==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][261] = settr(1796,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1796,0,242,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][242] = settr(1777,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1777,2,236,0,0,"ATOMIC", 0, 2, 0);
	trans[1][236]	= settr(1771,0,247,133,133,"printf('\\n\\n')", 0, 2, 0); /* m: 237 -> 0,247 */
	reached1[237] = 1;
	trans[1][237]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][238]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][239]	= settr(0,0,0,0,0,"printf('<type>L3</type>\\n')",0,0,0);
	trans[1][240]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][241]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][243]	= settr(0,0,0,0,0,"printf('L3-TechnicalFailure')",0,0,0);
	T = trans[ 1][247] = settr(1782,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1782,0,244,0,0,"sub-sequence", 0, 2, 0);
	trans[1][244]	= settr(1779,0,245,134,134,"L3_bo.oblig = 1", 1, 2, 0);
	trans[1][245]	= settr(1780,0,246,135,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.prohib==1))))", 1, 2, 0);
	trans[1][246]	= settr(1781,0,251,136,0,"assert(!(((L3_bo.oblig==1)&&(L3_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][251] = settr(1786,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1786,0,248,0,0,"sub-sequence", 0, 2, 0);
	trans[1][248]	= settr(1783,0,249,137,137,"CW1_bo.oblig = 0", 1, 2, 0);
	trans[1][249]	= settr(1784,0,250,138,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))", 1, 2, 0);
	trans[1][250]	= settr(1785,0,258,139,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][258] = settr(1793,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1793,2,252,0,0,"ATOMIC", 0, 2, 0);
	trans[1][252]	= settr(1787,4,260,140,140,"printf('\\n\\n')", 0, 2, 0); /* m: 253 -> 0,260 */
	reached1[253] = 1;
	trans[1][253]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][254]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][255]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][256]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][257]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][260] = settr(1795,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1795,0,259,0,0,"sub-sequence", 0, 2, 0);
	trans[1][259]	= settr(1794,0,808,141,141,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][262]	= settr(1797,0,266,142,0,"((((L3_bo.prohib==1)&&((L3_bo.role_pl==STUDENT)==1))&&((L3_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][266] = settr(1801,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1801,0,263,0,0,"sub-sequence", 0, 2, 0);
	trans[1][263]	= settr(1798,0,265,143,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][265] = settr(1800,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1800,0,264,0,0,"sub-sequence", 0, 2, 0);
	trans[1][264]	= settr(1799,0,808,144,144,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][267]	= settr(1802,0,269,2,0,"else", 0, 2, 0);
	T = trans[ 1][269] = settr(1804,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1804,0,268,0,0,"sub-sequence", 0, 2, 0);
	trans[1][268]	= settr(1803,0,808,145,145,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][285] = settr(1820,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1820,0,283,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][283] = settr(1818,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1818,0,273,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1818,0,275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1818,0,277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1818,0,279,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1818,0,281,0,0,"IF", 0, 2, 0);
	trans[1][273]	= settr(1808,0,274,146,0,"(LEG2CRM?[22,S])", 1, 2, 0);
	trans[1][274]	= settr(1809,0,348,147,147,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][284]	= settr(1819,0,348,1,0,".(goto)", 0, 2, 0);
	trans[1][275]	= settr(1810,0,276,148,0,"(LEG2CRM?[22,TO])", 1, 2, 0);
	trans[1][276]	= settr(1811,0,348,149,149,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][277]	= settr(1812,0,278,150,0,"(LEG2CRM?[22,TF])", 1, 2, 0);
	trans[1][278]	= settr(1813,0,348,151,151,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][279]	= settr(1814,0,280,152,0,"(LEG2CRM?[22,LF])", 1, 2, 0);
	trans[1][280]	= settr(1815,0,348,153,153,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][281]	= settr(1816,0,282,154,0,"(LEG2CRM?[22,P])", 1, 2, 0);
	trans[1][282]	= settr(1817,0,348,155,155,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][348] = settr(1883,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1883,0,286,0,0,"sub-sequence", 0, 2, 0);
	trans[1][286]	= settr(1821,0,346,156,0,"printf('L4')", 0, 2, 0);
	T = trans[1][346] = settr(1881,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,287,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1881,0,338,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1881,0,343,0,0,"IF", 0, 2, 0);
	trans[1][287]	= settr(1822,0,310,157,0,"((((L4_bo.oblig==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][310] = settr(1845,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1845,0,294,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][294] = settr(1829,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1829,2,288,0,0,"ATOMIC", 0, 2, 0);
	trans[1][288]	= settr(1823,4,295,158,158,"printf('\\n\\n')", 0, 2, 0); /* m: 289 -> 0,295 */
	reached1[289] = 1;
	trans[1][289]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][290]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][291]	= settr(0,0,0,0,0,"printf('<type>L4</type>\\n')",0,0,0);
	trans[1][292]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][293]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][295]	= settr(1830,0,299,159,159,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][299] = settr(1834,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1834,0,296,0,0,"sub-sequence", 0, 2, 0);
	trans[1][296]	= settr(1831,0,297,160,160,"L4_bo.oblig = 0", 1, 2, 0);
	trans[1][297]	= settr(1832,0,298,161,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))", 1, 2, 0);
	trans[1][298]	= settr(1833,0,303,162,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][303] = settr(1838,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1838,0,300,0,0,"sub-sequence", 0, 2, 0);
	trans[1][300]	= settr(1835,0,301,163,163,"L5_bo.prohib = 0", 1, 2, 0);
	trans[1][301]	= settr(1836,0,302,164,0,"assert(!(((L5_bo.prohib==1)&&(L5_bo.right==1))))", 1, 2, 0);
	trans[1][302]	= settr(1837,0,307,165,0,"assert(!(((L5_bo.prohib==1)&&(L5_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][307] = settr(1842,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1842,0,304,0,0,"sub-sequence", 0, 2, 0);
	trans[1][304]	= settr(1839,0,305,166,166,"L5_bo.oblig = 1", 1, 2, 0);
	trans[1][305]	= settr(1840,0,306,167,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))", 1, 2, 0);
	trans[1][306]	= settr(1841,0,309,168,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][309] = settr(1844,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1844,0,308,0,0,"sub-sequence", 0, 2, 0);
	trans[1][308]	= settr(1843,0,808,169,169,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][347]	= settr(1882,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][311]	= settr(1846,0,337,170,0,"((((L4_bo.oblig==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][337] = settr(1872,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1872,0,318,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][318] = settr(1853,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1853,2,312,0,0,"ATOMIC", 0, 2, 0);
	trans[1][312]	= settr(1847,0,323,171,171,"printf('\\n\\n')", 0, 2, 0); /* m: 313 -> 0,323 */
	reached1[313] = 1;
	trans[1][313]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][314]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][315]	= settr(0,0,0,0,0,"printf('<type>L4</type>\\n')",0,0,0);
	trans[1][316]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][317]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][319]	= settr(0,0,0,0,0,"printf('L4-TechnicalFailure')",0,0,0);
	T = trans[ 1][323] = settr(1858,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1858,0,320,0,0,"sub-sequence", 0, 2, 0);
	trans[1][320]	= settr(1855,0,321,172,172,"L4_bo.oblig = 1", 1, 2, 0);
	trans[1][321]	= settr(1856,0,322,173,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))", 1, 2, 0);
	trans[1][322]	= settr(1857,0,327,174,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][327] = settr(1862,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1862,0,324,0,0,"sub-sequence", 0, 2, 0);
	trans[1][324]	= settr(1859,0,325,175,175,"L5_bo.oblig = 0", 1, 2, 0);
	trans[1][325]	= settr(1860,0,326,176,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))", 1, 2, 0);
	trans[1][326]	= settr(1861,0,334,177,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][334] = settr(1869,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1869,2,328,0,0,"ATOMIC", 0, 2, 0);
	trans[1][328]	= settr(1863,4,336,178,178,"printf('\\n\\n')", 0, 2, 0); /* m: 329 -> 0,336 */
	reached1[329] = 1;
	trans[1][329]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][330]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][331]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][332]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][333]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][336] = settr(1871,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1871,0,335,0,0,"sub-sequence", 0, 2, 0);
	trans[1][335]	= settr(1870,0,808,179,179,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][338]	= settr(1873,0,342,180,0,"((((L4_bo.prohib==1)&&((L4_bo.role_pl==STUDENT)==1))&&((L4_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][342] = settr(1877,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1877,0,339,0,0,"sub-sequence", 0, 2, 0);
	trans[1][339]	= settr(1874,0,341,181,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][341] = settr(1876,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1876,0,340,0,0,"sub-sequence", 0, 2, 0);
	trans[1][340]	= settr(1875,0,808,182,182,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][343]	= settr(1878,0,345,2,0,"else", 0, 2, 0);
	T = trans[ 1][345] = settr(1880,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1880,0,344,0,0,"sub-sequence", 0, 2, 0);
	trans[1][344]	= settr(1879,0,808,183,183,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][361] = settr(1896,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1896,0,359,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][359] = settr(1894,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1894,0,349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1894,0,351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1894,0,353,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1894,0,355,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1894,0,357,0,0,"IF", 0, 2, 0);
	trans[1][349]	= settr(1884,0,350,184,0,"(LEG2CRM?[23,S])", 1, 2, 0);
	trans[1][350]	= settr(1885,0,424,185,185,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][360]	= settr(1895,0,424,1,0,".(goto)", 0, 2, 0);
	trans[1][351]	= settr(1886,0,352,186,0,"(LEG2CRM?[23,TO])", 1, 2, 0);
	trans[1][352]	= settr(1887,0,424,187,187,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][353]	= settr(1888,0,354,188,0,"(LEG2CRM?[23,TF])", 1, 2, 0);
	trans[1][354]	= settr(1889,0,424,189,189,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][355]	= settr(1890,0,356,190,0,"(LEG2CRM?[23,LF])", 1, 2, 0);
	trans[1][356]	= settr(1891,0,424,191,191,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][357]	= settr(1892,0,358,192,0,"(LEG2CRM?[23,P])", 1, 2, 0);
	trans[1][358]	= settr(1893,0,424,193,193,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][424] = settr(1959,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1959,0,362,0,0,"sub-sequence", 0, 2, 0);
	trans[1][362]	= settr(1897,0,422,194,0,"printf('L5')", 0, 2, 0);
	T = trans[1][422] = settr(1957,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,414,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1957,0,419,0,0,"IF", 0, 2, 0);
	trans[1][363]	= settr(1898,0,386,195,0,"((((L5_bo.oblig==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][386] = settr(1921,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1921,0,370,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][370] = settr(1905,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1905,2,364,0,0,"ATOMIC", 0, 2, 0);
	trans[1][364]	= settr(1899,4,371,196,196,"printf('\\n\\n')", 0, 2, 0); /* m: 365 -> 0,371 */
	reached1[365] = 1;
	trans[1][365]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][366]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][367]	= settr(0,0,0,0,0,"printf('<type>L5</type>\\n')",0,0,0);
	trans[1][368]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][369]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][371]	= settr(1906,0,375,197,197,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][375] = settr(1910,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1910,0,372,0,0,"sub-sequence", 0, 2, 0);
	trans[1][372]	= settr(1907,0,373,198,198,"L5_bo.oblig = 0", 1, 2, 0);
	trans[1][373]	= settr(1908,0,374,199,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))", 1, 2, 0);
	trans[1][374]	= settr(1909,0,379,200,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][379] = settr(1914,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1914,0,376,0,0,"sub-sequence", 0, 2, 0);
	trans[1][376]	= settr(1911,0,377,201,201,"L6_bo.prohib = 0", 1, 2, 0);
	trans[1][377]	= settr(1912,0,378,202,0,"assert(!(((L6_bo.prohib==1)&&(L6_bo.right==1))))", 1, 2, 0);
	trans[1][378]	= settr(1913,0,383,203,0,"assert(!(((L6_bo.prohib==1)&&(L6_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][383] = settr(1918,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1918,0,380,0,0,"sub-sequence", 0, 2, 0);
	trans[1][380]	= settr(1915,0,381,204,204,"L6_bo.oblig = 1", 1, 2, 0);
	trans[1][381]	= settr(1916,0,382,205,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))", 1, 2, 0);
	trans[1][382]	= settr(1917,0,385,206,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][385] = settr(1920,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1920,0,384,0,0,"sub-sequence", 0, 2, 0);
	trans[1][384]	= settr(1919,0,808,207,207,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][423]	= settr(1958,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][387]	= settr(1922,0,413,208,0,"((((L5_bo.oblig==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][413] = settr(1948,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1948,0,394,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][394] = settr(1929,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1929,2,388,0,0,"ATOMIC", 0, 2, 0);
	trans[1][388]	= settr(1923,0,399,209,209,"printf('\\n\\n')", 0, 2, 0); /* m: 389 -> 0,399 */
	reached1[389] = 1;
	trans[1][389]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][390]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][391]	= settr(0,0,0,0,0,"printf('<type>L5</type>\\n')",0,0,0);
	trans[1][392]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][393]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][395]	= settr(0,0,0,0,0,"printf('L5-TechnicalFailure')",0,0,0);
	T = trans[ 1][399] = settr(1934,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1934,0,396,0,0,"sub-sequence", 0, 2, 0);
	trans[1][396]	= settr(1931,0,397,210,210,"L5_bo.oblig = 1", 1, 2, 0);
	trans[1][397]	= settr(1932,0,398,211,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.prohib==1))))", 1, 2, 0);
	trans[1][398]	= settr(1933,0,403,212,0,"assert(!(((L5_bo.oblig==1)&&(L5_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][403] = settr(1938,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1938,0,400,0,0,"sub-sequence", 0, 2, 0);
	trans[1][400]	= settr(1935,0,401,213,213,"L6_bo.oblig = 0", 1, 2, 0);
	trans[1][401]	= settr(1936,0,402,214,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))", 1, 2, 0);
	trans[1][402]	= settr(1937,0,410,215,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][410] = settr(1945,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1945,2,404,0,0,"ATOMIC", 0, 2, 0);
	trans[1][404]	= settr(1939,4,412,216,216,"printf('\\n\\n')", 0, 2, 0); /* m: 405 -> 0,412 */
	reached1[405] = 1;
	trans[1][405]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][406]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][407]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][408]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][409]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][412] = settr(1947,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1947,0,411,0,0,"sub-sequence", 0, 2, 0);
	trans[1][411]	= settr(1946,0,808,217,217,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][414]	= settr(1949,0,418,218,0,"((((L5_bo.prohib==1)&&((L5_bo.role_pl==STUDENT)==1))&&((L5_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][418] = settr(1953,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1953,0,415,0,0,"sub-sequence", 0, 2, 0);
	trans[1][415]	= settr(1950,0,417,219,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][417] = settr(1952,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1952,0,416,0,0,"sub-sequence", 0, 2, 0);
	trans[1][416]	= settr(1951,0,808,220,220,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][419]	= settr(1954,0,421,2,0,"else", 0, 2, 0);
	T = trans[ 1][421] = settr(1956,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1956,0,420,0,0,"sub-sequence", 0, 2, 0);
	trans[1][420]	= settr(1955,0,808,221,221,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][437] = settr(1972,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1972,0,435,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][435] = settr(1970,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1970,0,425,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1970,0,427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1970,0,429,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1970,0,431,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1970,0,433,0,0,"IF", 0, 2, 0);
	trans[1][425]	= settr(1960,0,426,222,0,"(LEG2CRM?[24,S])", 1, 2, 0);
	trans[1][426]	= settr(1961,0,500,223,223,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][436]	= settr(1971,0,500,1,0,".(goto)", 0, 2, 0);
	trans[1][427]	= settr(1962,0,428,224,0,"(LEG2CRM?[24,TO])", 1, 2, 0);
	trans[1][428]	= settr(1963,0,500,225,225,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][429]	= settr(1964,0,430,226,0,"(LEG2CRM?[24,TF])", 1, 2, 0);
	trans[1][430]	= settr(1965,0,500,227,227,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][431]	= settr(1966,0,432,228,0,"(LEG2CRM?[24,LF])", 1, 2, 0);
	trans[1][432]	= settr(1967,0,500,229,229,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][433]	= settr(1968,0,434,230,0,"(LEG2CRM?[24,P])", 1, 2, 0);
	trans[1][434]	= settr(1969,0,500,231,231,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][500] = settr(2035,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2035,0,438,0,0,"sub-sequence", 0, 2, 0);
	trans[1][438]	= settr(1973,0,498,232,0,"printf('L6')", 0, 2, 0);
	T = trans[1][498] = settr(2033,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2033,0,439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2033,0,463,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2033,0,490,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2033,0,495,0,0,"IF", 0, 2, 0);
	trans[1][439]	= settr(1974,0,462,233,0,"((((L6_bo.oblig==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][462] = settr(1997,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1997,0,446,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][446] = settr(1981,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1981,2,440,0,0,"ATOMIC", 0, 2, 0);
	trans[1][440]	= settr(1975,4,447,234,234,"printf('\\n\\n')", 0, 2, 0); /* m: 441 -> 0,447 */
	reached1[441] = 1;
	trans[1][441]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][442]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][443]	= settr(0,0,0,0,0,"printf('<type>L6</type>\\n')",0,0,0);
	trans[1][444]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][445]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][447]	= settr(1982,0,451,235,235,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][451] = settr(1986,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1986,0,448,0,0,"sub-sequence", 0, 2, 0);
	trans[1][448]	= settr(1983,0,449,236,236,"L6_bo.oblig = 0", 1, 2, 0);
	trans[1][449]	= settr(1984,0,450,237,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))", 1, 2, 0);
	trans[1][450]	= settr(1985,0,455,238,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][455] = settr(1990,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1990,0,452,0,0,"sub-sequence", 0, 2, 0);
	trans[1][452]	= settr(1987,0,453,239,239,"CW2_bo.prohib = 0", 1, 2, 0);
	trans[1][453]	= settr(1988,0,454,240,0,"assert(!(((CW2_bo.prohib==1)&&(CW2_bo.right==1))))", 1, 2, 0);
	trans[1][454]	= settr(1989,0,459,241,0,"assert(!(((CW2_bo.prohib==1)&&(CW2_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][459] = settr(1994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1994,0,456,0,0,"sub-sequence", 0, 2, 0);
	trans[1][456]	= settr(1991,0,457,242,242,"CW2_bo.oblig = 1", 1, 2, 0);
	trans[1][457]	= settr(1992,0,458,243,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))", 1, 2, 0);
	trans[1][458]	= settr(1993,0,461,244,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][461] = settr(1996,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1996,0,460,0,0,"sub-sequence", 0, 2, 0);
	trans[1][460]	= settr(1995,0,808,245,245,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][499]	= settr(2034,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][463]	= settr(1998,0,489,246,0,"((((L6_bo.oblig==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][489] = settr(2024,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2024,0,470,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][470] = settr(2005,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2005,2,464,0,0,"ATOMIC", 0, 2, 0);
	trans[1][464]	= settr(1999,0,475,247,247,"printf('\\n\\n')", 0, 2, 0); /* m: 465 -> 0,475 */
	reached1[465] = 1;
	trans[1][465]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][466]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][467]	= settr(0,0,0,0,0,"printf('<type>L6</type>\\n')",0,0,0);
	trans[1][468]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][469]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][471]	= settr(0,0,0,0,0,"printf('L6-TechnicalFailure')",0,0,0);
	T = trans[ 1][475] = settr(2010,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2010,0,472,0,0,"sub-sequence", 0, 2, 0);
	trans[1][472]	= settr(2007,0,473,248,248,"L6_bo.oblig = 1", 1, 2, 0);
	trans[1][473]	= settr(2008,0,474,249,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.prohib==1))))", 1, 2, 0);
	trans[1][474]	= settr(2009,0,479,250,0,"assert(!(((L6_bo.oblig==1)&&(L6_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][479] = settr(2014,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2014,0,476,0,0,"sub-sequence", 0, 2, 0);
	trans[1][476]	= settr(2011,0,477,251,251,"CW2_bo.oblig = 0", 1, 2, 0);
	trans[1][477]	= settr(2012,0,478,252,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))", 1, 2, 0);
	trans[1][478]	= settr(2013,0,486,253,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][486] = settr(2021,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2021,2,480,0,0,"ATOMIC", 0, 2, 0);
	trans[1][480]	= settr(2015,4,488,254,254,"printf('\\n\\n')", 0, 2, 0); /* m: 481 -> 0,488 */
	reached1[481] = 1;
	trans[1][481]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][482]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][483]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][484]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][485]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][488] = settr(2023,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2023,0,487,0,0,"sub-sequence", 0, 2, 0);
	trans[1][487]	= settr(2022,0,808,255,255,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][490]	= settr(2025,0,494,256,0,"((((L6_bo.prohib==1)&&((L6_bo.role_pl==STUDENT)==1))&&((L6_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][494] = settr(2029,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2029,0,491,0,0,"sub-sequence", 0, 2, 0);
	trans[1][491]	= settr(2026,0,493,257,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][493] = settr(2028,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2028,0,492,0,0,"sub-sequence", 0, 2, 0);
	trans[1][492]	= settr(2027,0,808,258,258,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][495]	= settr(2030,0,497,2,0,"else", 0, 2, 0);
	T = trans[ 1][497] = settr(2032,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2032,0,496,0,0,"sub-sequence", 0, 2, 0);
	trans[1][496]	= settr(2031,0,808,259,259,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][513] = settr(2048,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2048,0,511,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][511] = settr(2046,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2046,0,501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2046,0,503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2046,0,505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2046,0,507,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2046,0,509,0,0,"IF", 0, 2, 0);
	trans[1][501]	= settr(2036,0,502,260,0,"(LEG2CRM?[25,S])", 1, 2, 0);
	trans[1][502]	= settr(2037,0,576,261,261,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][512]	= settr(2047,0,576,1,0,".(goto)", 0, 2, 0);
	trans[1][503]	= settr(2038,0,504,262,0,"(LEG2CRM?[25,TO])", 1, 2, 0);
	trans[1][504]	= settr(2039,0,576,263,263,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][505]	= settr(2040,0,506,264,0,"(LEG2CRM?[25,TF])", 1, 2, 0);
	trans[1][506]	= settr(2041,0,576,265,265,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][507]	= settr(2042,0,508,266,0,"(LEG2CRM?[25,LF])", 1, 2, 0);
	trans[1][508]	= settr(2043,0,576,267,267,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][509]	= settr(2044,0,510,268,0,"(LEG2CRM?[25,P])", 1, 2, 0);
	trans[1][510]	= settr(2045,0,576,269,269,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][576] = settr(2111,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2111,0,514,0,0,"sub-sequence", 0, 2, 0);
	trans[1][514]	= settr(2049,0,574,270,0,"printf('L7')", 0, 2, 0);
	T = trans[1][574] = settr(2109,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2109,0,515,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2109,0,539,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2109,0,566,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2109,0,571,0,0,"IF", 0, 2, 0);
	trans[1][515]	= settr(2050,0,538,271,0,"((((L7_bo.oblig==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][538] = settr(2073,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2073,0,522,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][522] = settr(2057,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2057,2,516,0,0,"ATOMIC", 0, 2, 0);
	trans[1][516]	= settr(2051,4,523,272,272,"printf('\\n\\n')", 0, 2, 0); /* m: 517 -> 0,523 */
	reached1[517] = 1;
	trans[1][517]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][518]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][519]	= settr(0,0,0,0,0,"printf('<type>L7</type>\\n')",0,0,0);
	trans[1][520]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][521]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][523]	= settr(2058,0,527,273,273,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][527] = settr(2062,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2062,0,524,0,0,"sub-sequence", 0, 2, 0);
	trans[1][524]	= settr(2059,0,525,274,274,"L7_bo.oblig = 0", 1, 2, 0);
	trans[1][525]	= settr(2060,0,526,275,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))", 1, 2, 0);
	trans[1][526]	= settr(2061,0,531,276,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][531] = settr(2066,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2066,0,528,0,0,"sub-sequence", 0, 2, 0);
	trans[1][528]	= settr(2063,0,529,277,277,"EXAM_bo.prohib = 0", 1, 2, 0);
	trans[1][529]	= settr(2064,0,530,278,0,"assert(!(((EXAM_bo.prohib==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	trans[1][530]	= settr(2065,0,535,279,0,"assert(!(((EXAM_bo.prohib==1)&&(EXAM_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][535] = settr(2070,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2070,0,532,0,0,"sub-sequence", 0, 2, 0);
	trans[1][532]	= settr(2067,0,533,280,280,"EXAM_bo.oblig = 1", 1, 2, 0);
	trans[1][533]	= settr(2068,0,534,281,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))", 1, 2, 0);
	trans[1][534]	= settr(2069,0,537,282,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][537] = settr(2072,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2072,0,536,0,0,"sub-sequence", 0, 2, 0);
	trans[1][536]	= settr(2071,0,808,283,283,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][575]	= settr(2110,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][539]	= settr(2074,0,565,284,0,"((((L7_bo.oblig==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][565] = settr(2100,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2100,0,546,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][546] = settr(2081,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2081,2,540,0,0,"ATOMIC", 0, 2, 0);
	trans[1][540]	= settr(2075,0,551,285,285,"printf('\\n\\n')", 0, 2, 0); /* m: 541 -> 0,551 */
	reached1[541] = 1;
	trans[1][541]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][542]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][543]	= settr(0,0,0,0,0,"printf('<type>L7</type>\\n')",0,0,0);
	trans[1][544]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][545]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][547]	= settr(0,0,0,0,0,"printf('L7-TechnicalFailure')",0,0,0);
	T = trans[ 1][551] = settr(2086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2086,0,548,0,0,"sub-sequence", 0, 2, 0);
	trans[1][548]	= settr(2083,0,549,286,286,"L7_bo.oblig = 1", 1, 2, 0);
	trans[1][549]	= settr(2084,0,550,287,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))", 1, 2, 0);
	trans[1][550]	= settr(2085,0,555,288,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][555] = settr(2090,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2090,0,552,0,0,"sub-sequence", 0, 2, 0);
	trans[1][552]	= settr(2087,0,553,289,289,"EXAM_bo.oblig = 0", 1, 2, 0);
	trans[1][553]	= settr(2088,0,554,290,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))", 1, 2, 0);
	trans[1][554]	= settr(2089,0,562,291,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][562] = settr(2097,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2097,2,556,0,0,"ATOMIC", 0, 2, 0);
	trans[1][556]	= settr(2091,4,564,292,292,"printf('\\n\\n')", 0, 2, 0); /* m: 557 -> 0,564 */
	reached1[557] = 1;
	trans[1][557]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][558]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][559]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][560]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][561]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][564] = settr(2099,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2099,0,563,0,0,"sub-sequence", 0, 2, 0);
	trans[1][563]	= settr(2098,0,808,293,293,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][566]	= settr(2101,0,570,294,0,"((((L7_bo.prohib==1)&&((L7_bo.role_pl==STUDENT)==1))&&((L7_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][570] = settr(2105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2105,0,567,0,0,"sub-sequence", 0, 2, 0);
	trans[1][567]	= settr(2102,0,569,295,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][569] = settr(2104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2104,0,568,0,0,"sub-sequence", 0, 2, 0);
	trans[1][568]	= settr(2103,0,808,296,296,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][571]	= settr(2106,0,573,2,0,"else", 0, 2, 0);
	T = trans[ 1][573] = settr(2108,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2108,0,572,0,0,"sub-sequence", 0, 2, 0);
	trans[1][572]	= settr(2107,0,808,297,297,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][589] = settr(2124,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2124,0,587,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][587] = settr(2122,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2122,0,577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2122,0,579,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2122,0,581,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2122,0,583,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2122,0,585,0,0,"IF", 0, 2, 0);
	trans[1][577]	= settr(2112,0,578,298,0,"(LEG2CRM?[26,S])", 1, 2, 0);
	trans[1][578]	= settr(2113,0,655,299,299,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][588]	= settr(2123,0,655,1,0,".(goto)", 0, 2, 0);
	trans[1][579]	= settr(2114,0,580,300,0,"(LEG2CRM?[26,TO])", 1, 2, 0);
	trans[1][580]	= settr(2115,0,655,301,301,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][581]	= settr(2116,0,582,302,0,"(LEG2CRM?[26,TF])", 1, 2, 0);
	trans[1][582]	= settr(2117,0,655,303,303,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][583]	= settr(2118,0,584,304,0,"(LEG2CRM?[26,LF])", 1, 2, 0);
	trans[1][584]	= settr(2119,0,655,305,305,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][585]	= settr(2120,0,586,306,0,"(LEG2CRM?[26,P])", 1, 2, 0);
	trans[1][586]	= settr(2121,0,655,307,307,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][655] = settr(2190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2190,0,590,0,0,"sub-sequence", 0, 2, 0);
	trans[1][590]	= settr(2125,0,653,308,0,"printf('CW1 ')", 0, 2, 0);
	T = trans[1][653] = settr(2188,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2188,0,591,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2188,0,617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2188,0,645,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2188,0,650,0,0,"IF", 0, 2, 0);
	trans[1][591]	= settr(2126,0,616,309,0,"((((CW1_bo.oblig==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][616] = settr(2151,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2151,0,598,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][598] = settr(2133,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2133,2,592,0,0,"ATOMIC", 0, 2, 0);
	trans[1][592]	= settr(2127,4,599,310,310,"printf('\\n\\n')", 0, 2, 0); /* m: 593 -> 0,599 */
	reached1[593] = 1;
	trans[1][593]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][594]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][595]	= settr(0,0,0,0,0,"printf('<type>CW1</type>\\n')",0,0,0);
	trans[1][596]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][597]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][599]	= settr(2134,0,600,311,311,"CwCount = (CwCount+1)", 1, 2, 0);
	trans[1][600]	= settr(2135,0,604,312,312,"STUDENTexTrace = (STUDENTexTrace|(1<<CW1_bo.id))", 1, 2, 0);
	T = trans[ 1][604] = settr(2139,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2139,0,601,0,0,"sub-sequence", 0, 2, 0);
	trans[1][601]	= settr(2136,0,602,313,313,"CW1_bo.oblig = 0", 1, 2, 0);
	trans[1][602]	= settr(2137,0,603,314,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))", 1, 2, 0);
	trans[1][603]	= settr(2138,0,608,315,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][608] = settr(2143,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2143,0,605,0,0,"sub-sequence", 0, 2, 0);
	trans[1][605]	= settr(2140,0,606,316,316,"L4_bo.prohib = 0", 1, 2, 0);
	trans[1][606]	= settr(2141,0,607,317,0,"assert(!(((L4_bo.prohib==1)&&(L4_bo.right==1))))", 1, 2, 0);
	trans[1][607]	= settr(2142,0,612,318,0,"assert(!(((L4_bo.prohib==1)&&(L4_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][612] = settr(2147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2147,0,609,0,0,"sub-sequence", 0, 2, 0);
	trans[1][609]	= settr(2144,0,610,319,319,"L4_bo.oblig = 1", 1, 2, 0);
	trans[1][610]	= settr(2145,0,611,320,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))", 1, 2, 0);
	trans[1][611]	= settr(2146,0,613,321,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))", 1, 2, 0);
	trans[1][613]	= settr(2148,0,615,322,0,"printf('LECTURES are now continued')", 0, 2, 0);
	T = trans[ 1][615] = settr(2150,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2150,0,614,0,0,"sub-sequence", 0, 2, 0);
	trans[1][614]	= settr(2149,0,808,323,323,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][654]	= settr(2189,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][617]	= settr(2152,0,644,324,0,"((((CW1_bo.oblig==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][644] = settr(2179,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2179,0,624,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][624] = settr(2159,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2159,2,618,0,0,"ATOMIC", 0, 2, 0);
	trans[1][618]	= settr(2153,0,629,325,325,"printf('\\n\\n')", 0, 2, 0); /* m: 619 -> 0,629 */
	reached1[619] = 1;
	trans[1][619]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][620]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][621]	= settr(0,0,0,0,0,"printf('<type>CW1</type>\\n')",0,0,0);
	trans[1][622]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][623]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][625]	= settr(0,0,0,0,0,"printf('No submission at within required time')",0,0,0);
	T = trans[ 1][629] = settr(2164,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2164,0,626,0,0,"sub-sequence", 0, 2, 0);
	trans[1][626]	= settr(2161,0,627,326,326,"L4_bo.oblig = 0", 1, 2, 0);
	trans[1][627]	= settr(2162,0,628,327,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.prohib==1))))", 1, 2, 0);
	trans[1][628]	= settr(2163,0,633,328,0,"assert(!(((L4_bo.oblig==1)&&(L4_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][633] = settr(2168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2168,0,630,0,0,"sub-sequence", 0, 2, 0);
	trans[1][630]	= settr(2165,0,631,329,329,"CW1_bo.oblig = 0", 1, 2, 0);
	trans[1][631]	= settr(2166,0,632,330,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.prohib==1))))", 1, 2, 0);
	trans[1][632]	= settr(2167,0,640,331,0,"assert(!(((CW1_bo.oblig==1)&&(CW1_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][640] = settr(2175,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2175,2,634,0,0,"ATOMIC", 0, 2, 0);
	trans[1][634]	= settr(2169,4,641,332,332,"printf('\\n\\n')", 0, 2, 0); /* m: 635 -> 0,641 */
	reached1[635] = 1;
	trans[1][635]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][636]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][637]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][638]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][639]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][641]	= settr(2176,0,643,333,333,"fail = 1", 1, 2, 0);
	T = trans[ 1][643] = settr(2178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2178,0,642,0,0,"sub-sequence", 0, 2, 0);
	trans[1][642]	= settr(2177,0,808,334,334,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][645]	= settr(2180,0,649,335,0,"((((CW1_bo.prohib==1)&&((CW1_bo.role_pl==STUDENT)==1))&&((CW1_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][649] = settr(2184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2184,0,646,0,0,"sub-sequence", 0, 2, 0);
	trans[1][646]	= settr(2181,0,648,336,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][648] = settr(2183,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2183,0,647,0,0,"sub-sequence", 0, 2, 0);
	trans[1][647]	= settr(2182,0,808,337,337,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][650]	= settr(2185,0,652,2,0,"else", 0, 2, 0);
	T = trans[ 1][652] = settr(2187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2187,0,651,0,0,"sub-sequence", 0, 2, 0);
	trans[1][651]	= settr(2186,0,808,338,338,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][668] = settr(2203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2203,0,666,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][666] = settr(2201,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2201,0,656,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2201,0,658,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2201,0,660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2201,0,662,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2201,0,664,0,0,"IF", 0, 2, 0);
	trans[1][656]	= settr(2191,0,657,339,0,"(LEG2CRM?[27,S])", 1, 2, 0);
	trans[1][657]	= settr(2192,0,734,340,340,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][667]	= settr(2202,0,734,1,0,".(goto)", 0, 2, 0);
	trans[1][658]	= settr(2193,0,659,341,0,"(LEG2CRM?[27,TO])", 1, 2, 0);
	trans[1][659]	= settr(2194,0,734,342,342,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][660]	= settr(2195,0,661,343,0,"(LEG2CRM?[27,TF])", 1, 2, 0);
	trans[1][661]	= settr(2196,0,734,344,344,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][662]	= settr(2197,0,663,345,0,"(LEG2CRM?[27,LF])", 1, 2, 0);
	trans[1][663]	= settr(2198,0,734,346,346,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][664]	= settr(2199,0,665,347,0,"(LEG2CRM?[27,P])", 1, 2, 0);
	trans[1][665]	= settr(2200,0,734,348,348,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][734] = settr(2269,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2269,0,669,0,0,"sub-sequence", 0, 2, 0);
	trans[1][669]	= settr(2204,0,732,349,0,"printf('CW2 ')", 0, 2, 0);
	T = trans[1][732] = settr(2267,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2267,0,670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2267,0,696,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2267,0,724,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2267,0,729,0,0,"IF", 0, 2, 0);
	trans[1][670]	= settr(2205,0,695,350,0,"((((CW2_bo.oblig==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][695] = settr(2230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2230,0,677,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][677] = settr(2212,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2212,2,671,0,0,"ATOMIC", 0, 2, 0);
	trans[1][671]	= settr(2206,4,678,351,351,"printf('\\n\\n')", 0, 2, 0); /* m: 672 -> 0,678 */
	reached1[672] = 1;
	trans[1][672]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][673]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][674]	= settr(0,0,0,0,0,"printf('<type>CW2</type>\\n')",0,0,0);
	trans[1][675]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][676]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][678]	= settr(2213,0,679,352,352,"CwCount = (CwCount+1)", 1, 2, 0);
	trans[1][679]	= settr(2214,0,683,353,353,"STUDENTexTrace = (STUDENTexTrace|(1<<CW2_bo.id))", 1, 2, 0);
	T = trans[ 1][683] = settr(2218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2218,0,680,0,0,"sub-sequence", 0, 2, 0);
	trans[1][680]	= settr(2215,0,681,354,354,"CW2_bo.oblig = 0", 1, 2, 0);
	trans[1][681]	= settr(2216,0,682,355,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))", 1, 2, 0);
	trans[1][682]	= settr(2217,0,687,356,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][687] = settr(2222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2222,0,684,0,0,"sub-sequence", 0, 2, 0);
	trans[1][684]	= settr(2219,0,685,357,357,"L7_bo.prohib = 0", 1, 2, 0);
	trans[1][685]	= settr(2220,0,686,358,0,"assert(!(((L7_bo.prohib==1)&&(L7_bo.right==1))))", 1, 2, 0);
	trans[1][686]	= settr(2221,0,691,359,0,"assert(!(((L7_bo.prohib==1)&&(L7_bo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][691] = settr(2226,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2226,0,688,0,0,"sub-sequence", 0, 2, 0);
	trans[1][688]	= settr(2223,0,689,360,360,"L7_bo.oblig = 1", 1, 2, 0);
	trans[1][689]	= settr(2224,0,690,361,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.prohib==1))))", 1, 2, 0);
	trans[1][690]	= settr(2225,0,692,362,0,"assert(!(((L7_bo.oblig==1)&&(L7_bo.right==1))))", 1, 2, 0);
	trans[1][692]	= settr(2227,0,694,363,0,"printf('LECTURES are now continued')", 0, 2, 0);
	T = trans[ 1][694] = settr(2229,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2229,0,693,0,0,"sub-sequence", 0, 2, 0);
	trans[1][693]	= settr(2228,0,808,364,364,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][733]	= settr(2268,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][696]	= settr(2231,0,723,365,0,"((((CW2_bo.oblig==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][723] = settr(2258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2258,0,703,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][703] = settr(2238,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2238,2,697,0,0,"ATOMIC", 0, 2, 0);
	trans[1][697]	= settr(2232,0,708,366,366,"printf('\\n\\n')", 0, 2, 0); /* m: 698 -> 0,708 */
	reached1[698] = 1;
	trans[1][698]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][699]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][700]	= settr(0,0,0,0,0,"printf('<type>CW2</type>\\n')",0,0,0);
	trans[1][701]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][702]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][704]	= settr(0,0,0,0,0,"printf('No submission at within required time')",0,0,0);
	T = trans[ 1][708] = settr(2243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2243,0,705,0,0,"sub-sequence", 0, 2, 0);
	trans[1][705]	= settr(2240,0,706,367,367,"EXAM_bo.oblig = 0", 1, 2, 0);
	trans[1][706]	= settr(2241,0,707,368,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))", 1, 2, 0);
	trans[1][707]	= settr(2242,0,712,369,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][712] = settr(2247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2247,0,709,0,0,"sub-sequence", 0, 2, 0);
	trans[1][709]	= settr(2244,0,710,370,370,"CW2_bo.oblig = 0", 1, 2, 0);
	trans[1][710]	= settr(2245,0,711,371,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.prohib==1))))", 1, 2, 0);
	trans[1][711]	= settr(2246,0,719,372,0,"assert(!(((CW2_bo.oblig==1)&&(CW2_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][719] = settr(2254,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2254,2,713,0,0,"ATOMIC", 0, 2, 0);
	trans[1][713]	= settr(2248,4,720,373,373,"printf('\\n\\n')", 0, 2, 0); /* m: 714 -> 0,720 */
	reached1[714] = 1;
	trans[1][714]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][715]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][716]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][717]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][718]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][720]	= settr(2255,0,722,374,374,"fail = 1", 1, 2, 0);
	T = trans[ 1][722] = settr(2257,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2257,0,721,0,0,"sub-sequence", 0, 2, 0);
	trans[1][721]	= settr(2256,0,808,375,375,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][724]	= settr(2259,0,728,376,0,"((((CW2_bo.prohib==1)&&((CW2_bo.role_pl==STUDENT)==1))&&((CW2_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][728] = settr(2263,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2263,0,725,0,0,"sub-sequence", 0, 2, 0);
	trans[1][725]	= settr(2260,0,727,377,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][727] = settr(2262,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2262,0,726,0,0,"sub-sequence", 0, 2, 0);
	trans[1][726]	= settr(2261,0,808,378,378,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][729]	= settr(2264,0,731,2,0,"else", 0, 2, 0);
	T = trans[ 1][731] = settr(2266,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2266,0,730,0,0,"sub-sequence", 0, 2, 0);
	trans[1][730]	= settr(2265,0,808,379,379,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][747] = settr(2282,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2282,0,745,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][745] = settr(2280,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2280,0,735,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2280,0,737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2280,0,739,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2280,0,741,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2280,0,743,0,0,"IF", 0, 2, 0);
	trans[1][735]	= settr(2270,0,736,380,0,"(LEG2CRM?[28,S])", 1, 2, 0);
	trans[1][736]	= settr(2271,0,807,381,381,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][746]	= settr(2281,0,807,1,0,".(goto)", 0, 2, 0);
	trans[1][737]	= settr(2272,0,738,382,0,"(LEG2CRM?[28,TO])", 1, 2, 0);
	trans[1][738]	= settr(2273,0,807,383,383,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][739]	= settr(2274,0,740,384,0,"(LEG2CRM?[28,TF])", 1, 2, 0);
	trans[1][740]	= settr(2275,0,807,385,385,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][741]	= settr(2276,0,742,386,0,"(LEG2CRM?[28,LF])", 1, 2, 0);
	trans[1][742]	= settr(2277,0,807,387,387,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][743]	= settr(2278,0,744,388,0,"(LEG2CRM?[28,P])", 1, 2, 0);
	trans[1][744]	= settr(2279,0,807,389,389,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][807] = settr(2342,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2342,0,748,0,0,"sub-sequence", 0, 2, 0);
	trans[1][748]	= settr(2283,0,805,390,0,"printf('EXAM ')", 0, 2, 0);
	T = trans[1][805] = settr(2340,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,773,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2340,0,797,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2340,0,802,0,0,"IF", 0, 2, 0);
	trans[1][749]	= settr(2284,0,772,391,0,"((((EXAM_bo.oblig==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][772] = settr(2307,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2307,0,756,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][756] = settr(2291,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2291,2,750,0,0,"ATOMIC", 0, 2, 0);
	trans[1][750]	= settr(2285,4,757,392,392,"printf('\\n\\n')", 0, 2, 0); /* m: 751 -> 0,757 */
	reached1[751] = 1;
	trans[1][751]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][752]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][753]	= settr(0,0,0,0,0,"printf('<type>EXAM</type>\\n')",0,0,0);
	trans[1][754]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][755]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][757]	= settr(2292,0,758,393,393,"ExamCount = (ExamCount+1)", 1, 2, 0);
	trans[1][758]	= settr(2293,0,762,394,394,"STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_bo.id))", 1, 2, 0);
	T = trans[ 1][762] = settr(2297,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2297,0,759,0,0,"sub-sequence", 0, 2, 0);
	trans[1][759]	= settr(2294,0,760,395,395,"EXAM_bo.oblig = 0", 1, 2, 0);
	trans[1][760]	= settr(2295,0,761,396,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))", 1, 2, 0);
	trans[1][761]	= settr(2296,0,769,397,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][769] = settr(2304,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2304,2,763,0,0,"ATOMIC", 0, 2, 0);
	trans[1][763]	= settr(2298,4,771,398,398,"printf('\\n\\n')", 0, 2, 0); /* m: 764 -> 0,771 */
	reached1[764] = 1;
	trans[1][764]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][765]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][766]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][767]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][768]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][771] = settr(2306,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2306,0,770,0,0,"sub-sequence", 0, 2, 0);
	trans[1][770]	= settr(2305,0,808,399,399,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][806]	= settr(2341,0,808,1,0,".(goto)", 0, 2, 0);
	trans[1][773]	= settr(2308,0,796,400,0,"((((EXAM_bo.oblig==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][796] = settr(2331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2331,0,780,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][780] = settr(2315,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2315,2,774,0,0,"ATOMIC", 0, 2, 0);
	trans[1][774]	= settr(2309,0,785,401,401,"printf('\\n\\n')", 0, 2, 0); /* m: 775 -> 0,785 */
	reached1[775] = 1;
	trans[1][775]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][776]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][777]	= settr(0,0,0,0,0,"printf('<type>EXAM</type>\\n')",0,0,0);
	trans[1][778]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][779]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][781]	= settr(0,0,0,0,0,"printf('Exam -- timeout')",0,0,0);
	T = trans[ 1][785] = settr(2320,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2320,0,782,0,0,"sub-sequence", 0, 2, 0);
	trans[1][782]	= settr(2317,0,783,402,402,"EXAM_bo.oblig = 0", 1, 2, 0);
	trans[1][783]	= settr(2318,0,784,403,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.prohib==1))))", 1, 2, 0);
	trans[1][784]	= settr(2319,0,792,404,0,"assert(!(((EXAM_bo.oblig==1)&&(EXAM_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][792] = settr(2327,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2327,2,786,0,0,"ATOMIC", 0, 2, 0);
	trans[1][786]	= settr(2321,4,793,405,405,"printf('\\n\\n')", 0, 2, 0); /* m: 787 -> 0,793 */
	reached1[787] = 1;
	trans[1][787]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][788]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][789]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][790]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][791]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][793]	= settr(2328,0,795,406,406,"fail = 1", 1, 2, 0);
	T = trans[ 1][795] = settr(2330,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2330,0,794,0,0,"sub-sequence", 0, 2, 0);
	trans[1][794]	= settr(2329,0,808,407,407,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][797]	= settr(2332,0,801,408,0,"((((EXAM_bo.prohib==1)&&((EXAM_bo.role_pl==STUDENT)==1))&&((EXAM_bo.status==P)==1)))", 1, 2, 0);
	T = trans[ 1][801] = settr(2336,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2336,0,798,0,0,"sub-sequence", 0, 2, 0);
	trans[1][798]	= settr(2333,0,800,409,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][800] = settr(2335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2335,0,799,0,0,"sub-sequence", 0, 2, 0);
	trans[1][799]	= settr(2334,0,808,410,410,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][802]	= settr(2337,0,804,2,0,"else", 0, 2, 0);
	T = trans[ 1][804] = settr(2339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2339,0,803,0,0,"sub-sequence", 0, 2, 0);
	trans[1][803]	= settr(2338,0,808,411,411,"CRM2LEG!6,5", 1, 4, 0);
	trans[1][810]	= settr(2345,0,811,1,0,"break", 0, 2, 0);
	trans[1][811]	= settr(2346,0,0,412,412,"-end-", 0, 3500, 0);

	/* proctype 0: LEG */

	trans[0] = (Trans **) emalloc(1537*sizeof(Trans *));

	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(105,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,413,413,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,414,414,"STUDENTexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,415,415,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,416,416,"LMSexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,417,417,"D_STEP174", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,418,418,"D_STEP174", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,419,419,"D_STEP174", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,51,420,420,"D_STEP174", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(50,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,60,421,421,"D_STEP174", 1, 2, 0);
	T = trans[ 0][60] = settr(59,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(59,0,59,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][59]	= settr(58,32,69,422,422,"D_STEP174", 1, 2, 0);
	T = trans[ 0][69] = settr(68,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(68,0,68,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][68]	= settr(67,32,78,423,423,"D_STEP174", 1, 2, 0);
	T = trans[ 0][78] = settr(77,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(77,0,77,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][77]	= settr(76,32,87,424,424,"D_STEP174", 1, 2, 0);
	T = trans[ 0][87] = settr(86,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(86,0,86,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][86]	= settr(85,32,96,425,425,"D_STEP174", 1, 2, 0);
	T = trans[ 0][96] = settr(95,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(95,0,95,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][95]	= settr(94,32,105,426,426,"D_STEP174", 1, 2, 0);
	T = trans[ 0][105] = settr(104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(104,0,104,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][104]	= settr(103,32,1533,427,427,"D_STEP174", 1, 2, 0);
	trans[0][1534]	= settr(1533,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[0][1533] = settr(1532,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,107,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,153,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,199,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,245,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,291,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,337,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,383,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,429,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,475,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,521,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,567,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,613,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,659,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,705,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,751,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,797,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,843,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,889,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,935,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,981,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1027,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1073,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1119,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1165,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1211,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1257,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1303,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1349,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1395,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,1441,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1532,0,1487,0,0,"DO", 0, 2, 0);
	trans[0][107]	= settr(106,0,108,428,0,"((((START_bo.right==1)||(START_bo.oblig==1))||(START_bo.prohib==1)))", 1, 2, 0);
	trans[0][108]	= settr(107,0,110,429,429,"START_bo.status = S", 1, 2, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(109,0,109,0,0,"sub-sequence", 0, 2, 0);
	trans[0][109]	= settr(108,0,152,430,430,"LEG2CRM!18,17", 1, 3, 0);
	T = trans[ 0][152] = settr(151,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(151,0,150,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][150] = settr(149,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,112,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,118,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(149,0,145,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(149,0,148,0,0,"IF", 0, 2, 0);
	T = trans[ 0][112] = settr(111,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(111,0,111,0,0,"sub-sequence", 0, 2, 0);
	trans[0][111]	= settr(110,0,113,431,431,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][113]	= settr(112,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][151]	= settr(150,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][115] = settr(114,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(114,0,114,0,0,"sub-sequence", 0, 2, 0);
	trans[0][114]	= settr(113,0,116,432,432,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][116]	= settr(115,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][118] = settr(117,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(117,0,117,0,0,"sub-sequence", 0, 2, 0);
	trans[0][117]	= settr(116,0,119,433,433,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][119]	= settr(118,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][121] = settr(120,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(120,0,120,0,0,"sub-sequence", 0, 2, 0);
	trans[0][120]	= settr(119,0,122,434,434,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][122]	= settr(121,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(123,0,123,0,0,"sub-sequence", 0, 2, 0);
	trans[0][123]	= settr(122,0,106,435,435,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][125]	= settr(124,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][127] = settr(126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(126,0,126,0,0,"sub-sequence", 0, 2, 0);
	trans[0][126]	= settr(125,0,106,436,436,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][128]	= settr(127,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][130] = settr(129,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(129,0,129,0,0,"sub-sequence", 0, 2, 0);
	trans[0][129]	= settr(128,0,106,437,437,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][131]	= settr(130,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][133] = settr(132,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(132,0,132,0,0,"sub-sequence", 0, 2, 0);
	trans[0][132]	= settr(131,0,106,438,438,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][134]	= settr(133,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][136] = settr(135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(135,0,135,0,0,"sub-sequence", 0, 2, 0);
	trans[0][135]	= settr(134,0,106,439,439,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][137]	= settr(136,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][139] = settr(138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(138,0,138,0,0,"sub-sequence", 0, 2, 0);
	trans[0][138]	= settr(137,0,106,440,440,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][140]	= settr(139,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][142] = settr(141,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(141,0,141,0,0,"sub-sequence", 0, 2, 0);
	trans[0][141]	= settr(140,0,1533,441,441,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][143]	= settr(142,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][145] = settr(144,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(144,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[0][144]	= settr(143,0,1533,442,442,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][146]	= settr(145,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][148] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,147,0,0,"sub-sequence", 0, 2, 0);
	trans[0][147]	= settr(146,0,1533,443,443,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][149]	= settr(148,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][153]	= settr(152,0,154,444,0,"((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))", 1, 2, 0);
	trans[0][154]	= settr(153,0,156,445,445,"L1_bo.status = S", 1, 2, 0);
	T = trans[ 0][156] = settr(155,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(155,0,155,0,0,"sub-sequence", 0, 2, 0);
	trans[0][155]	= settr(154,0,198,446,446,"LEG2CRM!19,17", 1, 3, 0);
	T = trans[ 0][198] = settr(197,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(197,0,196,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][196] = settr(195,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,158,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,161,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,164,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(195,0,191,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(195,0,194,0,0,"IF", 0, 2, 0);
	T = trans[ 0][158] = settr(157,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(157,0,157,0,0,"sub-sequence", 0, 2, 0);
	trans[0][157]	= settr(156,0,159,447,447,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][159]	= settr(158,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][197]	= settr(196,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][161] = settr(160,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(160,0,160,0,0,"sub-sequence", 0, 2, 0);
	trans[0][160]	= settr(159,0,162,448,448,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][162]	= settr(161,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][164] = settr(163,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(163,0,163,0,0,"sub-sequence", 0, 2, 0);
	trans[0][163]	= settr(162,0,165,449,449,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][165]	= settr(164,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][167] = settr(166,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(166,0,166,0,0,"sub-sequence", 0, 2, 0);
	trans[0][166]	= settr(165,0,168,450,450,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][168]	= settr(167,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][170] = settr(169,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(169,0,169,0,0,"sub-sequence", 0, 2, 0);
	trans[0][169]	= settr(168,0,106,451,451,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][171]	= settr(170,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][173] = settr(172,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(172,0,172,0,0,"sub-sequence", 0, 2, 0);
	trans[0][172]	= settr(171,0,106,452,452,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][174]	= settr(173,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][176] = settr(175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(175,0,175,0,0,"sub-sequence", 0, 2, 0);
	trans[0][175]	= settr(174,0,106,453,453,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][177]	= settr(176,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][179] = settr(178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(178,0,178,0,0,"sub-sequence", 0, 2, 0);
	trans[0][178]	= settr(177,0,106,454,454,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][180]	= settr(179,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][182] = settr(181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(181,0,181,0,0,"sub-sequence", 0, 2, 0);
	trans[0][181]	= settr(180,0,106,455,455,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][183]	= settr(182,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][185] = settr(184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(184,0,184,0,0,"sub-sequence", 0, 2, 0);
	trans[0][184]	= settr(183,0,106,456,456,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][186]	= settr(185,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][188] = settr(187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(187,0,187,0,0,"sub-sequence", 0, 2, 0);
	trans[0][187]	= settr(186,0,1533,457,457,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][189]	= settr(188,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][191] = settr(190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(190,0,190,0,0,"sub-sequence", 0, 2, 0);
	trans[0][190]	= settr(189,0,1533,458,458,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][192]	= settr(191,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][194] = settr(193,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(193,0,193,0,0,"sub-sequence", 0, 2, 0);
	trans[0][193]	= settr(192,0,1533,459,459,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][195]	= settr(194,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][199]	= settr(198,0,200,460,0,"((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))", 1, 2, 0);
	trans[0][200]	= settr(199,0,202,461,461,"L1_bo.status = P", 1, 2, 0);
	T = trans[ 0][202] = settr(201,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(201,0,201,0,0,"sub-sequence", 0, 2, 0);
	trans[0][201]	= settr(200,0,244,462,462,"LEG2CRM!19,13", 1, 3, 0);
	T = trans[ 0][244] = settr(243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(243,0,242,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][242] = settr(241,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,204,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,207,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,210,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,213,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,216,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,219,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,237,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(241,0,240,0,0,"IF", 0, 2, 0);
	T = trans[ 0][204] = settr(203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(203,0,203,0,0,"sub-sequence", 0, 2, 0);
	trans[0][203]	= settr(202,0,205,463,463,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][205]	= settr(204,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][243]	= settr(242,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][207] = settr(206,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(206,0,206,0,0,"sub-sequence", 0, 2, 0);
	trans[0][206]	= settr(205,0,208,464,464,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][208]	= settr(207,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][210] = settr(209,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(209,0,209,0,0,"sub-sequence", 0, 2, 0);
	trans[0][209]	= settr(208,0,211,465,465,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][211]	= settr(210,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][213] = settr(212,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(212,0,212,0,0,"sub-sequence", 0, 2, 0);
	trans[0][212]	= settr(211,0,214,466,466,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][214]	= settr(213,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][216] = settr(215,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(215,0,215,0,0,"sub-sequence", 0, 2, 0);
	trans[0][215]	= settr(214,0,106,467,467,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][217]	= settr(216,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][219] = settr(218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(218,0,218,0,0,"sub-sequence", 0, 2, 0);
	trans[0][218]	= settr(217,0,106,468,468,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][220]	= settr(219,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][222] = settr(221,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(221,0,221,0,0,"sub-sequence", 0, 2, 0);
	trans[0][221]	= settr(220,0,106,469,469,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][223]	= settr(222,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][225] = settr(224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(224,0,224,0,0,"sub-sequence", 0, 2, 0);
	trans[0][224]	= settr(223,0,106,470,470,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][226]	= settr(225,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][228] = settr(227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(227,0,227,0,0,"sub-sequence", 0, 2, 0);
	trans[0][227]	= settr(226,0,106,471,471,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][229]	= settr(228,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][231] = settr(230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(230,0,230,0,0,"sub-sequence", 0, 2, 0);
	trans[0][230]	= settr(229,0,106,472,472,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][232]	= settr(231,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][234] = settr(233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(233,0,233,0,0,"sub-sequence", 0, 2, 0);
	trans[0][233]	= settr(232,0,1533,473,473,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][235]	= settr(234,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][237] = settr(236,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(236,0,236,0,0,"sub-sequence", 0, 2, 0);
	trans[0][236]	= settr(235,0,1533,474,474,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][238]	= settr(237,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][240] = settr(239,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(239,0,239,0,0,"sub-sequence", 0, 2, 0);
	trans[0][239]	= settr(238,0,1533,475,475,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][241]	= settr(240,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][245]	= settr(244,0,246,476,0,"((((L1_bo.right==1)||(L1_bo.oblig==1))||(L1_bo.prohib==1)))", 1, 2, 0);
	trans[0][246]	= settr(245,0,248,477,477,"L1_bo.status = TF", 1, 2, 0);
	T = trans[ 0][248] = settr(247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(247,0,247,0,0,"sub-sequence", 0, 2, 0);
	trans[0][247]	= settr(246,0,290,478,478,"LEG2CRM!19,15", 1, 3, 0);
	T = trans[ 0][290] = settr(289,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(289,0,288,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][288] = settr(287,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,253,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,256,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(287,0,283,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(287,0,286,0,0,"IF", 0, 2, 0);
	T = trans[ 0][250] = settr(249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(249,0,249,0,0,"sub-sequence", 0, 2, 0);
	trans[0][249]	= settr(248,0,251,479,479,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][251]	= settr(250,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][289]	= settr(288,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][253] = settr(252,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(252,0,252,0,0,"sub-sequence", 0, 2, 0);
	trans[0][252]	= settr(251,0,254,480,480,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][254]	= settr(253,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][256] = settr(255,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(255,0,255,0,0,"sub-sequence", 0, 2, 0);
	trans[0][255]	= settr(254,0,257,481,481,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][257]	= settr(256,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][259] = settr(258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(258,0,258,0,0,"sub-sequence", 0, 2, 0);
	trans[0][258]	= settr(257,0,260,482,482,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][260]	= settr(259,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][262] = settr(261,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(261,0,261,0,0,"sub-sequence", 0, 2, 0);
	trans[0][261]	= settr(260,0,106,483,483,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][263]	= settr(262,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][265] = settr(264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(264,0,264,0,0,"sub-sequence", 0, 2, 0);
	trans[0][264]	= settr(263,0,106,484,484,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][266]	= settr(265,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][268] = settr(267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(267,0,267,0,0,"sub-sequence", 0, 2, 0);
	trans[0][267]	= settr(266,0,106,485,485,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][269]	= settr(268,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][271] = settr(270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(270,0,270,0,0,"sub-sequence", 0, 2, 0);
	trans[0][270]	= settr(269,0,106,486,486,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][272]	= settr(271,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][274] = settr(273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(273,0,273,0,0,"sub-sequence", 0, 2, 0);
	trans[0][273]	= settr(272,0,106,487,487,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][275]	= settr(274,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][277] = settr(276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(276,0,276,0,0,"sub-sequence", 0, 2, 0);
	trans[0][276]	= settr(275,0,106,488,488,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][278]	= settr(277,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][280] = settr(279,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(279,0,279,0,0,"sub-sequence", 0, 2, 0);
	trans[0][279]	= settr(278,0,1533,489,489,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][281]	= settr(280,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][283] = settr(282,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(282,0,282,0,0,"sub-sequence", 0, 2, 0);
	trans[0][282]	= settr(281,0,1533,490,490,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][284]	= settr(283,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][286] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,285,0,0,"sub-sequence", 0, 2, 0);
	trans[0][285]	= settr(284,0,1533,491,491,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][287]	= settr(286,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][291]	= settr(290,0,292,492,0,"((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))", 1, 2, 0);
	trans[0][292]	= settr(291,0,294,493,493,"L2_bo.status = S", 1, 2, 0);
	T = trans[ 0][294] = settr(293,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(293,0,293,0,0,"sub-sequence", 0, 2, 0);
	trans[0][293]	= settr(292,0,336,494,494,"LEG2CRM!20,17", 1, 3, 0);
	T = trans[ 0][336] = settr(335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(335,0,334,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][334] = settr(333,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,296,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,299,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,302,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(333,0,329,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(333,0,332,0,0,"IF", 0, 2, 0);
	T = trans[ 0][296] = settr(295,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(295,0,295,0,0,"sub-sequence", 0, 2, 0);
	trans[0][295]	= settr(294,0,297,495,495,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][297]	= settr(296,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][335]	= settr(334,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][299] = settr(298,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(298,0,298,0,0,"sub-sequence", 0, 2, 0);
	trans[0][298]	= settr(297,0,300,496,496,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][300]	= settr(299,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][302] = settr(301,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(301,0,301,0,0,"sub-sequence", 0, 2, 0);
	trans[0][301]	= settr(300,0,303,497,497,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][303]	= settr(302,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][305] = settr(304,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(304,0,304,0,0,"sub-sequence", 0, 2, 0);
	trans[0][304]	= settr(303,0,306,498,498,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][306]	= settr(305,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][308] = settr(307,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(307,0,307,0,0,"sub-sequence", 0, 2, 0);
	trans[0][307]	= settr(306,0,106,499,499,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][309]	= settr(308,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][311] = settr(310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(310,0,310,0,0,"sub-sequence", 0, 2, 0);
	trans[0][310]	= settr(309,0,106,500,500,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][312]	= settr(311,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][314] = settr(313,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(313,0,313,0,0,"sub-sequence", 0, 2, 0);
	trans[0][313]	= settr(312,0,106,501,501,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][315]	= settr(314,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][317] = settr(316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(316,0,316,0,0,"sub-sequence", 0, 2, 0);
	trans[0][316]	= settr(315,0,106,502,502,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][318]	= settr(317,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][320] = settr(319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(319,0,319,0,0,"sub-sequence", 0, 2, 0);
	trans[0][319]	= settr(318,0,106,503,503,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][321]	= settr(320,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][323] = settr(322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(322,0,322,0,0,"sub-sequence", 0, 2, 0);
	trans[0][322]	= settr(321,0,106,504,504,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][324]	= settr(323,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][326] = settr(325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(325,0,325,0,0,"sub-sequence", 0, 2, 0);
	trans[0][325]	= settr(324,0,1533,505,505,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][327]	= settr(326,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][329] = settr(328,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(328,0,328,0,0,"sub-sequence", 0, 2, 0);
	trans[0][328]	= settr(327,0,1533,506,506,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][330]	= settr(329,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][332] = settr(331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(331,0,331,0,0,"sub-sequence", 0, 2, 0);
	trans[0][331]	= settr(330,0,1533,507,507,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][333]	= settr(332,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][337]	= settr(336,0,338,508,0,"((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))", 1, 2, 0);
	trans[0][338]	= settr(337,0,340,509,509,"L2_bo.status = P", 1, 2, 0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,339,0,0,"sub-sequence", 0, 2, 0);
	trans[0][339]	= settr(338,0,382,510,510,"LEG2CRM!20,13", 1, 3, 0);
	T = trans[ 0][382] = settr(381,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(381,0,380,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][380] = settr(379,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,342,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,345,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,348,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,354,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(379,0,375,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(379,0,378,0,0,"IF", 0, 2, 0);
	T = trans[ 0][342] = settr(341,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(341,0,341,0,0,"sub-sequence", 0, 2, 0);
	trans[0][341]	= settr(340,0,343,511,511,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][343]	= settr(342,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][381]	= settr(380,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][345] = settr(344,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(344,0,344,0,0,"sub-sequence", 0, 2, 0);
	trans[0][344]	= settr(343,0,346,512,512,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][346]	= settr(345,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][348] = settr(347,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(347,0,347,0,0,"sub-sequence", 0, 2, 0);
	trans[0][347]	= settr(346,0,349,513,513,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][349]	= settr(348,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][351] = settr(350,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(350,0,350,0,0,"sub-sequence", 0, 2, 0);
	trans[0][350]	= settr(349,0,352,514,514,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][352]	= settr(351,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][354] = settr(353,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(353,0,353,0,0,"sub-sequence", 0, 2, 0);
	trans[0][353]	= settr(352,0,106,515,515,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][355]	= settr(354,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][357] = settr(356,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(356,0,356,0,0,"sub-sequence", 0, 2, 0);
	trans[0][356]	= settr(355,0,106,516,516,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][358]	= settr(357,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][360] = settr(359,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(359,0,359,0,0,"sub-sequence", 0, 2, 0);
	trans[0][359]	= settr(358,0,106,517,517,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][361]	= settr(360,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][363] = settr(362,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(362,0,362,0,0,"sub-sequence", 0, 2, 0);
	trans[0][362]	= settr(361,0,106,518,518,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][364]	= settr(363,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][366] = settr(365,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(365,0,365,0,0,"sub-sequence", 0, 2, 0);
	trans[0][365]	= settr(364,0,106,519,519,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][367]	= settr(366,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][369] = settr(368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(368,0,368,0,0,"sub-sequence", 0, 2, 0);
	trans[0][368]	= settr(367,0,106,520,520,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][370]	= settr(369,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][372] = settr(371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(371,0,371,0,0,"sub-sequence", 0, 2, 0);
	trans[0][371]	= settr(370,0,1533,521,521,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][373]	= settr(372,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][375] = settr(374,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(374,0,374,0,0,"sub-sequence", 0, 2, 0);
	trans[0][374]	= settr(373,0,1533,522,522,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][376]	= settr(375,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][378] = settr(377,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(377,0,377,0,0,"sub-sequence", 0, 2, 0);
	trans[0][377]	= settr(376,0,1533,523,523,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][379]	= settr(378,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][383]	= settr(382,0,384,524,0,"((((L2_bo.right==1)||(L2_bo.oblig==1))||(L2_bo.prohib==1)))", 1, 2, 0);
	trans[0][384]	= settr(383,0,386,525,525,"L2_bo.status = TF", 1, 2, 0);
	T = trans[ 0][386] = settr(385,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(385,0,385,0,0,"sub-sequence", 0, 2, 0);
	trans[0][385]	= settr(384,0,428,526,526,"LEG2CRM!20,15", 1, 3, 0);
	T = trans[ 0][428] = settr(427,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(427,0,426,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][426] = settr(425,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,388,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,391,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,394,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(425,0,421,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(425,0,424,0,0,"IF", 0, 2, 0);
	T = trans[ 0][388] = settr(387,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(387,0,387,0,0,"sub-sequence", 0, 2, 0);
	trans[0][387]	= settr(386,0,389,527,527,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][389]	= settr(388,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][427]	= settr(426,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][391] = settr(390,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(390,0,390,0,0,"sub-sequence", 0, 2, 0);
	trans[0][390]	= settr(389,0,392,528,528,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][392]	= settr(391,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][394] = settr(393,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(393,0,393,0,0,"sub-sequence", 0, 2, 0);
	trans[0][393]	= settr(392,0,395,529,529,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][395]	= settr(394,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][397] = settr(396,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(396,0,396,0,0,"sub-sequence", 0, 2, 0);
	trans[0][396]	= settr(395,0,398,530,530,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][398]	= settr(397,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][400] = settr(399,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(399,0,399,0,0,"sub-sequence", 0, 2, 0);
	trans[0][399]	= settr(398,0,106,531,531,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][401]	= settr(400,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][403] = settr(402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(402,0,402,0,0,"sub-sequence", 0, 2, 0);
	trans[0][402]	= settr(401,0,106,532,532,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][404]	= settr(403,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][406] = settr(405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(405,0,405,0,0,"sub-sequence", 0, 2, 0);
	trans[0][405]	= settr(404,0,106,533,533,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][407]	= settr(406,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][409] = settr(408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(408,0,408,0,0,"sub-sequence", 0, 2, 0);
	trans[0][408]	= settr(407,0,106,534,534,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][410]	= settr(409,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][412] = settr(411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(411,0,411,0,0,"sub-sequence", 0, 2, 0);
	trans[0][411]	= settr(410,0,106,535,535,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][413]	= settr(412,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][415] = settr(414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(414,0,414,0,0,"sub-sequence", 0, 2, 0);
	trans[0][414]	= settr(413,0,106,536,536,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][416]	= settr(415,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][418] = settr(417,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(417,0,417,0,0,"sub-sequence", 0, 2, 0);
	trans[0][417]	= settr(416,0,1533,537,537,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][419]	= settr(418,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][421] = settr(420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(420,0,420,0,0,"sub-sequence", 0, 2, 0);
	trans[0][420]	= settr(419,0,1533,538,538,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][422]	= settr(421,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][424] = settr(423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(423,0,423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][423]	= settr(422,0,1533,539,539,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][425]	= settr(424,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][429]	= settr(428,0,430,540,0,"((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))", 1, 2, 0);
	trans[0][430]	= settr(429,0,432,541,541,"L3_bo.status = S", 1, 2, 0);
	T = trans[ 0][432] = settr(431,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(431,0,431,0,0,"sub-sequence", 0, 2, 0);
	trans[0][431]	= settr(430,0,474,542,542,"LEG2CRM!21,17", 1, 3, 0);
	T = trans[ 0][474] = settr(473,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(473,0,472,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][472] = settr(471,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,437,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,440,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,443,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,446,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,449,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(471,0,467,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(471,0,470,0,0,"IF", 0, 2, 0);
	T = trans[ 0][434] = settr(433,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(433,0,433,0,0,"sub-sequence", 0, 2, 0);
	trans[0][433]	= settr(432,0,435,543,543,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][435]	= settr(434,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][473]	= settr(472,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][437] = settr(436,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(436,0,436,0,0,"sub-sequence", 0, 2, 0);
	trans[0][436]	= settr(435,0,438,544,544,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][438]	= settr(437,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][440] = settr(439,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(439,0,439,0,0,"sub-sequence", 0, 2, 0);
	trans[0][439]	= settr(438,0,441,545,545,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][441]	= settr(440,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][443] = settr(442,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(442,0,442,0,0,"sub-sequence", 0, 2, 0);
	trans[0][442]	= settr(441,0,444,546,546,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][444]	= settr(443,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][446] = settr(445,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(445,0,445,0,0,"sub-sequence", 0, 2, 0);
	trans[0][445]	= settr(444,0,106,547,547,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][447]	= settr(446,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][449] = settr(448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(448,0,448,0,0,"sub-sequence", 0, 2, 0);
	trans[0][448]	= settr(447,0,106,548,548,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][450]	= settr(449,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][452] = settr(451,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(451,0,451,0,0,"sub-sequence", 0, 2, 0);
	trans[0][451]	= settr(450,0,106,549,549,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][453]	= settr(452,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][455] = settr(454,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(454,0,454,0,0,"sub-sequence", 0, 2, 0);
	trans[0][454]	= settr(453,0,106,550,550,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][456]	= settr(455,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][458] = settr(457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(457,0,457,0,0,"sub-sequence", 0, 2, 0);
	trans[0][457]	= settr(456,0,106,551,551,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][459]	= settr(458,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][461] = settr(460,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(460,0,460,0,0,"sub-sequence", 0, 2, 0);
	trans[0][460]	= settr(459,0,106,552,552,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][462]	= settr(461,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][464] = settr(463,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(463,0,463,0,0,"sub-sequence", 0, 2, 0);
	trans[0][463]	= settr(462,0,1533,553,553,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][465]	= settr(464,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][467] = settr(466,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(466,0,466,0,0,"sub-sequence", 0, 2, 0);
	trans[0][466]	= settr(465,0,1533,554,554,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][468]	= settr(467,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][470] = settr(469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(469,0,469,0,0,"sub-sequence", 0, 2, 0);
	trans[0][469]	= settr(468,0,1533,555,555,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][471]	= settr(470,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][475]	= settr(474,0,476,556,0,"((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))", 1, 2, 0);
	trans[0][476]	= settr(475,0,478,557,557,"L3_bo.status = P", 1, 2, 0);
	T = trans[ 0][478] = settr(477,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(477,0,477,0,0,"sub-sequence", 0, 2, 0);
	trans[0][477]	= settr(476,0,520,558,558,"LEG2CRM!21,13", 1, 3, 0);
	T = trans[ 0][520] = settr(519,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(519,0,518,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][518] = settr(517,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,483,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,486,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(517,0,513,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(517,0,516,0,0,"IF", 0, 2, 0);
	T = trans[ 0][480] = settr(479,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(479,0,479,0,0,"sub-sequence", 0, 2, 0);
	trans[0][479]	= settr(478,0,481,559,559,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][481]	= settr(480,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][519]	= settr(518,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][483] = settr(482,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(482,0,482,0,0,"sub-sequence", 0, 2, 0);
	trans[0][482]	= settr(481,0,484,560,560,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][484]	= settr(483,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][486] = settr(485,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(485,0,485,0,0,"sub-sequence", 0, 2, 0);
	trans[0][485]	= settr(484,0,487,561,561,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][487]	= settr(486,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][489] = settr(488,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(488,0,488,0,0,"sub-sequence", 0, 2, 0);
	trans[0][488]	= settr(487,0,490,562,562,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][490]	= settr(489,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][492] = settr(491,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(491,0,491,0,0,"sub-sequence", 0, 2, 0);
	trans[0][491]	= settr(490,0,106,563,563,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][493]	= settr(492,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][495] = settr(494,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(494,0,494,0,0,"sub-sequence", 0, 2, 0);
	trans[0][494]	= settr(493,0,106,564,564,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][496]	= settr(495,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][498] = settr(497,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(497,0,497,0,0,"sub-sequence", 0, 2, 0);
	trans[0][497]	= settr(496,0,106,565,565,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][499]	= settr(498,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][501] = settr(500,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(500,0,500,0,0,"sub-sequence", 0, 2, 0);
	trans[0][500]	= settr(499,0,106,566,566,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][502]	= settr(501,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][504] = settr(503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(503,0,503,0,0,"sub-sequence", 0, 2, 0);
	trans[0][503]	= settr(502,0,106,567,567,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][505]	= settr(504,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][507] = settr(506,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(506,0,506,0,0,"sub-sequence", 0, 2, 0);
	trans[0][506]	= settr(505,0,106,568,568,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][508]	= settr(507,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][510] = settr(509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(509,0,509,0,0,"sub-sequence", 0, 2, 0);
	trans[0][509]	= settr(508,0,1533,569,569,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][511]	= settr(510,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][513] = settr(512,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(512,0,512,0,0,"sub-sequence", 0, 2, 0);
	trans[0][512]	= settr(511,0,1533,570,570,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][514]	= settr(513,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][516] = settr(515,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(515,0,515,0,0,"sub-sequence", 0, 2, 0);
	trans[0][515]	= settr(514,0,1533,571,571,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][517]	= settr(516,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][521]	= settr(520,0,522,572,0,"((((L3_bo.right==1)||(L3_bo.oblig==1))||(L3_bo.prohib==1)))", 1, 2, 0);
	trans[0][522]	= settr(521,0,524,573,573,"L3_bo.status = TF", 1, 2, 0);
	T = trans[ 0][524] = settr(523,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(523,0,523,0,0,"sub-sequence", 0, 2, 0);
	trans[0][523]	= settr(522,0,566,574,574,"LEG2CRM!21,15", 1, 3, 0);
	T = trans[ 0][566] = settr(565,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(565,0,564,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][564] = settr(563,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,526,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,532,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,544,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,556,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(563,0,559,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(563,0,562,0,0,"IF", 0, 2, 0);
	T = trans[ 0][526] = settr(525,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(525,0,525,0,0,"sub-sequence", 0, 2, 0);
	trans[0][525]	= settr(524,0,527,575,575,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][527]	= settr(526,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][565]	= settr(564,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][529] = settr(528,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(528,0,528,0,0,"sub-sequence", 0, 2, 0);
	trans[0][528]	= settr(527,0,530,576,576,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][530]	= settr(529,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][532] = settr(531,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(531,0,531,0,0,"sub-sequence", 0, 2, 0);
	trans[0][531]	= settr(530,0,533,577,577,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][533]	= settr(532,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][535] = settr(534,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(534,0,534,0,0,"sub-sequence", 0, 2, 0);
	trans[0][534]	= settr(533,0,536,578,578,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][536]	= settr(535,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][538] = settr(537,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(537,0,537,0,0,"sub-sequence", 0, 2, 0);
	trans[0][537]	= settr(536,0,106,579,579,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][539]	= settr(538,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][541] = settr(540,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(540,0,540,0,0,"sub-sequence", 0, 2, 0);
	trans[0][540]	= settr(539,0,106,580,580,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][542]	= settr(541,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][544] = settr(543,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(543,0,543,0,0,"sub-sequence", 0, 2, 0);
	trans[0][543]	= settr(542,0,106,581,581,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][545]	= settr(544,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][547] = settr(546,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(546,0,546,0,0,"sub-sequence", 0, 2, 0);
	trans[0][546]	= settr(545,0,106,582,582,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][548]	= settr(547,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][550] = settr(549,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(549,0,549,0,0,"sub-sequence", 0, 2, 0);
	trans[0][549]	= settr(548,0,106,583,583,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][551]	= settr(550,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][553] = settr(552,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(552,0,552,0,0,"sub-sequence", 0, 2, 0);
	trans[0][552]	= settr(551,0,106,584,584,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][554]	= settr(553,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][556] = settr(555,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(555,0,555,0,0,"sub-sequence", 0, 2, 0);
	trans[0][555]	= settr(554,0,1533,585,585,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][557]	= settr(556,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][559] = settr(558,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(558,0,558,0,0,"sub-sequence", 0, 2, 0);
	trans[0][558]	= settr(557,0,1533,586,586,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][560]	= settr(559,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][562] = settr(561,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(561,0,561,0,0,"sub-sequence", 0, 2, 0);
	trans[0][561]	= settr(560,0,1533,587,587,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][563]	= settr(562,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][567]	= settr(566,0,568,588,0,"((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))", 1, 2, 0);
	trans[0][568]	= settr(567,0,570,589,589,"L4_bo.status = S", 1, 2, 0);
	T = trans[ 0][570] = settr(569,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(569,0,569,0,0,"sub-sequence", 0, 2, 0);
	trans[0][569]	= settr(568,0,612,590,590,"LEG2CRM!22,17", 1, 3, 0);
	T = trans[ 0][612] = settr(611,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(611,0,610,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][610] = settr(609,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,572,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,575,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,578,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,581,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,584,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,587,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(609,0,605,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(609,0,608,0,0,"IF", 0, 2, 0);
	T = trans[ 0][572] = settr(571,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(571,0,571,0,0,"sub-sequence", 0, 2, 0);
	trans[0][571]	= settr(570,0,573,591,591,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][573]	= settr(572,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][611]	= settr(610,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][575] = settr(574,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(574,0,574,0,0,"sub-sequence", 0, 2, 0);
	trans[0][574]	= settr(573,0,576,592,592,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][576]	= settr(575,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][578] = settr(577,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(577,0,577,0,0,"sub-sequence", 0, 2, 0);
	trans[0][577]	= settr(576,0,579,593,593,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][579]	= settr(578,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][581] = settr(580,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(580,0,580,0,0,"sub-sequence", 0, 2, 0);
	trans[0][580]	= settr(579,0,582,594,594,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][582]	= settr(581,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][584] = settr(583,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(583,0,583,0,0,"sub-sequence", 0, 2, 0);
	trans[0][583]	= settr(582,0,106,595,595,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][585]	= settr(584,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][587] = settr(586,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(586,0,586,0,0,"sub-sequence", 0, 2, 0);
	trans[0][586]	= settr(585,0,106,596,596,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][588]	= settr(587,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][590] = settr(589,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(589,0,589,0,0,"sub-sequence", 0, 2, 0);
	trans[0][589]	= settr(588,0,106,597,597,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][591]	= settr(590,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][593] = settr(592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(592,0,592,0,0,"sub-sequence", 0, 2, 0);
	trans[0][592]	= settr(591,0,106,598,598,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][594]	= settr(593,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][596] = settr(595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(595,0,595,0,0,"sub-sequence", 0, 2, 0);
	trans[0][595]	= settr(594,0,106,599,599,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][597]	= settr(596,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][599] = settr(598,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(598,0,598,0,0,"sub-sequence", 0, 2, 0);
	trans[0][598]	= settr(597,0,106,600,600,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][600]	= settr(599,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][602] = settr(601,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(601,0,601,0,0,"sub-sequence", 0, 2, 0);
	trans[0][601]	= settr(600,0,1533,601,601,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][603]	= settr(602,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][605] = settr(604,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(604,0,604,0,0,"sub-sequence", 0, 2, 0);
	trans[0][604]	= settr(603,0,1533,602,602,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][606]	= settr(605,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][608] = settr(607,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(607,0,607,0,0,"sub-sequence", 0, 2, 0);
	trans[0][607]	= settr(606,0,1533,603,603,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][609]	= settr(608,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][613]	= settr(612,0,614,604,0,"((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))", 1, 2, 0);
	trans[0][614]	= settr(613,0,616,605,605,"L4_bo.status = P", 1, 2, 0);
	T = trans[ 0][616] = settr(615,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(615,0,615,0,0,"sub-sequence", 0, 2, 0);
	trans[0][615]	= settr(614,0,658,606,606,"LEG2CRM!22,13", 1, 3, 0);
	T = trans[ 0][658] = settr(657,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(657,0,656,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][656] = settr(655,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,618,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,621,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,624,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,651,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(655,0,654,0,0,"IF", 0, 2, 0);
	T = trans[ 0][618] = settr(617,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(617,0,617,0,0,"sub-sequence", 0, 2, 0);
	trans[0][617]	= settr(616,0,619,607,607,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][619]	= settr(618,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][657]	= settr(656,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][621] = settr(620,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(620,0,620,0,0,"sub-sequence", 0, 2, 0);
	trans[0][620]	= settr(619,0,622,608,608,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][622]	= settr(621,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][624] = settr(623,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(623,0,623,0,0,"sub-sequence", 0, 2, 0);
	trans[0][623]	= settr(622,0,625,609,609,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][625]	= settr(624,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][627] = settr(626,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(626,0,626,0,0,"sub-sequence", 0, 2, 0);
	trans[0][626]	= settr(625,0,628,610,610,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][628]	= settr(627,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][630] = settr(629,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(629,0,629,0,0,"sub-sequence", 0, 2, 0);
	trans[0][629]	= settr(628,0,106,611,611,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][631]	= settr(630,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][633] = settr(632,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(632,0,632,0,0,"sub-sequence", 0, 2, 0);
	trans[0][632]	= settr(631,0,106,612,612,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][634]	= settr(633,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][636] = settr(635,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(635,0,635,0,0,"sub-sequence", 0, 2, 0);
	trans[0][635]	= settr(634,0,106,613,613,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][637]	= settr(636,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][639] = settr(638,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(638,0,638,0,0,"sub-sequence", 0, 2, 0);
	trans[0][638]	= settr(637,0,106,614,614,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][640]	= settr(639,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][642] = settr(641,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(641,0,641,0,0,"sub-sequence", 0, 2, 0);
	trans[0][641]	= settr(640,0,106,615,615,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][643]	= settr(642,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][645] = settr(644,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(644,0,644,0,0,"sub-sequence", 0, 2, 0);
	trans[0][644]	= settr(643,0,106,616,616,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][646]	= settr(645,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][648] = settr(647,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(647,0,647,0,0,"sub-sequence", 0, 2, 0);
	trans[0][647]	= settr(646,0,1533,617,617,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][649]	= settr(648,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][651] = settr(650,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(650,0,650,0,0,"sub-sequence", 0, 2, 0);
	trans[0][650]	= settr(649,0,1533,618,618,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][652]	= settr(651,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][654] = settr(653,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(653,0,653,0,0,"sub-sequence", 0, 2, 0);
	trans[0][653]	= settr(652,0,1533,619,619,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][655]	= settr(654,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][659]	= settr(658,0,660,620,0,"((((L4_bo.right==1)||(L4_bo.oblig==1))||(L4_bo.prohib==1)))", 1, 2, 0);
	trans[0][660]	= settr(659,0,662,621,621,"L4_bo.status = TF", 1, 2, 0);
	T = trans[ 0][662] = settr(661,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(661,0,661,0,0,"sub-sequence", 0, 2, 0);
	trans[0][661]	= settr(660,0,704,622,622,"LEG2CRM!22,15", 1, 3, 0);
	T = trans[ 0][704] = settr(703,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(703,0,702,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][702] = settr(701,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,664,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,667,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,670,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,676,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,679,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,682,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,685,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,688,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,691,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,694,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(701,0,697,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(701,0,700,0,0,"IF", 0, 2, 0);
	T = trans[ 0][664] = settr(663,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(663,0,663,0,0,"sub-sequence", 0, 2, 0);
	trans[0][663]	= settr(662,0,665,623,623,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][665]	= settr(664,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][703]	= settr(702,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][667] = settr(666,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(666,0,666,0,0,"sub-sequence", 0, 2, 0);
	trans[0][666]	= settr(665,0,668,624,624,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][668]	= settr(667,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][670] = settr(669,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(669,0,669,0,0,"sub-sequence", 0, 2, 0);
	trans[0][669]	= settr(668,0,671,625,625,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][671]	= settr(670,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][673] = settr(672,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(672,0,672,0,0,"sub-sequence", 0, 2, 0);
	trans[0][672]	= settr(671,0,674,626,626,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][674]	= settr(673,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][676] = settr(675,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(675,0,675,0,0,"sub-sequence", 0, 2, 0);
	trans[0][675]	= settr(674,0,106,627,627,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][677]	= settr(676,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][679] = settr(678,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(678,0,678,0,0,"sub-sequence", 0, 2, 0);
	trans[0][678]	= settr(677,0,106,628,628,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][680]	= settr(679,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][682] = settr(681,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(681,0,681,0,0,"sub-sequence", 0, 2, 0);
	trans[0][681]	= settr(680,0,106,629,629,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][683]	= settr(682,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][685] = settr(684,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(684,0,684,0,0,"sub-sequence", 0, 2, 0);
	trans[0][684]	= settr(683,0,106,630,630,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][686]	= settr(685,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][688] = settr(687,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(687,0,687,0,0,"sub-sequence", 0, 2, 0);
	trans[0][687]	= settr(686,0,106,631,631,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][689]	= settr(688,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][691] = settr(690,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(690,0,690,0,0,"sub-sequence", 0, 2, 0);
	trans[0][690]	= settr(689,0,106,632,632,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][692]	= settr(691,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][694] = settr(693,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(693,0,693,0,0,"sub-sequence", 0, 2, 0);
	trans[0][693]	= settr(692,0,1533,633,633,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][695]	= settr(694,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][697] = settr(696,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(696,0,696,0,0,"sub-sequence", 0, 2, 0);
	trans[0][696]	= settr(695,0,1533,634,634,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][698]	= settr(697,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][700] = settr(699,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(699,0,699,0,0,"sub-sequence", 0, 2, 0);
	trans[0][699]	= settr(698,0,1533,635,635,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][701]	= settr(700,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][705]	= settr(704,0,706,636,0,"((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))", 1, 2, 0);
	trans[0][706]	= settr(705,0,708,637,637,"L5_bo.status = S", 1, 2, 0);
	T = trans[ 0][708] = settr(707,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(707,0,707,0,0,"sub-sequence", 0, 2, 0);
	trans[0][707]	= settr(706,0,750,638,638,"LEG2CRM!23,17", 1, 3, 0);
	T = trans[ 0][750] = settr(749,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(749,0,748,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][748] = settr(747,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,710,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,713,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,716,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(747,0,743,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(747,0,746,0,0,"IF", 0, 2, 0);
	T = trans[ 0][710] = settr(709,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(709,0,709,0,0,"sub-sequence", 0, 2, 0);
	trans[0][709]	= settr(708,0,711,639,639,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][711]	= settr(710,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][749]	= settr(748,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][713] = settr(712,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(712,0,712,0,0,"sub-sequence", 0, 2, 0);
	trans[0][712]	= settr(711,0,714,640,640,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][714]	= settr(713,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][716] = settr(715,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(715,0,715,0,0,"sub-sequence", 0, 2, 0);
	trans[0][715]	= settr(714,0,717,641,641,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][717]	= settr(716,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][719] = settr(718,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(718,0,718,0,0,"sub-sequence", 0, 2, 0);
	trans[0][718]	= settr(717,0,720,642,642,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][720]	= settr(719,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][722] = settr(721,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(721,0,721,0,0,"sub-sequence", 0, 2, 0);
	trans[0][721]	= settr(720,0,106,643,643,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][723]	= settr(722,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][725] = settr(724,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(724,0,724,0,0,"sub-sequence", 0, 2, 0);
	trans[0][724]	= settr(723,0,106,644,644,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][726]	= settr(725,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][728] = settr(727,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(727,0,727,0,0,"sub-sequence", 0, 2, 0);
	trans[0][727]	= settr(726,0,106,645,645,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][729]	= settr(728,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][731] = settr(730,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(730,0,730,0,0,"sub-sequence", 0, 2, 0);
	trans[0][730]	= settr(729,0,106,646,646,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][732]	= settr(731,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][734] = settr(733,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(733,0,733,0,0,"sub-sequence", 0, 2, 0);
	trans[0][733]	= settr(732,0,106,647,647,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][735]	= settr(734,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][737] = settr(736,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(736,0,736,0,0,"sub-sequence", 0, 2, 0);
	trans[0][736]	= settr(735,0,106,648,648,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][738]	= settr(737,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][740] = settr(739,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(739,0,739,0,0,"sub-sequence", 0, 2, 0);
	trans[0][739]	= settr(738,0,1533,649,649,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][741]	= settr(740,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][743] = settr(742,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(742,0,742,0,0,"sub-sequence", 0, 2, 0);
	trans[0][742]	= settr(741,0,1533,650,650,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][744]	= settr(743,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][746] = settr(745,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(745,0,745,0,0,"sub-sequence", 0, 2, 0);
	trans[0][745]	= settr(744,0,1533,651,651,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][747]	= settr(746,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][751]	= settr(750,0,752,652,0,"((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))", 1, 2, 0);
	trans[0][752]	= settr(751,0,754,653,653,"L5_bo.status = P", 1, 2, 0);
	T = trans[ 0][754] = settr(753,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(753,0,753,0,0,"sub-sequence", 0, 2, 0);
	trans[0][753]	= settr(752,0,796,654,654,"LEG2CRM!23,13", 1, 3, 0);
	T = trans[ 0][796] = settr(795,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(795,0,794,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][794] = settr(793,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,756,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,759,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,762,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,783,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,786,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(793,0,789,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(793,0,792,0,0,"IF", 0, 2, 0);
	T = trans[ 0][756] = settr(755,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(755,0,755,0,0,"sub-sequence", 0, 2, 0);
	trans[0][755]	= settr(754,0,757,655,655,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][757]	= settr(756,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][795]	= settr(794,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][759] = settr(758,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(758,0,758,0,0,"sub-sequence", 0, 2, 0);
	trans[0][758]	= settr(757,0,760,656,656,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][760]	= settr(759,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][762] = settr(761,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(761,0,761,0,0,"sub-sequence", 0, 2, 0);
	trans[0][761]	= settr(760,0,763,657,657,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][763]	= settr(762,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][765] = settr(764,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(764,0,764,0,0,"sub-sequence", 0, 2, 0);
	trans[0][764]	= settr(763,0,766,658,658,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][766]	= settr(765,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][768] = settr(767,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(767,0,767,0,0,"sub-sequence", 0, 2, 0);
	trans[0][767]	= settr(766,0,106,659,659,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][769]	= settr(768,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][771] = settr(770,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(770,0,770,0,0,"sub-sequence", 0, 2, 0);
	trans[0][770]	= settr(769,0,106,660,660,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][772]	= settr(771,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][774] = settr(773,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(773,0,773,0,0,"sub-sequence", 0, 2, 0);
	trans[0][773]	= settr(772,0,106,661,661,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][775]	= settr(774,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][777] = settr(776,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(776,0,776,0,0,"sub-sequence", 0, 2, 0);
	trans[0][776]	= settr(775,0,106,662,662,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][778]	= settr(777,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][780] = settr(779,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(779,0,779,0,0,"sub-sequence", 0, 2, 0);
	trans[0][779]	= settr(778,0,106,663,663,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][781]	= settr(780,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][783] = settr(782,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(782,0,782,0,0,"sub-sequence", 0, 2, 0);
	trans[0][782]	= settr(781,0,106,664,664,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][784]	= settr(783,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][786] = settr(785,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(785,0,785,0,0,"sub-sequence", 0, 2, 0);
	trans[0][785]	= settr(784,0,1533,665,665,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][787]	= settr(786,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][789] = settr(788,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(788,0,788,0,0,"sub-sequence", 0, 2, 0);
	trans[0][788]	= settr(787,0,1533,666,666,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][790]	= settr(789,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][792] = settr(791,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(791,0,791,0,0,"sub-sequence", 0, 2, 0);
	trans[0][791]	= settr(790,0,1533,667,667,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][793]	= settr(792,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][797]	= settr(796,0,798,668,0,"((((L5_bo.right==1)||(L5_bo.oblig==1))||(L5_bo.prohib==1)))", 1, 2, 0);
	trans[0][798]	= settr(797,0,800,669,669,"L5_bo.status = TF", 1, 2, 0);
	T = trans[ 0][800] = settr(799,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(799,0,799,0,0,"sub-sequence", 0, 2, 0);
	trans[0][799]	= settr(798,0,842,670,670,"LEG2CRM!23,15", 1, 3, 0);
	T = trans[ 0][842] = settr(841,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(841,0,840,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][840] = settr(839,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,802,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,805,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,808,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,811,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,814,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,817,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,820,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,823,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,826,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(839,0,835,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(839,0,838,0,0,"IF", 0, 2, 0);
	T = trans[ 0][802] = settr(801,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(801,0,801,0,0,"sub-sequence", 0, 2, 0);
	trans[0][801]	= settr(800,0,803,671,671,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][803]	= settr(802,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][841]	= settr(840,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][805] = settr(804,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(804,0,804,0,0,"sub-sequence", 0, 2, 0);
	trans[0][804]	= settr(803,0,806,672,672,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][806]	= settr(805,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][808] = settr(807,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(807,0,807,0,0,"sub-sequence", 0, 2, 0);
	trans[0][807]	= settr(806,0,809,673,673,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][809]	= settr(808,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][811] = settr(810,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(810,0,810,0,0,"sub-sequence", 0, 2, 0);
	trans[0][810]	= settr(809,0,812,674,674,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][812]	= settr(811,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][814] = settr(813,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(813,0,813,0,0,"sub-sequence", 0, 2, 0);
	trans[0][813]	= settr(812,0,106,675,675,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][815]	= settr(814,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][817] = settr(816,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(816,0,816,0,0,"sub-sequence", 0, 2, 0);
	trans[0][816]	= settr(815,0,106,676,676,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][818]	= settr(817,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][820] = settr(819,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(819,0,819,0,0,"sub-sequence", 0, 2, 0);
	trans[0][819]	= settr(818,0,106,677,677,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][821]	= settr(820,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][823] = settr(822,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(822,0,822,0,0,"sub-sequence", 0, 2, 0);
	trans[0][822]	= settr(821,0,106,678,678,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][824]	= settr(823,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][826] = settr(825,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(825,0,825,0,0,"sub-sequence", 0, 2, 0);
	trans[0][825]	= settr(824,0,106,679,679,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][827]	= settr(826,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][829] = settr(828,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(828,0,828,0,0,"sub-sequence", 0, 2, 0);
	trans[0][828]	= settr(827,0,106,680,680,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][830]	= settr(829,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][832] = settr(831,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(831,0,831,0,0,"sub-sequence", 0, 2, 0);
	trans[0][831]	= settr(830,0,1533,681,681,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][833]	= settr(832,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][835] = settr(834,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(834,0,834,0,0,"sub-sequence", 0, 2, 0);
	trans[0][834]	= settr(833,0,1533,682,682,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][836]	= settr(835,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][838] = settr(837,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(837,0,837,0,0,"sub-sequence", 0, 2, 0);
	trans[0][837]	= settr(836,0,1533,683,683,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][839]	= settr(838,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][843]	= settr(842,0,844,684,0,"((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))", 1, 2, 0);
	trans[0][844]	= settr(843,0,846,685,685,"L6_bo.status = S", 1, 2, 0);
	T = trans[ 0][846] = settr(845,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(845,0,845,0,0,"sub-sequence", 0, 2, 0);
	trans[0][845]	= settr(844,0,888,686,686,"LEG2CRM!24,17", 1, 3, 0);
	T = trans[ 0][888] = settr(887,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(887,0,886,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][886] = settr(885,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,848,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,851,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,854,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,857,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,860,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,866,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,872,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,875,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,878,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(885,0,881,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(885,0,884,0,0,"IF", 0, 2, 0);
	T = trans[ 0][848] = settr(847,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(847,0,847,0,0,"sub-sequence", 0, 2, 0);
	trans[0][847]	= settr(846,0,849,687,687,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][849]	= settr(848,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][887]	= settr(886,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][851] = settr(850,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(850,0,850,0,0,"sub-sequence", 0, 2, 0);
	trans[0][850]	= settr(849,0,852,688,688,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][852]	= settr(851,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][854] = settr(853,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(853,0,853,0,0,"sub-sequence", 0, 2, 0);
	trans[0][853]	= settr(852,0,855,689,689,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][855]	= settr(854,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][857] = settr(856,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(856,0,856,0,0,"sub-sequence", 0, 2, 0);
	trans[0][856]	= settr(855,0,858,690,690,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][858]	= settr(857,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][860] = settr(859,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(859,0,859,0,0,"sub-sequence", 0, 2, 0);
	trans[0][859]	= settr(858,0,106,691,691,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][861]	= settr(860,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][863] = settr(862,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(862,0,862,0,0,"sub-sequence", 0, 2, 0);
	trans[0][862]	= settr(861,0,106,692,692,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][864]	= settr(863,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][866] = settr(865,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(865,0,865,0,0,"sub-sequence", 0, 2, 0);
	trans[0][865]	= settr(864,0,106,693,693,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][867]	= settr(866,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][869] = settr(868,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(868,0,868,0,0,"sub-sequence", 0, 2, 0);
	trans[0][868]	= settr(867,0,106,694,694,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][870]	= settr(869,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][872] = settr(871,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(871,0,871,0,0,"sub-sequence", 0, 2, 0);
	trans[0][871]	= settr(870,0,106,695,695,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][873]	= settr(872,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][875] = settr(874,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(874,0,874,0,0,"sub-sequence", 0, 2, 0);
	trans[0][874]	= settr(873,0,106,696,696,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][876]	= settr(875,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][878] = settr(877,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(877,0,877,0,0,"sub-sequence", 0, 2, 0);
	trans[0][877]	= settr(876,0,1533,697,697,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][879]	= settr(878,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][881] = settr(880,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(880,0,880,0,0,"sub-sequence", 0, 2, 0);
	trans[0][880]	= settr(879,0,1533,698,698,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][882]	= settr(881,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][884] = settr(883,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(883,0,883,0,0,"sub-sequence", 0, 2, 0);
	trans[0][883]	= settr(882,0,1533,699,699,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][885]	= settr(884,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][889]	= settr(888,0,890,700,0,"((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))", 1, 2, 0);
	trans[0][890]	= settr(889,0,892,701,701,"L6_bo.status = P", 1, 2, 0);
	T = trans[ 0][892] = settr(891,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(891,0,891,0,0,"sub-sequence", 0, 2, 0);
	trans[0][891]	= settr(890,0,934,702,702,"LEG2CRM!24,13", 1, 3, 0);
	T = trans[ 0][934] = settr(933,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(933,0,932,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][932] = settr(931,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,894,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,897,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,900,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(931,0,927,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(931,0,930,0,0,"IF", 0, 2, 0);
	T = trans[ 0][894] = settr(893,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(893,0,893,0,0,"sub-sequence", 0, 2, 0);
	trans[0][893]	= settr(892,0,895,703,703,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][895]	= settr(894,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][933]	= settr(932,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][897] = settr(896,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(896,0,896,0,0,"sub-sequence", 0, 2, 0);
	trans[0][896]	= settr(895,0,898,704,704,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][898]	= settr(897,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][900] = settr(899,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(899,0,899,0,0,"sub-sequence", 0, 2, 0);
	trans[0][899]	= settr(898,0,901,705,705,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][901]	= settr(900,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][903] = settr(902,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(902,0,902,0,0,"sub-sequence", 0, 2, 0);
	trans[0][902]	= settr(901,0,904,706,706,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][904]	= settr(903,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][906] = settr(905,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(905,0,905,0,0,"sub-sequence", 0, 2, 0);
	trans[0][905]	= settr(904,0,106,707,707,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][907]	= settr(906,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][909] = settr(908,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(908,0,908,0,0,"sub-sequence", 0, 2, 0);
	trans[0][908]	= settr(907,0,106,708,708,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][910]	= settr(909,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][912] = settr(911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(911,0,911,0,0,"sub-sequence", 0, 2, 0);
	trans[0][911]	= settr(910,0,106,709,709,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][913]	= settr(912,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][915] = settr(914,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(914,0,914,0,0,"sub-sequence", 0, 2, 0);
	trans[0][914]	= settr(913,0,106,710,710,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][916]	= settr(915,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][918] = settr(917,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(917,0,917,0,0,"sub-sequence", 0, 2, 0);
	trans[0][917]	= settr(916,0,106,711,711,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][919]	= settr(918,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][921] = settr(920,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(920,0,920,0,0,"sub-sequence", 0, 2, 0);
	trans[0][920]	= settr(919,0,106,712,712,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][922]	= settr(921,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][924] = settr(923,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(923,0,923,0,0,"sub-sequence", 0, 2, 0);
	trans[0][923]	= settr(922,0,1533,713,713,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][925]	= settr(924,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][927] = settr(926,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(926,0,926,0,0,"sub-sequence", 0, 2, 0);
	trans[0][926]	= settr(925,0,1533,714,714,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][928]	= settr(927,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][930] = settr(929,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(929,0,929,0,0,"sub-sequence", 0, 2, 0);
	trans[0][929]	= settr(928,0,1533,715,715,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][931]	= settr(930,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][935]	= settr(934,0,936,716,0,"((((L6_bo.right==1)||(L6_bo.oblig==1))||(L6_bo.prohib==1)))", 1, 2, 0);
	trans[0][936]	= settr(935,0,938,717,717,"L6_bo.status = TF", 1, 2, 0);
	T = trans[ 0][938] = settr(937,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(937,0,937,0,0,"sub-sequence", 0, 2, 0);
	trans[0][937]	= settr(936,0,980,718,718,"LEG2CRM!24,15", 1, 3, 0);
	T = trans[ 0][980] = settr(979,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(979,0,978,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][978] = settr(977,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,940,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,943,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,946,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(977,0,973,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(977,0,976,0,0,"IF", 0, 2, 0);
	T = trans[ 0][940] = settr(939,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(939,0,939,0,0,"sub-sequence", 0, 2, 0);
	trans[0][939]	= settr(938,0,941,719,719,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][941]	= settr(940,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][979]	= settr(978,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][943] = settr(942,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(942,0,942,0,0,"sub-sequence", 0, 2, 0);
	trans[0][942]	= settr(941,0,944,720,720,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][944]	= settr(943,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][946] = settr(945,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(945,0,945,0,0,"sub-sequence", 0, 2, 0);
	trans[0][945]	= settr(944,0,947,721,721,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][947]	= settr(946,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][949] = settr(948,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(948,0,948,0,0,"sub-sequence", 0, 2, 0);
	trans[0][948]	= settr(947,0,950,722,722,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][950]	= settr(949,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][952] = settr(951,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(951,0,951,0,0,"sub-sequence", 0, 2, 0);
	trans[0][951]	= settr(950,0,106,723,723,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][953]	= settr(952,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][955] = settr(954,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(954,0,954,0,0,"sub-sequence", 0, 2, 0);
	trans[0][954]	= settr(953,0,106,724,724,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][956]	= settr(955,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][958] = settr(957,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(957,0,957,0,0,"sub-sequence", 0, 2, 0);
	trans[0][957]	= settr(956,0,106,725,725,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][959]	= settr(958,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][961] = settr(960,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(960,0,960,0,0,"sub-sequence", 0, 2, 0);
	trans[0][960]	= settr(959,0,106,726,726,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][962]	= settr(961,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][964] = settr(963,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(963,0,963,0,0,"sub-sequence", 0, 2, 0);
	trans[0][963]	= settr(962,0,106,727,727,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][965]	= settr(964,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][967] = settr(966,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(966,0,966,0,0,"sub-sequence", 0, 2, 0);
	trans[0][966]	= settr(965,0,106,728,728,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][968]	= settr(967,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][970] = settr(969,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(969,0,969,0,0,"sub-sequence", 0, 2, 0);
	trans[0][969]	= settr(968,0,1533,729,729,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][971]	= settr(970,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][973] = settr(972,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(972,0,972,0,0,"sub-sequence", 0, 2, 0);
	trans[0][972]	= settr(971,0,1533,730,730,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][974]	= settr(973,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][976] = settr(975,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(975,0,975,0,0,"sub-sequence", 0, 2, 0);
	trans[0][975]	= settr(974,0,1533,731,731,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][977]	= settr(976,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][981]	= settr(980,0,982,732,0,"((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))", 1, 2, 0);
	trans[0][982]	= settr(981,0,984,733,733,"L7_bo.status = S", 1, 2, 0);
	T = trans[ 0][984] = settr(983,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(983,0,983,0,0,"sub-sequence", 0, 2, 0);
	trans[0][983]	= settr(982,0,1026,734,734,"LEG2CRM!25,17", 1, 3, 0);
	T = trans[ 0][1026] = settr(1025,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1025,0,1024,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1024] = settr(1023,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,986,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,989,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,992,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1004,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1010,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1013,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1016,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1023,0,1019,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1023,0,1022,0,0,"IF", 0, 2, 0);
	T = trans[ 0][986] = settr(985,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(985,0,985,0,0,"sub-sequence", 0, 2, 0);
	trans[0][985]	= settr(984,0,987,735,735,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][987]	= settr(986,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1025]	= settr(1024,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][989] = settr(988,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(988,0,988,0,0,"sub-sequence", 0, 2, 0);
	trans[0][988]	= settr(987,0,990,736,736,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][990]	= settr(989,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][992] = settr(991,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(991,0,991,0,0,"sub-sequence", 0, 2, 0);
	trans[0][991]	= settr(990,0,993,737,737,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][993]	= settr(992,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][995] = settr(994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(994,0,994,0,0,"sub-sequence", 0, 2, 0);
	trans[0][994]	= settr(993,0,996,738,738,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][996]	= settr(995,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][998] = settr(997,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(997,0,997,0,0,"sub-sequence", 0, 2, 0);
	trans[0][997]	= settr(996,0,106,739,739,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][999]	= settr(998,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1001] = settr(1000,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1000,0,1000,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1000]	= settr(999,0,106,740,740,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1002]	= settr(1001,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1004] = settr(1003,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1003,0,1003,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1003]	= settr(1002,0,106,741,741,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1005]	= settr(1004,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1007] = settr(1006,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1006,0,1006,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1006]	= settr(1005,0,106,742,742,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1008]	= settr(1007,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1010] = settr(1009,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1009,0,1009,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1009]	= settr(1008,0,106,743,743,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1011]	= settr(1010,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1013] = settr(1012,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1012,0,1012,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1012]	= settr(1011,0,106,744,744,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1014]	= settr(1013,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1016] = settr(1015,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1015,0,1015,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1015]	= settr(1014,0,1533,745,745,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1017]	= settr(1016,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1019] = settr(1018,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1018,0,1018,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1018]	= settr(1017,0,1533,746,746,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1020]	= settr(1019,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1022] = settr(1021,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1021,0,1021,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1021]	= settr(1020,0,1533,747,747,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1023]	= settr(1022,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1027]	= settr(1026,0,1028,748,0,"((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))", 1, 2, 0);
	trans[0][1028]	= settr(1027,0,1030,749,749,"L7_bo.status = P", 1, 2, 0);
	T = trans[ 0][1030] = settr(1029,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1029,0,1029,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1029]	= settr(1028,0,1072,750,750,"LEG2CRM!25,13", 1, 3, 0);
	T = trans[ 0][1072] = settr(1071,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1071,0,1070,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1070] = settr(1069,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1032,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1035,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1038,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1041,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1044,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1047,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1050,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1053,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1056,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1059,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1069,0,1065,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1069,0,1068,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1032] = settr(1031,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1031,0,1031,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1031]	= settr(1030,0,1033,751,751,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1033]	= settr(1032,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1071]	= settr(1070,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1035] = settr(1034,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1034,0,1034,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1034]	= settr(1033,0,1036,752,752,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1036]	= settr(1035,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1038] = settr(1037,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1037,0,1037,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1037]	= settr(1036,0,1039,753,753,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1039]	= settr(1038,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1041] = settr(1040,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1040,0,1040,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1040]	= settr(1039,0,1042,754,754,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1042]	= settr(1041,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1044] = settr(1043,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1043,0,1043,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1043]	= settr(1042,0,106,755,755,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1045]	= settr(1044,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1047] = settr(1046,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1046,0,1046,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1046]	= settr(1045,0,106,756,756,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1048]	= settr(1047,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1050] = settr(1049,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1049,0,1049,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1049]	= settr(1048,0,106,757,757,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1051]	= settr(1050,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1053] = settr(1052,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1052,0,1052,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1052]	= settr(1051,0,106,758,758,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1054]	= settr(1053,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1056] = settr(1055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1055,0,1055,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1055]	= settr(1054,0,106,759,759,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1057]	= settr(1056,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1059] = settr(1058,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1058,0,1058,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1058]	= settr(1057,0,106,760,760,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1060]	= settr(1059,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1062] = settr(1061,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1061,0,1061,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1061]	= settr(1060,0,1533,761,761,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1063]	= settr(1062,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1065] = settr(1064,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1064,0,1064,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1064]	= settr(1063,0,1533,762,762,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1066]	= settr(1065,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1068] = settr(1067,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1067,0,1067,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1067]	= settr(1066,0,1533,763,763,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1069]	= settr(1068,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1073]	= settr(1072,0,1074,764,0,"((((L7_bo.right==1)||(L7_bo.oblig==1))||(L7_bo.prohib==1)))", 1, 2, 0);
	trans[0][1074]	= settr(1073,0,1076,765,765,"L7_bo.status = TF", 1, 2, 0);
	T = trans[ 0][1076] = settr(1075,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1075,0,1075,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1075]	= settr(1074,0,1118,766,766,"LEG2CRM!25,15", 1, 3, 0);
	T = trans[ 0][1118] = settr(1117,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1117,0,1116,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1116] = settr(1115,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1078,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1081,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1084,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1087,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1090,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1093,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1096,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1102,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1115,0,1111,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1115,0,1114,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1078] = settr(1077,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1077,0,1077,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1077]	= settr(1076,0,1079,767,767,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1079]	= settr(1078,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1117]	= settr(1116,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1081] = settr(1080,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1080,0,1080,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1080]	= settr(1079,0,1082,768,768,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1082]	= settr(1081,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1084] = settr(1083,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1083,0,1083,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1083]	= settr(1082,0,1085,769,769,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1085]	= settr(1084,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1087] = settr(1086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1086,0,1086,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1086]	= settr(1085,0,1088,770,770,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1088]	= settr(1087,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1090] = settr(1089,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1089,0,1089,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1089]	= settr(1088,0,106,771,771,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1091]	= settr(1090,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1093] = settr(1092,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1092,0,1092,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1092]	= settr(1091,0,106,772,772,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1094]	= settr(1093,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1096] = settr(1095,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1095,0,1095,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1095]	= settr(1094,0,106,773,773,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1097]	= settr(1096,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1099] = settr(1098,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1098,0,1098,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1098]	= settr(1097,0,106,774,774,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1100]	= settr(1099,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1102] = settr(1101,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1101,0,1101,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1101]	= settr(1100,0,106,775,775,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1103]	= settr(1102,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1105] = settr(1104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1104,0,1104,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1104]	= settr(1103,0,106,776,776,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1106]	= settr(1105,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1108] = settr(1107,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1107,0,1107,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1107]	= settr(1106,0,1533,777,777,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1109]	= settr(1108,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1111] = settr(1110,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1110,0,1110,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1110]	= settr(1109,0,1533,778,778,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1112]	= settr(1111,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1114] = settr(1113,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1113,0,1113,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1113]	= settr(1112,0,1533,779,779,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1115]	= settr(1114,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1119]	= settr(1118,0,1120,780,0,"((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))", 1, 2, 0);
	trans[0][1120]	= settr(1119,0,1122,781,781,"CW1_bo.status = S", 1, 2, 0);
	T = trans[ 0][1122] = settr(1121,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1121,0,1121,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1121]	= settr(1120,0,1164,782,782,"LEG2CRM!26,17", 1, 3, 0);
	T = trans[ 0][1164] = settr(1163,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1163,0,1162,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1162] = settr(1161,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1154,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1161,0,1157,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1161,0,1160,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1124] = settr(1123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1123,0,1123,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1123]	= settr(1122,0,1125,783,783,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1125]	= settr(1124,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1163]	= settr(1162,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1127] = settr(1126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1126,0,1126,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1126]	= settr(1125,0,1128,784,784,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1128]	= settr(1127,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1130] = settr(1129,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1129,0,1129,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1129]	= settr(1128,0,1131,785,785,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1131]	= settr(1130,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1133] = settr(1132,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1132,0,1132,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1132]	= settr(1131,0,1134,786,786,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1134]	= settr(1133,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1136] = settr(1135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1135,0,1135,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1135]	= settr(1134,0,106,787,787,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1137]	= settr(1136,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1139] = settr(1138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1138,0,1138,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1138]	= settr(1137,0,106,788,788,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1140]	= settr(1139,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1142] = settr(1141,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1141,0,1141,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1141]	= settr(1140,0,106,789,789,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1143]	= settr(1142,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1145] = settr(1144,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1144,0,1144,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1144]	= settr(1143,0,106,790,790,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1146]	= settr(1145,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1148] = settr(1147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1147,0,1147,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1147]	= settr(1146,0,106,791,791,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1149]	= settr(1148,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1151] = settr(1150,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1150,0,1150,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1150]	= settr(1149,0,106,792,792,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1152]	= settr(1151,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1154] = settr(1153,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1153,0,1153,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1153]	= settr(1152,0,1533,793,793,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1155]	= settr(1154,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1157] = settr(1156,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1156,0,1156,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1156]	= settr(1155,0,1533,794,794,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1158]	= settr(1157,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1160] = settr(1159,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1159,0,1159,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1159]	= settr(1158,0,1533,795,795,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1161]	= settr(1160,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1165]	= settr(1164,0,1166,796,0,"((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))", 1, 2, 0);
	trans[0][1166]	= settr(1165,0,1168,797,797,"CW1_bo.status = P", 1, 2, 0);
	T = trans[ 0][1168] = settr(1167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1167,0,1167,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1167]	= settr(1166,0,1210,798,798,"LEG2CRM!26,13", 1, 3, 0);
	T = trans[ 0][1210] = settr(1209,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1209,0,1208,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1208] = settr(1207,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1191,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1194,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1200,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1207,0,1203,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1207,0,1206,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1170] = settr(1169,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1169,0,1169,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1169]	= settr(1168,0,1171,799,799,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1171]	= settr(1170,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1209]	= settr(1208,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1173] = settr(1172,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1172,0,1172,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1172]	= settr(1171,0,1174,800,800,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1174]	= settr(1173,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1176] = settr(1175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1175,0,1175,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1175]	= settr(1174,0,1177,801,801,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1177]	= settr(1176,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1179] = settr(1178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1178,0,1178,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1178]	= settr(1177,0,1180,802,802,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1180]	= settr(1179,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1182] = settr(1181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1181,0,1181,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1181]	= settr(1180,0,106,803,803,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1183]	= settr(1182,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1185] = settr(1184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1184,0,1184,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1184]	= settr(1183,0,106,804,804,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1186]	= settr(1185,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1188] = settr(1187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1187,0,1187,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1187]	= settr(1186,0,106,805,805,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1189]	= settr(1188,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1191] = settr(1190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1190,0,1190,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1190]	= settr(1189,0,106,806,806,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1192]	= settr(1191,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1194] = settr(1193,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1193,0,1193,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1193]	= settr(1192,0,106,807,807,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1195]	= settr(1194,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1197] = settr(1196,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1196,0,1196,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1196]	= settr(1195,0,106,808,808,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1198]	= settr(1197,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1200] = settr(1199,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1199,0,1199,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1199]	= settr(1198,0,1533,809,809,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1201]	= settr(1200,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1203] = settr(1202,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1202,0,1202,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1202]	= settr(1201,0,1533,810,810,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1204]	= settr(1203,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1206] = settr(1205,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1205,0,1205,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1205]	= settr(1204,0,1533,811,811,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1207]	= settr(1206,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1211]	= settr(1210,0,1212,812,0,"((((CW1_bo.right==1)||(CW1_bo.oblig==1))||(CW1_bo.prohib==1)))", 1, 2, 0);
	trans[0][1212]	= settr(1211,0,1214,813,813,"CW1_bo.status = TO", 1, 2, 0);
	T = trans[ 0][1214] = settr(1213,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1213,0,1213,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1213]	= settr(1212,0,1256,814,814,"LEG2CRM!26,14", 1, 3, 0);
	T = trans[ 0][1256] = settr(1255,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1255,0,1254,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1254] = settr(1253,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1216,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1219,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1246,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1253,0,1249,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1253,0,1252,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1216] = settr(1215,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1215,0,1215,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1215]	= settr(1214,0,1217,815,815,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1217]	= settr(1216,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1255]	= settr(1254,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1219] = settr(1218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1218,0,1218,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1218]	= settr(1217,0,1220,816,816,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1220]	= settr(1219,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1222] = settr(1221,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1221,0,1221,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1221]	= settr(1220,0,1223,817,817,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1223]	= settr(1222,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1225] = settr(1224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1224,0,1224,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1224]	= settr(1223,0,1226,818,818,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1226]	= settr(1225,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1228] = settr(1227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1227,0,1227,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1227]	= settr(1226,0,106,819,819,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1229]	= settr(1228,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1231] = settr(1230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1230,0,1230,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1230]	= settr(1229,0,106,820,820,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1232]	= settr(1231,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1234] = settr(1233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1233,0,1233,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1233]	= settr(1232,0,106,821,821,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1235]	= settr(1234,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1237] = settr(1236,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1236,0,1236,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1236]	= settr(1235,0,106,822,822,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1238]	= settr(1237,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1240] = settr(1239,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1239,0,1239,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1239]	= settr(1238,0,106,823,823,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1241]	= settr(1240,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1243] = settr(1242,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1242,0,1242,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1242]	= settr(1241,0,106,824,824,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1244]	= settr(1243,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1246] = settr(1245,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1245,0,1245,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1245]	= settr(1244,0,1533,825,825,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1247]	= settr(1246,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1249] = settr(1248,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1248,0,1248,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1248]	= settr(1247,0,1533,826,826,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1250]	= settr(1249,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1252] = settr(1251,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1251,0,1251,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1251]	= settr(1250,0,1533,827,827,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1253]	= settr(1252,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1257]	= settr(1256,0,1258,828,0,"((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))", 1, 2, 0);
	trans[0][1258]	= settr(1257,0,1260,829,829,"CW2_bo.status = S", 1, 2, 0);
	T = trans[ 0][1260] = settr(1259,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1259,0,1259,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1259]	= settr(1258,0,1302,830,830,"LEG2CRM!27,17", 1, 3, 0);
	T = trans[ 0][1302] = settr(1301,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1301,0,1300,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1300] = settr(1299,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1299,0,1295,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1299,0,1298,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1262] = settr(1261,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1261,0,1261,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1261]	= settr(1260,0,1263,831,831,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1263]	= settr(1262,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1301]	= settr(1300,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1265] = settr(1264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1264,0,1264,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1264]	= settr(1263,0,1266,832,832,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1266]	= settr(1265,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1268] = settr(1267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1267,0,1267,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1267]	= settr(1266,0,1269,833,833,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1269]	= settr(1268,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1271] = settr(1270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1270,0,1270,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1270]	= settr(1269,0,1272,834,834,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1272]	= settr(1271,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1274] = settr(1273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1273,0,1273,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1273]	= settr(1272,0,106,835,835,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1275]	= settr(1274,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1277] = settr(1276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1276,0,1276,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1276]	= settr(1275,0,106,836,836,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1278]	= settr(1277,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1280] = settr(1279,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1279,0,1279,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1279]	= settr(1278,0,106,837,837,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1281]	= settr(1280,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1283] = settr(1282,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1282,0,1282,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1282]	= settr(1281,0,106,838,838,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1284]	= settr(1283,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1286] = settr(1285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1285,0,1285,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1285]	= settr(1284,0,106,839,839,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1287]	= settr(1286,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1289] = settr(1288,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1288,0,1288,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1288]	= settr(1287,0,106,840,840,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1290]	= settr(1289,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1292] = settr(1291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1291,0,1291,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1291]	= settr(1290,0,1533,841,841,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1293]	= settr(1292,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1295] = settr(1294,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1294,0,1294,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1294]	= settr(1293,0,1533,842,842,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1296]	= settr(1295,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1298] = settr(1297,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1297,0,1297,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1297]	= settr(1296,0,1533,843,843,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1299]	= settr(1298,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1303]	= settr(1302,0,1304,844,0,"((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))", 1, 2, 0);
	trans[0][1304]	= settr(1303,0,1306,845,845,"CW2_bo.status = P", 1, 2, 0);
	T = trans[ 0][1306] = settr(1305,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1305,0,1305,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1305]	= settr(1304,0,1348,846,846,"LEG2CRM!27,13", 1, 3, 0);
	T = trans[ 0][1348] = settr(1347,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1347,0,1346,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1346] = settr(1345,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1332,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1345,0,1341,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1345,0,1344,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1308] = settr(1307,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1307,0,1307,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1307]	= settr(1306,0,1309,847,847,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1309]	= settr(1308,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1347]	= settr(1346,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1311] = settr(1310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1310,0,1310,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1310]	= settr(1309,0,1312,848,848,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1312]	= settr(1311,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1314] = settr(1313,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1313,0,1313,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1313]	= settr(1312,0,1315,849,849,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1315]	= settr(1314,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1317] = settr(1316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1316,0,1316,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1316]	= settr(1315,0,1318,850,850,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1318]	= settr(1317,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1320] = settr(1319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1319,0,1319,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1319]	= settr(1318,0,106,851,851,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1321]	= settr(1320,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1323] = settr(1322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1322,0,1322,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1322]	= settr(1321,0,106,852,852,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1324]	= settr(1323,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1326] = settr(1325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1325,0,1325,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1325]	= settr(1324,0,106,853,853,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1327]	= settr(1326,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1329] = settr(1328,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1328,0,1328,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1328]	= settr(1327,0,106,854,854,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1330]	= settr(1329,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1332] = settr(1331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1331,0,1331,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1331]	= settr(1330,0,106,855,855,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1333]	= settr(1332,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1335] = settr(1334,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1334,0,1334,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1334]	= settr(1333,0,106,856,856,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1336]	= settr(1335,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1338] = settr(1337,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1337,0,1337,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1337]	= settr(1336,0,1533,857,857,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1339]	= settr(1338,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1341] = settr(1340,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1340,0,1340,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1340]	= settr(1339,0,1533,858,858,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1342]	= settr(1341,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1344] = settr(1343,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1343,0,1343,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1343]	= settr(1342,0,1533,859,859,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1345]	= settr(1344,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1349]	= settr(1348,0,1350,860,0,"((((CW2_bo.right==1)||(CW2_bo.oblig==1))||(CW2_bo.prohib==1)))", 1, 2, 0);
	trans[0][1350]	= settr(1349,0,1352,861,861,"CW2_bo.status = TO", 1, 2, 0);
	T = trans[ 0][1352] = settr(1351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1351,0,1351,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1351]	= settr(1350,0,1394,862,862,"LEG2CRM!27,14", 1, 3, 0);
	T = trans[ 0][1394] = settr(1393,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1393,0,1392,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1392] = settr(1391,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1354,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1391,0,1387,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1391,0,1390,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1354] = settr(1353,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1353,0,1353,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1353]	= settr(1352,0,1355,863,863,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1355]	= settr(1354,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1393]	= settr(1392,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1357] = settr(1356,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1356,0,1356,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1356]	= settr(1355,0,1358,864,864,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1358]	= settr(1357,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1360] = settr(1359,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1359,0,1359,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1359]	= settr(1358,0,1361,865,865,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1361]	= settr(1360,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1363] = settr(1362,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1362,0,1362,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1362]	= settr(1361,0,1364,866,866,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1364]	= settr(1363,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1366] = settr(1365,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1365,0,1365,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1365]	= settr(1364,0,106,867,867,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1367]	= settr(1366,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1369] = settr(1368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1368,0,1368,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1368]	= settr(1367,0,106,868,868,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1370]	= settr(1369,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1372] = settr(1371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1371,0,1371,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,106,869,869,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1373]	= settr(1372,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1375] = settr(1374,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1374,0,1374,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1374]	= settr(1373,0,106,870,870,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1376]	= settr(1375,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1378] = settr(1377,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1377,0,1377,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1377]	= settr(1376,0,106,871,871,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1379]	= settr(1378,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1381] = settr(1380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1380,0,1380,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1380]	= settr(1379,0,106,872,872,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1382]	= settr(1381,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1384] = settr(1383,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1383,0,1383,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1383]	= settr(1382,0,1533,873,873,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1385]	= settr(1384,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1387] = settr(1386,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1386,0,1386,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1386]	= settr(1385,0,1533,874,874,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1388]	= settr(1387,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1390] = settr(1389,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1389,0,1389,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1389]	= settr(1388,0,1533,875,875,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1391]	= settr(1390,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1395]	= settr(1394,0,1396,876,0,"((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))", 1, 2, 0);
	trans[0][1396]	= settr(1395,0,1398,877,877,"EXAM_bo.status = S", 1, 2, 0);
	T = trans[ 0][1398] = settr(1397,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1397,0,1397,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1397]	= settr(1396,0,1440,878,878,"LEG2CRM!28,17", 1, 3, 0);
	T = trans[ 0][1440] = settr(1439,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1439,0,1438,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1438] = settr(1437,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1430,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1437,0,1433,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1437,0,1436,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1400] = settr(1399,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1399,0,1399,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1399]	= settr(1398,0,1401,879,879,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1401]	= settr(1400,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1439]	= settr(1438,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1403] = settr(1402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1402,0,1402,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1402]	= settr(1401,0,1404,880,880,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1404]	= settr(1403,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1406] = settr(1405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1405,0,1405,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1405]	= settr(1404,0,1407,881,881,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1407]	= settr(1406,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1409] = settr(1408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1408,0,1408,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1408]	= settr(1407,0,1410,882,882,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1410]	= settr(1409,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1412] = settr(1411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1411,0,1411,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1411]	= settr(1410,0,106,883,883,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1413]	= settr(1412,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1415] = settr(1414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1414,0,1414,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1414]	= settr(1413,0,106,884,884,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1416]	= settr(1415,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1418] = settr(1417,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1417,0,1417,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1417]	= settr(1416,0,106,885,885,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1419]	= settr(1418,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1421] = settr(1420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1420,0,1420,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1420]	= settr(1419,0,106,886,886,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1422]	= settr(1421,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1424] = settr(1423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1423,0,1423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1423]	= settr(1422,0,106,887,887,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1425]	= settr(1424,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1427] = settr(1426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1426,0,1426,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1426]	= settr(1425,0,106,888,888,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1428]	= settr(1427,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1430] = settr(1429,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1429,0,1429,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1429]	= settr(1428,0,1533,889,889,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1431]	= settr(1430,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1433] = settr(1432,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1432,0,1432,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1432]	= settr(1431,0,1533,890,890,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1434]	= settr(1433,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1436] = settr(1435,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1435,0,1435,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1435]	= settr(1434,0,1533,891,891,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1437]	= settr(1436,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1441]	= settr(1440,0,1442,892,0,"((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))", 1, 2, 0);
	trans[0][1442]	= settr(1441,0,1444,893,893,"EXAM_bo.status = P", 1, 2, 0);
	T = trans[ 0][1444] = settr(1443,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1443,0,1443,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1443]	= settr(1442,0,1486,894,894,"LEG2CRM!28,13", 1, 3, 0);
	T = trans[ 0][1486] = settr(1485,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1485,0,1484,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1484] = settr(1483,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1446,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1449,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1483,0,1479,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1483,0,1482,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1446] = settr(1445,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1445,0,1445,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1445]	= settr(1444,0,1447,895,895,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1447]	= settr(1446,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1485]	= settr(1484,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1449] = settr(1448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1448,0,1448,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1448]	= settr(1447,0,1450,896,896,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1450]	= settr(1449,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1452] = settr(1451,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1451,0,1451,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1451]	= settr(1450,0,1453,897,897,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1453]	= settr(1452,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1455] = settr(1454,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1454,0,1454,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1454]	= settr(1453,0,1456,898,898,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1456]	= settr(1455,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1458] = settr(1457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1457,0,1457,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1457]	= settr(1456,0,106,899,899,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1459]	= settr(1458,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1461] = settr(1460,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1460,0,1460,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1460]	= settr(1459,0,106,900,900,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1462]	= settr(1461,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1464] = settr(1463,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1463,0,1463,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1463]	= settr(1462,0,106,901,901,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1465]	= settr(1464,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1467] = settr(1466,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1466,0,1466,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1466]	= settr(1465,0,106,902,902,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1468]	= settr(1467,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1470] = settr(1469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1469,0,1469,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1469]	= settr(1468,0,106,903,903,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1471]	= settr(1470,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1473] = settr(1472,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1472,0,1472,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1472]	= settr(1471,0,106,904,904,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1474]	= settr(1473,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1476] = settr(1475,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1475,0,1475,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1475]	= settr(1474,0,1533,905,905,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1477]	= settr(1476,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1479] = settr(1478,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1478,0,1478,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1478]	= settr(1477,0,1533,906,906,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1480]	= settr(1479,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1482] = settr(1481,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1481,0,1481,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1481]	= settr(1480,0,1533,907,907,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1483]	= settr(1482,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1487]	= settr(1486,0,1488,908,0,"((((EXAM_bo.right==1)||(EXAM_bo.oblig==1))||(EXAM_bo.prohib==1)))", 1, 2, 0);
	trans[0][1488]	= settr(1487,0,1490,909,909,"EXAM_bo.status = TO", 1, 2, 0);
	T = trans[ 0][1490] = settr(1489,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1489,0,1489,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1489]	= settr(1488,0,1532,910,910,"LEG2CRM!28,14", 1, 3, 0);
	T = trans[ 0][1532] = settr(1531,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1531,0,1530,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1530] = settr(1529,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1522,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1529,0,1525,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1529,0,1528,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1492] = settr(1491,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1491,0,1491,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1491]	= settr(1490,0,1493,911,911,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1493]	= settr(1492,0,1533,1,0,"(1)", 0, 2, 0);
	trans[0][1531]	= settr(1530,0,1533,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1495] = settr(1494,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1494,0,1494,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1494]	= settr(1493,0,1496,912,912,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1496]	= settr(1495,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1498] = settr(1497,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1497,0,1497,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1497]	= settr(1496,0,1499,913,913,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1499]	= settr(1498,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1501] = settr(1500,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1500,0,1500,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1500]	= settr(1499,0,1502,914,914,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1502]	= settr(1501,0,1533,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1504] = settr(1503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1503,0,1503,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1503]	= settr(1502,0,106,915,915,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1505]	= settr(1504,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1507] = settr(1506,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1506,0,1506,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1506]	= settr(1505,0,106,916,916,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1508]	= settr(1507,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1510] = settr(1509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1509,0,1509,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1509]	= settr(1508,0,106,917,917,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1511]	= settr(1510,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1513] = settr(1512,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1512,0,1512,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1512]	= settr(1511,0,106,918,918,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1514]	= settr(1513,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1516] = settr(1515,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1515,0,1515,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1515]	= settr(1514,0,106,919,919,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1517]	= settr(1516,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1519] = settr(1518,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1518,0,1518,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1518]	= settr(1517,0,106,920,920,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1520]	= settr(1519,0,106,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1522] = settr(1521,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1521,0,1521,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1521]	= settr(1520,0,1533,921,921,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1523]	= settr(1522,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1525] = settr(1524,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1524,0,1524,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1524]	= settr(1523,0,1533,922,922,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1526]	= settr(1525,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1528] = settr(1527,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1527,0,1527,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1527]	= settr(1526,0,1533,923,923,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1529]	= settr(1528,0,1533,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1535]	= settr(1534,0,1536,1,0,"break", 0, 2, 0);
	trans[0][1536]	= settr(1535,0,0,924,924,"-end-", 0, 3500, 0);
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
