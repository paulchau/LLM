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

	T = trans[ 2][3] = settr(2662,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2662,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(2660,2,2,3,3,"(run LEG())", 0, 2, 0);
	trans[2][2]	= settr(2661,0,4,4,4,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(2663,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(978*sizeof(Trans *));

	trans[1][1]	= settr(1683,0,974,6,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][975]	= settr(2657,0,974,1,0,".(goto)", 0, 2, 0);
	T = trans[1][974] = settr(2656,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,54,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,125,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,197,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,277,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,349,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,421,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,501,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,573,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,651,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2656,0,759,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2656,0,886,0,0,"DO", 0, 2, 0);
	T = trans[ 1][12] = settr(1694,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1694,0,10,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][10] = settr(1692,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1692,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1692,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1692,0,6,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1692,0,8,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(1684,0,3,7,0,"(LEG2CRM?[17,S])", 1, 2, 0);
	trans[1][3]	= settr(1685,0,43,8,8,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][11]	= settr(1693,0,43,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(1686,0,5,9,0,"(LEG2CRM?[17,TO])", 1, 2, 0);
	trans[1][5]	= settr(1687,0,43,10,10,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(1688,0,7,11,0,"(LEG2CRM?[17,TF])", 1, 2, 0);
	trans[1][7]	= settr(1689,0,43,12,12,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(1690,0,9,13,0,"(LEG2CRM?[17,LF])", 1, 2, 0);
	trans[1][9]	= settr(1691,0,43,14,14,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][43] = settr(1725,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1725,0,13,0,0,"sub-sequence", 0, 2, 0);
	trans[1][13]	= settr(1695,0,41,15,0,"printf('Start')", 0, 2, 0);
	T = trans[1][41] = settr(1723,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1723,0,14,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1723,0,38,0,0,"IF", 0, 2, 0);
	trans[1][14]	= settr(1696,0,37,16,0,"((((START_lo.right==1)&&((START_lo.role_pl==LMS)==1))&&((START_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][37] = settr(1719,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1719,0,15,0,0,"sub-sequence", 0, 2, 0);
	trans[1][15]	= settr(1697,0,16,17,17,"LMSexTrace = (LMSexTrace|(1<<START_lo.id))", 1, 2, 0);
	trans[1][16]	= settr(1698,0,22,18,18,"START_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][22] = settr(1704,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1704,2,17,0,0,"ATOMIC", 0, 2, 0);
	trans[1][17]	= settr(1699,4,26,19,19,"printf('\\n\\n')", 0, 2, 0); /* m: 18 -> 0,26 */
	reached1[18] = 1;
	trans[1][18]	= settr(0,0,0,0,0,"printf('<originator>LMS</originator>\\n')",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"printf('<type>START</type>\\n')",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][26] = settr(1708,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1708,0,23,0,0,"sub-sequence", 0, 2, 0);
	trans[1][23]	= settr(1705,0,24,20,20,"L1_lo.prohib = 0", 1, 2, 0);
	trans[1][24]	= settr(1706,0,25,21,0,"assert(!(((L1_lo.prohib==1)&&(L1_lo.right==1))))", 1, 2, 0);
	trans[1][25]	= settr(1707,0,30,22,0,"assert(!(((L1_lo.prohib==1)&&(L1_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][30] = settr(1712,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1712,0,27,0,0,"sub-sequence", 0, 2, 0);
	trans[1][27]	= settr(1709,0,28,23,23,"L1_lo.oblig = 1", 1, 2, 0);
	trans[1][28]	= settr(1710,0,29,24,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))", 1, 2, 0);
	trans[1][29]	= settr(1711,0,34,25,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][34] = settr(1716,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1716,0,31,0,0,"sub-sequence", 0, 2, 0);
	trans[1][31]	= settr(1713,0,32,26,26,"START_lo.right = 0", 1, 2, 0);
	trans[1][32]	= settr(1714,0,33,27,0,"assert(!(((START_lo.right==1)&&(START_lo.oblig==1))))", 1, 2, 0);
	trans[1][33]	= settr(1715,0,36,28,0,"assert(!(((START_lo.right==1)&&(START_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][36] = settr(1718,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1718,0,35,0,0,"sub-sequence", 0, 2, 0);
	trans[1][35]	= settr(1717,0,974,29,29,"CRM2LEG!9,5", 1, 4, 0);
	trans[1][42]	= settr(1724,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][38]	= settr(1720,0,40,2,0,"else", 0, 2, 0);
	T = trans[ 1][40] = settr(1722,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1722,0,39,0,0,"sub-sequence", 0, 2, 0);
	trans[1][39]	= settr(1721,0,974,30,30,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][54] = settr(1736,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1736,0,52,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][52] = settr(1734,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1734,0,44,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1734,0,46,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1734,0,48,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1734,0,50,0,0,"IF", 0, 2, 0);
	trans[1][44]	= settr(1726,0,45,31,0,"(LEG2CRM?[18,S])", 1, 2, 0);
	trans[1][45]	= settr(1727,0,114,32,32,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][53]	= settr(1735,0,114,1,0,".(goto)", 0, 2, 0);
	trans[1][46]	= settr(1728,0,47,33,0,"(LEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][47]	= settr(1729,0,114,34,34,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][48]	= settr(1730,0,49,35,0,"(LEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][49]	= settr(1731,0,114,36,36,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][50]	= settr(1732,0,51,37,0,"(LEG2CRM?[18,LF])", 1, 2, 0);
	trans[1][51]	= settr(1733,0,114,38,38,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][114] = settr(1796,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1796,0,55,0,0,"sub-sequence", 0, 2, 0);
	trans[1][55]	= settr(1737,0,112,39,0,"printf('L1')", 0, 2, 0);
	T = trans[1][112] = settr(1794,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1794,0,56,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1794,0,86,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1794,0,109,0,0,"IF", 0, 2, 0);
	trans[1][56]	= settr(1738,0,85,40,0,"((((L1_lo.oblig==1)&&((L1_lo.role_pl==STUDENT)==1))&&((L1_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][85] = settr(1767,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1767,0,57,0,0,"sub-sequence", 0, 2, 0);
	trans[1][57]	= settr(1739,0,58,41,41,"STUDENTexTrace = (STUDENTexTrace|(1<<L1_lo.id))", 1, 2, 0);
	trans[1][58]	= settr(1740,0,65,42,42,"L1_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][65] = settr(1747,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1747,2,59,0,0,"ATOMIC", 0, 2, 0);
	trans[1][59]	= settr(1741,4,66,43,43,"printf('\\n\\n')", 0, 2, 0); /* m: 60 -> 0,66 */
	reached1[60] = 1;
	trans[1][60]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][61]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][62]	= settr(0,0,0,0,0,"printf('<type>L1</type>\\n')",0,0,0);
	trans[1][63]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][64]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][66]	= settr(1748,0,70,44,44,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][70] = settr(1752,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1752,0,67,0,0,"sub-sequence", 0, 2, 0);
	trans[1][67]	= settr(1749,0,68,45,45,"L1_lo.oblig = 0", 1, 2, 0);
	trans[1][68]	= settr(1750,0,69,46,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))", 1, 2, 0);
	trans[1][69]	= settr(1751,0,74,47,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][74] = settr(1756,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1756,0,71,0,0,"sub-sequence", 0, 2, 0);
	trans[1][71]	= settr(1753,0,72,48,48,"L1_lo.right = 0", 1, 2, 0);
	trans[1][72]	= settr(1754,0,73,49,0,"assert(!(((L1_lo.right==1)&&(L1_lo.oblig==1))))", 1, 2, 0);
	trans[1][73]	= settr(1755,0,78,50,0,"assert(!(((L1_lo.right==1)&&(L1_lo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][78] = settr(1760,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1760,0,75,0,0,"sub-sequence", 0, 2, 0);
	trans[1][75]	= settr(1757,0,76,51,51,"L2_lo.prohib = 0", 1, 2, 0);
	trans[1][76]	= settr(1758,0,77,52,0,"assert(!(((L2_lo.prohib==1)&&(L2_lo.right==1))))", 1, 2, 0);
	trans[1][77]	= settr(1759,0,82,53,0,"assert(!(((L2_lo.prohib==1)&&(L2_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][82] = settr(1764,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1764,0,79,0,0,"sub-sequence", 0, 2, 0);
	trans[1][79]	= settr(1761,0,80,54,54,"L2_lo.oblig = 1", 1, 2, 0);
	trans[1][80]	= settr(1762,0,81,55,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))", 1, 2, 0);
	trans[1][81]	= settr(1763,0,84,56,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][84] = settr(1766,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1766,0,83,0,0,"sub-sequence", 0, 2, 0);
	trans[1][83]	= settr(1765,0,974,57,57,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][113]	= settr(1795,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][86]	= settr(1768,0,108,58,0,"((((L1_lo.oblig==1)&&((L1_lo.role_pl==STUDENT)==1))&&((L1_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][108] = settr(1790,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1790,0,93,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][93] = settr(1775,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1775,2,87,0,0,"ATOMIC", 0, 2, 0);
	trans[1][87]	= settr(1769,0,98,59,59,"printf('\\n\\n')", 0, 2, 0); /* m: 88 -> 0,98 */
	reached1[88] = 1;
	trans[1][88]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][89]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][90]	= settr(0,0,0,0,0,"printf('<type>L1</type>\\n')",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][92]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][94]	= settr(0,0,0,0,0,"printf('L1-TechnicalFailure')",0,0,0);
	T = trans[ 1][98] = settr(1780,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1780,0,95,0,0,"sub-sequence", 0, 2, 0);
	trans[1][95]	= settr(1777,0,96,60,60,"L1_lo.oblig = 1", 1, 2, 0);
	trans[1][96]	= settr(1778,0,97,61,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.prohib==1))))", 1, 2, 0);
	trans[1][97]	= settr(1779,0,105,62,0,"assert(!(((L1_lo.oblig==1)&&(L1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][105] = settr(1787,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1787,2,99,0,0,"ATOMIC", 0, 2, 0);
	trans[1][99]	= settr(1781,4,107,63,63,"printf('\\n\\n')", 0, 2, 0); /* m: 100 -> 0,107 */
	reached1[100] = 1;
	trans[1][100]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][101]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][102]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][103]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][104]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][107] = settr(1789,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1789,0,106,0,0,"sub-sequence", 0, 2, 0);
	trans[1][106]	= settr(1788,0,974,64,64,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][109]	= settr(1791,0,111,2,0,"else", 0, 2, 0);
	T = trans[ 1][111] = settr(1793,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1793,0,110,0,0,"sub-sequence", 0, 2, 0);
	trans[1][110]	= settr(1792,0,974,65,65,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][125] = settr(1807,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1807,0,123,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][123] = settr(1805,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,115,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1805,0,119,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1805,0,121,0,0,"IF", 0, 2, 0);
	trans[1][115]	= settr(1797,0,116,66,0,"(LEG2CRM?[19,S])", 1, 2, 0);
	trans[1][116]	= settr(1798,0,186,67,67,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][124]	= settr(1806,0,186,1,0,".(goto)", 0, 2, 0);
	trans[1][117]	= settr(1799,0,118,68,0,"(LEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][118]	= settr(1800,0,186,69,69,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][119]	= settr(1801,0,120,70,0,"(LEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][120]	= settr(1802,0,186,71,71,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][121]	= settr(1803,0,122,72,0,"(LEG2CRM?[19,LF])", 1, 2, 0);
	trans[1][122]	= settr(1804,0,186,73,73,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][186] = settr(1868,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1868,0,126,0,0,"sub-sequence", 0, 2, 0);
	trans[1][126]	= settr(1808,0,184,74,0,"printf('L2')", 0, 2, 0);
	T = trans[1][184] = settr(1866,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,153,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1866,0,176,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1866,0,181,0,0,"IF", 0, 2, 0);
	trans[1][127]	= settr(1809,0,152,75,0,"((((L2_lo.oblig==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][152] = settr(1834,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1834,0,128,0,0,"sub-sequence", 0, 2, 0);
	trans[1][128]	= settr(1810,0,129,76,76,"STUDENTexTrace = (STUDENTexTrace|(1<<L2_lo.id))", 1, 2, 0);
	trans[1][129]	= settr(1811,0,136,77,77,"L2_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][136] = settr(1818,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1818,2,130,0,0,"ATOMIC", 0, 2, 0);
	trans[1][130]	= settr(1812,4,137,78,78,"printf('\\n\\n')", 0, 2, 0); /* m: 131 -> 0,137 */
	reached1[131] = 1;
	trans[1][131]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][132]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][133]	= settr(0,0,0,0,0,"printf('<type>L2</type>\\n')",0,0,0);
	trans[1][134]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][135]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][137]	= settr(1819,0,141,79,79,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][141] = settr(1823,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1823,0,138,0,0,"sub-sequence", 0, 2, 0);
	trans[1][138]	= settr(1820,0,139,80,80,"L2_lo.oblig = 0", 1, 2, 0);
	trans[1][139]	= settr(1821,0,140,81,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))", 1, 2, 0);
	trans[1][140]	= settr(1822,0,145,82,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][145] = settr(1827,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1827,0,142,0,0,"sub-sequence", 0, 2, 0);
	trans[1][142]	= settr(1824,0,143,83,83,"L3_lo.prohib = 0", 1, 2, 0);
	trans[1][143]	= settr(1825,0,144,84,0,"assert(!(((L3_lo.prohib==1)&&(L3_lo.right==1))))", 1, 2, 0);
	trans[1][144]	= settr(1826,0,149,85,0,"assert(!(((L3_lo.prohib==1)&&(L3_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][149] = settr(1831,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1831,0,146,0,0,"sub-sequence", 0, 2, 0);
	trans[1][146]	= settr(1828,0,147,86,86,"L3_lo.oblig = 1", 1, 2, 0);
	trans[1][147]	= settr(1829,0,148,87,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))", 1, 2, 0);
	trans[1][148]	= settr(1830,0,151,88,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][151] = settr(1833,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1833,0,150,0,0,"sub-sequence", 0, 2, 0);
	trans[1][150]	= settr(1832,0,974,89,89,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][185]	= settr(1867,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][153]	= settr(1835,0,175,90,0,"((((L2_lo.oblig==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][175] = settr(1857,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1857,0,160,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][160] = settr(1842,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1842,2,154,0,0,"ATOMIC", 0, 2, 0);
	trans[1][154]	= settr(1836,0,165,91,91,"printf('\\n\\n')", 0, 2, 0); /* m: 155 -> 0,165 */
	reached1[155] = 1;
	trans[1][155]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][156]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][157]	= settr(0,0,0,0,0,"printf('<type>L2</type>\\n')",0,0,0);
	trans[1][158]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][159]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][161]	= settr(0,0,0,0,0,"printf('L2-TechnicalFailure')",0,0,0);
	T = trans[ 1][165] = settr(1847,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1847,0,162,0,0,"sub-sequence", 0, 2, 0);
	trans[1][162]	= settr(1844,0,163,92,92,"L2_lo.oblig = 1", 1, 2, 0);
	trans[1][163]	= settr(1845,0,164,93,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.prohib==1))))", 1, 2, 0);
	trans[1][164]	= settr(1846,0,172,94,0,"assert(!(((L2_lo.oblig==1)&&(L2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][172] = settr(1854,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1854,2,166,0,0,"ATOMIC", 0, 2, 0);
	trans[1][166]	= settr(1848,4,174,95,95,"printf('\\n\\n')", 0, 2, 0); /* m: 167 -> 0,174 */
	reached1[167] = 1;
	trans[1][167]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][168]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][169]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][170]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][171]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][174] = settr(1856,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1856,0,173,0,0,"sub-sequence", 0, 2, 0);
	trans[1][173]	= settr(1855,0,974,96,96,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][176]	= settr(1858,0,180,97,0,"((((L2_lo.prohib==1)&&((L2_lo.role_pl==STUDENT)==1))&&((L2_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][180] = settr(1862,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1862,0,177,0,0,"sub-sequence", 0, 2, 0);
	trans[1][177]	= settr(1859,0,179,98,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][179] = settr(1861,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1861,0,178,0,0,"sub-sequence", 0, 2, 0);
	trans[1][178]	= settr(1860,0,974,99,99,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][181]	= settr(1863,0,183,2,0,"else", 0, 2, 0);
	T = trans[ 1][183] = settr(1865,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1865,0,182,0,0,"sub-sequence", 0, 2, 0);
	trans[1][182]	= settr(1864,0,974,100,100,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][197] = settr(1879,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1879,0,195,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][195] = settr(1877,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1877,0,187,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1877,0,189,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1877,0,191,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1877,0,193,0,0,"IF", 0, 2, 0);
	trans[1][187]	= settr(1869,0,188,101,0,"(LEG2CRM?[20,S])", 1, 2, 0);
	trans[1][188]	= settr(1870,0,266,102,102,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][196]	= settr(1878,0,266,1,0,".(goto)", 0, 2, 0);
	trans[1][189]	= settr(1871,0,190,103,0,"(LEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][190]	= settr(1872,0,266,104,104,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][191]	= settr(1873,0,192,105,0,"(LEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][192]	= settr(1874,0,266,106,106,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][193]	= settr(1875,0,194,107,0,"(LEG2CRM?[20,LF])", 1, 2, 0);
	trans[1][194]	= settr(1876,0,266,108,108,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][266] = settr(1948,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1948,0,198,0,0,"sub-sequence", 0, 2, 0);
	trans[1][198]	= settr(1880,0,264,109,0,"printf('L3')", 0, 2, 0);
	T = trans[1][264] = settr(1946,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1946,0,199,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1946,0,233,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1946,0,256,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1946,0,261,0,0,"IF", 0, 2, 0);
	trans[1][199]	= settr(1881,0,232,110,0,"((((L3_lo.oblig==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][232] = settr(1914,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1914,0,200,0,0,"sub-sequence", 0, 2, 0);
	trans[1][200]	= settr(1882,0,201,111,111,"STUDENTexTrace = (STUDENTexTrace|(1<<L3_lo.id))", 1, 2, 0);
	trans[1][201]	= settr(1883,0,208,112,112,"L3_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][208] = settr(1890,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1890,2,202,0,0,"ATOMIC", 0, 2, 0);
	trans[1][202]	= settr(1884,4,209,113,113,"printf('\\n\\n')", 0, 2, 0); /* m: 203 -> 0,209 */
	reached1[203] = 1;
	trans[1][203]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][204]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][205]	= settr(0,0,0,0,0,"printf('<type>L3</type>\\n')",0,0,0);
	trans[1][206]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][207]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][209]	= settr(1891,0,213,114,114,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][213] = settr(1895,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1895,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[1][210]	= settr(1892,0,211,115,115,"L3_lo.oblig = 0", 1, 2, 0);
	trans[1][211]	= settr(1893,0,212,116,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))", 1, 2, 0);
	trans[1][212]	= settr(1894,0,217,117,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][217] = settr(1899,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1899,0,214,0,0,"sub-sequence", 0, 2, 0);
	trans[1][214]	= settr(1896,0,215,118,118,"CW1_lo.prohib = 0", 1, 2, 0);
	trans[1][215]	= settr(1897,0,216,119,0,"assert(!(((CW1_lo.prohib==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	trans[1][216]	= settr(1898,0,221,120,0,"assert(!(((CW1_lo.prohib==1)&&(CW1_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][221] = settr(1903,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1903,0,218,0,0,"sub-sequence", 0, 2, 0);
	trans[1][218]	= settr(1900,0,219,121,121,"CW1_lo.oblig = 1", 1, 2, 0);
	trans[1][219]	= settr(1901,0,220,122,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][220]	= settr(1902,0,225,123,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][225] = settr(1907,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1907,0,222,0,0,"sub-sequence", 0, 2, 0);
	trans[1][222]	= settr(1904,0,223,124,124,"L4_lo.prohib = 0", 1, 2, 0);
	trans[1][223]	= settr(1905,0,224,125,0,"assert(!(((L4_lo.prohib==1)&&(L4_lo.right==1))))", 1, 2, 0);
	trans[1][224]	= settr(1906,0,229,126,0,"assert(!(((L4_lo.prohib==1)&&(L4_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][229] = settr(1911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1911,0,226,0,0,"sub-sequence", 0, 2, 0);
	trans[1][226]	= settr(1908,0,227,127,127,"L4_lo.oblig = 1", 1, 2, 0);
	trans[1][227]	= settr(1909,0,228,128,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))", 1, 2, 0);
	trans[1][228]	= settr(1910,0,231,129,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][231] = settr(1913,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1913,0,230,0,0,"sub-sequence", 0, 2, 0);
	trans[1][230]	= settr(1912,0,974,130,130,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][265]	= settr(1947,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][233]	= settr(1915,0,255,131,0,"((((L3_lo.oblig==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][255] = settr(1937,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1937,0,240,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][240] = settr(1922,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1922,2,234,0,0,"ATOMIC", 0, 2, 0);
	trans[1][234]	= settr(1916,0,245,132,132,"printf('\\n\\n')", 0, 2, 0); /* m: 235 -> 0,245 */
	reached1[235] = 1;
	trans[1][235]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][236]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][237]	= settr(0,0,0,0,0,"printf('<type>L3</type>\\n')",0,0,0);
	trans[1][238]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][239]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][241]	= settr(0,0,0,0,0,"printf('L3-TechnicalFailure')",0,0,0);
	T = trans[ 1][245] = settr(1927,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1927,0,242,0,0,"sub-sequence", 0, 2, 0);
	trans[1][242]	= settr(1924,0,243,133,133,"L3_lo.oblig = 1", 1, 2, 0);
	trans[1][243]	= settr(1925,0,244,134,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.prohib==1))))", 1, 2, 0);
	trans[1][244]	= settr(1926,0,252,135,0,"assert(!(((L3_lo.oblig==1)&&(L3_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][252] = settr(1934,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1934,2,246,0,0,"ATOMIC", 0, 2, 0);
	trans[1][246]	= settr(1928,4,254,136,136,"printf('\\n\\n')", 0, 2, 0); /* m: 247 -> 0,254 */
	reached1[247] = 1;
	trans[1][247]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][248]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][249]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][250]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][251]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][254] = settr(1936,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1936,0,253,0,0,"sub-sequence", 0, 2, 0);
	trans[1][253]	= settr(1935,0,974,137,137,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][256]	= settr(1938,0,260,138,0,"((((L3_lo.prohib==1)&&((L3_lo.role_pl==STUDENT)==1))&&((L3_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][260] = settr(1942,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1942,0,257,0,0,"sub-sequence", 0, 2, 0);
	trans[1][257]	= settr(1939,0,259,139,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][259] = settr(1941,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1941,0,258,0,0,"sub-sequence", 0, 2, 0);
	trans[1][258]	= settr(1940,0,974,140,140,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][261]	= settr(1943,0,263,2,0,"else", 0, 2, 0);
	T = trans[ 1][263] = settr(1945,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1945,0,262,0,0,"sub-sequence", 0, 2, 0);
	trans[1][262]	= settr(1944,0,974,141,141,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][277] = settr(1959,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1959,0,275,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][275] = settr(1957,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,267,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1957,0,271,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1957,0,273,0,0,"IF", 0, 2, 0);
	trans[1][267]	= settr(1949,0,268,142,0,"(LEG2CRM?[21,S])", 1, 2, 0);
	trans[1][268]	= settr(1950,0,338,143,143,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][276]	= settr(1958,0,338,1,0,".(goto)", 0, 2, 0);
	trans[1][269]	= settr(1951,0,270,144,0,"(LEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][270]	= settr(1952,0,338,145,145,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][271]	= settr(1953,0,272,146,0,"(LEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][272]	= settr(1954,0,338,147,147,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][273]	= settr(1955,0,274,148,0,"(LEG2CRM?[21,LF])", 1, 2, 0);
	trans[1][274]	= settr(1956,0,338,149,149,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][338] = settr(2020,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2020,0,278,0,0,"sub-sequence", 0, 2, 0);
	trans[1][278]	= settr(1960,0,336,150,0,"printf('L4')", 0, 2, 0);
	T = trans[1][336] = settr(2018,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2018,0,279,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2018,0,305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2018,0,328,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2018,0,333,0,0,"IF", 0, 2, 0);
	trans[1][279]	= settr(1961,0,304,151,0,"((((L4_lo.oblig==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][304] = settr(1986,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1986,0,280,0,0,"sub-sequence", 0, 2, 0);
	trans[1][280]	= settr(1962,0,281,152,152,"STUDENTexTrace = (STUDENTexTrace|(1<<L4_lo.id))", 1, 2, 0);
	trans[1][281]	= settr(1963,0,288,153,153,"L4_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][288] = settr(1970,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1970,2,282,0,0,"ATOMIC", 0, 2, 0);
	trans[1][282]	= settr(1964,4,289,154,154,"printf('\\n\\n')", 0, 2, 0); /* m: 283 -> 0,289 */
	reached1[283] = 1;
	trans[1][283]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][284]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][285]	= settr(0,0,0,0,0,"printf('<type>L4</type>\\n')",0,0,0);
	trans[1][286]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][287]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][289]	= settr(1971,0,293,155,155,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][293] = settr(1975,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1975,0,290,0,0,"sub-sequence", 0, 2, 0);
	trans[1][290]	= settr(1972,0,291,156,156,"L4_lo.oblig = 0", 1, 2, 0);
	trans[1][291]	= settr(1973,0,292,157,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))", 1, 2, 0);
	trans[1][292]	= settr(1974,0,297,158,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][297] = settr(1979,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1979,0,294,0,0,"sub-sequence", 0, 2, 0);
	trans[1][294]	= settr(1976,0,295,159,159,"L5_lo.prohib = 0", 1, 2, 0);
	trans[1][295]	= settr(1977,0,296,160,0,"assert(!(((L5_lo.prohib==1)&&(L5_lo.right==1))))", 1, 2, 0);
	trans[1][296]	= settr(1978,0,301,161,0,"assert(!(((L5_lo.prohib==1)&&(L5_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][301] = settr(1983,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1983,0,298,0,0,"sub-sequence", 0, 2, 0);
	trans[1][298]	= settr(1980,0,299,162,162,"L5_lo.oblig = 1", 1, 2, 0);
	trans[1][299]	= settr(1981,0,300,163,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))", 1, 2, 0);
	trans[1][300]	= settr(1982,0,303,164,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][303] = settr(1985,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1985,0,302,0,0,"sub-sequence", 0, 2, 0);
	trans[1][302]	= settr(1984,0,974,165,165,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][337]	= settr(2019,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][305]	= settr(1987,0,327,166,0,"((((L4_lo.oblig==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][327] = settr(2009,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2009,0,312,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][312] = settr(1994,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1994,2,306,0,0,"ATOMIC", 0, 2, 0);
	trans[1][306]	= settr(1988,0,317,167,167,"printf('\\n\\n')", 0, 2, 0); /* m: 307 -> 0,317 */
	reached1[307] = 1;
	trans[1][307]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][308]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][309]	= settr(0,0,0,0,0,"printf('<type>L4</type>\\n')",0,0,0);
	trans[1][310]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][311]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][313]	= settr(0,0,0,0,0,"printf('L4-TechnicalFailure')",0,0,0);
	T = trans[ 1][317] = settr(1999,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1999,0,314,0,0,"sub-sequence", 0, 2, 0);
	trans[1][314]	= settr(1996,0,315,168,168,"L4_lo.oblig = 1", 1, 2, 0);
	trans[1][315]	= settr(1997,0,316,169,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.prohib==1))))", 1, 2, 0);
	trans[1][316]	= settr(1998,0,324,170,0,"assert(!(((L4_lo.oblig==1)&&(L4_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][324] = settr(2006,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2006,2,318,0,0,"ATOMIC", 0, 2, 0);
	trans[1][318]	= settr(2000,4,326,171,171,"printf('\\n\\n')", 0, 2, 0); /* m: 319 -> 0,326 */
	reached1[319] = 1;
	trans[1][319]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][320]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][321]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][322]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][323]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][326] = settr(2008,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2008,0,325,0,0,"sub-sequence", 0, 2, 0);
	trans[1][325]	= settr(2007,0,974,172,172,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][328]	= settr(2010,0,332,173,0,"((((L4_lo.prohib==1)&&((L4_lo.role_pl==STUDENT)==1))&&((L4_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][332] = settr(2014,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2014,0,329,0,0,"sub-sequence", 0, 2, 0);
	trans[1][329]	= settr(2011,0,331,174,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][331] = settr(2013,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2013,0,330,0,0,"sub-sequence", 0, 2, 0);
	trans[1][330]	= settr(2012,0,974,175,175,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][333]	= settr(2015,0,335,2,0,"else", 0, 2, 0);
	T = trans[ 1][335] = settr(2017,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2017,0,334,0,0,"sub-sequence", 0, 2, 0);
	trans[1][334]	= settr(2016,0,974,176,176,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][349] = settr(2031,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2031,0,347,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][347] = settr(2029,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2029,0,339,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2029,0,341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2029,0,343,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2029,0,345,0,0,"IF", 0, 2, 0);
	trans[1][339]	= settr(2021,0,340,177,0,"(LEG2CRM?[22,S])", 1, 2, 0);
	trans[1][340]	= settr(2022,0,410,178,178,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][348]	= settr(2030,0,410,1,0,".(goto)", 0, 2, 0);
	trans[1][341]	= settr(2023,0,342,179,0,"(LEG2CRM?[22,TO])", 1, 2, 0);
	trans[1][342]	= settr(2024,0,410,180,180,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][343]	= settr(2025,0,344,181,0,"(LEG2CRM?[22,TF])", 1, 2, 0);
	trans[1][344]	= settr(2026,0,410,182,182,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][345]	= settr(2027,0,346,183,0,"(LEG2CRM?[22,LF])", 1, 2, 0);
	trans[1][346]	= settr(2028,0,410,184,184,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][410] = settr(2092,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2092,0,350,0,0,"sub-sequence", 0, 2, 0);
	trans[1][350]	= settr(2032,0,408,185,0,"printf('L5')", 0, 2, 0);
	T = trans[1][408] = settr(2090,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2090,0,351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2090,0,377,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2090,0,400,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2090,0,405,0,0,"IF", 0, 2, 0);
	trans[1][351]	= settr(2033,0,376,186,0,"((((L5_lo.oblig==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][376] = settr(2058,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2058,0,352,0,0,"sub-sequence", 0, 2, 0);
	trans[1][352]	= settr(2034,0,353,187,187,"STUDENTexTrace = (STUDENTexTrace|(1<<L5_lo.id))", 1, 2, 0);
	trans[1][353]	= settr(2035,0,360,188,188,"L5_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][360] = settr(2042,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2042,2,354,0,0,"ATOMIC", 0, 2, 0);
	trans[1][354]	= settr(2036,4,361,189,189,"printf('\\n\\n')", 0, 2, 0); /* m: 355 -> 0,361 */
	reached1[355] = 1;
	trans[1][355]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][356]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][357]	= settr(0,0,0,0,0,"printf('<type>L5</type>\\n')",0,0,0);
	trans[1][358]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][359]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][361]	= settr(2043,0,365,190,190,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][365] = settr(2047,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2047,0,362,0,0,"sub-sequence", 0, 2, 0);
	trans[1][362]	= settr(2044,0,363,191,191,"L5_lo.oblig = 0", 1, 2, 0);
	trans[1][363]	= settr(2045,0,364,192,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))", 1, 2, 0);
	trans[1][364]	= settr(2046,0,369,193,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][369] = settr(2051,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2051,0,366,0,0,"sub-sequence", 0, 2, 0);
	trans[1][366]	= settr(2048,0,367,194,194,"L6_lo.prohib = 0", 1, 2, 0);
	trans[1][367]	= settr(2049,0,368,195,0,"assert(!(((L6_lo.prohib==1)&&(L6_lo.right==1))))", 1, 2, 0);
	trans[1][368]	= settr(2050,0,373,196,0,"assert(!(((L6_lo.prohib==1)&&(L6_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][373] = settr(2055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2055,0,370,0,0,"sub-sequence", 0, 2, 0);
	trans[1][370]	= settr(2052,0,371,197,197,"L6_lo.oblig = 1", 1, 2, 0);
	trans[1][371]	= settr(2053,0,372,198,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))", 1, 2, 0);
	trans[1][372]	= settr(2054,0,375,199,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][375] = settr(2057,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2057,0,374,0,0,"sub-sequence", 0, 2, 0);
	trans[1][374]	= settr(2056,0,974,200,200,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][409]	= settr(2091,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][377]	= settr(2059,0,399,201,0,"((((L5_lo.oblig==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][399] = settr(2081,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2081,0,384,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][384] = settr(2066,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2066,2,378,0,0,"ATOMIC", 0, 2, 0);
	trans[1][378]	= settr(2060,0,389,202,202,"printf('\\n\\n')", 0, 2, 0); /* m: 379 -> 0,389 */
	reached1[379] = 1;
	trans[1][379]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][380]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][381]	= settr(0,0,0,0,0,"printf('<type>L5</type>\\n')",0,0,0);
	trans[1][382]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][383]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][385]	= settr(0,0,0,0,0,"printf('L5-TechnicalFailure')",0,0,0);
	T = trans[ 1][389] = settr(2071,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2071,0,386,0,0,"sub-sequence", 0, 2, 0);
	trans[1][386]	= settr(2068,0,387,203,203,"L5_lo.oblig = 1", 1, 2, 0);
	trans[1][387]	= settr(2069,0,388,204,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.prohib==1))))", 1, 2, 0);
	trans[1][388]	= settr(2070,0,396,205,0,"assert(!(((L5_lo.oblig==1)&&(L5_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][396] = settr(2078,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2078,2,390,0,0,"ATOMIC", 0, 2, 0);
	trans[1][390]	= settr(2072,4,398,206,206,"printf('\\n\\n')", 0, 2, 0); /* m: 391 -> 0,398 */
	reached1[391] = 1;
	trans[1][391]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][392]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][393]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][394]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][395]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][398] = settr(2080,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2080,0,397,0,0,"sub-sequence", 0, 2, 0);
	trans[1][397]	= settr(2079,0,974,207,207,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][400]	= settr(2082,0,404,208,0,"((((L5_lo.prohib==1)&&((L5_lo.role_pl==STUDENT)==1))&&((L5_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][404] = settr(2086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2086,0,401,0,0,"sub-sequence", 0, 2, 0);
	trans[1][401]	= settr(2083,0,403,209,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][403] = settr(2085,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2085,0,402,0,0,"sub-sequence", 0, 2, 0);
	trans[1][402]	= settr(2084,0,974,210,210,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][405]	= settr(2087,0,407,2,0,"else", 0, 2, 0);
	T = trans[ 1][407] = settr(2089,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2089,0,406,0,0,"sub-sequence", 0, 2, 0);
	trans[1][406]	= settr(2088,0,974,211,211,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][421] = settr(2103,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2103,0,419,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][419] = settr(2101,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2101,0,411,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2101,0,413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2101,0,415,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2101,0,417,0,0,"IF", 0, 2, 0);
	trans[1][411]	= settr(2093,0,412,212,0,"(LEG2CRM?[23,S])", 1, 2, 0);
	trans[1][412]	= settr(2094,0,490,213,213,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][420]	= settr(2102,0,490,1,0,".(goto)", 0, 2, 0);
	trans[1][413]	= settr(2095,0,414,214,0,"(LEG2CRM?[23,TO])", 1, 2, 0);
	trans[1][414]	= settr(2096,0,490,215,215,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][415]	= settr(2097,0,416,216,0,"(LEG2CRM?[23,TF])", 1, 2, 0);
	trans[1][416]	= settr(2098,0,490,217,217,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][417]	= settr(2099,0,418,218,0,"(LEG2CRM?[23,LF])", 1, 2, 0);
	trans[1][418]	= settr(2100,0,490,219,219,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][490] = settr(2172,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2172,0,422,0,0,"sub-sequence", 0, 2, 0);
	trans[1][422]	= settr(2104,0,488,220,0,"printf('L6')", 0, 2, 0);
	T = trans[1][488] = settr(2170,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2170,0,423,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2170,0,457,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2170,0,480,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2170,0,485,0,0,"IF", 0, 2, 0);
	trans[1][423]	= settr(2105,0,456,221,0,"((((L6_lo.oblig==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][456] = settr(2138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2138,0,424,0,0,"sub-sequence", 0, 2, 0);
	trans[1][424]	= settr(2106,0,425,222,222,"STUDENTexTrace = (STUDENTexTrace|(1<<L6_lo.id))", 1, 2, 0);
	trans[1][425]	= settr(2107,0,432,223,223,"L6_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][432] = settr(2114,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2114,2,426,0,0,"ATOMIC", 0, 2, 0);
	trans[1][426]	= settr(2108,4,433,224,224,"printf('\\n\\n')", 0, 2, 0); /* m: 427 -> 0,433 */
	reached1[427] = 1;
	trans[1][427]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][428]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][429]	= settr(0,0,0,0,0,"printf('<type>L6</type>\\n')",0,0,0);
	trans[1][430]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][431]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][433]	= settr(2115,0,437,225,225,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][437] = settr(2119,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2119,0,434,0,0,"sub-sequence", 0, 2, 0);
	trans[1][434]	= settr(2116,0,435,226,226,"L6_lo.oblig = 0", 1, 2, 0);
	trans[1][435]	= settr(2117,0,436,227,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))", 1, 2, 0);
	trans[1][436]	= settr(2118,0,441,228,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][441] = settr(2123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2123,0,438,0,0,"sub-sequence", 0, 2, 0);
	trans[1][438]	= settr(2120,0,439,229,229,"CW2_lo.prohib = 0", 1, 2, 0);
	trans[1][439]	= settr(2121,0,440,230,0,"assert(!(((CW2_lo.prohib==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	trans[1][440]	= settr(2122,0,445,231,0,"assert(!(((CW2_lo.prohib==1)&&(CW2_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][445] = settr(2127,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2127,0,442,0,0,"sub-sequence", 0, 2, 0);
	trans[1][442]	= settr(2124,0,443,232,232,"CW2_lo.oblig = 1", 1, 2, 0);
	trans[1][443]	= settr(2125,0,444,233,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][444]	= settr(2126,0,449,234,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][449] = settr(2131,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2131,0,446,0,0,"sub-sequence", 0, 2, 0);
	trans[1][446]	= settr(2128,0,447,235,235,"L7_lo.prohib = 0", 1, 2, 0);
	trans[1][447]	= settr(2129,0,448,236,0,"assert(!(((L7_lo.prohib==1)&&(L7_lo.right==1))))", 1, 2, 0);
	trans[1][448]	= settr(2130,0,453,237,0,"assert(!(((L7_lo.prohib==1)&&(L7_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][453] = settr(2135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2135,0,450,0,0,"sub-sequence", 0, 2, 0);
	trans[1][450]	= settr(2132,0,451,238,238,"L7_lo.oblig = 1", 1, 2, 0);
	trans[1][451]	= settr(2133,0,452,239,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))", 1, 2, 0);
	trans[1][452]	= settr(2134,0,455,240,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][455] = settr(2137,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2137,0,454,0,0,"sub-sequence", 0, 2, 0);
	trans[1][454]	= settr(2136,0,974,241,241,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][489]	= settr(2171,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][457]	= settr(2139,0,479,242,0,"((((L6_lo.oblig==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][479] = settr(2161,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2161,0,464,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][464] = settr(2146,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2146,2,458,0,0,"ATOMIC", 0, 2, 0);
	trans[1][458]	= settr(2140,0,469,243,243,"printf('\\n\\n')", 0, 2, 0); /* m: 459 -> 0,469 */
	reached1[459] = 1;
	trans[1][459]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][460]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][461]	= settr(0,0,0,0,0,"printf('<type>L6</type>\\n')",0,0,0);
	trans[1][462]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][463]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][465]	= settr(0,0,0,0,0,"printf('L6-TechnicalFailure')",0,0,0);
	T = trans[ 1][469] = settr(2151,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2151,0,466,0,0,"sub-sequence", 0, 2, 0);
	trans[1][466]	= settr(2148,0,467,244,244,"L6_lo.oblig = 1", 1, 2, 0);
	trans[1][467]	= settr(2149,0,468,245,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.prohib==1))))", 1, 2, 0);
	trans[1][468]	= settr(2150,0,476,246,0,"assert(!(((L6_lo.oblig==1)&&(L6_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][476] = settr(2158,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2158,2,470,0,0,"ATOMIC", 0, 2, 0);
	trans[1][470]	= settr(2152,4,478,247,247,"printf('\\n\\n')", 0, 2, 0); /* m: 471 -> 0,478 */
	reached1[471] = 1;
	trans[1][471]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][472]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][473]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][474]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][475]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][478] = settr(2160,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2160,0,477,0,0,"sub-sequence", 0, 2, 0);
	trans[1][477]	= settr(2159,0,974,248,248,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][480]	= settr(2162,0,484,249,0,"((((L6_lo.prohib==1)&&((L6_lo.role_pl==STUDENT)==1))&&((L6_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][484] = settr(2166,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2166,0,481,0,0,"sub-sequence", 0, 2, 0);
	trans[1][481]	= settr(2163,0,483,250,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][483] = settr(2165,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2165,0,482,0,0,"sub-sequence", 0, 2, 0);
	trans[1][482]	= settr(2164,0,974,251,251,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][485]	= settr(2167,0,487,2,0,"else", 0, 2, 0);
	T = trans[ 1][487] = settr(2169,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2169,0,486,0,0,"sub-sequence", 0, 2, 0);
	trans[1][486]	= settr(2168,0,974,252,252,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][501] = settr(2183,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2183,0,499,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][499] = settr(2181,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2181,0,491,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2181,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2181,0,495,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2181,0,497,0,0,"IF", 0, 2, 0);
	trans[1][491]	= settr(2173,0,492,253,0,"(LEG2CRM?[24,S])", 1, 2, 0);
	trans[1][492]	= settr(2174,0,562,254,254,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][500]	= settr(2182,0,562,1,0,".(goto)", 0, 2, 0);
	trans[1][493]	= settr(2175,0,494,255,0,"(LEG2CRM?[24,TO])", 1, 2, 0);
	trans[1][494]	= settr(2176,0,562,256,256,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][495]	= settr(2177,0,496,257,0,"(LEG2CRM?[24,TF])", 1, 2, 0);
	trans[1][496]	= settr(2178,0,562,258,258,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][497]	= settr(2179,0,498,259,0,"(LEG2CRM?[24,LF])", 1, 2, 0);
	trans[1][498]	= settr(2180,0,562,260,260,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][562] = settr(2244,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2244,0,502,0,0,"sub-sequence", 0, 2, 0);
	trans[1][502]	= settr(2184,0,560,261,0,"printf('L7')", 0, 2, 0);
	T = trans[1][560] = settr(2242,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2242,0,503,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2242,0,529,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2242,0,552,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2242,0,557,0,0,"IF", 0, 2, 0);
	trans[1][503]	= settr(2185,0,528,262,0,"((((L7_lo.oblig==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][528] = settr(2210,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2210,0,504,0,0,"sub-sequence", 0, 2, 0);
	trans[1][504]	= settr(2186,0,505,263,263,"STUDENTexTrace = (STUDENTexTrace|(1<<L7_lo.id))", 1, 2, 0);
	trans[1][505]	= settr(2187,0,512,264,264,"L7_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][512] = settr(2194,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2194,2,506,0,0,"ATOMIC", 0, 2, 0);
	trans[1][506]	= settr(2188,4,513,265,265,"printf('\\n\\n')", 0, 2, 0); /* m: 507 -> 0,513 */
	reached1[507] = 1;
	trans[1][507]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][508]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][509]	= settr(0,0,0,0,0,"printf('<type>L7</type>\\n')",0,0,0);
	trans[1][510]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][511]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][513]	= settr(2195,0,517,266,266,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][517] = settr(2199,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2199,0,514,0,0,"sub-sequence", 0, 2, 0);
	trans[1][514]	= settr(2196,0,515,267,267,"L7_lo.oblig = 0", 1, 2, 0);
	trans[1][515]	= settr(2197,0,516,268,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))", 1, 2, 0);
	trans[1][516]	= settr(2198,0,521,269,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][521] = settr(2203,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2203,0,518,0,0,"sub-sequence", 0, 2, 0);
	trans[1][518]	= settr(2200,0,519,270,270,"L8_lo.prohib = 0", 1, 2, 0);
	trans[1][519]	= settr(2201,0,520,271,0,"assert(!(((L8_lo.prohib==1)&&(L8_lo.right==1))))", 1, 2, 0);
	trans[1][520]	= settr(2202,0,525,272,0,"assert(!(((L8_lo.prohib==1)&&(L8_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][525] = settr(2207,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2207,0,522,0,0,"sub-sequence", 0, 2, 0);
	trans[1][522]	= settr(2204,0,523,273,273,"L8_lo.oblig = 1", 1, 2, 0);
	trans[1][523]	= settr(2205,0,524,274,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))", 1, 2, 0);
	trans[1][524]	= settr(2206,0,527,275,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][527] = settr(2209,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2209,0,526,0,0,"sub-sequence", 0, 2, 0);
	trans[1][526]	= settr(2208,0,974,276,276,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][561]	= settr(2243,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][529]	= settr(2211,0,551,277,0,"((((L7_lo.oblig==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][551] = settr(2233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2233,0,536,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][536] = settr(2218,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2218,2,530,0,0,"ATOMIC", 0, 2, 0);
	trans[1][530]	= settr(2212,0,541,278,278,"printf('\\n\\n')", 0, 2, 0); /* m: 531 -> 0,541 */
	reached1[531] = 1;
	trans[1][531]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][532]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][533]	= settr(0,0,0,0,0,"printf('<type>L7</type>\\n')",0,0,0);
	trans[1][534]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][535]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][537]	= settr(0,0,0,0,0,"printf('L7-TechnicalFailure')",0,0,0);
	T = trans[ 1][541] = settr(2223,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2223,0,538,0,0,"sub-sequence", 0, 2, 0);
	trans[1][538]	= settr(2220,0,539,279,279,"L7_lo.oblig = 1", 1, 2, 0);
	trans[1][539]	= settr(2221,0,540,280,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.prohib==1))))", 1, 2, 0);
	trans[1][540]	= settr(2222,0,548,281,0,"assert(!(((L7_lo.oblig==1)&&(L7_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][548] = settr(2230,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2230,2,542,0,0,"ATOMIC", 0, 2, 0);
	trans[1][542]	= settr(2224,4,550,282,282,"printf('\\n\\n')", 0, 2, 0); /* m: 543 -> 0,550 */
	reached1[543] = 1;
	trans[1][543]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][544]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][545]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][546]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][547]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][550] = settr(2232,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2232,0,549,0,0,"sub-sequence", 0, 2, 0);
	trans[1][549]	= settr(2231,0,974,283,283,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][552]	= settr(2234,0,556,284,0,"((((L7_lo.prohib==1)&&((L7_lo.role_pl==STUDENT)==1))&&((L7_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][556] = settr(2238,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2238,0,553,0,0,"sub-sequence", 0, 2, 0);
	trans[1][553]	= settr(2235,0,555,285,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][555] = settr(2237,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2237,0,554,0,0,"sub-sequence", 0, 2, 0);
	trans[1][554]	= settr(2236,0,974,286,286,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][557]	= settr(2239,0,559,2,0,"else", 0, 2, 0);
	T = trans[ 1][559] = settr(2241,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2241,0,558,0,0,"sub-sequence", 0, 2, 0);
	trans[1][558]	= settr(2240,0,974,287,287,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][573] = settr(2255,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2255,0,571,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][571] = settr(2253,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2253,0,563,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2253,0,565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2253,0,567,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2253,0,569,0,0,"IF", 0, 2, 0);
	trans[1][563]	= settr(2245,0,564,288,0,"(LEG2CRM?[25,S])", 1, 2, 0);
	trans[1][564]	= settr(2246,0,640,289,289,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][572]	= settr(2254,0,640,1,0,".(goto)", 0, 2, 0);
	trans[1][565]	= settr(2247,0,566,290,0,"(LEG2CRM?[25,TO])", 1, 2, 0);
	trans[1][566]	= settr(2248,0,640,291,291,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][567]	= settr(2249,0,568,292,0,"(LEG2CRM?[25,TF])", 1, 2, 0);
	trans[1][568]	= settr(2250,0,640,293,293,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][569]	= settr(2251,0,570,294,0,"(LEG2CRM?[25,LF])", 1, 2, 0);
	trans[1][570]	= settr(2252,0,640,295,295,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][640] = settr(2322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2322,0,574,0,0,"sub-sequence", 0, 2, 0);
	trans[1][574]	= settr(2256,0,638,296,0,"printf('L8')", 0, 2, 0);
	T = trans[1][638] = settr(2320,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2320,0,575,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2320,0,607,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2320,0,630,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2320,0,635,0,0,"IF", 0, 2, 0);
	trans[1][575]	= settr(2257,0,606,297,0,"((((L8_lo.oblig==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][606] = settr(2288,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2288,0,576,0,0,"sub-sequence", 0, 2, 0);
	trans[1][576]	= settr(2258,0,577,298,298,"STUDENTexTrace = (STUDENTexTrace|(1<<L8_lo.id))", 1, 2, 0);
	trans[1][577]	= settr(2259,0,584,299,299,"L8_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][584] = settr(2266,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2266,2,578,0,0,"ATOMIC", 0, 2, 0);
	trans[1][578]	= settr(2260,4,585,300,300,"printf('\\n\\n')", 0, 2, 0); /* m: 579 -> 0,585 */
	reached1[579] = 1;
	trans[1][579]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][580]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][581]	= settr(0,0,0,0,0,"printf('<type>L8</type>\\n')",0,0,0);
	trans[1][582]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][583]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][585]	= settr(2267,0,589,301,301,"LCount = (LCount+1)", 1, 2, 0);
	T = trans[ 1][589] = settr(2271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2271,0,586,0,0,"sub-sequence", 0, 2, 0);
	trans[1][586]	= settr(2268,0,587,302,302,"L8_lo.oblig = 0", 1, 2, 0);
	trans[1][587]	= settr(2269,0,588,303,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))", 1, 2, 0);
	trans[1][588]	= settr(2270,0,602,304,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))", 1, 2, 0);
	T = trans[1][602] = settr(2284,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2284,0,590,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2284,0,599,0,0,"IF", 0, 2, 0);
	trans[1][590]	= settr(2272,0,594,305,0,"((((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT))&&((CW2_lo.executed==1)&&(CW2_lo.role_pl==STUDENT))))", 1, 2, 0);
	T = trans[ 1][594] = settr(2276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2276,0,591,0,0,"sub-sequence", 0, 2, 0);
	trans[1][591]	= settr(2273,0,592,306,306,"EXAM_lo.prohib = 0", 1, 2, 0);
	trans[1][592]	= settr(2274,0,593,307,0,"assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	trans[1][593]	= settr(2275,0,598,308,0,"assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][598] = settr(2280,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2280,0,595,0,0,"sub-sequence", 0, 2, 0);
	trans[1][595]	= settr(2277,0,596,309,309,"EXAM_lo.oblig = 1", 1, 2, 0);
	trans[1][596]	= settr(2278,0,597,310,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][597]	= settr(2279,0,605,311,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	trans[1][603]	= settr(2285,0,605,1,0,".(goto)", 0, 2, 0);
	trans[1][599]	= settr(2281,0,600,2,0,"else", 0, 2, 0);
	trans[1][600]	= settr(2282,0,605,312,312,"printf('\\n\\n')", 0, 2, 0); /* m: 601 -> 0,605 */
	reached1[601] = 1;
	trans[1][601]	= settr(0,0,0,0,0,"printf('Please get coursework done first \\n\\n')",0,0,0);
	T = trans[ 1][605] = settr(2287,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2287,0,604,0,0,"sub-sequence", 0, 2, 0);
	trans[1][604]	= settr(2286,0,974,313,313,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][639]	= settr(2321,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][607]	= settr(2289,0,629,314,0,"((((L8_lo.oblig==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==TF)==1)))", 1, 2, 0);
	T = trans[ 1][629] = settr(2311,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2311,0,614,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][614] = settr(2296,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2296,2,608,0,0,"ATOMIC", 0, 2, 0);
	trans[1][608]	= settr(2290,0,619,315,315,"printf('\\n\\n')", 0, 2, 0); /* m: 609 -> 0,619 */
	reached1[609] = 1;
	trans[1][609]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][610]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][611]	= settr(0,0,0,0,0,"printf('<type>L8</type>\\n')",0,0,0);
	trans[1][612]	= settr(0,0,0,0,0,"printf('<status>tecfail</status>\\n')",0,0,0);
	trans[1][613]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][615]	= settr(0,0,0,0,0,"printf('L8-TechnicalFailure')",0,0,0);
	T = trans[ 1][619] = settr(2301,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2301,0,616,0,0,"sub-sequence", 0, 2, 0);
	trans[1][616]	= settr(2298,0,617,316,316,"L8_lo.oblig = 1", 1, 2, 0);
	trans[1][617]	= settr(2299,0,618,317,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.prohib==1))))", 1, 2, 0);
	trans[1][618]	= settr(2300,0,626,318,0,"assert(!(((L8_lo.oblig==1)&&(L8_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][626] = settr(2308,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2308,2,620,0,0,"ATOMIC", 0, 2, 0);
	trans[1][620]	= settr(2302,4,628,319,319,"printf('\\n\\n')", 0, 2, 0); /* m: 621 -> 0,628 */
	reached1[621] = 1;
	trans[1][621]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][622]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][623]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][624]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][625]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][628] = settr(2310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2310,0,627,0,0,"sub-sequence", 0, 2, 0);
	trans[1][627]	= settr(2309,0,974,320,320,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][630]	= settr(2312,0,634,321,0,"((((L8_lo.prohib==1)&&((L8_lo.role_pl==STUDENT)==1))&&((L8_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][634] = settr(2316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2316,0,631,0,0,"sub-sequence", 0, 2, 0);
	trans[1][631]	= settr(2313,0,633,322,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][633] = settr(2315,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2315,0,632,0,0,"sub-sequence", 0, 2, 0);
	trans[1][632]	= settr(2314,0,974,323,323,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][635]	= settr(2317,0,637,2,0,"else", 0, 2, 0);
	T = trans[ 1][637] = settr(2319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2319,0,636,0,0,"sub-sequence", 0, 2, 0);
	trans[1][636]	= settr(2318,0,974,324,324,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][651] = settr(2333,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2333,0,649,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][649] = settr(2331,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,641,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,643,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2331,0,645,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2331,0,647,0,0,"IF", 0, 2, 0);
	trans[1][641]	= settr(2323,0,642,325,0,"(LEG2CRM?[26,S])", 1, 2, 0);
	trans[1][642]	= settr(2324,0,748,326,326,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][650]	= settr(2332,0,748,1,0,".(goto)", 0, 2, 0);
	trans[1][643]	= settr(2325,0,644,327,0,"(LEG2CRM?[26,TO])", 1, 2, 0);
	trans[1][644]	= settr(2326,0,748,328,328,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][645]	= settr(2327,0,646,329,0,"(LEG2CRM?[26,TF])", 1, 2, 0);
	trans[1][646]	= settr(2328,0,748,330,330,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][647]	= settr(2329,0,648,331,0,"(LEG2CRM?[26,LF])", 1, 2, 0);
	trans[1][648]	= settr(2330,0,748,332,332,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][748] = settr(2430,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2430,0,652,0,0,"sub-sequence", 0, 2, 0);
	trans[1][652]	= settr(2334,0,746,333,0,"printf('CW1 ')", 0, 2, 0);
	T = trans[1][746] = settr(2428,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2428,0,653,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2428,0,674,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2428,0,706,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2428,0,738,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2428,0,743,0,0,"IF", 0, 2, 0);
	trans[1][653]	= settr(2335,0,673,334,0,"((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][673] = settr(2355,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2355,0,662,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][662] = settr(2344,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2344,2,654,0,0,"ATOMIC", 1, 2, 0);
	trans[1][654]	= settr(2336,4,663,335,335,"STUDENTexTrace = (STUDENTexTrace|(1<<CW1_lo.id))", 1, 2, 0); /* m: 655 -> 0,663 */
	reached1[655] = 1;
	trans[1][655]	= settr(0,0,0,0,0,"CW1_lo.executed = 1",0,0,0);
	trans[1][656]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][657]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][658]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][659]	= settr(0,0,0,0,0,"printf('<type>CW1</type>\\n')",0,0,0);
	trans[1][660]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][661]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][663]	= settr(2345,0,664,336,336,"CwCount = (CwCount+1)", 1, 2, 0);
	trans[1][664]	= settr(2346,0,665,337,337,"STUDENTexTrace = (STUDENTexTrace|(1<<CW1_lo.id))", 1, 2, 0);
	trans[1][665]	= settr(2347,0,669,338,338,"CW1_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][669] = settr(2351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2351,0,666,0,0,"sub-sequence", 0, 2, 0);
	trans[1][666]	= settr(2348,0,667,339,339,"CW1_lo.oblig = 0", 1, 2, 0);
	trans[1][667]	= settr(2349,0,668,340,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][668]	= settr(2350,0,670,341,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	trans[1][670]	= settr(2352,0,672,342,0,"printf('Learning are now continued')", 0, 2, 0);
	T = trans[ 1][672] = settr(2354,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2354,0,671,0,0,"sub-sequence", 0, 2, 0);
	trans[1][671]	= settr(2353,0,974,343,343,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][747]	= settr(2429,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][674]	= settr(2356,0,705,344,0,"((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][705] = settr(2387,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2387,0,681,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][681] = settr(2363,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2363,2,675,0,0,"ATOMIC", 0, 2, 0);
	trans[1][675]	= settr(2357,0,686,345,345,"printf('\\n\\n')", 0, 2, 0); /* m: 676 -> 0,686 */
	reached1[676] = 1;
	trans[1][676]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][677]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][678]	= settr(0,0,0,0,0,"printf('<type>CW1</type>\\n')",0,0,0);
	trans[1][679]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][680]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][682]	= settr(0,0,0,0,0,"printf('No submission at within required time')",0,0,0);
	T = trans[ 1][686] = settr(2368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2368,0,683,0,0,"sub-sequence", 0, 2, 0);
	trans[1][683]	= settr(2365,0,684,346,346,"CW1_lo.oblig = 0", 1, 2, 0);
	trans[1][684]	= settr(2366,0,685,347,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][685]	= settr(2367,0,690,348,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][690] = settr(2372,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2372,0,687,0,0,"sub-sequence", 0, 2, 0);
	trans[1][687]	= settr(2369,0,688,349,349,"CW2_lo.oblig = 0", 1, 2, 0);
	trans[1][688]	= settr(2370,0,689,350,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][689]	= settr(2371,0,694,351,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][694] = settr(2376,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2376,0,691,0,0,"sub-sequence", 0, 2, 0);
	trans[1][691]	= settr(2373,0,692,352,352,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][692]	= settr(2374,0,693,353,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][693]	= settr(2375,0,701,354,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][701] = settr(2383,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2383,2,695,0,0,"ATOMIC", 0, 2, 0);
	trans[1][695]	= settr(2377,4,702,355,355,"printf('\\n\\n')", 0, 2, 0); /* m: 696 -> 0,702 */
	reached1[696] = 1;
	trans[1][696]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][697]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][698]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][699]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][700]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][702]	= settr(2384,0,704,356,356,"fail = 1", 1, 2, 0);
	T = trans[ 1][704] = settr(2386,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2386,0,703,0,0,"sub-sequence", 0, 2, 0);
	trans[1][703]	= settr(2385,0,974,357,357,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][706]	= settr(2388,0,737,358,0,"((((CW1_lo.oblig==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==LF)==1)))", 1, 2, 0);
	T = trans[ 1][737] = settr(2419,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2419,0,713,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][713] = settr(2395,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2395,2,707,0,0,"ATOMIC", 0, 2, 0);
	trans[1][707]	= settr(2389,0,718,359,359,"printf('\\n\\n')", 0, 2, 0); /* m: 708 -> 0,718 */
	reached1[708] = 1;
	trans[1][708]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][709]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][710]	= settr(0,0,0,0,0,"printf('<type>CW1</type>\\n')",0,0,0);
	trans[1][711]	= settr(0,0,0,0,0,"printf('<status>Learning Fail</status>\\n')",0,0,0);
	trans[1][712]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][714]	= settr(0,0,0,0,0,"printf('Coursework 1 failed')",0,0,0);
	T = trans[ 1][718] = settr(2400,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2400,0,715,0,0,"sub-sequence", 0, 2, 0);
	trans[1][715]	= settr(2397,0,716,360,360,"CW1_lo.oblig = 0", 1, 2, 0);
	trans[1][716]	= settr(2398,0,717,361,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][717]	= settr(2399,0,722,362,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][722] = settr(2404,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2404,0,719,0,0,"sub-sequence", 0, 2, 0);
	trans[1][719]	= settr(2401,0,720,363,363,"CW2_lo.oblig = 0", 1, 2, 0);
	trans[1][720]	= settr(2402,0,721,364,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][721]	= settr(2403,0,726,365,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][726] = settr(2408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2408,0,723,0,0,"sub-sequence", 0, 2, 0);
	trans[1][723]	= settr(2405,0,724,366,366,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][724]	= settr(2406,0,725,367,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][725]	= settr(2407,0,733,368,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][733] = settr(2415,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2415,2,727,0,0,"ATOMIC", 0, 2, 0);
	trans[1][727]	= settr(2409,4,734,369,369,"printf('\\n\\n')", 0, 2, 0); /* m: 728 -> 0,734 */
	reached1[728] = 1;
	trans[1][728]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][729]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][730]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][731]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][732]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][734]	= settr(2416,0,736,370,370,"fail = 1", 1, 2, 0);
	T = trans[ 1][736] = settr(2418,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2418,0,735,0,0,"sub-sequence", 0, 2, 0);
	trans[1][735]	= settr(2417,0,974,371,371,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][738]	= settr(2420,0,742,372,0,"((((CW1_lo.prohib==1)&&((CW1_lo.role_pl==STUDENT)==1))&&((CW1_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][742] = settr(2424,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2424,0,739,0,0,"sub-sequence", 0, 2, 0);
	trans[1][739]	= settr(2421,0,741,373,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][741] = settr(2423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2423,0,740,0,0,"sub-sequence", 0, 2, 0);
	trans[1][740]	= settr(2422,0,974,374,374,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][743]	= settr(2425,0,745,2,0,"else", 0, 2, 0);
	T = trans[ 1][745] = settr(2427,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2427,0,744,0,0,"sub-sequence", 0, 2, 0);
	trans[1][744]	= settr(2426,0,974,375,375,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][759] = settr(2441,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2441,0,757,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][757] = settr(2439,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2439,0,749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2439,0,751,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2439,0,753,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2439,0,755,0,0,"IF", 0, 2, 0);
	trans[1][749]	= settr(2431,0,750,376,0,"(LEG2CRM?[27,S])", 1, 2, 0);
	trans[1][750]	= settr(2432,0,875,377,377,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][758]	= settr(2440,0,875,1,0,".(goto)", 0, 2, 0);
	trans[1][751]	= settr(2433,0,752,378,0,"(LEG2CRM?[27,TO])", 1, 2, 0);
	trans[1][752]	= settr(2434,0,875,379,379,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][753]	= settr(2435,0,754,380,0,"(LEG2CRM?[27,TF])", 1, 2, 0);
	trans[1][754]	= settr(2436,0,875,381,381,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][755]	= settr(2437,0,756,382,0,"(LEG2CRM?[27,LF])", 1, 2, 0);
	trans[1][756]	= settr(2438,0,875,383,383,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][875] = settr(2557,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2557,0,760,0,0,"sub-sequence", 0, 2, 0);
	trans[1][760]	= settr(2442,0,873,384,0,"printf('CW2 ')", 0, 2, 0);
	T = trans[1][873] = settr(2555,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2555,0,761,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2555,0,801,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2555,0,833,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2555,0,865,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2555,0,870,0,0,"IF", 0, 2, 0);
	trans[1][761]	= settr(2443,0,800,385,0,"((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][800] = settr(2482,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2482,0,796,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][796] = settr(2478,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2478,0,762,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2478,0,793,0,0,"IF", 0, 2, 0);
	trans[1][762]	= settr(2444,0,771,386,0,"(((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT)))", 1, 2, 0);
	T = trans[ 1][771] = settr(2453,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2453,2,763,0,0,"ATOMIC", 1, 2, 0);
	trans[1][763]	= settr(2445,4,772,387,387,"STUDENTexTrace = (STUDENTexTrace|(1<<CW2_lo.id))", 1, 2, 0); /* m: 764 -> 0,772 */
	reached1[764] = 1;
	trans[1][764]	= settr(0,0,0,0,0,"CW2_lo.executed = 1",0,0,0);
	trans[1][765]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][766]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][767]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][768]	= settr(0,0,0,0,0,"printf('<type>CW2</type>\\n')",0,0,0);
	trans[1][769]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][770]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][772]	= settr(2454,0,773,388,388,"CwCount = (CwCount+1)", 1, 2, 0);
	trans[1][773]	= settr(2455,0,774,389,389,"STUDENTexTrace = (STUDENTexTrace|(1<<CW2_lo.id))", 1, 2, 0);
	trans[1][774]	= settr(2456,0,778,390,390,"CW2_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][778] = settr(2460,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2460,0,775,0,0,"sub-sequence", 0, 2, 0);
	trans[1][775]	= settr(2457,0,776,391,391,"CW2_lo.oblig = 0", 1, 2, 0);
	trans[1][776]	= settr(2458,0,777,392,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][777]	= settr(2459,0,790,393,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[1][790] = settr(2472,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2472,0,779,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2472,0,788,0,0,"IF", 0, 2, 0);
	trans[1][779]	= settr(2461,0,783,394,0,"((((L8_lo.executed==1)&&(L8_lo.role_pl==STUDENT))&&((CW1_lo.executed==1)&&(CW1_lo.role_pl==STUDENT))))", 1, 2, 0);
	T = trans[ 1][783] = settr(2465,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2465,0,780,0,0,"sub-sequence", 0, 2, 0);
	trans[1][780]	= settr(2462,0,781,395,395,"EXAM_lo.prohib = 0", 1, 2, 0);
	trans[1][781]	= settr(2463,0,782,396,0,"assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	trans[1][782]	= settr(2464,0,787,397,0,"assert(!(((EXAM_lo.prohib==1)&&(EXAM_lo.oblig==1))))", 1, 2, 0);
	T = trans[ 1][787] = settr(2469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2469,0,784,0,0,"sub-sequence", 0, 2, 0);
	trans[1][784]	= settr(2466,0,785,398,398,"EXAM_lo.oblig = 1", 1, 2, 0);
	trans[1][785]	= settr(2467,0,786,399,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][786]	= settr(2468,0,792,400,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	trans[1][791]	= settr(2473,0,792,1,0,".(goto)", 0, 2, 0); /* m: 792 -> 0,799 */
	reached1[792] = 1;
	trans[1][788]	= settr(2470,0,789,2,0,"else", 0, 2, 0);
	trans[1][789]	= settr(2471,0,799,401,401,"printf('\\n\\n Please get L8 done first \\n\\n')", 0, 2, 0); /* m: 792 -> 0,799 */
	reached1[792] = 1;
	trans[1][792]	= settr(2474,0,799,402,402,"printf('LECTURES are now continued')", 0, 2, 0);
	trans[1][797]	= settr(2479,0,799,1,0,".(goto)", 0, 2, 0);
	trans[1][793]	= settr(2475,0,794,2,0,"else", 0, 2, 0);
	trans[1][794]	= settr(2476,0,799,403,403,"printf('\\n\\n')", 0, 2, 0); /* m: 795 -> 0,799 */
	reached1[795] = 1;
	trans[1][795]	= settr(0,0,0,0,0,"printf('Please complete CW1 first \\n\\n')",0,0,0);
	T = trans[ 1][799] = settr(2481,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2481,0,798,0,0,"sub-sequence", 0, 2, 0);
	trans[1][798]	= settr(2480,0,974,404,404,"CRM2LEG!8,5", 1, 4, 0);
	trans[1][874]	= settr(2556,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][801]	= settr(2483,0,832,405,0,"((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][832] = settr(2514,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2514,0,808,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][808] = settr(2490,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2490,2,802,0,0,"ATOMIC", 0, 2, 0);
	trans[1][802]	= settr(2484,0,813,406,406,"printf('\\n\\n')", 0, 2, 0); /* m: 803 -> 0,813 */
	reached1[803] = 1;
	trans[1][803]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][804]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][805]	= settr(0,0,0,0,0,"printf('<type>CW2</type>\\n')",0,0,0);
	trans[1][806]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][807]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][809]	= settr(0,0,0,0,0,"printf('No submission at within required time')",0,0,0);
	T = trans[ 1][813] = settr(2495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2495,0,810,0,0,"sub-sequence", 0, 2, 0);
	trans[1][810]	= settr(2492,0,811,407,407,"CW1_lo.oblig = 0", 1, 2, 0);
	trans[1][811]	= settr(2493,0,812,408,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][812]	= settr(2494,0,817,409,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][817] = settr(2499,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2499,0,814,0,0,"sub-sequence", 0, 2, 0);
	trans[1][814]	= settr(2496,0,815,410,410,"CW2_lo.oblig = 0", 1, 2, 0);
	trans[1][815]	= settr(2497,0,816,411,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][816]	= settr(2498,0,821,412,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][821] = settr(2503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2503,0,818,0,0,"sub-sequence", 0, 2, 0);
	trans[1][818]	= settr(2500,0,819,413,413,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][819]	= settr(2501,0,820,414,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][820]	= settr(2502,0,828,415,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][828] = settr(2510,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2510,2,822,0,0,"ATOMIC", 0, 2, 0);
	trans[1][822]	= settr(2504,4,829,416,416,"printf('\\n\\n')", 0, 2, 0); /* m: 823 -> 0,829 */
	reached1[823] = 1;
	trans[1][823]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][824]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][825]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][826]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][827]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][829]	= settr(2511,0,831,417,417,"fail = 1", 1, 2, 0);
	T = trans[ 1][831] = settr(2513,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2513,0,830,0,0,"sub-sequence", 0, 2, 0);
	trans[1][830]	= settr(2512,0,974,418,418,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][833]	= settr(2515,0,864,419,0,"((((CW2_lo.oblig==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==LF)==1)))", 1, 2, 0);
	T = trans[ 1][864] = settr(2546,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2546,0,840,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][840] = settr(2522,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2522,2,834,0,0,"ATOMIC", 0, 2, 0);
	trans[1][834]	= settr(2516,4,844,420,420,"printf('\\n\\n')", 0, 2, 0); /* m: 835 -> 0,844 */
	reached1[835] = 1;
	trans[1][835]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][836]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][837]	= settr(0,0,0,0,0,"printf('<type>CW2</type>\\n')",0,0,0);
	trans[1][838]	= settr(0,0,0,0,0,"printf('<status>Learning Fail</status>\\n')",0,0,0);
	trans[1][839]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][844] = settr(2526,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2526,0,841,0,0,"sub-sequence", 0, 2, 0);
	trans[1][841]	= settr(2523,0,842,421,421,"CW1_lo.oblig = 0", 1, 2, 0);
	trans[1][842]	= settr(2524,0,843,422,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.prohib==1))))", 1, 2, 0);
	trans[1][843]	= settr(2525,0,848,423,0,"assert(!(((CW1_lo.oblig==1)&&(CW1_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][848] = settr(2530,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2530,0,845,0,0,"sub-sequence", 0, 2, 0);
	trans[1][845]	= settr(2527,0,846,424,424,"CW2_lo.oblig = 0", 1, 2, 0);
	trans[1][846]	= settr(2528,0,847,425,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.prohib==1))))", 1, 2, 0);
	trans[1][847]	= settr(2529,0,852,426,0,"assert(!(((CW2_lo.oblig==1)&&(CW2_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][852] = settr(2534,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2534,0,849,0,0,"sub-sequence", 0, 2, 0);
	trans[1][849]	= settr(2531,0,850,427,427,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][850]	= settr(2532,0,851,428,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][851]	= settr(2533,0,853,429,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	trans[1][853]	= settr(2535,0,860,430,0,"printf('Coursework 2 failed')", 0, 2, 0);
	T = trans[ 1][860] = settr(2542,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2542,2,854,0,0,"ATOMIC", 0, 2, 0);
	trans[1][854]	= settr(2536,4,861,431,431,"printf('\\n\\n')", 0, 2, 0); /* m: 855 -> 0,861 */
	reached1[855] = 1;
	trans[1][855]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][856]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][857]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][858]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][859]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][861]	= settr(2543,0,863,432,432,"fail = 1", 1, 2, 0);
	T = trans[ 1][863] = settr(2545,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2545,0,862,0,0,"sub-sequence", 0, 2, 0);
	trans[1][862]	= settr(2544,0,974,433,433,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][865]	= settr(2547,0,869,434,0,"((((CW2_lo.prohib==1)&&((CW2_lo.role_pl==STUDENT)==1))&&((CW2_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][869] = settr(2551,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2551,0,866,0,0,"sub-sequence", 0, 2, 0);
	trans[1][866]	= settr(2548,0,868,435,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][868] = settr(2550,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2550,0,867,0,0,"sub-sequence", 0, 2, 0);
	trans[1][867]	= settr(2549,0,974,436,436,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][870]	= settr(2552,0,872,2,0,"else", 0, 2, 0);
	T = trans[ 1][872] = settr(2554,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2554,0,871,0,0,"sub-sequence", 0, 2, 0);
	trans[1][871]	= settr(2553,0,974,437,437,"CRM2LEG!6,5", 1, 4, 0);
	T = trans[ 1][886] = settr(2568,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2568,0,884,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][884] = settr(2566,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2566,0,876,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2566,0,878,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2566,0,880,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2566,0,882,0,0,"IF", 0, 2, 0);
	trans[1][876]	= settr(2558,0,877,438,0,"(LEG2CRM?[28,S])", 1, 2, 0);
	trans[1][877]	= settr(2559,0,973,439,439,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][885]	= settr(2567,0,973,1,0,".(goto)", 0, 2, 0);
	trans[1][878]	= settr(2560,0,879,440,0,"(LEG2CRM?[28,TO])", 1, 2, 0);
	trans[1][879]	= settr(2561,0,973,441,441,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][880]	= settr(2562,0,881,442,0,"(LEG2CRM?[28,TF])", 1, 2, 0);
	trans[1][881]	= settr(2563,0,973,443,443,"LEG2CRM?_,_", 1, 503, 0);
	trans[1][882]	= settr(2564,0,883,444,0,"(LEG2CRM?[28,LF])", 1, 2, 0);
	trans[1][883]	= settr(2565,0,973,445,445,"LEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][973] = settr(2655,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2655,0,887,0,0,"sub-sequence", 0, 2, 0);
	trans[1][887]	= settr(2569,0,971,446,0,"printf('EXAM ')", 0, 2, 0);
	T = trans[1][971] = settr(2653,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2653,0,888,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2653,0,915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2653,0,939,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(2653,0,963,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(2653,0,968,0,0,"IF", 0, 2, 0);
	trans[1][888]	= settr(2570,0,914,447,0,"((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][914] = settr(2596,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2596,0,897,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][897] = settr(2579,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2579,2,889,0,0,"ATOMIC", 1, 2, 0);
	trans[1][889]	= settr(2571,4,898,448,448,"STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_lo.id))", 1, 2, 0); /* m: 890 -> 0,898 */
	reached1[890] = 1;
	trans[1][890]	= settr(0,0,0,0,0,"EXAM_lo.executed = 1",0,0,0);
	trans[1][891]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][892]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][893]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][894]	= settr(0,0,0,0,0,"printf('<type>EXAM</type>\\n')",0,0,0);
	trans[1][895]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][896]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][898]	= settr(2580,0,899,449,449,"ExamCount = (ExamCount+1)", 1, 2, 0);
	trans[1][899]	= settr(2581,0,900,450,450,"STUDENTexTrace = (STUDENTexTrace|(1<<EXAM_lo.id))", 1, 2, 0);
	trans[1][900]	= settr(2582,0,904,451,451,"EXAM_lo.executed = 1", 1, 2, 0);
	T = trans[ 1][904] = settr(2586,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2586,0,901,0,0,"sub-sequence", 0, 2, 0);
	trans[1][901]	= settr(2583,0,902,452,452,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][902]	= settr(2584,0,903,453,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][903]	= settr(2585,0,911,454,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][911] = settr(2593,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2593,2,905,0,0,"ATOMIC", 0, 2, 0);
	trans[1][905]	= settr(2587,4,913,455,455,"printf('\\n\\n')", 0, 2, 0); /* m: 906 -> 0,913 */
	reached1[906] = 1;
	trans[1][906]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][907]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][908]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][909]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][910]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][913] = settr(2595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2595,0,912,0,0,"sub-sequence", 0, 2, 0);
	trans[1][912]	= settr(2594,0,974,456,456,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][972]	= settr(2654,0,974,1,0,".(goto)", 0, 2, 0);
	trans[1][915]	= settr(2597,0,938,457,0,"((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][938] = settr(2620,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2620,0,922,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][922] = settr(2604,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2604,2,916,0,0,"ATOMIC", 0, 2, 0);
	trans[1][916]	= settr(2598,0,927,458,458,"printf('\\n\\n')", 0, 2, 0); /* m: 917 -> 0,927 */
	reached1[917] = 1;
	trans[1][917]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][918]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][919]	= settr(0,0,0,0,0,"printf('<type>EXAM</type>\\n')",0,0,0);
	trans[1][920]	= settr(0,0,0,0,0,"printf('<status>timeout</status>\\n')",0,0,0);
	trans[1][921]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][923]	= settr(0,0,0,0,0,"printf('Exam -- timeout')",0,0,0);
	T = trans[ 1][927] = settr(2609,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2609,0,924,0,0,"sub-sequence", 0, 2, 0);
	trans[1][924]	= settr(2606,0,925,459,459,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][925]	= settr(2607,0,926,460,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][926]	= settr(2608,0,934,461,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][934] = settr(2616,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2616,2,928,0,0,"ATOMIC", 0, 2, 0);
	trans[1][928]	= settr(2610,4,935,462,462,"printf('\\n\\n')", 0, 2, 0); /* m: 929 -> 0,935 */
	reached1[929] = 1;
	trans[1][929]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][930]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][931]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][932]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][933]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][935]	= settr(2617,0,937,463,463,"fail = 1", 1, 2, 0);
	T = trans[ 1][937] = settr(2619,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2619,0,936,0,0,"sub-sequence", 0, 2, 0);
	trans[1][936]	= settr(2618,0,974,464,464,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][939]	= settr(2621,0,962,465,0,"((((EXAM_lo.oblig==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==LF)==1)))", 1, 2, 0);
	T = trans[ 1][962] = settr(2644,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2644,0,946,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][946] = settr(2628,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2628,2,940,0,0,"ATOMIC", 0, 2, 0);
	trans[1][940]	= settr(2622,0,951,466,466,"printf('\\n\\n')", 0, 2, 0); /* m: 941 -> 0,951 */
	reached1[941] = 1;
	trans[1][941]	= settr(0,0,0,0,0,"printf('<originator>STUDENT</originator>\\n')",0,0,0);
	trans[1][942]	= settr(0,0,0,0,0,"printf('<responder>LMS</responder>\\n')",0,0,0);
	trans[1][943]	= settr(0,0,0,0,0,"printf('<type>EXAM</type>\\n')",0,0,0);
	trans[1][944]	= settr(0,0,0,0,0,"printf('<status>Learning Fail</status>\\n')",0,0,0);
	trans[1][945]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][947]	= settr(0,0,0,0,0,"printf('Exam -- fail')",0,0,0);
	T = trans[ 1][951] = settr(2633,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2633,0,948,0,0,"sub-sequence", 0, 2, 0);
	trans[1][948]	= settr(2630,0,949,467,467,"EXAM_lo.oblig = 0", 1, 2, 0);
	trans[1][949]	= settr(2631,0,950,468,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.prohib==1))))", 1, 2, 0);
	trans[1][950]	= settr(2632,0,958,469,0,"assert(!(((EXAM_lo.oblig==1)&&(EXAM_lo.right==1))))", 1, 2, 0);
	T = trans[ 1][958] = settr(2640,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(2640,2,952,0,0,"ATOMIC", 0, 2, 0);
	trans[1][952]	= settr(2634,4,959,470,470,"printf('\\n\\n')", 0, 2, 0); /* m: 953 -> 0,959 */
	reached1[953] = 1;
	trans[1][953]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][954]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][955]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][956]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][957]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][959]	= settr(2641,0,961,471,471,"fail = 1", 1, 2, 0);
	T = trans[ 1][961] = settr(2643,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2643,0,960,0,0,"sub-sequence", 0, 2, 0);
	trans[1][960]	= settr(2642,0,974,472,472,"CRM2LEG!8,2", 1, 4, 0);
	trans[1][963]	= settr(2645,0,967,473,0,"((((EXAM_lo.prohib==1)&&((EXAM_lo.role_pl==STUDENT)==1))&&((EXAM_lo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][967] = settr(2649,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2649,0,964,0,0,"sub-sequence", 0, 2, 0);
	trans[1][964]	= settr(2646,0,966,474,0,"printf('Prohibited action')", 0, 2, 0);
	T = trans[ 1][966] = settr(2648,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2648,0,965,0,0,"sub-sequence", 0, 2, 0);
	trans[1][965]	= settr(2647,0,974,475,475,"CRM2LEG!7,5", 1, 4, 0);
	trans[1][968]	= settr(2650,0,970,2,0,"else", 0, 2, 0);
	T = trans[ 1][970] = settr(2652,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(2652,0,969,0,0,"sub-sequence", 0, 2, 0);
	trans[1][969]	= settr(2651,0,974,476,476,"CRM2LEG!6,5", 1, 4, 0);
	trans[1][976]	= settr(2658,0,977,1,0,"break", 0, 2, 0);
	trans[1][977]	= settr(2659,0,0,477,477,"-end-", 0, 3500, 0);

	/* proctype 0: LEG */

	trans[0] = (Trans **) emalloc(1684*sizeof(Trans *));

	T = trans[ 0][115] = settr(114,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(114,0,2,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][2] = settr(1,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1,0,1,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1]	= settr(0,0,3,478,478,"cntttr = 0", 1, 2, 0);
	trans[0][3]	= settr(2,0,5,479,479,"STUDENTexTrace = 0", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4,0,4,0,0,"sub-sequence", 0, 2, 0);
	trans[0][4]	= settr(3,0,6,480,480,"cntttr = 0", 1, 2, 0);
	trans[0][6]	= settr(5,0,15,481,481,"LMSexTrace = 0", 1, 2, 0);
	T = trans[ 0][15] = settr(14,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(14,0,14,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][14]	= settr(13,32,24,482,482,"D_STEP174", 1, 2, 0);
	T = trans[ 0][24] = settr(23,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(23,0,23,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][23]	= settr(22,32,33,483,483,"D_STEP174", 1, 2, 0);
	T = trans[ 0][33] = settr(32,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(32,0,32,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][32]	= settr(31,32,42,484,484,"D_STEP174", 1, 2, 0);
	T = trans[ 0][42] = settr(41,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(41,0,41,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][41]	= settr(40,32,51,485,485,"D_STEP174", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(50,0,50,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][50]	= settr(49,32,60,486,486,"D_STEP174", 1, 2, 0);
	T = trans[ 0][60] = settr(59,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(59,0,59,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][59]	= settr(58,32,69,487,487,"D_STEP174", 1, 2, 0);
	T = trans[ 0][69] = settr(68,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(68,0,68,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][68]	= settr(67,32,78,488,488,"D_STEP174", 1, 2, 0);
	T = trans[ 0][78] = settr(77,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(77,0,77,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][77]	= settr(76,32,87,489,489,"D_STEP174", 1, 2, 0);
	T = trans[ 0][87] = settr(86,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(86,0,86,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][86]	= settr(85,32,96,490,490,"D_STEP174", 1, 2, 0);
	T = trans[ 0][96] = settr(95,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(95,0,95,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][95]	= settr(94,32,105,491,491,"D_STEP174", 1, 2, 0);
	T = trans[ 0][105] = settr(104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(104,0,104,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][104]	= settr(103,32,114,492,492,"D_STEP174", 1, 2, 0);
	T = trans[ 0][114] = settr(113,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(113,0,113,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][113]	= settr(112,32,1680,493,493,"D_STEP174", 1, 2, 0);
	trans[0][1681]	= settr(1680,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[0][1680] = settr(1679,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,116,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,162,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,208,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,300,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,346,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,438,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,484,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,576,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,622,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,668,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,714,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,760,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,852,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,898,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,990,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1036,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1128,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1174,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1220,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1266,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1312,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1404,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1450,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1542,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1679,0,1588,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1679,0,1634,0,0,"DO", 0, 2, 0);
	trans[0][116]	= settr(115,0,117,494,0,"((((START_lo.right==1)||(START_lo.oblig==1))||(START_lo.prohib==1)))", 1, 2, 0);
	trans[0][117]	= settr(116,0,119,495,495,"START_lo.status = S", 1, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(118,0,118,0,0,"sub-sequence", 0, 2, 0);
	trans[0][118]	= settr(117,0,161,496,496,"LEG2CRM!17,16", 1, 3, 0);
	T = trans[ 0][161] = settr(160,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(160,0,159,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][159] = settr(158,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,121,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,154,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(158,0,157,0,0,"IF", 0, 2, 0);
	T = trans[ 0][121] = settr(120,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(120,0,120,0,0,"sub-sequence", 0, 2, 0);
	trans[0][120]	= settr(119,0,122,497,497,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][122]	= settr(121,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][160]	= settr(159,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(123,0,123,0,0,"sub-sequence", 0, 2, 0);
	trans[0][123]	= settr(122,0,125,498,498,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][125]	= settr(124,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][127] = settr(126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(126,0,126,0,0,"sub-sequence", 0, 2, 0);
	trans[0][126]	= settr(125,0,128,499,499,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][128]	= settr(127,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][130] = settr(129,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(129,0,129,0,0,"sub-sequence", 0, 2, 0);
	trans[0][129]	= settr(128,0,131,500,500,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][131]	= settr(130,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][133] = settr(132,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(132,0,132,0,0,"sub-sequence", 0, 2, 0);
	trans[0][132]	= settr(131,0,115,501,501,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][134]	= settr(133,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][136] = settr(135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(135,0,135,0,0,"sub-sequence", 0, 2, 0);
	trans[0][135]	= settr(134,0,115,502,502,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][137]	= settr(136,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][139] = settr(138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(138,0,138,0,0,"sub-sequence", 0, 2, 0);
	trans[0][138]	= settr(137,0,115,503,503,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][140]	= settr(139,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][142] = settr(141,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(141,0,141,0,0,"sub-sequence", 0, 2, 0);
	trans[0][141]	= settr(140,0,115,504,504,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][143]	= settr(142,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][145] = settr(144,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(144,0,144,0,0,"sub-sequence", 0, 2, 0);
	trans[0][144]	= settr(143,0,115,505,505,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][146]	= settr(145,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][148] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,147,0,0,"sub-sequence", 0, 2, 0);
	trans[0][147]	= settr(146,0,115,506,506,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][149]	= settr(148,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][151] = settr(150,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(150,0,150,0,0,"sub-sequence", 0, 2, 0);
	trans[0][150]	= settr(149,0,1680,507,507,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][152]	= settr(151,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][154] = settr(153,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(153,0,153,0,0,"sub-sequence", 0, 2, 0);
	trans[0][153]	= settr(152,0,1680,508,508,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][155]	= settr(154,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][157] = settr(156,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(156,0,156,0,0,"sub-sequence", 0, 2, 0);
	trans[0][156]	= settr(155,0,1680,509,509,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][158]	= settr(157,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][162]	= settr(161,0,163,510,0,"((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))", 1, 2, 0);
	trans[0][163]	= settr(162,0,165,511,511,"L1_lo.status = S", 1, 2, 0);
	T = trans[ 0][165] = settr(164,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(164,0,164,0,0,"sub-sequence", 0, 2, 0);
	trans[0][164]	= settr(163,0,207,512,512,"LEG2CRM!18,16", 1, 3, 0);
	T = trans[ 0][207] = settr(206,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(206,0,205,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][205] = settr(204,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,167,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,173,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,176,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,191,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,194,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(204,0,200,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(204,0,203,0,0,"IF", 0, 2, 0);
	T = trans[ 0][167] = settr(166,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(166,0,166,0,0,"sub-sequence", 0, 2, 0);
	trans[0][166]	= settr(165,0,168,513,513,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][168]	= settr(167,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][206]	= settr(205,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][170] = settr(169,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(169,0,169,0,0,"sub-sequence", 0, 2, 0);
	trans[0][169]	= settr(168,0,171,514,514,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][171]	= settr(170,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][173] = settr(172,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(172,0,172,0,0,"sub-sequence", 0, 2, 0);
	trans[0][172]	= settr(171,0,174,515,515,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][174]	= settr(173,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][176] = settr(175,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(175,0,175,0,0,"sub-sequence", 0, 2, 0);
	trans[0][175]	= settr(174,0,177,516,516,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][177]	= settr(176,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][179] = settr(178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(178,0,178,0,0,"sub-sequence", 0, 2, 0);
	trans[0][178]	= settr(177,0,115,517,517,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][180]	= settr(179,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][182] = settr(181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(181,0,181,0,0,"sub-sequence", 0, 2, 0);
	trans[0][181]	= settr(180,0,115,518,518,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][183]	= settr(182,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][185] = settr(184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(184,0,184,0,0,"sub-sequence", 0, 2, 0);
	trans[0][184]	= settr(183,0,115,519,519,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][186]	= settr(185,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][188] = settr(187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(187,0,187,0,0,"sub-sequence", 0, 2, 0);
	trans[0][187]	= settr(186,0,115,520,520,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][189]	= settr(188,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][191] = settr(190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(190,0,190,0,0,"sub-sequence", 0, 2, 0);
	trans[0][190]	= settr(189,0,115,521,521,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][192]	= settr(191,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][194] = settr(193,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(193,0,193,0,0,"sub-sequence", 0, 2, 0);
	trans[0][193]	= settr(192,0,115,522,522,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][195]	= settr(194,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][197] = settr(196,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(196,0,196,0,0,"sub-sequence", 0, 2, 0);
	trans[0][196]	= settr(195,0,1680,523,523,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][198]	= settr(197,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][200] = settr(199,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(199,0,199,0,0,"sub-sequence", 0, 2, 0);
	trans[0][199]	= settr(198,0,1680,524,524,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][201]	= settr(200,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][203] = settr(202,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(202,0,202,0,0,"sub-sequence", 0, 2, 0);
	trans[0][202]	= settr(201,0,1680,525,525,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][204]	= settr(203,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][208]	= settr(207,0,209,526,0,"((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))", 1, 2, 0);
	trans[0][209]	= settr(208,0,211,527,527,"L1_lo.status = TF", 1, 2, 0);
	T = trans[ 0][211] = settr(210,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(210,0,210,0,0,"sub-sequence", 0, 2, 0);
	trans[0][210]	= settr(209,0,253,528,528,"LEG2CRM!18,14", 1, 3, 0);
	T = trans[ 0][253] = settr(252,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(252,0,251,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][251] = settr(250,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,213,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,216,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,219,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,222,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(250,0,246,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(250,0,249,0,0,"IF", 0, 2, 0);
	T = trans[ 0][213] = settr(212,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(212,0,212,0,0,"sub-sequence", 0, 2, 0);
	trans[0][212]	= settr(211,0,214,529,529,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][214]	= settr(213,0,254,1,0,"(1)", 0, 2, 0);
	trans[0][252]	= settr(251,0,254,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][216] = settr(215,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(215,0,215,0,0,"sub-sequence", 0, 2, 0);
	trans[0][215]	= settr(214,0,217,530,530,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][217]	= settr(216,0,254,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][219] = settr(218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(218,0,218,0,0,"sub-sequence", 0, 2, 0);
	trans[0][218]	= settr(217,0,220,531,531,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][220]	= settr(219,0,254,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][222] = settr(221,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(221,0,221,0,0,"sub-sequence", 0, 2, 0);
	trans[0][221]	= settr(220,0,223,532,532,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][223]	= settr(222,0,254,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][225] = settr(224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(224,0,224,0,0,"sub-sequence", 0, 2, 0);
	trans[0][224]	= settr(223,0,115,533,533,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][226]	= settr(225,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][228] = settr(227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(227,0,227,0,0,"sub-sequence", 0, 2, 0);
	trans[0][227]	= settr(226,0,115,534,534,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][229]	= settr(228,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][231] = settr(230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(230,0,230,0,0,"sub-sequence", 0, 2, 0);
	trans[0][230]	= settr(229,0,115,535,535,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][232]	= settr(231,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][234] = settr(233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(233,0,233,0,0,"sub-sequence", 0, 2, 0);
	trans[0][233]	= settr(232,0,115,536,536,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][235]	= settr(234,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][237] = settr(236,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(236,0,236,0,0,"sub-sequence", 0, 2, 0);
	trans[0][236]	= settr(235,0,115,537,537,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][238]	= settr(237,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][240] = settr(239,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(239,0,239,0,0,"sub-sequence", 0, 2, 0);
	trans[0][239]	= settr(238,0,115,538,538,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][241]	= settr(240,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][243] = settr(242,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(242,0,242,0,0,"sub-sequence", 0, 2, 0);
	trans[0][242]	= settr(241,0,1680,539,539,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][244]	= settr(243,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][246] = settr(245,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(245,0,245,0,0,"sub-sequence", 0, 2, 0);
	trans[0][245]	= settr(244,0,1680,540,540,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][247]	= settr(246,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][249] = settr(248,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(248,0,248,0,0,"sub-sequence", 0, 2, 0);
	trans[0][248]	= settr(247,0,1680,541,541,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][250]	= settr(249,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][254]	= settr(253,0,255,542,0,"((((L1_lo.right==1)||(L1_lo.oblig==1))||(L1_lo.prohib==1)))", 1, 2, 0);
	trans[0][255]	= settr(254,0,257,543,543,"L1_lo.status = S", 1, 2, 0);
	T = trans[ 0][257] = settr(256,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(256,0,256,0,0,"sub-sequence", 0, 2, 0);
	trans[0][256]	= settr(255,0,299,544,544,"LEG2CRM!18,16", 1, 3, 0);
	T = trans[ 0][299] = settr(298,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(298,0,297,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][297] = settr(296,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,265,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,268,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(296,0,292,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(296,0,295,0,0,"IF", 0, 2, 0);
	T = trans[ 0][259] = settr(258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(258,0,258,0,0,"sub-sequence", 0, 2, 0);
	trans[0][258]	= settr(257,0,260,545,545,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][260]	= settr(259,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][298]	= settr(297,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][262] = settr(261,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(261,0,261,0,0,"sub-sequence", 0, 2, 0);
	trans[0][261]	= settr(260,0,263,546,546,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][263]	= settr(262,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][265] = settr(264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(264,0,264,0,0,"sub-sequence", 0, 2, 0);
	trans[0][264]	= settr(263,0,266,547,547,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][266]	= settr(265,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][268] = settr(267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(267,0,267,0,0,"sub-sequence", 0, 2, 0);
	trans[0][267]	= settr(266,0,269,548,548,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][269]	= settr(268,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][271] = settr(270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(270,0,270,0,0,"sub-sequence", 0, 2, 0);
	trans[0][270]	= settr(269,0,115,549,549,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][272]	= settr(271,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][274] = settr(273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(273,0,273,0,0,"sub-sequence", 0, 2, 0);
	trans[0][273]	= settr(272,0,115,550,550,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][275]	= settr(274,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][277] = settr(276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(276,0,276,0,0,"sub-sequence", 0, 2, 0);
	trans[0][276]	= settr(275,0,115,551,551,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][278]	= settr(277,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][280] = settr(279,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(279,0,279,0,0,"sub-sequence", 0, 2, 0);
	trans[0][279]	= settr(278,0,115,552,552,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][281]	= settr(280,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][283] = settr(282,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(282,0,282,0,0,"sub-sequence", 0, 2, 0);
	trans[0][282]	= settr(281,0,115,553,553,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][284]	= settr(283,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][286] = settr(285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(285,0,285,0,0,"sub-sequence", 0, 2, 0);
	trans[0][285]	= settr(284,0,115,554,554,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][287]	= settr(286,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][289] = settr(288,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(288,0,288,0,0,"sub-sequence", 0, 2, 0);
	trans[0][288]	= settr(287,0,1680,555,555,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][290]	= settr(289,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][292] = settr(291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(291,0,291,0,0,"sub-sequence", 0, 2, 0);
	trans[0][291]	= settr(290,0,1680,556,556,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][293]	= settr(292,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][295] = settr(294,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(294,0,294,0,0,"sub-sequence", 0, 2, 0);
	trans[0][294]	= settr(293,0,1680,557,557,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][296]	= settr(295,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][300]	= settr(299,0,301,558,0,"((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))", 1, 2, 0);
	trans[0][301]	= settr(300,0,303,559,559,"L2_lo.status = S", 1, 2, 0);
	T = trans[ 0][303] = settr(302,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(302,0,302,0,0,"sub-sequence", 0, 2, 0);
	trans[0][302]	= settr(301,0,345,560,560,"LEG2CRM!19,16", 1, 3, 0);
	T = trans[ 0][345] = settr(344,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(344,0,343,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][343] = settr(342,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,305,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,308,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,311,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,314,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,332,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(342,0,338,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(342,0,341,0,0,"IF", 0, 2, 0);
	T = trans[ 0][305] = settr(304,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(304,0,304,0,0,"sub-sequence", 0, 2, 0);
	trans[0][304]	= settr(303,0,306,561,561,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][306]	= settr(305,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][344]	= settr(343,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][308] = settr(307,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(307,0,307,0,0,"sub-sequence", 0, 2, 0);
	trans[0][307]	= settr(306,0,309,562,562,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][309]	= settr(308,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][311] = settr(310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(310,0,310,0,0,"sub-sequence", 0, 2, 0);
	trans[0][310]	= settr(309,0,312,563,563,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][312]	= settr(311,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][314] = settr(313,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(313,0,313,0,0,"sub-sequence", 0, 2, 0);
	trans[0][313]	= settr(312,0,315,564,564,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][315]	= settr(314,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][317] = settr(316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(316,0,316,0,0,"sub-sequence", 0, 2, 0);
	trans[0][316]	= settr(315,0,115,565,565,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][318]	= settr(317,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][320] = settr(319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(319,0,319,0,0,"sub-sequence", 0, 2, 0);
	trans[0][319]	= settr(318,0,115,566,566,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][321]	= settr(320,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][323] = settr(322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(322,0,322,0,0,"sub-sequence", 0, 2, 0);
	trans[0][322]	= settr(321,0,115,567,567,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][324]	= settr(323,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][326] = settr(325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(325,0,325,0,0,"sub-sequence", 0, 2, 0);
	trans[0][325]	= settr(324,0,115,568,568,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][327]	= settr(326,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][329] = settr(328,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(328,0,328,0,0,"sub-sequence", 0, 2, 0);
	trans[0][328]	= settr(327,0,115,569,569,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][330]	= settr(329,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][332] = settr(331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(331,0,331,0,0,"sub-sequence", 0, 2, 0);
	trans[0][331]	= settr(330,0,115,570,570,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][333]	= settr(332,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][335] = settr(334,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(334,0,334,0,0,"sub-sequence", 0, 2, 0);
	trans[0][334]	= settr(333,0,1680,571,571,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][336]	= settr(335,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][338] = settr(337,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(337,0,337,0,0,"sub-sequence", 0, 2, 0);
	trans[0][337]	= settr(336,0,1680,572,572,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][339]	= settr(338,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][341] = settr(340,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(340,0,340,0,0,"sub-sequence", 0, 2, 0);
	trans[0][340]	= settr(339,0,1680,573,573,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][342]	= settr(341,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][346]	= settr(345,0,347,574,0,"((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))", 1, 2, 0);
	trans[0][347]	= settr(346,0,349,575,575,"L2_lo.status = TF", 1, 2, 0);
	T = trans[ 0][349] = settr(348,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(348,0,348,0,0,"sub-sequence", 0, 2, 0);
	trans[0][348]	= settr(347,0,391,576,576,"LEG2CRM!19,14", 1, 3, 0);
	T = trans[ 0][391] = settr(390,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(390,0,389,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][389] = settr(388,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,351,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,354,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,357,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,360,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(388,0,384,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(388,0,387,0,0,"IF", 0, 2, 0);
	T = trans[ 0][351] = settr(350,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(350,0,350,0,0,"sub-sequence", 0, 2, 0);
	trans[0][350]	= settr(349,0,352,577,577,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][352]	= settr(351,0,392,1,0,"(1)", 0, 2, 0);
	trans[0][390]	= settr(389,0,392,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][354] = settr(353,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(353,0,353,0,0,"sub-sequence", 0, 2, 0);
	trans[0][353]	= settr(352,0,355,578,578,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][355]	= settr(354,0,392,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][357] = settr(356,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(356,0,356,0,0,"sub-sequence", 0, 2, 0);
	trans[0][356]	= settr(355,0,358,579,579,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][358]	= settr(357,0,392,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][360] = settr(359,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(359,0,359,0,0,"sub-sequence", 0, 2, 0);
	trans[0][359]	= settr(358,0,361,580,580,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][361]	= settr(360,0,392,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][363] = settr(362,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(362,0,362,0,0,"sub-sequence", 0, 2, 0);
	trans[0][362]	= settr(361,0,115,581,581,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][364]	= settr(363,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][366] = settr(365,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(365,0,365,0,0,"sub-sequence", 0, 2, 0);
	trans[0][365]	= settr(364,0,115,582,582,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][367]	= settr(366,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][369] = settr(368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(368,0,368,0,0,"sub-sequence", 0, 2, 0);
	trans[0][368]	= settr(367,0,115,583,583,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][370]	= settr(369,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][372] = settr(371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(371,0,371,0,0,"sub-sequence", 0, 2, 0);
	trans[0][371]	= settr(370,0,115,584,584,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][373]	= settr(372,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][375] = settr(374,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(374,0,374,0,0,"sub-sequence", 0, 2, 0);
	trans[0][374]	= settr(373,0,115,585,585,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][376]	= settr(375,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][378] = settr(377,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(377,0,377,0,0,"sub-sequence", 0, 2, 0);
	trans[0][377]	= settr(376,0,115,586,586,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][379]	= settr(378,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][381] = settr(380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(380,0,380,0,0,"sub-sequence", 0, 2, 0);
	trans[0][380]	= settr(379,0,1680,587,587,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][382]	= settr(381,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][384] = settr(383,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(383,0,383,0,0,"sub-sequence", 0, 2, 0);
	trans[0][383]	= settr(382,0,1680,588,588,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][385]	= settr(384,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][387] = settr(386,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(386,0,386,0,0,"sub-sequence", 0, 2, 0);
	trans[0][386]	= settr(385,0,1680,589,589,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][388]	= settr(387,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][392]	= settr(391,0,393,590,0,"((((L2_lo.right==1)||(L2_lo.oblig==1))||(L2_lo.prohib==1)))", 1, 2, 0);
	trans[0][393]	= settr(392,0,395,591,591,"L2_lo.status = S", 1, 2, 0);
	T = trans[ 0][395] = settr(394,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(394,0,394,0,0,"sub-sequence", 0, 2, 0);
	trans[0][394]	= settr(393,0,437,592,592,"LEG2CRM!19,16", 1, 3, 0);
	T = trans[ 0][437] = settr(436,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(436,0,435,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][435] = settr(434,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,397,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,400,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(434,0,430,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(434,0,433,0,0,"IF", 0, 2, 0);
	T = trans[ 0][397] = settr(396,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(396,0,396,0,0,"sub-sequence", 0, 2, 0);
	trans[0][396]	= settr(395,0,398,593,593,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][398]	= settr(397,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][436]	= settr(435,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][400] = settr(399,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(399,0,399,0,0,"sub-sequence", 0, 2, 0);
	trans[0][399]	= settr(398,0,401,594,594,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][401]	= settr(400,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][403] = settr(402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(402,0,402,0,0,"sub-sequence", 0, 2, 0);
	trans[0][402]	= settr(401,0,404,595,595,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][404]	= settr(403,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][406] = settr(405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(405,0,405,0,0,"sub-sequence", 0, 2, 0);
	trans[0][405]	= settr(404,0,407,596,596,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][407]	= settr(406,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][409] = settr(408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(408,0,408,0,0,"sub-sequence", 0, 2, 0);
	trans[0][408]	= settr(407,0,115,597,597,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][410]	= settr(409,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][412] = settr(411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(411,0,411,0,0,"sub-sequence", 0, 2, 0);
	trans[0][411]	= settr(410,0,115,598,598,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][413]	= settr(412,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][415] = settr(414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(414,0,414,0,0,"sub-sequence", 0, 2, 0);
	trans[0][414]	= settr(413,0,115,599,599,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][416]	= settr(415,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][418] = settr(417,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(417,0,417,0,0,"sub-sequence", 0, 2, 0);
	trans[0][417]	= settr(416,0,115,600,600,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][419]	= settr(418,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][421] = settr(420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(420,0,420,0,0,"sub-sequence", 0, 2, 0);
	trans[0][420]	= settr(419,0,115,601,601,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][422]	= settr(421,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][424] = settr(423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(423,0,423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][423]	= settr(422,0,115,602,602,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][425]	= settr(424,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][427] = settr(426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(426,0,426,0,0,"sub-sequence", 0, 2, 0);
	trans[0][426]	= settr(425,0,1680,603,603,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][428]	= settr(427,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][430] = settr(429,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(429,0,429,0,0,"sub-sequence", 0, 2, 0);
	trans[0][429]	= settr(428,0,1680,604,604,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][431]	= settr(430,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][433] = settr(432,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(432,0,432,0,0,"sub-sequence", 0, 2, 0);
	trans[0][432]	= settr(431,0,1680,605,605,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][434]	= settr(433,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][438]	= settr(437,0,439,606,0,"((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))", 1, 2, 0);
	trans[0][439]	= settr(438,0,441,607,607,"L3_lo.status = S", 1, 2, 0);
	T = trans[ 0][441] = settr(440,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(440,0,440,0,0,"sub-sequence", 0, 2, 0);
	trans[0][440]	= settr(439,0,483,608,608,"LEG2CRM!20,16", 1, 3, 0);
	T = trans[ 0][483] = settr(482,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(482,0,481,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][481] = settr(480,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,443,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,446,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,449,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,452,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(480,0,476,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(480,0,479,0,0,"IF", 0, 2, 0);
	T = trans[ 0][443] = settr(442,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(442,0,442,0,0,"sub-sequence", 0, 2, 0);
	trans[0][442]	= settr(441,0,444,609,609,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][444]	= settr(443,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][482]	= settr(481,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][446] = settr(445,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(445,0,445,0,0,"sub-sequence", 0, 2, 0);
	trans[0][445]	= settr(444,0,447,610,610,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][447]	= settr(446,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][449] = settr(448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(448,0,448,0,0,"sub-sequence", 0, 2, 0);
	trans[0][448]	= settr(447,0,450,611,611,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][450]	= settr(449,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][452] = settr(451,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(451,0,451,0,0,"sub-sequence", 0, 2, 0);
	trans[0][451]	= settr(450,0,453,612,612,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][453]	= settr(452,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][455] = settr(454,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(454,0,454,0,0,"sub-sequence", 0, 2, 0);
	trans[0][454]	= settr(453,0,115,613,613,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][456]	= settr(455,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][458] = settr(457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(457,0,457,0,0,"sub-sequence", 0, 2, 0);
	trans[0][457]	= settr(456,0,115,614,614,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][459]	= settr(458,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][461] = settr(460,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(460,0,460,0,0,"sub-sequence", 0, 2, 0);
	trans[0][460]	= settr(459,0,115,615,615,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][462]	= settr(461,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][464] = settr(463,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(463,0,463,0,0,"sub-sequence", 0, 2, 0);
	trans[0][463]	= settr(462,0,115,616,616,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][465]	= settr(464,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][467] = settr(466,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(466,0,466,0,0,"sub-sequence", 0, 2, 0);
	trans[0][466]	= settr(465,0,115,617,617,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][468]	= settr(467,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][470] = settr(469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(469,0,469,0,0,"sub-sequence", 0, 2, 0);
	trans[0][469]	= settr(468,0,115,618,618,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][471]	= settr(470,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][473] = settr(472,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(472,0,472,0,0,"sub-sequence", 0, 2, 0);
	trans[0][472]	= settr(471,0,1680,619,619,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][474]	= settr(473,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][476] = settr(475,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(475,0,475,0,0,"sub-sequence", 0, 2, 0);
	trans[0][475]	= settr(474,0,1680,620,620,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][477]	= settr(476,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][479] = settr(478,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(478,0,478,0,0,"sub-sequence", 0, 2, 0);
	trans[0][478]	= settr(477,0,1680,621,621,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][480]	= settr(479,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][484]	= settr(483,0,485,622,0,"((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))", 1, 2, 0);
	trans[0][485]	= settr(484,0,487,623,623,"L3_lo.status = TF", 1, 2, 0);
	T = trans[ 0][487] = settr(486,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(486,0,486,0,0,"sub-sequence", 0, 2, 0);
	trans[0][486]	= settr(485,0,529,624,624,"LEG2CRM!20,14", 1, 3, 0);
	T = trans[ 0][529] = settr(528,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(528,0,527,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][527] = settr(526,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,489,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,492,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,498,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,522,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(526,0,525,0,0,"IF", 0, 2, 0);
	T = trans[ 0][489] = settr(488,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(488,0,488,0,0,"sub-sequence", 0, 2, 0);
	trans[0][488]	= settr(487,0,490,625,625,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][490]	= settr(489,0,530,1,0,"(1)", 0, 2, 0);
	trans[0][528]	= settr(527,0,530,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][492] = settr(491,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(491,0,491,0,0,"sub-sequence", 0, 2, 0);
	trans[0][491]	= settr(490,0,493,626,626,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][493]	= settr(492,0,530,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][495] = settr(494,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(494,0,494,0,0,"sub-sequence", 0, 2, 0);
	trans[0][494]	= settr(493,0,496,627,627,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][496]	= settr(495,0,530,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][498] = settr(497,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(497,0,497,0,0,"sub-sequence", 0, 2, 0);
	trans[0][497]	= settr(496,0,499,628,628,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][499]	= settr(498,0,530,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][501] = settr(500,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(500,0,500,0,0,"sub-sequence", 0, 2, 0);
	trans[0][500]	= settr(499,0,115,629,629,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][502]	= settr(501,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][504] = settr(503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(503,0,503,0,0,"sub-sequence", 0, 2, 0);
	trans[0][503]	= settr(502,0,115,630,630,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][505]	= settr(504,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][507] = settr(506,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(506,0,506,0,0,"sub-sequence", 0, 2, 0);
	trans[0][506]	= settr(505,0,115,631,631,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][508]	= settr(507,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][510] = settr(509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(509,0,509,0,0,"sub-sequence", 0, 2, 0);
	trans[0][509]	= settr(508,0,115,632,632,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][511]	= settr(510,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][513] = settr(512,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(512,0,512,0,0,"sub-sequence", 0, 2, 0);
	trans[0][512]	= settr(511,0,115,633,633,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][514]	= settr(513,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][516] = settr(515,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(515,0,515,0,0,"sub-sequence", 0, 2, 0);
	trans[0][515]	= settr(514,0,115,634,634,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][517]	= settr(516,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][519] = settr(518,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(518,0,518,0,0,"sub-sequence", 0, 2, 0);
	trans[0][518]	= settr(517,0,1680,635,635,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][520]	= settr(519,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][522] = settr(521,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(521,0,521,0,0,"sub-sequence", 0, 2, 0);
	trans[0][521]	= settr(520,0,1680,636,636,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][523]	= settr(522,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][525] = settr(524,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(524,0,524,0,0,"sub-sequence", 0, 2, 0);
	trans[0][524]	= settr(523,0,1680,637,637,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][526]	= settr(525,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][530]	= settr(529,0,531,638,0,"((((L3_lo.right==1)||(L3_lo.oblig==1))||(L3_lo.prohib==1)))", 1, 2, 0);
	trans[0][531]	= settr(530,0,533,639,639,"L3_lo.status = S", 1, 2, 0);
	T = trans[ 0][533] = settr(532,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(532,0,532,0,0,"sub-sequence", 0, 2, 0);
	trans[0][532]	= settr(531,0,575,640,640,"LEG2CRM!20,16", 1, 3, 0);
	T = trans[ 0][575] = settr(574,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(574,0,573,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][573] = settr(572,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,538,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,541,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,544,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,556,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,559,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,562,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(572,0,568,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(572,0,571,0,0,"IF", 0, 2, 0);
	T = trans[ 0][535] = settr(534,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(534,0,534,0,0,"sub-sequence", 0, 2, 0);
	trans[0][534]	= settr(533,0,536,641,641,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][536]	= settr(535,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][574]	= settr(573,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][538] = settr(537,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(537,0,537,0,0,"sub-sequence", 0, 2, 0);
	trans[0][537]	= settr(536,0,539,642,642,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][539]	= settr(538,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][541] = settr(540,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(540,0,540,0,0,"sub-sequence", 0, 2, 0);
	trans[0][540]	= settr(539,0,542,643,643,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][542]	= settr(541,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][544] = settr(543,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(543,0,543,0,0,"sub-sequence", 0, 2, 0);
	trans[0][543]	= settr(542,0,545,644,644,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][545]	= settr(544,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][547] = settr(546,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(546,0,546,0,0,"sub-sequence", 0, 2, 0);
	trans[0][546]	= settr(545,0,115,645,645,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][548]	= settr(547,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][550] = settr(549,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(549,0,549,0,0,"sub-sequence", 0, 2, 0);
	trans[0][549]	= settr(548,0,115,646,646,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][551]	= settr(550,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][553] = settr(552,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(552,0,552,0,0,"sub-sequence", 0, 2, 0);
	trans[0][552]	= settr(551,0,115,647,647,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][554]	= settr(553,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][556] = settr(555,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(555,0,555,0,0,"sub-sequence", 0, 2, 0);
	trans[0][555]	= settr(554,0,115,648,648,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][557]	= settr(556,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][559] = settr(558,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(558,0,558,0,0,"sub-sequence", 0, 2, 0);
	trans[0][558]	= settr(557,0,115,649,649,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][560]	= settr(559,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][562] = settr(561,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(561,0,561,0,0,"sub-sequence", 0, 2, 0);
	trans[0][561]	= settr(560,0,115,650,650,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][563]	= settr(562,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][565] = settr(564,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(564,0,564,0,0,"sub-sequence", 0, 2, 0);
	trans[0][564]	= settr(563,0,1680,651,651,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][566]	= settr(565,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][568] = settr(567,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(567,0,567,0,0,"sub-sequence", 0, 2, 0);
	trans[0][567]	= settr(566,0,1680,652,652,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][569]	= settr(568,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][571] = settr(570,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(570,0,570,0,0,"sub-sequence", 0, 2, 0);
	trans[0][570]	= settr(569,0,1680,653,653,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][572]	= settr(571,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][576]	= settr(575,0,577,654,0,"((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))", 1, 2, 0);
	trans[0][577]	= settr(576,0,579,655,655,"CW1_lo.status = S", 1, 2, 0);
	T = trans[ 0][579] = settr(578,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(578,0,578,0,0,"sub-sequence", 0, 2, 0);
	trans[0][578]	= settr(577,0,621,656,656,"LEG2CRM!26,16", 1, 3, 0);
	T = trans[ 0][621] = settr(620,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(620,0,619,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][619] = settr(618,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,581,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,584,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,587,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,590,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(618,0,614,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(618,0,617,0,0,"IF", 0, 2, 0);
	T = trans[ 0][581] = settr(580,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(580,0,580,0,0,"sub-sequence", 0, 2, 0);
	trans[0][580]	= settr(579,0,582,657,657,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][582]	= settr(581,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][620]	= settr(619,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][584] = settr(583,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(583,0,583,0,0,"sub-sequence", 0, 2, 0);
	trans[0][583]	= settr(582,0,585,658,658,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][585]	= settr(584,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][587] = settr(586,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(586,0,586,0,0,"sub-sequence", 0, 2, 0);
	trans[0][586]	= settr(585,0,588,659,659,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][588]	= settr(587,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][590] = settr(589,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(589,0,589,0,0,"sub-sequence", 0, 2, 0);
	trans[0][589]	= settr(588,0,591,660,660,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][591]	= settr(590,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][593] = settr(592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(592,0,592,0,0,"sub-sequence", 0, 2, 0);
	trans[0][592]	= settr(591,0,115,661,661,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][594]	= settr(593,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][596] = settr(595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(595,0,595,0,0,"sub-sequence", 0, 2, 0);
	trans[0][595]	= settr(594,0,115,662,662,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][597]	= settr(596,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][599] = settr(598,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(598,0,598,0,0,"sub-sequence", 0, 2, 0);
	trans[0][598]	= settr(597,0,115,663,663,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][600]	= settr(599,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][602] = settr(601,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(601,0,601,0,0,"sub-sequence", 0, 2, 0);
	trans[0][601]	= settr(600,0,115,664,664,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][603]	= settr(602,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][605] = settr(604,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(604,0,604,0,0,"sub-sequence", 0, 2, 0);
	trans[0][604]	= settr(603,0,115,665,665,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][606]	= settr(605,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][608] = settr(607,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(607,0,607,0,0,"sub-sequence", 0, 2, 0);
	trans[0][607]	= settr(606,0,115,666,666,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][609]	= settr(608,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][611] = settr(610,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(610,0,610,0,0,"sub-sequence", 0, 2, 0);
	trans[0][610]	= settr(609,0,1680,667,667,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][612]	= settr(611,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][614] = settr(613,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(613,0,613,0,0,"sub-sequence", 0, 2, 0);
	trans[0][613]	= settr(612,0,1680,668,668,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][615]	= settr(614,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][617] = settr(616,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(616,0,616,0,0,"sub-sequence", 0, 2, 0);
	trans[0][616]	= settr(615,0,1680,669,669,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][618]	= settr(617,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][622]	= settr(621,0,623,670,0,"((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))", 1, 2, 0);
	trans[0][623]	= settr(622,0,625,671,671,"CW1_lo.status = TO", 1, 2, 0);
	T = trans[ 0][625] = settr(624,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(624,0,624,0,0,"sub-sequence", 0, 2, 0);
	trans[0][624]	= settr(623,0,667,672,672,"LEG2CRM!26,13", 1, 3, 0);
	T = trans[ 0][667] = settr(666,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(666,0,665,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][665] = settr(664,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,627,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,630,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,633,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,636,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,651,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(664,0,660,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(664,0,663,0,0,"IF", 0, 2, 0);
	T = trans[ 0][627] = settr(626,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(626,0,626,0,0,"sub-sequence", 0, 2, 0);
	trans[0][626]	= settr(625,0,628,673,673,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][628]	= settr(627,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][666]	= settr(665,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][630] = settr(629,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(629,0,629,0,0,"sub-sequence", 0, 2, 0);
	trans[0][629]	= settr(628,0,631,674,674,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][631]	= settr(630,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][633] = settr(632,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(632,0,632,0,0,"sub-sequence", 0, 2, 0);
	trans[0][632]	= settr(631,0,634,675,675,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][634]	= settr(633,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][636] = settr(635,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(635,0,635,0,0,"sub-sequence", 0, 2, 0);
	trans[0][635]	= settr(634,0,637,676,676,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][637]	= settr(636,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][639] = settr(638,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(638,0,638,0,0,"sub-sequence", 0, 2, 0);
	trans[0][638]	= settr(637,0,115,677,677,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][640]	= settr(639,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][642] = settr(641,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(641,0,641,0,0,"sub-sequence", 0, 2, 0);
	trans[0][641]	= settr(640,0,115,678,678,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][643]	= settr(642,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][645] = settr(644,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(644,0,644,0,0,"sub-sequence", 0, 2, 0);
	trans[0][644]	= settr(643,0,115,679,679,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][646]	= settr(645,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][648] = settr(647,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(647,0,647,0,0,"sub-sequence", 0, 2, 0);
	trans[0][647]	= settr(646,0,115,680,680,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][649]	= settr(648,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][651] = settr(650,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(650,0,650,0,0,"sub-sequence", 0, 2, 0);
	trans[0][650]	= settr(649,0,115,681,681,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][652]	= settr(651,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][654] = settr(653,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(653,0,653,0,0,"sub-sequence", 0, 2, 0);
	trans[0][653]	= settr(652,0,115,682,682,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][655]	= settr(654,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][657] = settr(656,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(656,0,656,0,0,"sub-sequence", 0, 2, 0);
	trans[0][656]	= settr(655,0,1680,683,683,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][658]	= settr(657,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][660] = settr(659,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(659,0,659,0,0,"sub-sequence", 0, 2, 0);
	trans[0][659]	= settr(658,0,1680,684,684,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][661]	= settr(660,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][663] = settr(662,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(662,0,662,0,0,"sub-sequence", 0, 2, 0);
	trans[0][662]	= settr(661,0,1680,685,685,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][664]	= settr(663,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][668]	= settr(667,0,669,686,0,"((((CW1_lo.right==1)||(CW1_lo.oblig==1))||(CW1_lo.prohib==1)))", 1, 2, 0);
	trans[0][669]	= settr(668,0,671,687,687,"CW1_lo.status = LF", 1, 2, 0);
	T = trans[ 0][671] = settr(670,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(670,0,670,0,0,"sub-sequence", 0, 2, 0);
	trans[0][670]	= settr(669,0,713,688,688,"LEG2CRM!26,15", 1, 3, 0);
	T = trans[ 0][713] = settr(712,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(712,0,711,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][711] = settr(710,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,673,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,676,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,679,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,682,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,685,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,688,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,691,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,694,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,697,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,700,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,703,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(710,0,706,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(710,0,709,0,0,"IF", 0, 2, 0);
	T = trans[ 0][673] = settr(672,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(672,0,672,0,0,"sub-sequence", 0, 2, 0);
	trans[0][672]	= settr(671,0,674,689,689,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][674]	= settr(673,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][712]	= settr(711,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][676] = settr(675,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(675,0,675,0,0,"sub-sequence", 0, 2, 0);
	trans[0][675]	= settr(674,0,677,690,690,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][677]	= settr(676,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][679] = settr(678,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(678,0,678,0,0,"sub-sequence", 0, 2, 0);
	trans[0][678]	= settr(677,0,680,691,691,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][680]	= settr(679,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][682] = settr(681,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(681,0,681,0,0,"sub-sequence", 0, 2, 0);
	trans[0][681]	= settr(680,0,683,692,692,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][683]	= settr(682,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][685] = settr(684,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(684,0,684,0,0,"sub-sequence", 0, 2, 0);
	trans[0][684]	= settr(683,0,115,693,693,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][686]	= settr(685,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][688] = settr(687,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(687,0,687,0,0,"sub-sequence", 0, 2, 0);
	trans[0][687]	= settr(686,0,115,694,694,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][689]	= settr(688,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][691] = settr(690,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(690,0,690,0,0,"sub-sequence", 0, 2, 0);
	trans[0][690]	= settr(689,0,115,695,695,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][692]	= settr(691,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][694] = settr(693,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(693,0,693,0,0,"sub-sequence", 0, 2, 0);
	trans[0][693]	= settr(692,0,115,696,696,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][695]	= settr(694,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][697] = settr(696,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(696,0,696,0,0,"sub-sequence", 0, 2, 0);
	trans[0][696]	= settr(695,0,115,697,697,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][698]	= settr(697,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][700] = settr(699,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(699,0,699,0,0,"sub-sequence", 0, 2, 0);
	trans[0][699]	= settr(698,0,115,698,698,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][701]	= settr(700,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][703] = settr(702,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(702,0,702,0,0,"sub-sequence", 0, 2, 0);
	trans[0][702]	= settr(701,0,1680,699,699,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][704]	= settr(703,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][706] = settr(705,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(705,0,705,0,0,"sub-sequence", 0, 2, 0);
	trans[0][705]	= settr(704,0,1680,700,700,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][707]	= settr(706,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][709] = settr(708,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(708,0,708,0,0,"sub-sequence", 0, 2, 0);
	trans[0][708]	= settr(707,0,1680,701,701,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][710]	= settr(709,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][714]	= settr(713,0,715,702,0,"((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))", 1, 2, 0);
	trans[0][715]	= settr(714,0,717,703,703,"L4_lo.status = S", 1, 2, 0);
	T = trans[ 0][717] = settr(716,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(716,0,716,0,0,"sub-sequence", 0, 2, 0);
	trans[0][716]	= settr(715,0,759,704,704,"LEG2CRM!21,16", 1, 3, 0);
	T = trans[ 0][759] = settr(758,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(758,0,757,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][757] = settr(756,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,719,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,722,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,725,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,728,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,731,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,734,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,737,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,740,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,743,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,746,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,749,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(756,0,752,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(756,0,755,0,0,"IF", 0, 2, 0);
	T = trans[ 0][719] = settr(718,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(718,0,718,0,0,"sub-sequence", 0, 2, 0);
	trans[0][718]	= settr(717,0,720,705,705,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][720]	= settr(719,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][758]	= settr(757,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][722] = settr(721,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(721,0,721,0,0,"sub-sequence", 0, 2, 0);
	trans[0][721]	= settr(720,0,723,706,706,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][723]	= settr(722,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][725] = settr(724,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(724,0,724,0,0,"sub-sequence", 0, 2, 0);
	trans[0][724]	= settr(723,0,726,707,707,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][726]	= settr(725,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][728] = settr(727,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(727,0,727,0,0,"sub-sequence", 0, 2, 0);
	trans[0][727]	= settr(726,0,729,708,708,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][729]	= settr(728,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][731] = settr(730,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(730,0,730,0,0,"sub-sequence", 0, 2, 0);
	trans[0][730]	= settr(729,0,115,709,709,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][732]	= settr(731,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][734] = settr(733,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(733,0,733,0,0,"sub-sequence", 0, 2, 0);
	trans[0][733]	= settr(732,0,115,710,710,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][735]	= settr(734,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][737] = settr(736,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(736,0,736,0,0,"sub-sequence", 0, 2, 0);
	trans[0][736]	= settr(735,0,115,711,711,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][738]	= settr(737,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][740] = settr(739,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(739,0,739,0,0,"sub-sequence", 0, 2, 0);
	trans[0][739]	= settr(738,0,115,712,712,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][741]	= settr(740,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][743] = settr(742,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(742,0,742,0,0,"sub-sequence", 0, 2, 0);
	trans[0][742]	= settr(741,0,115,713,713,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][744]	= settr(743,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][746] = settr(745,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(745,0,745,0,0,"sub-sequence", 0, 2, 0);
	trans[0][745]	= settr(744,0,115,714,714,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][747]	= settr(746,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][749] = settr(748,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(748,0,748,0,0,"sub-sequence", 0, 2, 0);
	trans[0][748]	= settr(747,0,1680,715,715,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][750]	= settr(749,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][752] = settr(751,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(751,0,751,0,0,"sub-sequence", 0, 2, 0);
	trans[0][751]	= settr(750,0,1680,716,716,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][753]	= settr(752,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][755] = settr(754,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(754,0,754,0,0,"sub-sequence", 0, 2, 0);
	trans[0][754]	= settr(753,0,1680,717,717,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][756]	= settr(755,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][760]	= settr(759,0,761,718,0,"((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))", 1, 2, 0);
	trans[0][761]	= settr(760,0,763,719,719,"L4_lo.status = TF", 1, 2, 0);
	T = trans[ 0][763] = settr(762,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(762,0,762,0,0,"sub-sequence", 0, 2, 0);
	trans[0][762]	= settr(761,0,805,720,720,"LEG2CRM!21,14", 1, 3, 0);
	T = trans[ 0][805] = settr(804,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(804,0,803,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][803] = settr(802,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,765,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,768,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,771,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,774,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,777,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,780,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,783,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,786,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,789,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,792,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,795,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(802,0,798,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(802,0,801,0,0,"IF", 0, 2, 0);
	T = trans[ 0][765] = settr(764,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(764,0,764,0,0,"sub-sequence", 0, 2, 0);
	trans[0][764]	= settr(763,0,766,721,721,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][766]	= settr(765,0,806,1,0,"(1)", 0, 2, 0);
	trans[0][804]	= settr(803,0,806,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][768] = settr(767,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(767,0,767,0,0,"sub-sequence", 0, 2, 0);
	trans[0][767]	= settr(766,0,769,722,722,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][769]	= settr(768,0,806,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][771] = settr(770,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(770,0,770,0,0,"sub-sequence", 0, 2, 0);
	trans[0][770]	= settr(769,0,772,723,723,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][772]	= settr(771,0,806,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][774] = settr(773,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(773,0,773,0,0,"sub-sequence", 0, 2, 0);
	trans[0][773]	= settr(772,0,775,724,724,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][775]	= settr(774,0,806,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][777] = settr(776,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(776,0,776,0,0,"sub-sequence", 0, 2, 0);
	trans[0][776]	= settr(775,0,115,725,725,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][778]	= settr(777,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][780] = settr(779,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(779,0,779,0,0,"sub-sequence", 0, 2, 0);
	trans[0][779]	= settr(778,0,115,726,726,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][781]	= settr(780,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][783] = settr(782,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(782,0,782,0,0,"sub-sequence", 0, 2, 0);
	trans[0][782]	= settr(781,0,115,727,727,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][784]	= settr(783,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][786] = settr(785,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(785,0,785,0,0,"sub-sequence", 0, 2, 0);
	trans[0][785]	= settr(784,0,115,728,728,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][787]	= settr(786,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][789] = settr(788,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(788,0,788,0,0,"sub-sequence", 0, 2, 0);
	trans[0][788]	= settr(787,0,115,729,729,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][790]	= settr(789,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][792] = settr(791,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(791,0,791,0,0,"sub-sequence", 0, 2, 0);
	trans[0][791]	= settr(790,0,115,730,730,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][793]	= settr(792,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][795] = settr(794,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(794,0,794,0,0,"sub-sequence", 0, 2, 0);
	trans[0][794]	= settr(793,0,1680,731,731,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][796]	= settr(795,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][798] = settr(797,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(797,0,797,0,0,"sub-sequence", 0, 2, 0);
	trans[0][797]	= settr(796,0,1680,732,732,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][799]	= settr(798,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][801] = settr(800,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(800,0,800,0,0,"sub-sequence", 0, 2, 0);
	trans[0][800]	= settr(799,0,1680,733,733,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][802]	= settr(801,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][806]	= settr(805,0,807,734,0,"((((L4_lo.right==1)||(L4_lo.oblig==1))||(L4_lo.prohib==1)))", 1, 2, 0);
	trans[0][807]	= settr(806,0,809,735,735,"L4_lo.status = S", 1, 2, 0);
	T = trans[ 0][809] = settr(808,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(808,0,808,0,0,"sub-sequence", 0, 2, 0);
	trans[0][808]	= settr(807,0,851,736,736,"LEG2CRM!21,16", 1, 3, 0);
	T = trans[ 0][851] = settr(850,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(850,0,849,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][849] = settr(848,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,811,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,814,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,817,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,820,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,823,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,826,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,829,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,832,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,835,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,838,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,841,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,844,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(848,0,847,0,0,"IF", 0, 2, 0);
	T = trans[ 0][811] = settr(810,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(810,0,810,0,0,"sub-sequence", 0, 2, 0);
	trans[0][810]	= settr(809,0,812,737,737,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][812]	= settr(811,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][850]	= settr(849,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][814] = settr(813,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(813,0,813,0,0,"sub-sequence", 0, 2, 0);
	trans[0][813]	= settr(812,0,815,738,738,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][815]	= settr(814,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][817] = settr(816,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(816,0,816,0,0,"sub-sequence", 0, 2, 0);
	trans[0][816]	= settr(815,0,818,739,739,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][818]	= settr(817,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][820] = settr(819,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(819,0,819,0,0,"sub-sequence", 0, 2, 0);
	trans[0][819]	= settr(818,0,821,740,740,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][821]	= settr(820,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][823] = settr(822,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(822,0,822,0,0,"sub-sequence", 0, 2, 0);
	trans[0][822]	= settr(821,0,115,741,741,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][824]	= settr(823,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][826] = settr(825,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(825,0,825,0,0,"sub-sequence", 0, 2, 0);
	trans[0][825]	= settr(824,0,115,742,742,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][827]	= settr(826,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][829] = settr(828,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(828,0,828,0,0,"sub-sequence", 0, 2, 0);
	trans[0][828]	= settr(827,0,115,743,743,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][830]	= settr(829,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][832] = settr(831,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(831,0,831,0,0,"sub-sequence", 0, 2, 0);
	trans[0][831]	= settr(830,0,115,744,744,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][833]	= settr(832,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][835] = settr(834,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(834,0,834,0,0,"sub-sequence", 0, 2, 0);
	trans[0][834]	= settr(833,0,115,745,745,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][836]	= settr(835,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][838] = settr(837,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(837,0,837,0,0,"sub-sequence", 0, 2, 0);
	trans[0][837]	= settr(836,0,115,746,746,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][839]	= settr(838,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][841] = settr(840,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(840,0,840,0,0,"sub-sequence", 0, 2, 0);
	trans[0][840]	= settr(839,0,1680,747,747,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][842]	= settr(841,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][844] = settr(843,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(843,0,843,0,0,"sub-sequence", 0, 2, 0);
	trans[0][843]	= settr(842,0,1680,748,748,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][845]	= settr(844,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][847] = settr(846,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(846,0,846,0,0,"sub-sequence", 0, 2, 0);
	trans[0][846]	= settr(845,0,1680,749,749,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][848]	= settr(847,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][852]	= settr(851,0,853,750,0,"((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))", 1, 2, 0);
	trans[0][853]	= settr(852,0,855,751,751,"L5_lo.status = S", 1, 2, 0);
	T = trans[ 0][855] = settr(854,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(854,0,854,0,0,"sub-sequence", 0, 2, 0);
	trans[0][854]	= settr(853,0,897,752,752,"LEG2CRM!22,16", 1, 3, 0);
	T = trans[ 0][897] = settr(896,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(896,0,895,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][895] = settr(894,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,857,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,860,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,863,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,866,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,869,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,872,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,875,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,878,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,881,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,884,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,887,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(894,0,890,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(894,0,893,0,0,"IF", 0, 2, 0);
	T = trans[ 0][857] = settr(856,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(856,0,856,0,0,"sub-sequence", 0, 2, 0);
	trans[0][856]	= settr(855,0,858,753,753,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][858]	= settr(857,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][896]	= settr(895,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][860] = settr(859,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(859,0,859,0,0,"sub-sequence", 0, 2, 0);
	trans[0][859]	= settr(858,0,861,754,754,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][861]	= settr(860,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][863] = settr(862,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(862,0,862,0,0,"sub-sequence", 0, 2, 0);
	trans[0][862]	= settr(861,0,864,755,755,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][864]	= settr(863,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][866] = settr(865,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(865,0,865,0,0,"sub-sequence", 0, 2, 0);
	trans[0][865]	= settr(864,0,867,756,756,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][867]	= settr(866,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][869] = settr(868,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(868,0,868,0,0,"sub-sequence", 0, 2, 0);
	trans[0][868]	= settr(867,0,115,757,757,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][870]	= settr(869,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][872] = settr(871,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(871,0,871,0,0,"sub-sequence", 0, 2, 0);
	trans[0][871]	= settr(870,0,115,758,758,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][873]	= settr(872,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][875] = settr(874,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(874,0,874,0,0,"sub-sequence", 0, 2, 0);
	trans[0][874]	= settr(873,0,115,759,759,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][876]	= settr(875,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][878] = settr(877,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(877,0,877,0,0,"sub-sequence", 0, 2, 0);
	trans[0][877]	= settr(876,0,115,760,760,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][879]	= settr(878,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][881] = settr(880,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(880,0,880,0,0,"sub-sequence", 0, 2, 0);
	trans[0][880]	= settr(879,0,115,761,761,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][882]	= settr(881,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][884] = settr(883,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(883,0,883,0,0,"sub-sequence", 0, 2, 0);
	trans[0][883]	= settr(882,0,115,762,762,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][885]	= settr(884,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][887] = settr(886,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(886,0,886,0,0,"sub-sequence", 0, 2, 0);
	trans[0][886]	= settr(885,0,1680,763,763,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][888]	= settr(887,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][890] = settr(889,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(889,0,889,0,0,"sub-sequence", 0, 2, 0);
	trans[0][889]	= settr(888,0,1680,764,764,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][891]	= settr(890,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][893] = settr(892,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(892,0,892,0,0,"sub-sequence", 0, 2, 0);
	trans[0][892]	= settr(891,0,1680,765,765,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][894]	= settr(893,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][898]	= settr(897,0,899,766,0,"((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))", 1, 2, 0);
	trans[0][899]	= settr(898,0,901,767,767,"L5_lo.status = TF", 1, 2, 0);
	T = trans[ 0][901] = settr(900,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(900,0,900,0,0,"sub-sequence", 0, 2, 0);
	trans[0][900]	= settr(899,0,943,768,768,"LEG2CRM!22,14", 1, 3, 0);
	T = trans[ 0][943] = settr(942,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(942,0,941,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][941] = settr(940,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,903,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,906,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,909,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,912,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,915,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,918,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,921,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,924,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,927,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,930,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,933,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,936,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(940,0,939,0,0,"IF", 0, 2, 0);
	T = trans[ 0][903] = settr(902,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(902,0,902,0,0,"sub-sequence", 0, 2, 0);
	trans[0][902]	= settr(901,0,904,769,769,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][904]	= settr(903,0,944,1,0,"(1)", 0, 2, 0);
	trans[0][942]	= settr(941,0,944,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][906] = settr(905,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(905,0,905,0,0,"sub-sequence", 0, 2, 0);
	trans[0][905]	= settr(904,0,907,770,770,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][907]	= settr(906,0,944,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][909] = settr(908,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(908,0,908,0,0,"sub-sequence", 0, 2, 0);
	trans[0][908]	= settr(907,0,910,771,771,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][910]	= settr(909,0,944,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][912] = settr(911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(911,0,911,0,0,"sub-sequence", 0, 2, 0);
	trans[0][911]	= settr(910,0,913,772,772,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][913]	= settr(912,0,944,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][915] = settr(914,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(914,0,914,0,0,"sub-sequence", 0, 2, 0);
	trans[0][914]	= settr(913,0,115,773,773,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][916]	= settr(915,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][918] = settr(917,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(917,0,917,0,0,"sub-sequence", 0, 2, 0);
	trans[0][917]	= settr(916,0,115,774,774,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][919]	= settr(918,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][921] = settr(920,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(920,0,920,0,0,"sub-sequence", 0, 2, 0);
	trans[0][920]	= settr(919,0,115,775,775,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][922]	= settr(921,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][924] = settr(923,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(923,0,923,0,0,"sub-sequence", 0, 2, 0);
	trans[0][923]	= settr(922,0,115,776,776,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][925]	= settr(924,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][927] = settr(926,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(926,0,926,0,0,"sub-sequence", 0, 2, 0);
	trans[0][926]	= settr(925,0,115,777,777,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][928]	= settr(927,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][930] = settr(929,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(929,0,929,0,0,"sub-sequence", 0, 2, 0);
	trans[0][929]	= settr(928,0,115,778,778,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][931]	= settr(930,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][933] = settr(932,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(932,0,932,0,0,"sub-sequence", 0, 2, 0);
	trans[0][932]	= settr(931,0,1680,779,779,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][934]	= settr(933,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][936] = settr(935,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(935,0,935,0,0,"sub-sequence", 0, 2, 0);
	trans[0][935]	= settr(934,0,1680,780,780,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][937]	= settr(936,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][939] = settr(938,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(938,0,938,0,0,"sub-sequence", 0, 2, 0);
	trans[0][938]	= settr(937,0,1680,781,781,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][940]	= settr(939,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][944]	= settr(943,0,945,782,0,"((((L5_lo.right==1)||(L5_lo.oblig==1))||(L5_lo.prohib==1)))", 1, 2, 0);
	trans[0][945]	= settr(944,0,947,783,783,"L5_lo.status = S", 1, 2, 0);
	T = trans[ 0][947] = settr(946,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(946,0,946,0,0,"sub-sequence", 0, 2, 0);
	trans[0][946]	= settr(945,0,989,784,784,"LEG2CRM!22,16", 1, 3, 0);
	T = trans[ 0][989] = settr(988,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(988,0,987,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][987] = settr(986,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,949,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,952,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,955,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,958,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,961,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,964,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,967,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,970,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,973,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,976,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,979,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(986,0,982,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(986,0,985,0,0,"IF", 0, 2, 0);
	T = trans[ 0][949] = settr(948,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(948,0,948,0,0,"sub-sequence", 0, 2, 0);
	trans[0][948]	= settr(947,0,950,785,785,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][950]	= settr(949,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][988]	= settr(987,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][952] = settr(951,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(951,0,951,0,0,"sub-sequence", 0, 2, 0);
	trans[0][951]	= settr(950,0,953,786,786,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][953]	= settr(952,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][955] = settr(954,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(954,0,954,0,0,"sub-sequence", 0, 2, 0);
	trans[0][954]	= settr(953,0,956,787,787,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][956]	= settr(955,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][958] = settr(957,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(957,0,957,0,0,"sub-sequence", 0, 2, 0);
	trans[0][957]	= settr(956,0,959,788,788,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][959]	= settr(958,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][961] = settr(960,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(960,0,960,0,0,"sub-sequence", 0, 2, 0);
	trans[0][960]	= settr(959,0,115,789,789,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][962]	= settr(961,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][964] = settr(963,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(963,0,963,0,0,"sub-sequence", 0, 2, 0);
	trans[0][963]	= settr(962,0,115,790,790,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][965]	= settr(964,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][967] = settr(966,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(966,0,966,0,0,"sub-sequence", 0, 2, 0);
	trans[0][966]	= settr(965,0,115,791,791,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][968]	= settr(967,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][970] = settr(969,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(969,0,969,0,0,"sub-sequence", 0, 2, 0);
	trans[0][969]	= settr(968,0,115,792,792,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][971]	= settr(970,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][973] = settr(972,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(972,0,972,0,0,"sub-sequence", 0, 2, 0);
	trans[0][972]	= settr(971,0,115,793,793,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][974]	= settr(973,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][976] = settr(975,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(975,0,975,0,0,"sub-sequence", 0, 2, 0);
	trans[0][975]	= settr(974,0,115,794,794,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][977]	= settr(976,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][979] = settr(978,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(978,0,978,0,0,"sub-sequence", 0, 2, 0);
	trans[0][978]	= settr(977,0,1680,795,795,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][980]	= settr(979,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][982] = settr(981,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(981,0,981,0,0,"sub-sequence", 0, 2, 0);
	trans[0][981]	= settr(980,0,1680,796,796,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][983]	= settr(982,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][985] = settr(984,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(984,0,984,0,0,"sub-sequence", 0, 2, 0);
	trans[0][984]	= settr(983,0,1680,797,797,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][986]	= settr(985,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][990]	= settr(989,0,991,798,0,"((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))", 1, 2, 0);
	trans[0][991]	= settr(990,0,993,799,799,"L6_lo.status = S", 1, 2, 0);
	T = trans[ 0][993] = settr(992,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(992,0,992,0,0,"sub-sequence", 0, 2, 0);
	trans[0][992]	= settr(991,0,1035,800,800,"LEG2CRM!23,16", 1, 3, 0);
	T = trans[ 0][1035] = settr(1034,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1034,0,1033,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1033] = settr(1032,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,995,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,998,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1001,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1004,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1007,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1010,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1013,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1016,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1019,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1022,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1025,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1032,0,1028,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1032,0,1031,0,0,"IF", 0, 2, 0);
	T = trans[ 0][995] = settr(994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(994,0,994,0,0,"sub-sequence", 0, 2, 0);
	trans[0][994]	= settr(993,0,996,801,801,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][996]	= settr(995,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1034]	= settr(1033,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][998] = settr(997,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(997,0,997,0,0,"sub-sequence", 0, 2, 0);
	trans[0][997]	= settr(996,0,999,802,802,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][999]	= settr(998,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1001] = settr(1000,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1000,0,1000,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1000]	= settr(999,0,1002,803,803,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1002]	= settr(1001,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1004] = settr(1003,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1003,0,1003,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1003]	= settr(1002,0,1005,804,804,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1005]	= settr(1004,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1007] = settr(1006,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1006,0,1006,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1006]	= settr(1005,0,115,805,805,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1008]	= settr(1007,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1010] = settr(1009,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1009,0,1009,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1009]	= settr(1008,0,115,806,806,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1011]	= settr(1010,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1013] = settr(1012,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1012,0,1012,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1012]	= settr(1011,0,115,807,807,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1014]	= settr(1013,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1016] = settr(1015,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1015,0,1015,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1015]	= settr(1014,0,115,808,808,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1017]	= settr(1016,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1019] = settr(1018,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1018,0,1018,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1018]	= settr(1017,0,115,809,809,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1020]	= settr(1019,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1022] = settr(1021,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1021,0,1021,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1021]	= settr(1020,0,115,810,810,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1023]	= settr(1022,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1025] = settr(1024,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1024,0,1024,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1024]	= settr(1023,0,1680,811,811,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1026]	= settr(1025,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1028] = settr(1027,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1027,0,1027,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1027]	= settr(1026,0,1680,812,812,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1029]	= settr(1028,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1031] = settr(1030,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1030,0,1030,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1030]	= settr(1029,0,1680,813,813,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1032]	= settr(1031,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1036]	= settr(1035,0,1037,814,0,"((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))", 1, 2, 0);
	trans[0][1037]	= settr(1036,0,1039,815,815,"L6_lo.status = TF", 1, 2, 0);
	T = trans[ 0][1039] = settr(1038,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1038,0,1038,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1038]	= settr(1037,0,1081,816,816,"LEG2CRM!23,14", 1, 3, 0);
	T = trans[ 0][1081] = settr(1080,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1080,0,1079,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1079] = settr(1078,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1041,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1044,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1047,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1050,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1053,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1056,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1059,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1062,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1065,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1068,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1071,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1078,0,1074,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1078,0,1077,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1041] = settr(1040,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1040,0,1040,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1040]	= settr(1039,0,1042,817,817,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1042]	= settr(1041,0,1082,1,0,"(1)", 0, 2, 0);
	trans[0][1080]	= settr(1079,0,1082,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1044] = settr(1043,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1043,0,1043,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1043]	= settr(1042,0,1045,818,818,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1045]	= settr(1044,0,1082,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1047] = settr(1046,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1046,0,1046,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1046]	= settr(1045,0,1048,819,819,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1048]	= settr(1047,0,1082,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1050] = settr(1049,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1049,0,1049,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1049]	= settr(1048,0,1051,820,820,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1051]	= settr(1050,0,1082,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1053] = settr(1052,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1052,0,1052,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1052]	= settr(1051,0,115,821,821,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1054]	= settr(1053,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1056] = settr(1055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1055,0,1055,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1055]	= settr(1054,0,115,822,822,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1057]	= settr(1056,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1059] = settr(1058,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1058,0,1058,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1058]	= settr(1057,0,115,823,823,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1060]	= settr(1059,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1062] = settr(1061,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1061,0,1061,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1061]	= settr(1060,0,115,824,824,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1063]	= settr(1062,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1065] = settr(1064,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1064,0,1064,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1064]	= settr(1063,0,115,825,825,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1066]	= settr(1065,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1068] = settr(1067,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1067,0,1067,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1067]	= settr(1066,0,115,826,826,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1069]	= settr(1068,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1071] = settr(1070,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1070,0,1070,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1070]	= settr(1069,0,1680,827,827,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1072]	= settr(1071,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1074] = settr(1073,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1073,0,1073,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1073]	= settr(1072,0,1680,828,828,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1075]	= settr(1074,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1077] = settr(1076,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1076,0,1076,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1076]	= settr(1075,0,1680,829,829,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1078]	= settr(1077,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1082]	= settr(1081,0,1083,830,0,"((((L6_lo.right==1)||(L6_lo.oblig==1))||(L6_lo.prohib==1)))", 1, 2, 0);
	trans[0][1083]	= settr(1082,0,1085,831,831,"L6_lo.status = S", 1, 2, 0);
	T = trans[ 0][1085] = settr(1084,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1084,0,1084,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1084]	= settr(1083,0,1127,832,832,"LEG2CRM!23,16", 1, 3, 0);
	T = trans[ 0][1127] = settr(1126,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1126,0,1125,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1125] = settr(1124,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1087,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1090,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1093,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1096,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1099,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1102,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1108,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1111,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1114,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1117,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1124,0,1120,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1124,0,1123,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1087] = settr(1086,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1086,0,1086,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1086]	= settr(1085,0,1088,833,833,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1088]	= settr(1087,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1126]	= settr(1125,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1090] = settr(1089,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1089,0,1089,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1089]	= settr(1088,0,1091,834,834,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1091]	= settr(1090,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1093] = settr(1092,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1092,0,1092,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1092]	= settr(1091,0,1094,835,835,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1094]	= settr(1093,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1096] = settr(1095,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1095,0,1095,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1095]	= settr(1094,0,1097,836,836,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1097]	= settr(1096,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1099] = settr(1098,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1098,0,1098,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1098]	= settr(1097,0,115,837,837,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1100]	= settr(1099,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1102] = settr(1101,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1101,0,1101,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1101]	= settr(1100,0,115,838,838,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1103]	= settr(1102,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1105] = settr(1104,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1104,0,1104,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1104]	= settr(1103,0,115,839,839,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1106]	= settr(1105,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1108] = settr(1107,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1107,0,1107,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1107]	= settr(1106,0,115,840,840,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1109]	= settr(1108,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1111] = settr(1110,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1110,0,1110,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1110]	= settr(1109,0,115,841,841,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1112]	= settr(1111,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1114] = settr(1113,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1113,0,1113,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1113]	= settr(1112,0,115,842,842,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1115]	= settr(1114,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1117] = settr(1116,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1116,0,1116,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1116]	= settr(1115,0,1680,843,843,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1118]	= settr(1117,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1120] = settr(1119,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1119,0,1119,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1119]	= settr(1118,0,1680,844,844,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1121]	= settr(1120,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1123] = settr(1122,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1122,0,1122,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1122]	= settr(1121,0,1680,845,845,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1124]	= settr(1123,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1128]	= settr(1127,0,1129,846,0,"((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))", 1, 2, 0);
	trans[0][1129]	= settr(1128,0,1131,847,847,"CW2_lo.status = S", 1, 2, 0);
	T = trans[ 0][1131] = settr(1130,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1130,0,1130,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1130]	= settr(1129,0,1173,848,848,"LEG2CRM!27,16", 1, 3, 0);
	T = trans[ 0][1173] = settr(1172,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1172,0,1171,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1171] = settr(1170,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1133,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1136,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1139,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1142,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1151,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1154,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1157,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1160,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1163,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1170,0,1166,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1170,0,1169,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1133] = settr(1132,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1132,0,1132,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1132]	= settr(1131,0,1134,849,849,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1134]	= settr(1133,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1172]	= settr(1171,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1136] = settr(1135,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1135,0,1135,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1135]	= settr(1134,0,1137,850,850,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1137]	= settr(1136,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1139] = settr(1138,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1138,0,1138,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1138]	= settr(1137,0,1140,851,851,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1140]	= settr(1139,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1142] = settr(1141,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1141,0,1141,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1141]	= settr(1140,0,1143,852,852,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1143]	= settr(1142,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1145] = settr(1144,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1144,0,1144,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1144]	= settr(1143,0,115,853,853,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1146]	= settr(1145,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1148] = settr(1147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1147,0,1147,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1147]	= settr(1146,0,115,854,854,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1149]	= settr(1148,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1151] = settr(1150,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1150,0,1150,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1150]	= settr(1149,0,115,855,855,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1152]	= settr(1151,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1154] = settr(1153,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1153,0,1153,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1153]	= settr(1152,0,115,856,856,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1155]	= settr(1154,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1157] = settr(1156,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1156,0,1156,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1156]	= settr(1155,0,115,857,857,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1158]	= settr(1157,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1160] = settr(1159,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1159,0,1159,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1159]	= settr(1158,0,115,858,858,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1161]	= settr(1160,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1163] = settr(1162,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1162,0,1162,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1162]	= settr(1161,0,1680,859,859,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1164]	= settr(1163,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1166] = settr(1165,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1165,0,1165,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1165]	= settr(1164,0,1680,860,860,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1167]	= settr(1166,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1169] = settr(1168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1168,0,1168,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1168]	= settr(1167,0,1680,861,861,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1170]	= settr(1169,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1174]	= settr(1173,0,1175,862,0,"((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))", 1, 2, 0);
	trans[0][1175]	= settr(1174,0,1177,863,863,"CW2_lo.status = TO", 1, 2, 0);
	T = trans[ 0][1177] = settr(1176,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1176,0,1176,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1176]	= settr(1175,0,1219,864,864,"LEG2CRM!27,13", 1, 3, 0);
	T = trans[ 0][1219] = settr(1218,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1218,0,1217,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1217] = settr(1216,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1179,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1182,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1188,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1191,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1194,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1197,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1200,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1203,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1206,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1209,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1216,0,1212,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1216,0,1215,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1179] = settr(1178,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1178,0,1178,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1178]	= settr(1177,0,1180,865,865,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1180]	= settr(1179,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1218]	= settr(1217,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1182] = settr(1181,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1181,0,1181,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1181]	= settr(1180,0,1183,866,866,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1183]	= settr(1182,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1185] = settr(1184,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1184,0,1184,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1184]	= settr(1183,0,1186,867,867,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1186]	= settr(1185,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1188] = settr(1187,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1187,0,1187,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1187]	= settr(1186,0,1189,868,868,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1189]	= settr(1188,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1191] = settr(1190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1190,0,1190,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1190]	= settr(1189,0,115,869,869,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1192]	= settr(1191,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1194] = settr(1193,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1193,0,1193,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1193]	= settr(1192,0,115,870,870,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1195]	= settr(1194,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1197] = settr(1196,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1196,0,1196,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1196]	= settr(1195,0,115,871,871,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1198]	= settr(1197,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1200] = settr(1199,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1199,0,1199,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1199]	= settr(1198,0,115,872,872,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1201]	= settr(1200,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1203] = settr(1202,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1202,0,1202,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1202]	= settr(1201,0,115,873,873,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1204]	= settr(1203,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1206] = settr(1205,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1205,0,1205,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1205]	= settr(1204,0,115,874,874,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1207]	= settr(1206,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1209] = settr(1208,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1208,0,1208,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1208]	= settr(1207,0,1680,875,875,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1210]	= settr(1209,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1212] = settr(1211,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1211,0,1211,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1211]	= settr(1210,0,1680,876,876,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1213]	= settr(1212,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1215] = settr(1214,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1214,0,1214,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1214]	= settr(1213,0,1680,877,877,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1216]	= settr(1215,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1220]	= settr(1219,0,1221,878,0,"((((CW2_lo.right==1)||(CW2_lo.oblig==1))||(CW2_lo.prohib==1)))", 1, 2, 0);
	trans[0][1221]	= settr(1220,0,1223,879,879,"CW2_lo.status = LF", 1, 2, 0);
	T = trans[ 0][1223] = settr(1222,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1222,0,1222,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1222]	= settr(1221,0,1265,880,880,"LEG2CRM!27,15", 1, 3, 0);
	T = trans[ 0][1265] = settr(1264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1264,0,1263,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1263] = settr(1262,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1225,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1228,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1231,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1234,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1237,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1240,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1243,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1246,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1252,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1262,0,1258,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1262,0,1261,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1225] = settr(1224,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1224,0,1224,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1224]	= settr(1223,0,1226,881,881,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1226]	= settr(1225,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1264]	= settr(1263,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1228] = settr(1227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1227,0,1227,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1227]	= settr(1226,0,1229,882,882,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1229]	= settr(1228,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1231] = settr(1230,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1230,0,1230,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1230]	= settr(1229,0,1232,883,883,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1232]	= settr(1231,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1234] = settr(1233,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1233,0,1233,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1233]	= settr(1232,0,1235,884,884,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1235]	= settr(1234,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1237] = settr(1236,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1236,0,1236,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1236]	= settr(1235,0,115,885,885,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1238]	= settr(1237,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1240] = settr(1239,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1239,0,1239,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1239]	= settr(1238,0,115,886,886,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1241]	= settr(1240,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1243] = settr(1242,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1242,0,1242,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1242]	= settr(1241,0,115,887,887,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1244]	= settr(1243,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1246] = settr(1245,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1245,0,1245,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1245]	= settr(1244,0,115,888,888,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1247]	= settr(1246,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1249] = settr(1248,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1248,0,1248,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1248]	= settr(1247,0,115,889,889,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1250]	= settr(1249,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1252] = settr(1251,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1251,0,1251,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1251]	= settr(1250,0,115,890,890,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1253]	= settr(1252,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1255] = settr(1254,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1254,0,1254,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1254]	= settr(1253,0,1680,891,891,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1256]	= settr(1255,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1258] = settr(1257,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1257,0,1257,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1257]	= settr(1256,0,1680,892,892,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1259]	= settr(1258,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1261] = settr(1260,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1260,0,1260,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1260]	= settr(1259,0,1680,893,893,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1262]	= settr(1261,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1266]	= settr(1265,0,1267,894,0,"((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))", 1, 2, 0);
	trans[0][1267]	= settr(1266,0,1269,895,895,"L7_lo.status = S", 1, 2, 0);
	T = trans[ 0][1269] = settr(1268,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1268,0,1268,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1268]	= settr(1267,0,1311,896,896,"LEG2CRM!24,16", 1, 3, 0);
	T = trans[ 0][1311] = settr(1310,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1310,0,1309,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1309] = settr(1308,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1271,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1274,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1277,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1280,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1283,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1286,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1292,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1298,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1301,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1308,0,1304,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1308,0,1307,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1271] = settr(1270,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1270,0,1270,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1270]	= settr(1269,0,1272,897,897,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1272]	= settr(1271,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1310]	= settr(1309,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1274] = settr(1273,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1273,0,1273,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1273]	= settr(1272,0,1275,898,898,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1275]	= settr(1274,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1277] = settr(1276,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1276,0,1276,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1276]	= settr(1275,0,1278,899,899,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1278]	= settr(1277,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1280] = settr(1279,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1279,0,1279,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1279]	= settr(1278,0,1281,900,900,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1281]	= settr(1280,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1283] = settr(1282,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1282,0,1282,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1282]	= settr(1281,0,115,901,901,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1284]	= settr(1283,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1286] = settr(1285,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1285,0,1285,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1285]	= settr(1284,0,115,902,902,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1287]	= settr(1286,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1289] = settr(1288,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1288,0,1288,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1288]	= settr(1287,0,115,903,903,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1290]	= settr(1289,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1292] = settr(1291,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1291,0,1291,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1291]	= settr(1290,0,115,904,904,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1293]	= settr(1292,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1295] = settr(1294,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1294,0,1294,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1294]	= settr(1293,0,115,905,905,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1296]	= settr(1295,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1298] = settr(1297,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1297,0,1297,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1297]	= settr(1296,0,115,906,906,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1299]	= settr(1298,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1301] = settr(1300,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1300,0,1300,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1300]	= settr(1299,0,1680,907,907,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1302]	= settr(1301,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1304] = settr(1303,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1303,0,1303,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1303]	= settr(1302,0,1680,908,908,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1305]	= settr(1304,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1307] = settr(1306,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1306,0,1306,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1306]	= settr(1305,0,1680,909,909,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1308]	= settr(1307,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1312]	= settr(1311,0,1313,910,0,"((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))", 1, 2, 0);
	trans[0][1313]	= settr(1312,0,1315,911,911,"L7_lo.status = TF", 1, 2, 0);
	T = trans[ 0][1315] = settr(1314,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1314,0,1314,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1314]	= settr(1313,0,1357,912,912,"LEG2CRM!24,14", 1, 3, 0);
	T = trans[ 0][1357] = settr(1356,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1356,0,1355,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1355] = settr(1354,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1317,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1320,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1323,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1326,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1332,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1338,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1341,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1344,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1347,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1354,0,1350,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1354,0,1353,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1317] = settr(1316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1316,0,1316,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1316]	= settr(1315,0,1318,913,913,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1318]	= settr(1317,0,1358,1,0,"(1)", 0, 2, 0);
	trans[0][1356]	= settr(1355,0,1358,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1320] = settr(1319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1319,0,1319,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1319]	= settr(1318,0,1321,914,914,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1321]	= settr(1320,0,1358,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1323] = settr(1322,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1322,0,1322,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1322]	= settr(1321,0,1324,915,915,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1324]	= settr(1323,0,1358,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1326] = settr(1325,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1325,0,1325,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1325]	= settr(1324,0,1327,916,916,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1327]	= settr(1326,0,1358,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1329] = settr(1328,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1328,0,1328,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1328]	= settr(1327,0,115,917,917,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1330]	= settr(1329,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1332] = settr(1331,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1331,0,1331,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1331]	= settr(1330,0,115,918,918,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1333]	= settr(1332,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1335] = settr(1334,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1334,0,1334,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1334]	= settr(1333,0,115,919,919,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1336]	= settr(1335,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1338] = settr(1337,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1337,0,1337,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1337]	= settr(1336,0,115,920,920,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1339]	= settr(1338,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1341] = settr(1340,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1340,0,1340,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1340]	= settr(1339,0,115,921,921,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1342]	= settr(1341,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1344] = settr(1343,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1343,0,1343,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1343]	= settr(1342,0,115,922,922,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1345]	= settr(1344,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1347] = settr(1346,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1346,0,1346,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1346]	= settr(1345,0,1680,923,923,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1348]	= settr(1347,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1350] = settr(1349,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1349,0,1349,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1349]	= settr(1348,0,1680,924,924,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1351]	= settr(1350,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1353] = settr(1352,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1352,0,1352,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1352]	= settr(1351,0,1680,925,925,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1354]	= settr(1353,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1358]	= settr(1357,0,1359,926,0,"((((L7_lo.right==1)||(L7_lo.oblig==1))||(L7_lo.prohib==1)))", 1, 2, 0);
	trans[0][1359]	= settr(1358,0,1361,927,927,"L7_lo.status = S", 1, 2, 0);
	T = trans[ 0][1361] = settr(1360,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1360,0,1360,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1360]	= settr(1359,0,1403,928,928,"LEG2CRM!24,16", 1, 3, 0);
	T = trans[ 0][1403] = settr(1402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1402,0,1401,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1401] = settr(1400,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1363,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1366,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1369,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1372,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1378,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1381,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1384,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1387,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1393,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1400,0,1396,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1400,0,1399,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1363] = settr(1362,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1362,0,1362,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1362]	= settr(1361,0,1364,929,929,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1364]	= settr(1363,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1402]	= settr(1401,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1366] = settr(1365,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1365,0,1365,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1365]	= settr(1364,0,1367,930,930,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1367]	= settr(1366,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1369] = settr(1368,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1368,0,1368,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1368]	= settr(1367,0,1370,931,931,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1370]	= settr(1369,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1372] = settr(1371,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1371,0,1371,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1371]	= settr(1370,0,1373,932,932,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1373]	= settr(1372,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1375] = settr(1374,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1374,0,1374,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1374]	= settr(1373,0,115,933,933,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1376]	= settr(1375,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1378] = settr(1377,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1377,0,1377,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1377]	= settr(1376,0,115,934,934,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1379]	= settr(1378,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1381] = settr(1380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1380,0,1380,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1380]	= settr(1379,0,115,935,935,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1382]	= settr(1381,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1384] = settr(1383,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1383,0,1383,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1383]	= settr(1382,0,115,936,936,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1385]	= settr(1384,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1387] = settr(1386,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1386,0,1386,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1386]	= settr(1385,0,115,937,937,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1388]	= settr(1387,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1390] = settr(1389,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1389,0,1389,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1389]	= settr(1388,0,115,938,938,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1391]	= settr(1390,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1393] = settr(1392,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1392,0,1392,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1392]	= settr(1391,0,1680,939,939,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1394]	= settr(1393,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1396] = settr(1395,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1395,0,1395,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1395]	= settr(1394,0,1680,940,940,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1397]	= settr(1396,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1399] = settr(1398,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1398,0,1398,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1398]	= settr(1397,0,1680,941,941,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1400]	= settr(1399,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1404]	= settr(1403,0,1405,942,0,"((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))", 1, 2, 0);
	trans[0][1405]	= settr(1404,0,1407,943,943,"L8_lo.status = S", 1, 2, 0);
	T = trans[ 0][1407] = settr(1406,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1406,0,1406,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1406]	= settr(1405,0,1449,944,944,"LEG2CRM!25,16", 1, 3, 0);
	T = trans[ 0][1449] = settr(1448,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1448,0,1447,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1447] = settr(1446,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1427,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1430,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1433,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1436,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1439,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1446,0,1442,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1446,0,1445,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1409] = settr(1408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1408,0,1408,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1408]	= settr(1407,0,1410,945,945,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1410]	= settr(1409,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1448]	= settr(1447,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1412] = settr(1411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1411,0,1411,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1411]	= settr(1410,0,1413,946,946,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1413]	= settr(1412,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1415] = settr(1414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1414,0,1414,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1414]	= settr(1413,0,1416,947,947,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1416]	= settr(1415,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1418] = settr(1417,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1417,0,1417,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1417]	= settr(1416,0,1419,948,948,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1419]	= settr(1418,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1421] = settr(1420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1420,0,1420,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1420]	= settr(1419,0,115,949,949,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1422]	= settr(1421,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1424] = settr(1423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1423,0,1423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1423]	= settr(1422,0,115,950,950,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1425]	= settr(1424,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1427] = settr(1426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1426,0,1426,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1426]	= settr(1425,0,115,951,951,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1428]	= settr(1427,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1430] = settr(1429,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1429,0,1429,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1429]	= settr(1428,0,115,952,952,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1431]	= settr(1430,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1433] = settr(1432,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1432,0,1432,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1432]	= settr(1431,0,115,953,953,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1434]	= settr(1433,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1436] = settr(1435,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1435,0,1435,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1435]	= settr(1434,0,115,954,954,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1437]	= settr(1436,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1439] = settr(1438,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1438,0,1438,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1438]	= settr(1437,0,1680,955,955,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1440]	= settr(1439,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1442] = settr(1441,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1441,0,1441,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1441]	= settr(1440,0,1680,956,956,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1443]	= settr(1442,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1445] = settr(1444,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1444,0,1444,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1444]	= settr(1443,0,1680,957,957,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1446]	= settr(1445,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1450]	= settr(1449,0,1451,958,0,"((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))", 1, 2, 0);
	trans[0][1451]	= settr(1450,0,1453,959,959,"L8_lo.status = TF", 1, 2, 0);
	T = trans[ 0][1453] = settr(1452,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1452,0,1452,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1452]	= settr(1451,0,1495,960,960,"LEG2CRM!25,14", 1, 3, 0);
	T = trans[ 0][1495] = settr(1494,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1494,0,1493,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1493] = settr(1492,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1458,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1461,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1464,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1467,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1470,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1473,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1476,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1479,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1482,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1485,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,1488,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1492,0,1491,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1455] = settr(1454,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1454,0,1454,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1454]	= settr(1453,0,1456,961,961,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1456]	= settr(1455,0,1496,1,0,"(1)", 0, 2, 0);
	trans[0][1494]	= settr(1493,0,1496,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1458] = settr(1457,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1457,0,1457,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1457]	= settr(1456,0,1459,962,962,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1459]	= settr(1458,0,1496,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1461] = settr(1460,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1460,0,1460,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1460]	= settr(1459,0,1462,963,963,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1462]	= settr(1461,0,1496,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1464] = settr(1463,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1463,0,1463,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1463]	= settr(1462,0,1465,964,964,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1465]	= settr(1464,0,1496,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1467] = settr(1466,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1466,0,1466,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1466]	= settr(1465,0,115,965,965,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1468]	= settr(1467,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1470] = settr(1469,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1469,0,1469,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1469]	= settr(1468,0,115,966,966,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1471]	= settr(1470,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1473] = settr(1472,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1472,0,1472,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1472]	= settr(1471,0,115,967,967,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1474]	= settr(1473,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1476] = settr(1475,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1475,0,1475,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1475]	= settr(1474,0,115,968,968,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1477]	= settr(1476,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1479] = settr(1478,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1478,0,1478,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1478]	= settr(1477,0,115,969,969,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1480]	= settr(1479,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1482] = settr(1481,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1481,0,1481,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1481]	= settr(1480,0,115,970,970,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1483]	= settr(1482,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1485] = settr(1484,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1484,0,1484,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1484]	= settr(1483,0,1680,971,971,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1486]	= settr(1485,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1488] = settr(1487,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1487,0,1487,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1487]	= settr(1486,0,1680,972,972,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1489]	= settr(1488,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1491] = settr(1490,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1490,0,1490,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1490]	= settr(1489,0,1680,973,973,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1492]	= settr(1491,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1496]	= settr(1495,0,1497,974,0,"((((L8_lo.right==1)||(L8_lo.oblig==1))||(L8_lo.prohib==1)))", 1, 2, 0);
	trans[0][1497]	= settr(1496,0,1499,975,975,"L8_lo.status = S", 1, 2, 0);
	T = trans[ 0][1499] = settr(1498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1498,0,1498,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1498]	= settr(1497,0,1541,976,976,"LEG2CRM!25,16", 1, 3, 0);
	T = trans[ 0][1541] = settr(1540,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1540,0,1539,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1539] = settr(1538,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1501,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1504,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1507,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1510,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1513,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1516,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1519,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1522,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1525,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1528,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1531,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1538,0,1534,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1538,0,1537,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1501] = settr(1500,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1500,0,1500,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1500]	= settr(1499,0,1502,977,977,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1502]	= settr(1501,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1540]	= settr(1539,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1504] = settr(1503,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1503,0,1503,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1503]	= settr(1502,0,1505,978,978,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1505]	= settr(1504,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1507] = settr(1506,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1506,0,1506,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1506]	= settr(1505,0,1508,979,979,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1508]	= settr(1507,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1510] = settr(1509,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1509,0,1509,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1509]	= settr(1508,0,1511,980,980,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1511]	= settr(1510,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1513] = settr(1512,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1512,0,1512,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1512]	= settr(1511,0,115,981,981,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1514]	= settr(1513,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1516] = settr(1515,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1515,0,1515,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1515]	= settr(1514,0,115,982,982,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1517]	= settr(1516,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1519] = settr(1518,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1518,0,1518,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1518]	= settr(1517,0,115,983,983,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1520]	= settr(1519,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1522] = settr(1521,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1521,0,1521,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1521]	= settr(1520,0,115,984,984,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1523]	= settr(1522,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1525] = settr(1524,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1524,0,1524,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1524]	= settr(1523,0,115,985,985,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1526]	= settr(1525,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1528] = settr(1527,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1527,0,1527,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1527]	= settr(1526,0,115,986,986,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1529]	= settr(1528,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1531] = settr(1530,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1530,0,1530,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1530]	= settr(1529,0,1680,987,987,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1532]	= settr(1531,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1534] = settr(1533,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1533,0,1533,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1533]	= settr(1532,0,1680,988,988,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1535]	= settr(1534,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1537] = settr(1536,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1536,0,1536,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1536]	= settr(1535,0,1680,989,989,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1538]	= settr(1537,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1542]	= settr(1541,0,1543,990,0,"((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))", 1, 2, 0);
	trans[0][1543]	= settr(1542,0,1545,991,991,"EXAM_lo.status = S", 1, 2, 0);
	T = trans[ 0][1545] = settr(1544,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1544,0,1544,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1544]	= settr(1543,0,1587,992,992,"LEG2CRM!28,16", 1, 3, 0);
	T = trans[ 0][1587] = settr(1586,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1586,0,1585,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1585] = settr(1584,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1547,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1550,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1553,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1556,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1559,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1562,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1568,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1584,0,1580,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1584,0,1583,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1547] = settr(1546,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1546,0,1546,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1546]	= settr(1545,0,1548,993,993,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1548]	= settr(1547,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1586]	= settr(1585,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1550] = settr(1549,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1549,0,1549,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1549]	= settr(1548,0,1551,994,994,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1551]	= settr(1550,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1553] = settr(1552,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1552,0,1552,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1552]	= settr(1551,0,1554,995,995,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1554]	= settr(1553,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1556] = settr(1555,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1555,0,1555,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1555]	= settr(1554,0,1557,996,996,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1557]	= settr(1556,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1559] = settr(1558,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1558,0,1558,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1558]	= settr(1557,0,115,997,997,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1560]	= settr(1559,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1562] = settr(1561,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1561,0,1561,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1561]	= settr(1560,0,115,998,998,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1563]	= settr(1562,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1565] = settr(1564,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1564,0,1564,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1564]	= settr(1563,0,115,999,999,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1566]	= settr(1565,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1568] = settr(1567,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1567,0,1567,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1567]	= settr(1566,0,115,1000,1000,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1569]	= settr(1568,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1571] = settr(1570,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1570,0,1570,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1570]	= settr(1569,0,115,1001,1001,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1572]	= settr(1571,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1574] = settr(1573,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1573,0,1573,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1573]	= settr(1572,0,115,1002,1002,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1575]	= settr(1574,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1577] = settr(1576,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1576,0,1576,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1576]	= settr(1575,0,1680,1003,1003,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1578]	= settr(1577,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1580] = settr(1579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1579,0,1579,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1579]	= settr(1578,0,1680,1004,1004,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1581]	= settr(1580,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1583] = settr(1582,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1582,0,1582,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1582]	= settr(1581,0,1680,1005,1005,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1584]	= settr(1583,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1588]	= settr(1587,0,1589,1006,0,"((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))", 1, 2, 0);
	trans[0][1589]	= settr(1588,0,1591,1007,1007,"EXAM_lo.status = TO", 1, 2, 0);
	T = trans[ 0][1591] = settr(1590,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1590,0,1590,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1590]	= settr(1589,0,1633,1008,1008,"LEG2CRM!28,13", 1, 3, 0);
	T = trans[ 0][1633] = settr(1632,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1632,0,1631,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1631] = settr(1630,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1593,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1596,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1599,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1623,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1630,0,1626,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1630,0,1629,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1593] = settr(1592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1592,0,1592,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1592]	= settr(1591,0,1594,1009,1009,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1594]	= settr(1593,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1632]	= settr(1631,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1596] = settr(1595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1595,0,1595,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1595]	= settr(1594,0,1597,1010,1010,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1597]	= settr(1596,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1599] = settr(1598,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1598,0,1598,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1598]	= settr(1597,0,1600,1011,1011,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1600]	= settr(1599,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1602] = settr(1601,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1601,0,1601,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1601]	= settr(1600,0,1603,1012,1012,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1603]	= settr(1602,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1605] = settr(1604,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1604,0,1604,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1604]	= settr(1603,0,115,1013,1013,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1606]	= settr(1605,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1608] = settr(1607,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1607,0,1607,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1607]	= settr(1606,0,115,1014,1014,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1609]	= settr(1608,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1611] = settr(1610,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1610,0,1610,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1610]	= settr(1609,0,115,1015,1015,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1612]	= settr(1611,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1614] = settr(1613,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1613,0,1613,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1613]	= settr(1612,0,115,1016,1016,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1615]	= settr(1614,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1617] = settr(1616,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1616,0,1616,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1616]	= settr(1615,0,115,1017,1017,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1618]	= settr(1617,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1620] = settr(1619,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1619,0,1619,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1619]	= settr(1618,0,115,1018,1018,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1621]	= settr(1620,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1623] = settr(1622,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1622,0,1622,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1622]	= settr(1621,0,1680,1019,1019,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1624]	= settr(1623,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1626] = settr(1625,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1625,0,1625,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1625]	= settr(1624,0,1680,1020,1020,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1627]	= settr(1626,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1629] = settr(1628,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1628,0,1628,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1628]	= settr(1627,0,1680,1021,1021,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1630]	= settr(1629,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1634]	= settr(1633,0,1635,1022,0,"((((EXAM_lo.right==1)||(EXAM_lo.oblig==1))||(EXAM_lo.prohib==1)))", 1, 2, 0);
	trans[0][1635]	= settr(1634,0,1637,1023,1023,"EXAM_lo.status = LF", 1, 2, 0);
	T = trans[ 0][1637] = settr(1636,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1636,0,1636,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1636]	= settr(1635,0,1679,1024,1024,"LEG2CRM!28,15", 1, 3, 0);
	T = trans[ 0][1679] = settr(1678,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1678,0,1677,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][1677] = settr(1676,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1639,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1642,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1645,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1648,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1651,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1654,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1657,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1660,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1663,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1666,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1669,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1676,0,1672,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1676,0,1675,0,0,"IF", 0, 2, 0);
	T = trans[ 0][1639] = settr(1638,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1638,0,1638,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1638]	= settr(1637,0,1640,1025,1025,"CRM2LEG?9,5", 1, 504, 0);
	trans[0][1640]	= settr(1639,0,1680,1,0,"(1)", 0, 2, 0);
	trans[0][1678]	= settr(1677,0,1680,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][1642] = settr(1641,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1641,0,1641,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1641]	= settr(1640,0,1643,1026,1026,"CRM2LEG?8,5", 1, 504, 0);
	trans[0][1643]	= settr(1642,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1645] = settr(1644,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1644,0,1644,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1644]	= settr(1643,0,1646,1027,1027,"CRM2LEG?7,5", 1, 504, 0);
	trans[0][1646]	= settr(1645,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1648] = settr(1647,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1647,0,1647,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1647]	= settr(1646,0,1649,1028,1028,"CRM2LEG?6,5", 1, 504, 0);
	trans[0][1649]	= settr(1648,0,1680,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][1651] = settr(1650,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1650,0,1650,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1650]	= settr(1649,0,115,1029,1029,"CRM2LEG?9,3", 1, 504, 0);
	trans[0][1652]	= settr(1651,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1654] = settr(1653,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1653,0,1653,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1653]	= settr(1652,0,115,1030,1030,"CRM2LEG?8,3", 1, 504, 0);
	trans[0][1655]	= settr(1654,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1657] = settr(1656,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1656,0,1656,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1656]	= settr(1655,0,115,1031,1031,"CRM2LEG?7,3", 1, 504, 0);
	trans[0][1658]	= settr(1657,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1660] = settr(1659,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1659,0,1659,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1659]	= settr(1658,0,115,1032,1032,"CRM2LEG?9,1", 1, 504, 0);
	trans[0][1661]	= settr(1660,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1663] = settr(1662,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1662,0,1662,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1662]	= settr(1661,0,115,1033,1033,"CRM2LEG?8,1", 1, 504, 0);
	trans[0][1664]	= settr(1663,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1666] = settr(1665,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1665,0,1665,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1665]	= settr(1664,0,115,1034,1034,"CRM2LEG?7,1", 1, 504, 0);
	trans[0][1667]	= settr(1666,0,115,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][1669] = settr(1668,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1668,0,1668,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1668]	= settr(1667,0,1680,1035,1035,"CRM2LEG?9,2", 1, 504, 0);
	trans[0][1670]	= settr(1669,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1672] = settr(1671,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1671,0,1671,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1671]	= settr(1670,0,1680,1036,1036,"CRM2LEG?8,2", 1, 504, 0);
	trans[0][1673]	= settr(1672,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][1675] = settr(1674,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1674,0,1674,0,0,"sub-sequence", 0, 2, 0);
	trans[0][1674]	= settr(1673,0,1680,1037,1037,"CRM2LEG?7,2", 1, 504, 0);
	trans[0][1676]	= settr(1675,0,1680,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][1682]	= settr(1681,0,1683,1,0,"break", 0, 2, 0);
	trans[0][1683]	= settr(1682,0,0,1038,1038,"-end-", 0, 3500, 0);
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
