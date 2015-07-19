# maxx 1
# maxx 2
wm title . "scenario"
wm geometry . 640x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 104 0 180 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 103 -2 177 18 -fill ivory
.c create text 140 8 -text "0::init:"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 460 32 -fill #eef -dash {6 4}
.c create line 300 36 300 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 1 (Used 0 nobox 0)
.c create rectangle 278 24 326 44 -fill black
# ProcLine[2] stays at 1 (Used 0 nobox 0)
.c create rectangle 276 22 324 42 -fill ivory
.c create text 300 32 -text "1:LEG"
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 460 56 -fill #eef -dash {6 4}
.c create line 460 36 460 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 0 to 3 (Used 0 nobox 0)
.c create rectangle 438 48 486 68 -fill black
# ProcLine[3] stays at 3 (Used 0 nobox 0)
.c create rectangle 436 46 484 66 -fill ivory
.c create text 460 56 -text "2:CRM"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 460 80 -fill #eef -dash {6 4}
.c create line 460 72 460 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 3 to 5 (Used 1 nobox 0)
# ProcLine[3] stays at 5 (Used 1 nobox 1)
.c create rectangle 362 70 558 90 -fill white -width 0
.c create text 460 80 -text "CONTRACT RULE MANAGER"
.c create line 300 114 380 114 -fill darkblue -tags mesg -width 2
.c create line 380 114 460 114 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 104 -fill #eef -text "7"
.c create line 140 104 460 104 -fill #eef -dash {6 4}
.c create line 300 48 300 92 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1 to 7 (Used 1 nobox 1)
# ProcLine[2] stays at 7 (Used 1 nobox 1)
.c create rectangle 226 94 374 114 -fill white -width 0
.c create text 300 104 -text "LEG2CRM!RegReq,S"
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 460 128 -fill #eef -dash {6 4}
.c create line 460 96 460 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 5 to 9 (Used 1 nobox 1)
# ProcLine[3] stays at 9 (Used 1 nobox 1)
.c create rectangle 386 118 534 138 -fill white -width 0
.c create text 460 128 -text "LEG2CRM?RegReq,S"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 460 152 -fill #eef -dash {6 4}
.c create line 460 144 460 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 9 to 11 (Used 1 nobox 1)
# ProcLine[3] stays at 11 (Used 1 nobox 1)
.c create rectangle 434 142 486 162 -fill white -width 0
.c create text 460 152 -text "Start"
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 460 176 -fill #eef -dash {6 4}
.c create line 460 168 460 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 11 to 13 (Used 1 nobox 1)
# ProcLine[3] stays at 13 (Used 1 nobox 1)
.c create rectangle 314 166 606 186 -fill white -width 0
.c create text 460 176 -text "Registration Request by Student"
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 460 200 -fill #eef -dash {6 4}
.c create line 460 192 460 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 13 to 15 (Used 1 nobox 1)
# ProcLine[3] stays at 15 (Used 1 nobox 1)
.c create rectangle 452 190 468 210 -fill white -width 0
.c create text 460 200 -text ""
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 460 224 -fill #eef -dash {6 4}
.c create line 460 216 460 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 15 to 17 (Used 1 nobox 1)
# ProcLine[3] stays at 17 (Used 1 nobox 1)
.c create rectangle 303 214 617 234 -fill white -width 0
.c create text 460 224 -text "<originator>STUDENT</originator>"
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 460 248 -fill #eef -dash {6 4}
.c create line 460 240 460 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 17 to 19 (Used 1 nobox 1)
# ProcLine[3] stays at 19 (Used 1 nobox 1)
.c create rectangle 332 238 588 258 -fill white -width 0
.c create text 460 248 -text "<responder>LMS</responder>"
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 460 272 -fill #eef -dash {6 4}
.c create line 460 264 460 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 19 to 21 (Used 1 nobox 1)
# ProcLine[3] stays at 21 (Used 1 nobox 1)
.c create rectangle 298 262 622 282 -fill white -width 0
.c create text 460 272 -text "<type>Registration Request</type>"
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 460 296 -fill #eef -dash {6 4}
.c create line 460 288 460 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 21 to 23 (Used 1 nobox 1)
# ProcLine[3] stays at 23 (Used 1 nobox 1)
.c create rectangle 340 286 580 306 -fill white -width 0
.c create text 460 296 -text "<status>success</status>"
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 460 320 -fill #eef -dash {6 4}
.c create line 460 312 460 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 23 to 25 (Used 1 nobox 1)
# ProcLine[3] stays at 25 (Used 1 nobox 1)
.c create rectangle 452 310 468 330 -fill white -width 0
.c create text 460 320 -text ""
.c create line 460 354 380 354 -fill darkblue -tags mesg -width 2
.c create line 380 354 300 354 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 460 344 -fill #eef -dash {6 4}
.c create line 460 336 460 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 25 to 27 (Used 1 nobox 1)
# ProcLine[3] stays at 27 (Used 1 nobox 1)
.c create rectangle 394 334 526 354 -fill white -width 0
.c create text 460 344 -text "CRM2LEG!CCR,CO"
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 460 368 -fill #eef -dash {6 4}
.c create line 300 120 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 7 to 29 (Used 1 nobox 1)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 234 358 366 378 -fill white -width 0
.c create text 300 368 -text "CRM2LEG?CCR,CO"
.c create line 300 402 380 402 -fill darkblue -tags mesg -width 2
.c create line 380 402 460 402 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 460 392 -fill #eef -dash {6 4}
.c create line 300 384 300 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 29 to 31 (Used 1 nobox 1)
# ProcLine[2] stays at 31 (Used 1 nobox 1)
.c create rectangle 215 382 385 402 -fill white -width 0
.c create text 300 392 -text "LEG2CRM!RegReply,S"
.c create text 70 416 -fill #eef -text "33"
.c create line 140 416 460 416 -fill #eef -dash {6 4}
.c create line 460 360 460 404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 27 to 33 (Used 1 nobox 1)
# ProcLine[3] stays at 33 (Used 1 nobox 1)
.c create rectangle 375 406 545 426 -fill white -width 0
.c create text 460 416 -text "LEG2CRM?RegReply,S"
.c create text 70 440 -fill #eef -text "35"
.c create line 140 440 460 440 -fill #eef -dash {6 4}
.c create line 460 432 460 428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 33 to 35 (Used 1 nobox 1)
# ProcLine[3] stays at 35 (Used 1 nobox 1)
.c create rectangle 380 430 540 450 -fill white -width 0
.c create text 460 440 -text "Course list reply"
.c create text 70 464 -fill #eef -text "37"
.c create line 140 464 460 464 -fill #eef -dash {6 4}
.c create line 460 456 460 452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 35 to 37 (Used 1 nobox 1)
# ProcLine[3] stays at 37 (Used 1 nobox 1)
.c create rectangle 452 454 468 474 -fill white -width 0
.c create text 460 464 -text ""
.c create text 70 488 -fill #eef -text "39"
.c create line 140 488 460 488 -fill #eef -dash {6 4}
.c create line 460 480 460 476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 37 to 39 (Used 1 nobox 1)
# ProcLine[3] stays at 39 (Used 1 nobox 1)
.c create rectangle 322 478 598 498 -fill white -width 0
.c create text 460 488 -text "<originator>LMS</originator>"
.c create text 70 512 -fill #eef -text "41"
.c create line 140 512 460 512 -fill #eef -dash {6 4}
.c create line 460 504 460 500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 39 to 41 (Used 1 nobox 1)
# ProcLine[3] stays at 41 (Used 1 nobox 1)
.c create rectangle 314 502 606 522 -fill white -width 0
.c create text 460 512 -text "<responder>STUDENT</responder>"
.c create text 70 536 -fill #eef -text "43"
.c create line 140 536 460 536 -fill #eef -dash {6 4}
.c create line 460 528 460 524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 41 to 43 (Used 1 nobox 1)
# ProcLine[3] stays at 43 (Used 1 nobox 1)
.c create rectangle 356 526 564 546 -fill white -width 0
.c create text 460 536 -text "<type>RegReply</type>"
.c create text 70 560 -fill #eef -text "45"
.c create line 140 560 460 560 -fill #eef -dash {6 4}
.c create line 460 552 460 548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 43 to 45 (Used 1 nobox 1)
# ProcLine[3] stays at 45 (Used 1 nobox 1)
.c create rectangle 340 550 580 570 -fill white -width 0
.c create text 460 560 -text "<status>success</status>"
.c create text 70 584 -fill #eef -text "47"
.c create line 140 584 460 584 -fill #eef -dash {6 4}
.c create line 460 576 460 572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 45 to 47 (Used 1 nobox 1)
# ProcLine[3] stays at 47 (Used 1 nobox 1)
.c create rectangle 452 574 468 594 -fill white -width 0
.c create text 460 584 -text ""
.c create line 460 618 380 618 -fill darkblue -tags mesg -width 2
.c create line 380 618 300 618 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 608 -fill #eef -text "49"
.c create line 140 608 460 608 -fill #eef -dash {6 4}
.c create line 460 600 460 596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 47 to 49 (Used 1 nobox 1)
# ProcLine[3] stays at 49 (Used 1 nobox 1)
.c create rectangle 394 598 526 618 -fill white -width 0
.c create text 460 608 -text "CRM2LEG!CCO,CO"
.c create text 70 632 -fill #eef -text "51"
.c create line 140 632 460 632 -fill #eef -dash {6 4}
.c create line 300 408 300 620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 31 to 51 (Used 1 nobox 1)
# ProcLine[2] stays at 51 (Used 1 nobox 1)
.c create rectangle 234 622 366 642 -fill white -width 0
.c create text 300 632 -text "CRM2LEG?CCO,CO"
.c create line 300 666 380 666 -fill darkblue -tags mesg -width 2
.c create line 380 666 460 666 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 656 -fill #eef -text "53"
.c create line 140 656 460 656 -fill #eef -dash {6 4}
.c create line 300 648 300 644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 51 to 53 (Used 1 nobox 1)
# ProcLine[2] stays at 53 (Used 1 nobox 1)
.c create rectangle 244 646 356 666 -fill white -width 0
.c create text 300 656 -text "LEG2CRM!C1,S"
.c create text 70 680 -fill #eef -text "55"
.c create line 140 680 460 680 -fill #eef -dash {6 4}
.c create line 460 624 460 668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 49 to 55 (Used 1 nobox 1)
# ProcLine[3] stays at 55 (Used 1 nobox 1)
.c create rectangle 404 670 516 690 -fill white -width 0
.c create text 460 680 -text "LEG2CRM?C1,S"
.c create text 70 704 -fill #eef -text "57"
.c create line 140 704 460 704 -fill #eef -dash {6 4}
.c create line 460 696 460 692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 55 to 57 (Used 1 nobox 1)
# ProcLine[3] stays at 57 (Used 1 nobox 1)
.c create rectangle 452 694 468 714 -fill white -width 0
.c create text 460 704 -text "C1"
.c create text 70 728 -fill #eef -text "59"
.c create line 140 728 460 728 -fill #eef -dash {6 4}
.c create line 460 720 460 716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 57 to 59 (Used 1 nobox 1)
# ProcLine[3] stays at 59 (Used 1 nobox 1)
.c create rectangle 452 718 468 738 -fill white -width 0
.c create text 460 728 -text ""
.c create text 70 752 -fill #eef -text "61"
.c create line 140 752 460 752 -fill #eef -dash {6 4}
.c create line 460 744 460 740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 59 to 61 (Used 1 nobox 1)
# ProcLine[3] stays at 61 (Used 1 nobox 1)
.c create rectangle 303 742 617 762 -fill white -width 0
.c create text 460 752 -text "<originator>STUDENT</originator>"
.c create text 70 776 -fill #eef -text "63"
.c create line 140 776 460 776 -fill #eef -dash {6 4}
.c create line 460 768 460 764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 61 to 63 (Used 1 nobox 1)
# ProcLine[3] stays at 63 (Used 1 nobox 1)
.c create rectangle 332 766 588 786 -fill white -width 0
.c create text 460 776 -text "<responder>LMS</responder>"
.c create text 70 800 -fill #eef -text "65"
.c create line 140 800 460 800 -fill #eef -dash {6 4}
.c create line 460 792 460 788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 63 to 65 (Used 1 nobox 1)
# ProcLine[3] stays at 65 (Used 1 nobox 1)
.c create rectangle 386 790 534 810 -fill white -width 0
.c create text 460 800 -text "<type>C1</type>"
.c create text 70 824 -fill #eef -text "67"
.c create line 140 824 460 824 -fill #eef -dash {6 4}
.c create line 460 816 460 812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 65 to 67 (Used 1 nobox 1)
# ProcLine[3] stays at 67 (Used 1 nobox 1)
.c create rectangle 340 814 580 834 -fill white -width 0
.c create text 460 824 -text "<status>success</status>"
.c create text 70 848 -fill #eef -text "69"
.c create line 140 848 460 848 -fill #eef -dash {6 4}
.c create line 460 840 460 836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 67 to 69 (Used 1 nobox 1)
# ProcLine[3] stays at 69 (Used 1 nobox 1)
.c create rectangle 452 838 468 858 -fill white -width 0
.c create text 460 848 -text ""
.c create text 70 872 -fill #eef -text "71"
.c create line 140 872 460 872 -fill #eef -dash {6 4}
.c create line 460 864 460 860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 69 to 71 (Used 1 nobox 1)
# ProcLine[3] stays at 71 (Used 1 nobox 1)
.c create rectangle 404 862 516 882 -fill white -width 0
.c create text 460 872 -text "C1 is chosen"
.c create line 460 906 380 906 -fill darkblue -tags mesg -width 2
.c create line 380 906 300 906 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 896 -fill #eef -text "73"
.c create line 140 896 460 896 -fill #eef -dash {6 4}
.c create line 460 888 460 884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 71 to 73 (Used 1 nobox 1)
# ProcLine[3] stays at 73 (Used 1 nobox 1)
.c create rectangle 394 886 526 906 -fill white -width 0
.c create text 460 896 -text "CRM2LEG!CCO,CO"
.c create text 70 920 -fill #eef -text "75"
.c create line 140 920 460 920 -fill #eef -dash {6 4}
.c create line 300 672 300 908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 53 to 75 (Used 1 nobox 1)
# ProcLine[2] stays at 75 (Used 1 nobox 1)
.c create rectangle 234 910 366 930 -fill white -width 0
.c create text 300 920 -text "CRM2LEG?CCO,CO"
.c create line 300 954 380 954 -fill darkblue -tags mesg -width 2
.c create line 380 954 460 954 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 944 -fill #eef -text "77"
.c create line 140 944 460 944 -fill #eef -dash {6 4}
.c create line 300 936 300 932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 75 to 77 (Used 1 nobox 1)
# ProcLine[2] stays at 77 (Used 1 nobox 1)
.c create rectangle 191 934 409 954 -fill white -width 0
.c create text 300 944 -text "LEG2CRM!ChooseAccept,TF"
.c create text 70 968 -fill #eef -text "79"
.c create line 140 968 460 968 -fill #eef -dash {6 4}
.c create line 460 912 460 956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 73 to 79 (Used 1 nobox 1)
# ProcLine[3] stays at 79 (Used 1 nobox 1)
.c create rectangle 351 958 569 978 -fill white -width 0
.c create text 460 968 -text "LEG2CRM?ChooseAccept,TF"
.c create text 70 992 -fill #eef -text "81"
.c create line 140 992 460 992 -fill #eef -dash {6 4}
.c create line 460 984 460 980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 79 to 81 (Used 1 nobox 1)
# ProcLine[3] stays at 81 (Used 1 nobox 1)
.c create rectangle 375 982 545 1002 -fill white -width 0
.c create text 460 992 -text "Accept the choice "
.c create text 70 1016 -fill #eef -text "83"
.c create line 140 1016 460 1016 -fill #eef -dash {6 4}
.c create line 460 1008 460 1004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 81 to 83 (Used 1 nobox 1)
# ProcLine[3] stays at 83 (Used 1 nobox 1)
.c create rectangle 452 1006 468 1026 -fill white -width 0
.c create text 460 1016 -text ""
.c create text 70 1040 -fill #eef -text "85"
.c create line 140 1040 460 1040 -fill #eef -dash {6 4}
.c create line 460 1032 460 1028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 83 to 85 (Used 1 nobox 1)
# ProcLine[3] stays at 85 (Used 1 nobox 1)
.c create rectangle 322 1030 598 1050 -fill white -width 0
.c create text 460 1040 -text "<originator>LMS</originator>"
.c create text 70 1064 -fill #eef -text "87"
.c create line 140 1064 460 1064 -fill #eef -dash {6 4}
.c create line 460 1056 460 1052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 85 to 87 (Used 1 nobox 1)
# ProcLine[3] stays at 87 (Used 1 nobox 1)
.c create rectangle 308 1054 612 1074 -fill white -width 0
.c create text 460 1064 -text "<responder>LSTUDENT</responder>"
.c create text 70 1088 -fill #eef -text "89"
.c create line 140 1088 460 1088 -fill #eef -dash {6 4}
.c create line 460 1080 460 1076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 87 to 89 (Used 1 nobox 1)
# ProcLine[3] stays at 89 (Used 1 nobox 1)
.c create rectangle 338 1078 582 1098 -fill white -width 0
.c create text 460 1088 -text "<type>ChooseAccept</type>"
.c create text 70 1112 -fill #eef -text "91"
.c create line 140 1112 460 1112 -fill #eef -dash {6 4}
.c create line 460 1104 460 1100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 89 to 91 (Used 1 nobox 1)
# ProcLine[3] stays at 91 (Used 1 nobox 1)
.c create rectangle 308 1102 612 1122 -fill white -width 0
.c create text 460 1112 -text "<status>technical fail</status>"
.c create text 70 1136 -fill #eef -text "93"
.c create line 140 1136 460 1136 -fill #eef -dash {6 4}
.c create line 460 1128 460 1124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 91 to 93 (Used 1 nobox 1)
# ProcLine[3] stays at 93 (Used 1 nobox 1)
.c create rectangle 452 1126 468 1146 -fill white -width 0
.c create text 460 1136 -text ""
.c create text 70 1160 -fill #eef -text "95"
.c create line 140 1160 460 1160 -fill #eef -dash {6 4}
.c create line 460 1152 460 1148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 93 to 95 (Used 1 nobox 1)
# ProcLine[3] stays at 95 (Used 1 nobox 1)
.c create rectangle 244 1150 676 1170 -fill white -width 0
.c create text 460 1160 -text "Technical fail on validating choice of course"
.c create text 70 1184 -fill #eef -text "97"
.c create line 140 1184 460 1184 -fill #eef -dash {6 4}
.c create line 460 1176 460 1172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 95 to 97 (Used 1 nobox 1)
# ProcLine[3] stays at 97 (Used 1 nobox 1)
.c create rectangle 452 1174 468 1194 -fill white -width 0
.c create text 460 1184 -text ""
.c create text 70 1208 -fill #eef -text "99"
.c create line 140 1208 460 1208 -fill #eef -dash {6 4}
.c create line 460 1200 460 1196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 97 to 99 (Used 1 nobox 1)
# ProcLine[3] stays at 99 (Used 1 nobox 1)
.c create rectangle 314 1198 606 1218 -fill white -width 0
.c create text 460 1208 -text "<originator>reset</originator>"
.c create text 70 1232 -fill #eef -text "101"
.c create line 140 1232 460 1232 -fill #eef -dash {6 4}
.c create line 460 1224 460 1220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 99 to 101 (Used 1 nobox 1)
# ProcLine[3] stays at 101 (Used 1 nobox 1)
.c create rectangle 322 1222 598 1242 -fill white -width 0
.c create text 460 1232 -text "<responder>reset</responder>"
.c create text 70 1256 -fill #eef -text "103"
.c create line 140 1256 460 1256 -fill #eef -dash {6 4}
.c create line 460 1248 460 1244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 101 to 103 (Used 1 nobox 1)
# ProcLine[3] stays at 103 (Used 1 nobox 1)
.c create rectangle 370 1246 550 1266 -fill white -width 0
.c create text 460 1256 -text "<type>reset</type>"
.c create text 70 1280 -fill #eef -text "105"
.c create line 140 1280 460 1280 -fill #eef -dash {6 4}
.c create line 460 1272 460 1268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 103 to 105 (Used 1 nobox 1)
# ProcLine[3] stays at 105 (Used 1 nobox 1)
.c create rectangle 351 1270 569 1290 -fill white -width 0
.c create text 460 1280 -text "<status>reset</status>"
.c create text 70 1304 -fill #eef -text "107"
.c create line 140 1304 460 1304 -fill #eef -dash {6 4}
.c create line 460 1296 460 1292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 105 to 107 (Used 1 nobox 1)
# ProcLine[3] stays at 107 (Used 1 nobox 1)
.c create rectangle 452 1294 468 1314 -fill white -width 0
.c create text 460 1304 -text ""
.c create line 460 1338 380 1338 -fill darkblue -tags mesg -width 2
.c create line 380 1338 300 1338 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1328 -fill #eef -text "109"
.c create line 140 1328 460 1328 -fill #eef -dash {6 4}
.c create line 460 1320 460 1316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 107 to 109 (Used 1 nobox 1)
# ProcLine[3] stays at 109 (Used 1 nobox 1)
.c create rectangle 394 1318 526 1338 -fill white -width 0
.c create text 460 1328 -text "CRM2LEG!CCO,CO"
.c create text 70 1352 -fill #eef -text "111"
.c create line 140 1352 460 1352 -fill #eef -dash {6 4}
.c create line 300 960 300 1340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 77 to 111 (Used 1 nobox 1)
# ProcLine[2] stays at 111 (Used 1 nobox 1)
.c create rectangle 234 1342 366 1362 -fill white -width 0
.c create text 300 1352 -text "CRM2LEG?CCO,CO"
.c create line 300 1386 380 1386 -fill darkblue -tags mesg -width 2
.c create line 380 1386 460 1386 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1376 -fill #eef -text "113"
.c create line 140 1376 460 1376 -fill #eef -dash {6 4}
.c create line 300 1368 300 1364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 111 to 113 (Used 1 nobox 1)
# ProcLine[2] stays at 113 (Used 1 nobox 1)
.c create rectangle 196 1366 404 1386 -fill white -width 0
.c create text 300 1376 -text "LEG2CRM!ChooseReject,S"
.c create text 70 1400 -fill #eef -text "115"
.c create line 140 1400 460 1400 -fill #eef -dash {6 4}
.c create line 460 1344 460 1388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 109 to 115 (Used 1 nobox 1)
# ProcLine[3] stays at 115 (Used 1 nobox 1)
.c create rectangle 356 1390 564 1410 -fill white -width 0
.c create text 460 1400 -text "LEG2CRM?ChooseReject,S"
.c create text 70 1424 -fill #eef -text "117"
.c create line 140 1424 460 1424 -fill #eef -dash {6 4}
.c create line 460 1416 460 1412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 115 to 117 (Used 1 nobox 1)
# ProcLine[3] stays at 117 (Used 1 nobox 1)
.c create rectangle 375 1414 545 1434 -fill white -width 0
.c create text 460 1424 -text "Reject the choice "
.c create text 70 1448 -fill #eef -text "119"
.c create line 140 1448 460 1448 -fill #eef -dash {6 4}
.c create line 460 1440 460 1436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 117 to 119 (Used 1 nobox 1)
# ProcLine[3] stays at 119 (Used 1 nobox 1)
.c create rectangle 452 1438 468 1458 -fill white -width 0
.c create text 460 1448 -text ""
.c create text 70 1472 -fill #eef -text "121"
.c create line 140 1472 460 1472 -fill #eef -dash {6 4}
.c create line 460 1464 460 1460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 119 to 121 (Used 1 nobox 1)
# ProcLine[3] stays at 121 (Used 1 nobox 1)
.c create rectangle 322 1462 598 1482 -fill white -width 0
.c create text 460 1472 -text "<originator>LMS</originator>"
.c create text 70 1496 -fill #eef -text "123"
.c create line 140 1496 460 1496 -fill #eef -dash {6 4}
.c create line 460 1488 460 1484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 121 to 123 (Used 1 nobox 1)
# ProcLine[3] stays at 123 (Used 1 nobox 1)
.c create rectangle 314 1486 606 1506 -fill white -width 0
.c create text 460 1496 -text "<responder>STUDENT</responder>"
.c create text 70 1520 -fill #eef -text "125"
.c create line 140 1520 460 1520 -fill #eef -dash {6 4}
.c create line 460 1512 460 1508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 123 to 125 (Used 1 nobox 1)
# ProcLine[3] stays at 125 (Used 1 nobox 1)
.c create rectangle 338 1510 582 1530 -fill white -width 0
.c create text 460 1520 -text "<type>ChooseReject</type>"
.c create text 70 1544 -fill #eef -text "127"
.c create line 140 1544 460 1544 -fill #eef -dash {6 4}
.c create line 460 1536 460 1532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 125 to 127 (Used 1 nobox 1)
# ProcLine[3] stays at 127 (Used 1 nobox 1)
.c create rectangle 340 1534 580 1554 -fill white -width 0
.c create text 460 1544 -text "<status>success</status>"
.c create text 70 1568 -fill #eef -text "129"
.c create line 140 1568 460 1568 -fill #eef -dash {6 4}
.c create line 460 1560 460 1556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 127 to 129 (Used 1 nobox 1)
# ProcLine[3] stays at 129 (Used 1 nobox 1)
.c create rectangle 452 1558 468 1578 -fill white -width 0
.c create text 460 1568 -text ""
.c create text 70 1592 -fill #eef -text "131"
.c create line 140 1592 460 1592 -fill #eef -dash {6 4}
.c create line 460 1584 460 1580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 129 to 131 (Used 1 nobox 1)
# ProcLine[3] stays at 131 (Used 1 nobox 1)
.c create rectangle 452 1582 468 1602 -fill white -width 0
.c create text 460 1592 -text ""
.c create text 70 1616 -fill #eef -text "133"
.c create line 140 1616 460 1616 -fill #eef -dash {6 4}
.c create line 460 1608 460 1604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 131 to 133 (Used 1 nobox 1)
# ProcLine[3] stays at 133 (Used 1 nobox 1)
.c create rectangle 314 1606 606 1626 -fill white -width 0
.c create text 460 1616 -text "<originator>reset</originator>"
.c create text 70 1640 -fill #eef -text "135"
.c create line 140 1640 460 1640 -fill #eef -dash {6 4}
.c create line 460 1632 460 1628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 133 to 135 (Used 1 nobox 1)
# ProcLine[3] stays at 135 (Used 1 nobox 1)
.c create rectangle 322 1630 598 1650 -fill white -width 0
.c create text 460 1640 -text "<responder>reset</responder>"
.c create text 70 1664 -fill #eef -text "137"
.c create line 140 1664 460 1664 -fill #eef -dash {6 4}
.c create line 460 1656 460 1652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 135 to 137 (Used 1 nobox 1)
# ProcLine[3] stays at 137 (Used 1 nobox 1)
.c create rectangle 370 1654 550 1674 -fill white -width 0
.c create text 460 1664 -text "<type>reset</type>"
.c create text 70 1688 -fill #eef -text "139"
.c create line 140 1688 460 1688 -fill #eef -dash {6 4}
.c create line 460 1680 460 1676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 137 to 139 (Used 1 nobox 1)
# ProcLine[3] stays at 139 (Used 1 nobox 1)
.c create rectangle 351 1678 569 1698 -fill white -width 0
.c create text 460 1688 -text "<status>reset</status>"
.c create text 70 1712 -fill #eef -text "141"
.c create line 140 1712 460 1712 -fill #eef -dash {6 4}
.c create line 460 1704 460 1700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 139 to 141 (Used 1 nobox 1)
# ProcLine[3] stays at 141 (Used 1 nobox 1)
.c create rectangle 452 1702 468 1722 -fill white -width 0
.c create text 460 1712 -text ""
.c create line 460 1746 380 1746 -fill darkblue -tags mesg -width 2
.c create line 380 1746 300 1746 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1736 -fill #eef -text "143"
.c create line 140 1736 460 1736 -fill #eef -dash {6 4}
.c create line 460 1728 460 1724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 141 to 143 (Used 1 nobox 1)
# ProcLine[3] stays at 143 (Used 1 nobox 1)
.c create rectangle 394 1726 526 1746 -fill white -width 0
.c create text 460 1736 -text "CRM2LEG!CCO,CO"
.c create text 70 1760 -fill #eef -text "145"
.c create line 140 1760 460 1760 -fill #eef -dash {6 4}
.c create line 300 1392 300 1748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 113 to 145 (Used 1 nobox 1)
# ProcLine[2] stays at 145 (Used 1 nobox 1)
.c create rectangle 234 1750 366 1770 -fill white -width 0
.c create text 300 1760 -text "CRM2LEG?CCO,CO"
.c create text 70 1784 -fill #eef -text "147"
.c create line 140 1784 460 1784 -fill #eef -dash {6 4}
.c create line 300 1776 300 1772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 145 to 147 (Used 1 nobox 1)
# ProcLine[2] stays at 147 (Used 1 nobox 1)
.c create rectangle 244 1774 356 1794 -fill white -width 0
.c create text 300 1784 -text "LEG2CRM!C1,P"
.c lower grid
.c raise mesg
