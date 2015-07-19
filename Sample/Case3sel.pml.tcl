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
.c create rectangle 244 94 356 114 -fill white -width 0
.c create text 300 104 -text "LEG2CRM!L2,S"
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 460 128 -fill #eef -dash {6 4}
.c create line 460 96 460 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 5 to 9 (Used 1 nobox 1)
# ProcLine[3] stays at 9 (Used 1 nobox 1)
.c create rectangle 404 118 516 138 -fill white -width 0
.c create text 460 128 -text "LEG2CRM?L2,S"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 460 152 -fill #eef -dash {6 4}
.c create line 460 144 460 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 9 to 11 (Used 1 nobox 1)
# ProcLine[3] stays at 11 (Used 1 nobox 1)
.c create rectangle 452 142 468 162 -fill white -width 0
.c create text 460 152 -text "L2"
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 460 176 -fill #eef -dash {6 4}
.c create line 460 168 460 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 11 to 13 (Used 1 nobox 1)
# ProcLine[3] stays at 13 (Used 1 nobox 1)
.c create rectangle 380 166 540 186 -fill white -width 0
.c create text 460 176 -text "Prohibited action"
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 460 200 -fill #eef -dash {6 4}
.c create line 460 192 460 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 13 to 15 (Used 1 nobox 1)
# ProcLine[3] stays at 15 (Used 1 nobox 1)
.c create rectangle 394 190 526 210 -fill white -width 0
.c create text 460 200 -text "CRM2LEG!CCP,CO"
.c create line 460 210 380 210 -fill darkred -tags mesg -width 2
.c create line 380 210 300 210 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 460 224 -fill #eef -dash {6 4}
.c create line 300 120 300 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 7 to 17 (Used 1 nobox 1)
# ProcLine[2] stays at 17 (Used 1 nobox 1)
.c create rectangle 234 214 366 234 -fill white -width 0
.c create text 300 224 -text "CRM2LEG?CCP,CO"
.c create line 300 258 380 258 -fill darkblue -tags mesg -width 2
.c create line 380 258 460 258 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 460 248 -fill #eef -dash {6 4}
.c create line 300 240 300 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 17 to 19 (Used 1 nobox 1)
# ProcLine[2] stays at 19 (Used 1 nobox 1)
.c create rectangle 244 238 356 258 -fill white -width 0
.c create text 300 248 -text "LEG2CRM!L3,S"
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 460 272 -fill #eef -dash {6 4}
.c create line 460 216 460 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 15 to 21 (Used 1 nobox 1)
# ProcLine[3] stays at 21 (Used 1 nobox 1)
.c create rectangle 404 262 516 282 -fill white -width 0
.c create text 460 272 -text "LEG2CRM?L3,S"
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 460 296 -fill #eef -dash {6 4}
.c create line 460 288 460 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 21 to 23 (Used 1 nobox 1)
# ProcLine[3] stays at 23 (Used 1 nobox 1)
.c create rectangle 452 286 468 306 -fill white -width 0
.c create text 460 296 -text "L3"
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 460 320 -fill #eef -dash {6 4}
.c create line 460 312 460 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 23 to 25 (Used 1 nobox 1)
# ProcLine[3] stays at 25 (Used 1 nobox 1)
.c create rectangle 380 310 540 330 -fill white -width 0
.c create text 460 320 -text "Prohibited action"
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 460 344 -fill #eef -dash {6 4}
.c create line 460 336 460 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 25 to 27 (Used 1 nobox 1)
# ProcLine[3] stays at 27 (Used 1 nobox 1)
.c create rectangle 394 334 526 354 -fill white -width 0
.c create text 460 344 -text "CRM2LEG!CCP,CO"
.c create line 460 354 380 354 -fill darkred -tags mesg -width 2
.c create line 380 354 300 354 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 460 368 -fill #eef -dash {6 4}
.c create line 300 264 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 19 to 29 (Used 1 nobox 1)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 234 358 366 378 -fill white -width 0
.c create text 300 368 -text "CRM2LEG?CCP,CO"
.c create line 300 402 380 402 -fill darkblue -tags mesg -width 2
.c create line 380 402 460 402 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 460 392 -fill #eef -dash {6 4}
.c create line 300 384 300 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 29 to 31 (Used 1 nobox 1)
# ProcLine[2] stays at 31 (Used 1 nobox 1)
.c create rectangle 228 382 372 402 -fill white -width 0
.c create text 300 392 -text "LEG2CRM!EXAM,LF"
.c create text 70 416 -fill #eef -text "33"
.c create line 140 416 460 416 -fill #eef -dash {6 4}
.c create line 460 360 460 404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 27 to 33 (Used 1 nobox 1)
# ProcLine[3] stays at 33 (Used 1 nobox 1)
.c create rectangle 388 406 532 426 -fill white -width 0
.c create text 460 416 -text "LEG2CRM?EXAM,LF"
.c create text 70 440 -fill #eef -text "35"
.c create line 140 440 460 440 -fill #eef -dash {6 4}
.c create line 460 432 460 428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 33 to 35 (Used 1 nobox 1)
# ProcLine[3] stays at 35 (Used 1 nobox 1)
.c create rectangle 436 430 484 450 -fill white -width 0
.c create text 460 440 -text "EXAM "
.c create text 70 464 -fill #eef -text "37"
.c create line 140 464 460 464 -fill #eef -dash {6 4}
.c create line 460 456 460 452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 35 to 37 (Used 1 nobox 1)
# ProcLine[3] stays at 37 (Used 1 nobox 1)
.c create rectangle 394 454 526 474 -fill white -width 0
.c create text 460 464 -text "CRM2LEG!NCC,CO"
.c create line 460 474 380 474 -fill darkred -tags mesg -width 2
.c create line 380 474 300 474 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 488 -fill #eef -text "39"
.c create line 140 488 460 488 -fill #eef -dash {6 4}
.c create line 300 408 300 476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 31 to 39 (Used 1 nobox 1)
# ProcLine[2] stays at 39 (Used 1 nobox 1)
.c create rectangle 234 478 366 498 -fill white -width 0
.c create text 300 488 -text "CRM2LEG?NCC,CO"
.c create line 300 522 380 522 -fill darkblue -tags mesg -width 2
.c create line 380 522 460 522 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 512 -fill #eef -text "41"
.c create line 140 512 460 512 -fill #eef -dash {6 4}
.c create line 300 504 300 500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 39 to 41 (Used 1 nobox 1)
# ProcLine[2] stays at 41 (Used 1 nobox 1)
.c create rectangle 234 502 366 522 -fill white -width 0
.c create text 300 512 -text "LEG2CRM!CW2,LF"
.c create text 70 536 -fill #eef -text "43"
.c create line 140 536 460 536 -fill #eef -dash {6 4}
.c create line 460 480 460 524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 37 to 43 (Used 1 nobox 1)
# ProcLine[3] stays at 43 (Used 1 nobox 1)
.c create rectangle 394 526 526 546 -fill white -width 0
.c create text 460 536 -text "LEG2CRM?CW2,LF"
.c create text 70 560 -fill #eef -text "45"
.c create line 140 560 460 560 -fill #eef -dash {6 4}
.c create line 460 552 460 548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 43 to 45 (Used 1 nobox 1)
# ProcLine[3] stays at 45 (Used 1 nobox 1)
.c create rectangle 442 550 478 570 -fill white -width 0
.c create text 460 560 -text "CW2 "
.c create text 70 584 -fill #eef -text "47"
.c create line 140 584 460 584 -fill #eef -dash {6 4}
.c create line 460 576 460 572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 45 to 47 (Used 1 nobox 1)
# ProcLine[3] stays at 47 (Used 1 nobox 1)
.c create rectangle 394 574 526 594 -fill white -width 0
.c create text 460 584 -text "CRM2LEG!NCC,CO"
.c create line 460 594 380 594 -fill darkred -tags mesg -width 2
.c create line 380 594 300 594 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 608 -fill #eef -text "49"
.c create line 140 608 460 608 -fill #eef -dash {6 4}
.c create line 300 528 300 596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 41 to 49 (Used 1 nobox 1)
# ProcLine[2] stays at 49 (Used 1 nobox 1)
.c create rectangle 234 598 366 618 -fill white -width 0
.c create text 300 608 -text "CRM2LEG?NCC,CO"
.c create line 300 642 380 642 -fill darkblue -tags mesg -width 2
.c create line 380 642 460 642 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 632 -fill #eef -text "51"
.c create line 140 632 460 632 -fill #eef -dash {6 4}
.c create line 300 624 300 620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 49 to 51 (Used 1 nobox 1)
# ProcLine[2] stays at 51 (Used 1 nobox 1)
.c create rectangle 234 622 366 642 -fill white -width 0
.c create text 300 632 -text "LEG2CRM!EXAM,S"
.c create text 70 656 -fill #eef -text "53"
.c create line 140 656 460 656 -fill #eef -dash {6 4}
.c create line 460 600 460 644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 47 to 53 (Used 1 nobox 1)
# ProcLine[3] stays at 53 (Used 1 nobox 1)
.c create rectangle 394 646 526 666 -fill white -width 0
.c create text 460 656 -text "LEG2CRM?EXAM,S"
.c create text 70 680 -fill #eef -text "55"
.c create line 140 680 460 680 -fill #eef -dash {6 4}
.c create line 460 672 460 668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 53 to 55 (Used 1 nobox 1)
# ProcLine[3] stays at 55 (Used 1 nobox 1)
.c create rectangle 436 670 484 690 -fill white -width 0
.c create text 460 680 -text "EXAM "
.c create text 70 704 -fill #eef -text "57"
.c create line 140 704 460 704 -fill #eef -dash {6 4}
.c create line 460 696 460 692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 55 to 57 (Used 1 nobox 1)
# ProcLine[3] stays at 57 (Used 1 nobox 1)
.c create rectangle 380 694 540 714 -fill white -width 0
.c create text 460 704 -text "Prohibited action"
.c create text 70 728 -fill #eef -text "59"
.c create line 140 728 460 728 -fill #eef -dash {6 4}
.c create line 460 720 460 716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 57 to 59 (Used 1 nobox 1)
# ProcLine[3] stays at 59 (Used 1 nobox 1)
.c create rectangle 394 718 526 738 -fill white -width 0
.c create text 460 728 -text "CRM2LEG!CCP,CO"
.c create line 460 738 380 738 -fill darkred -tags mesg -width 2
.c create line 380 738 300 738 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 752 -fill #eef -text "61"
.c create line 140 752 460 752 -fill #eef -dash {6 4}
.c create line 300 648 300 740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 51 to 61 (Used 1 nobox 1)
# ProcLine[2] stays at 61 (Used 1 nobox 1)
.c create rectangle 234 742 366 762 -fill white -width 0
.c create text 300 752 -text "CRM2LEG?CCP,CO"
.c create line 300 786 380 786 -fill darkblue -tags mesg -width 2
.c create line 380 786 460 786 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 776 -fill #eef -text "63"
.c create line 140 776 460 776 -fill #eef -dash {6 4}
.c create line 300 768 300 764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 61 to 63 (Used 1 nobox 1)
# ProcLine[2] stays at 63 (Used 1 nobox 1)
.c create rectangle 244 766 356 786 -fill white -width 0
.c create text 300 776 -text "LEG2CRM!L7,S"
.c create text 70 800 -fill #eef -text "65"
.c create line 140 800 460 800 -fill #eef -dash {6 4}
.c create line 460 744 460 788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 59 to 65 (Used 1 nobox 1)
# ProcLine[3] stays at 65 (Used 1 nobox 1)
.c create rectangle 404 790 516 810 -fill white -width 0
.c create text 460 800 -text "LEG2CRM?L7,S"
.c create text 70 824 -fill #eef -text "67"
.c create line 140 824 460 824 -fill #eef -dash {6 4}
.c create line 460 816 460 812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 65 to 67 (Used 1 nobox 1)
# ProcLine[3] stays at 67 (Used 1 nobox 1)
.c create rectangle 452 814 468 834 -fill white -width 0
.c create text 460 824 -text "L7"
.c create text 70 848 -fill #eef -text "69"
.c create line 140 848 460 848 -fill #eef -dash {6 4}
.c create line 460 840 460 836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 67 to 69 (Used 1 nobox 1)
# ProcLine[3] stays at 69 (Used 1 nobox 1)
.c create rectangle 380 838 540 858 -fill white -width 0
.c create text 460 848 -text "Prohibited action"
.c create text 70 872 -fill #eef -text "71"
.c create line 140 872 460 872 -fill #eef -dash {6 4}
.c create line 460 864 460 860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 69 to 71 (Used 1 nobox 1)
# ProcLine[3] stays at 71 (Used 1 nobox 1)
.c create rectangle 394 862 526 882 -fill white -width 0
.c create text 460 872 -text "CRM2LEG!CCP,CO"
.c create line 460 882 380 882 -fill darkred -tags mesg -width 2
.c create line 380 882 300 882 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 896 -fill #eef -text "73"
.c create line 140 896 460 896 -fill #eef -dash {6 4}
.c create line 300 792 300 884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 63 to 73 (Used 1 nobox 1)
# ProcLine[2] stays at 73 (Used 1 nobox 1)
.c create rectangle 234 886 366 906 -fill white -width 0
.c create text 300 896 -text "CRM2LEG?CCP,CO"
.c create line 300 930 380 930 -fill darkblue -tags mesg -width 2
.c create line 380 930 460 930 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 920 -fill #eef -text "75"
.c create line 140 920 460 920 -fill #eef -dash {6 4}
.c create line 300 912 300 908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 73 to 75 (Used 1 nobox 1)
# ProcLine[2] stays at 75 (Used 1 nobox 1)
.c create rectangle 244 910 356 930 -fill white -width 0
.c create text 300 920 -text "LEG2CRM!L8,S"
.c create text 70 944 -fill #eef -text "77"
.c create line 140 944 460 944 -fill #eef -dash {6 4}
.c create line 460 888 460 932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 71 to 77 (Used 1 nobox 1)
# ProcLine[3] stays at 77 (Used 1 nobox 1)
.c create rectangle 404 934 516 954 -fill white -width 0
.c create text 460 944 -text "LEG2CRM?L8,S"
.c create text 70 968 -fill #eef -text "79"
.c create line 140 968 460 968 -fill #eef -dash {6 4}
.c create line 460 960 460 956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 77 to 79 (Used 1 nobox 1)
# ProcLine[3] stays at 79 (Used 1 nobox 1)
.c create rectangle 452 958 468 978 -fill white -width 0
.c create text 460 968 -text "L8"
.c create text 70 992 -fill #eef -text "81"
.c create line 140 992 460 992 -fill #eef -dash {6 4}
.c create line 460 984 460 980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 79 to 81 (Used 1 nobox 1)
# ProcLine[3] stays at 81 (Used 1 nobox 1)
.c create rectangle 380 982 540 1002 -fill white -width 0
.c create text 460 992 -text "Prohibited action"
.c create text 70 1016 -fill #eef -text "83"
.c create line 140 1016 460 1016 -fill #eef -dash {6 4}
.c create line 460 1008 460 1004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 81 to 83 (Used 1 nobox 1)
# ProcLine[3] stays at 83 (Used 1 nobox 1)
.c create rectangle 394 1006 526 1026 -fill white -width 0
.c create text 460 1016 -text "CRM2LEG!CCP,CO"
.c create line 460 1026 380 1026 -fill darkred -tags mesg -width 2
.c create line 380 1026 300 1026 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1040 -fill #eef -text "85"
.c create line 140 1040 460 1040 -fill #eef -dash {6 4}
.c create line 300 936 300 1028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 75 to 85 (Used 1 nobox 1)
# ProcLine[2] stays at 85 (Used 1 nobox 1)
.c create rectangle 234 1030 366 1050 -fill white -width 0
.c create text 300 1040 -text "CRM2LEG?CCP,CO"
.c create line 300 1074 380 1074 -fill darkblue -tags mesg -width 2
.c create line 380 1074 460 1074 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1064 -fill #eef -text "87"
.c create line 140 1064 460 1064 -fill #eef -dash {6 4}
.c create line 300 1056 300 1052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 85 to 87 (Used 1 nobox 1)
# ProcLine[2] stays at 87 (Used 1 nobox 1)
.c create rectangle 239 1054 361 1074 -fill white -width 0
.c create text 300 1064 -text "LEG2CRM!CW1,S"
.c create text 70 1088 -fill #eef -text "89"
.c create line 140 1088 460 1088 -fill #eef -dash {6 4}
.c create line 460 1032 460 1076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 83 to 89 (Used 1 nobox 1)
# ProcLine[3] stays at 89 (Used 1 nobox 1)
.c create rectangle 399 1078 521 1098 -fill white -width 0
.c create text 460 1088 -text "LEG2CRM?CW1,S"
.c create text 70 1112 -fill #eef -text "91"
.c create line 140 1112 460 1112 -fill #eef -dash {6 4}
.c create line 460 1104 460 1100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 89 to 91 (Used 1 nobox 1)
# ProcLine[3] stays at 91 (Used 1 nobox 1)
.c create rectangle 442 1102 478 1122 -fill white -width 0
.c create text 460 1112 -text "CW1 "
.c create text 70 1136 -fill #eef -text "93"
.c create line 140 1136 460 1136 -fill #eef -dash {6 4}
.c create line 460 1128 460 1124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 91 to 93 (Used 1 nobox 1)
# ProcLine[3] stays at 93 (Used 1 nobox 1)
.c create rectangle 380 1126 540 1146 -fill white -width 0
.c create text 460 1136 -text "Prohibited action"
.c create text 70 1160 -fill #eef -text "95"
.c create line 140 1160 460 1160 -fill #eef -dash {6 4}
.c create line 460 1152 460 1148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 93 to 95 (Used 1 nobox 1)
# ProcLine[3] stays at 95 (Used 1 nobox 1)
.c create rectangle 394 1150 526 1170 -fill white -width 0
.c create text 460 1160 -text "CRM2LEG!CCP,CO"
.c create line 460 1170 380 1170 -fill darkred -tags mesg -width 2
.c create line 380 1170 300 1170 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1184 -fill #eef -text "97"
.c create line 140 1184 460 1184 -fill #eef -dash {6 4}
.c create line 300 1080 300 1172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 87 to 97 (Used 1 nobox 1)
# ProcLine[2] stays at 97 (Used 1 nobox 1)
.c create rectangle 234 1174 366 1194 -fill white -width 0
.c create text 300 1184 -text "CRM2LEG?CCP,CO"
.c create line 300 1218 380 1218 -fill darkblue -tags mesg -width 2
.c create line 380 1218 460 1218 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1208 -fill #eef -text "99"
.c create line 140 1208 460 1208 -fill #eef -dash {6 4}
.c create line 300 1200 300 1196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 97 to 99 (Used 1 nobox 1)
# ProcLine[2] stays at 99 (Used 1 nobox 1)
.c create rectangle 244 1198 356 1218 -fill white -width 0
.c create text 300 1208 -text "LEG2CRM!L4,S"
.c create text 70 1232 -fill #eef -text "101"
.c create line 140 1232 460 1232 -fill #eef -dash {6 4}
.c create line 460 1176 460 1220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 95 to 101 (Used 1 nobox 1)
# ProcLine[3] stays at 101 (Used 1 nobox 1)
.c create rectangle 404 1222 516 1242 -fill white -width 0
.c create text 460 1232 -text "LEG2CRM?L4,S"
.c create text 70 1256 -fill #eef -text "103"
.c create line 140 1256 460 1256 -fill #eef -dash {6 4}
.c create line 460 1248 460 1244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 101 to 103 (Used 1 nobox 1)
# ProcLine[3] stays at 103 (Used 1 nobox 1)
.c create rectangle 452 1246 468 1266 -fill white -width 0
.c create text 460 1256 -text "L4"
.c create text 70 1280 -fill #eef -text "105"
.c create line 140 1280 460 1280 -fill #eef -dash {6 4}
.c create line 460 1272 460 1268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 103 to 105 (Used 1 nobox 1)
# ProcLine[3] stays at 105 (Used 1 nobox 1)
.c create rectangle 380 1270 540 1290 -fill white -width 0
.c create text 460 1280 -text "Prohibited action"
.c create text 70 1304 -fill #eef -text "107"
.c create line 140 1304 460 1304 -fill #eef -dash {6 4}
.c create line 460 1296 460 1292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 105 to 107 (Used 1 nobox 1)
# ProcLine[3] stays at 107 (Used 1 nobox 1)
.c create rectangle 394 1294 526 1314 -fill white -width 0
.c create text 460 1304 -text "CRM2LEG!CCP,CO"
.c create line 460 1314 380 1314 -fill darkred -tags mesg -width 2
.c create line 380 1314 300 1314 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1328 -fill #eef -text "109"
.c create line 140 1328 460 1328 -fill #eef -dash {6 4}
.c create line 300 1224 300 1316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 99 to 109 (Used 1 nobox 1)
# ProcLine[2] stays at 109 (Used 1 nobox 1)
.c create rectangle 234 1318 366 1338 -fill white -width 0
.c create text 300 1328 -text "CRM2LEG?CCP,CO"
.c create line 300 1362 380 1362 -fill darkblue -tags mesg -width 2
.c create line 380 1362 460 1362 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1352 -fill #eef -text "111"
.c create line 140 1352 460 1352 -fill #eef -dash {6 4}
.c create line 300 1344 300 1340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 109 to 111 (Used 1 nobox 1)
# ProcLine[2] stays at 111 (Used 1 nobox 1)
.c create rectangle 234 1342 366 1362 -fill white -width 0
.c create text 300 1352 -text "LEG2CRM!CW1,LF"
.c create text 70 1376 -fill #eef -text "113"
.c create line 140 1376 460 1376 -fill #eef -dash {6 4}
.c create line 460 1320 460 1364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 107 to 113 (Used 1 nobox 1)
# ProcLine[3] stays at 113 (Used 1 nobox 1)
.c create rectangle 394 1366 526 1386 -fill white -width 0
.c create text 460 1376 -text "LEG2CRM?CW1,LF"
.c create text 70 1400 -fill #eef -text "115"
.c create line 140 1400 460 1400 -fill #eef -dash {6 4}
.c create line 460 1392 460 1388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 113 to 115 (Used 1 nobox 1)
# ProcLine[3] stays at 115 (Used 1 nobox 1)
.c create rectangle 442 1390 478 1410 -fill white -width 0
.c create text 460 1400 -text "CW1 "
.c create text 70 1424 -fill #eef -text "117"
.c create line 140 1424 460 1424 -fill #eef -dash {6 4}
.c create line 460 1416 460 1412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 115 to 117 (Used 1 nobox 1)
# ProcLine[3] stays at 117 (Used 1 nobox 1)
.c create rectangle 394 1414 526 1434 -fill white -width 0
.c create text 460 1424 -text "CRM2LEG!NCC,CO"
.c create line 460 1434 380 1434 -fill darkred -tags mesg -width 2
.c create line 380 1434 300 1434 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1448 -fill #eef -text "119"
.c create line 140 1448 460 1448 -fill #eef -dash {6 4}
.c create line 300 1368 300 1436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 111 to 119 (Used 1 nobox 1)
# ProcLine[2] stays at 119 (Used 1 nobox 1)
.c create rectangle 234 1438 366 1458 -fill white -width 0
.c create text 300 1448 -text "CRM2LEG?NCC,CO"
.c create line 300 1482 380 1482 -fill darkblue -tags mesg -width 2
.c create line 380 1482 460 1482 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1472 -fill #eef -text "121"
.c create line 140 1472 460 1472 -fill #eef -dash {6 4}
.c create line 300 1464 300 1460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 119 to 121 (Used 1 nobox 1)
# ProcLine[2] stays at 121 (Used 1 nobox 1)
.c create rectangle 239 1462 361 1482 -fill white -width 0
.c create text 300 1472 -text "LEG2CRM!CW1,S"
.c create text 70 1496 -fill #eef -text "123"
.c create line 140 1496 460 1496 -fill #eef -dash {6 4}
.c create line 460 1440 460 1484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 117 to 123 (Used 1 nobox 1)
# ProcLine[3] stays at 123 (Used 1 nobox 1)
.c create rectangle 399 1486 521 1506 -fill white -width 0
.c create text 460 1496 -text "LEG2CRM?CW1,S"
.c create text 70 1520 -fill #eef -text "125"
.c create line 140 1520 460 1520 -fill #eef -dash {6 4}
.c create line 460 1512 460 1508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 123 to 125 (Used 1 nobox 1)
# ProcLine[3] stays at 125 (Used 1 nobox 1)
.c create rectangle 442 1510 478 1530 -fill white -width 0
.c create text 460 1520 -text "CW1 "
.c create text 70 1544 -fill #eef -text "127"
.c create line 140 1544 460 1544 -fill #eef -dash {6 4}
.c create line 460 1536 460 1532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 125 to 127 (Used 1 nobox 1)
# ProcLine[3] stays at 127 (Used 1 nobox 1)
.c create rectangle 380 1534 540 1554 -fill white -width 0
.c create text 460 1544 -text "Prohibited action"
.c create text 70 1568 -fill #eef -text "129"
.c create line 140 1568 460 1568 -fill #eef -dash {6 4}
.c create line 460 1560 460 1556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 127 to 129 (Used 1 nobox 1)
# ProcLine[3] stays at 129 (Used 1 nobox 1)
.c create rectangle 394 1558 526 1578 -fill white -width 0
.c create text 460 1568 -text "CRM2LEG!CCP,CO"
.c create line 460 1578 380 1578 -fill darkred -tags mesg -width 2
.c create line 380 1578 300 1578 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1592 -fill #eef -text "131"
.c create line 140 1592 460 1592 -fill #eef -dash {6 4}
.c create line 300 1488 300 1580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 121 to 131 (Used 1 nobox 1)
# ProcLine[2] stays at 131 (Used 1 nobox 1)
.c create rectangle 234 1582 366 1602 -fill white -width 0
.c create text 300 1592 -text "CRM2LEG?CCP,CO"
.c create line 300 1626 380 1626 -fill darkblue -tags mesg -width 2
.c create line 380 1626 460 1626 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1616 -fill #eef -text "133"
.c create line 140 1616 460 1616 -fill #eef -dash {6 4}
.c create line 300 1608 300 1604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 131 to 133 (Used 1 nobox 1)
# ProcLine[2] stays at 133 (Used 1 nobox 1)
.c create rectangle 244 1606 356 1626 -fill white -width 0
.c create text 300 1616 -text "LEG2CRM!L4,S"
.c create text 70 1640 -fill #eef -text "135"
.c create line 140 1640 460 1640 -fill #eef -dash {6 4}
.c create line 460 1584 460 1628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 129 to 135 (Used 1 nobox 1)
# ProcLine[3] stays at 135 (Used 1 nobox 1)
.c create rectangle 404 1630 516 1650 -fill white -width 0
.c create text 460 1640 -text "LEG2CRM?L4,S"
.c create text 70 1664 -fill #eef -text "137"
.c create line 140 1664 460 1664 -fill #eef -dash {6 4}
.c create line 460 1656 460 1652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 135 to 137 (Used 1 nobox 1)
# ProcLine[3] stays at 137 (Used 1 nobox 1)
.c create rectangle 452 1654 468 1674 -fill white -width 0
.c create text 460 1664 -text "L4"
.c create text 70 1688 -fill #eef -text "139"
.c create line 140 1688 460 1688 -fill #eef -dash {6 4}
.c create line 460 1680 460 1676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 137 to 139 (Used 1 nobox 1)
# ProcLine[3] stays at 139 (Used 1 nobox 1)
.c create rectangle 380 1678 540 1698 -fill white -width 0
.c create text 460 1688 -text "Prohibited action"
.c create text 70 1712 -fill #eef -text "141"
.c create line 140 1712 460 1712 -fill #eef -dash {6 4}
.c create line 460 1704 460 1700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 139 to 141 (Used 1 nobox 1)
# ProcLine[3] stays at 141 (Used 1 nobox 1)
.c create rectangle 394 1702 526 1722 -fill white -width 0
.c create text 460 1712 -text "CRM2LEG!CCP,CO"
.c create line 460 1722 380 1722 -fill darkred -tags mesg -width 2
.c create line 380 1722 300 1722 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1736 -fill #eef -text "143"
.c create line 140 1736 460 1736 -fill #eef -dash {6 4}
.c create line 300 1632 300 1724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 133 to 143 (Used 1 nobox 1)
# ProcLine[2] stays at 143 (Used 1 nobox 1)
.c create rectangle 234 1726 366 1746 -fill white -width 0
.c create text 300 1736 -text "CRM2LEG?CCP,CO"
.c create line 300 1770 380 1770 -fill darkblue -tags mesg -width 2
.c create line 380 1770 460 1770 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1760 -fill #eef -text "145"
.c create line 140 1760 460 1760 -fill #eef -dash {6 4}
.c create line 300 1752 300 1748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 143 to 145 (Used 1 nobox 1)
# ProcLine[2] stays at 145 (Used 1 nobox 1)
.c create rectangle 239 1750 361 1770 -fill white -width 0
.c create text 300 1760 -text "LEG2CRM!L8,TF"
.c create text 70 1784 -fill #eef -text "147"
.c create line 140 1784 460 1784 -fill #eef -dash {6 4}
.c create line 460 1728 460 1772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 141 to 147 (Used 1 nobox 1)
# ProcLine[3] stays at 147 (Used 1 nobox 1)
.c create rectangle 399 1774 521 1794 -fill white -width 0
.c create text 460 1784 -text "LEG2CRM?L8,TF"
.c create text 70 1808 -fill #eef -text "149"
.c create line 140 1808 460 1808 -fill #eef -dash {6 4}
.c create line 460 1800 460 1796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 147 to 149 (Used 1 nobox 1)
# ProcLine[3] stays at 149 (Used 1 nobox 1)
.c create rectangle 452 1798 468 1818 -fill white -width 0
.c create text 460 1808 -text "L8"
.c create text 70 1832 -fill #eef -text "151"
.c create line 140 1832 460 1832 -fill #eef -dash {6 4}
.c create line 460 1824 460 1820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 149 to 151 (Used 1 nobox 1)
# ProcLine[3] stays at 151 (Used 1 nobox 1)
.c create rectangle 394 1822 526 1842 -fill white -width 0
.c create text 460 1832 -text "CRM2LEG!NCC,CO"
.c create line 460 1842 380 1842 -fill darkred -tags mesg -width 2
.c create line 380 1842 300 1842 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1856 -fill #eef -text "153"
.c create line 140 1856 460 1856 -fill #eef -dash {6 4}
.c create line 300 1776 300 1844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 145 to 153 (Used 1 nobox 1)
# ProcLine[2] stays at 153 (Used 1 nobox 1)
.c create rectangle 234 1846 366 1866 -fill white -width 0
.c create text 300 1856 -text "CRM2LEG?NCC,CO"
.c create line 300 1890 380 1890 -fill darkblue -tags mesg -width 2
.c create line 380 1890 460 1890 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 1880 -fill #eef -text "155"
.c create line 140 1880 460 1880 -fill #eef -dash {6 4}
.c create line 300 1872 300 1868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 153 to 155 (Used 1 nobox 1)
# ProcLine[2] stays at 155 (Used 1 nobox 1)
.c create rectangle 244 1870 356 1890 -fill white -width 0
.c create text 300 1880 -text "LEG2CRM!L8,S"
.c create text 70 1904 -fill #eef -text "157"
.c create line 140 1904 460 1904 -fill #eef -dash {6 4}
.c create line 460 1848 460 1892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 151 to 157 (Used 1 nobox 1)
# ProcLine[3] stays at 157 (Used 1 nobox 1)
.c create rectangle 404 1894 516 1914 -fill white -width 0
.c create text 460 1904 -text "LEG2CRM?L8,S"
.c create text 70 1928 -fill #eef -text "159"
.c create line 140 1928 460 1928 -fill #eef -dash {6 4}
.c create line 460 1920 460 1916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 157 to 159 (Used 1 nobox 1)
# ProcLine[3] stays at 159 (Used 1 nobox 1)
.c create rectangle 452 1918 468 1938 -fill white -width 0
.c create text 460 1928 -text "L8"
.c create text 70 1952 -fill #eef -text "161"
.c create line 140 1952 460 1952 -fill #eef -dash {6 4}
.c create line 460 1944 460 1940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 159 to 161 (Used 1 nobox 1)
# ProcLine[3] stays at 161 (Used 1 nobox 1)
.c create rectangle 380 1942 540 1962 -fill white -width 0
.c create text 460 1952 -text "Prohibited action"
.c create text 70 1976 -fill #eef -text "163"
.c create line 140 1976 460 1976 -fill #eef -dash {6 4}
.c create line 460 1968 460 1964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 161 to 163 (Used 1 nobox 1)
# ProcLine[3] stays at 163 (Used 1 nobox 1)
.c create rectangle 394 1966 526 1986 -fill white -width 0
.c create text 460 1976 -text "CRM2LEG!CCP,CO"
.c create line 460 1986 380 1986 -fill darkred -tags mesg -width 2
.c create line 380 1986 300 1986 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2000 -fill #eef -text "165"
.c create line 140 2000 460 2000 -fill #eef -dash {6 4}
.c create line 300 1896 300 1988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 155 to 165 (Used 1 nobox 1)
# ProcLine[2] stays at 165 (Used 1 nobox 1)
.c create rectangle 234 1990 366 2010 -fill white -width 0
.c create text 300 2000 -text "CRM2LEG?CCP,CO"
.c create line 300 2034 380 2034 -fill darkblue -tags mesg -width 2
.c create line 380 2034 460 2034 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2024 -fill #eef -text "167"
.c create line 140 2024 460 2024 -fill #eef -dash {6 4}
.c create line 300 2016 300 2012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 165 to 167 (Used 1 nobox 1)
# ProcLine[2] stays at 167 (Used 1 nobox 1)
.c create rectangle 239 2014 361 2034 -fill white -width 0
.c create text 300 2024 -text "LEG2CRM!L3,TF"
.c create text 70 2048 -fill #eef -text "169"
.c create line 140 2048 460 2048 -fill #eef -dash {6 4}
.c create line 460 1992 460 2036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 163 to 169 (Used 1 nobox 1)
# ProcLine[3] stays at 169 (Used 1 nobox 1)
.c create rectangle 399 2038 521 2058 -fill white -width 0
.c create text 460 2048 -text "LEG2CRM?L3,TF"
.c create text 70 2072 -fill #eef -text "171"
.c create line 140 2072 460 2072 -fill #eef -dash {6 4}
.c create line 460 2064 460 2060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 169 to 171 (Used 1 nobox 1)
# ProcLine[3] stays at 171 (Used 1 nobox 1)
.c create rectangle 452 2062 468 2082 -fill white -width 0
.c create text 460 2072 -text "L3"
.c create text 70 2096 -fill #eef -text "173"
.c create line 140 2096 460 2096 -fill #eef -dash {6 4}
.c create line 460 2088 460 2084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 171 to 173 (Used 1 nobox 1)
# ProcLine[3] stays at 173 (Used 1 nobox 1)
.c create rectangle 394 2086 526 2106 -fill white -width 0
.c create text 460 2096 -text "CRM2LEG!NCC,CO"
.c create line 460 2106 380 2106 -fill darkred -tags mesg -width 2
.c create line 380 2106 300 2106 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2120 -fill #eef -text "175"
.c create line 140 2120 460 2120 -fill #eef -dash {6 4}
.c create line 300 2040 300 2108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 167 to 175 (Used 1 nobox 1)
# ProcLine[2] stays at 175 (Used 1 nobox 1)
.c create rectangle 234 2110 366 2130 -fill white -width 0
.c create text 300 2120 -text "CRM2LEG?NCC,CO"
.c create line 300 2154 380 2154 -fill darkblue -tags mesg -width 2
.c create line 380 2154 460 2154 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2144 -fill #eef -text "177"
.c create line 140 2144 460 2144 -fill #eef -dash {6 4}
.c create line 300 2136 300 2132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 175 to 177 (Used 1 nobox 1)
# ProcLine[2] stays at 177 (Used 1 nobox 1)
.c create rectangle 244 2134 356 2154 -fill white -width 0
.c create text 300 2144 -text "LEG2CRM!L3,S"
.c create text 70 2168 -fill #eef -text "179"
.c create line 140 2168 460 2168 -fill #eef -dash {6 4}
.c create line 460 2112 460 2156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 173 to 179 (Used 1 nobox 1)
# ProcLine[3] stays at 179 (Used 1 nobox 1)
.c create rectangle 404 2158 516 2178 -fill white -width 0
.c create text 460 2168 -text "LEG2CRM?L3,S"
.c create text 70 2192 -fill #eef -text "181"
.c create line 140 2192 460 2192 -fill #eef -dash {6 4}
.c create line 460 2184 460 2180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 179 to 181 (Used 1 nobox 1)
# ProcLine[3] stays at 181 (Used 1 nobox 1)
.c create rectangle 452 2182 468 2202 -fill white -width 0
.c create text 460 2192 -text "L3"
.c create text 70 2216 -fill #eef -text "183"
.c create line 140 2216 460 2216 -fill #eef -dash {6 4}
.c create line 460 2208 460 2204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 181 to 183 (Used 1 nobox 1)
# ProcLine[3] stays at 183 (Used 1 nobox 1)
.c create rectangle 380 2206 540 2226 -fill white -width 0
.c create text 460 2216 -text "Prohibited action"
.c create text 70 2240 -fill #eef -text "185"
.c create line 140 2240 460 2240 -fill #eef -dash {6 4}
.c create line 460 2232 460 2228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 183 to 185 (Used 1 nobox 1)
# ProcLine[3] stays at 185 (Used 1 nobox 1)
.c create rectangle 394 2230 526 2250 -fill white -width 0
.c create text 460 2240 -text "CRM2LEG!CCP,CO"
.c create line 460 2250 380 2250 -fill darkred -tags mesg -width 2
.c create line 380 2250 300 2250 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2264 -fill #eef -text "187"
.c create line 140 2264 460 2264 -fill #eef -dash {6 4}
.c create line 300 2160 300 2252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 177 to 187 (Used 1 nobox 1)
# ProcLine[2] stays at 187 (Used 1 nobox 1)
.c create rectangle 234 2254 366 2274 -fill white -width 0
.c create text 300 2264 -text "CRM2LEG?CCP,CO"
.c create line 300 2298 380 2298 -fill darkblue -tags mesg -width 2
.c create line 380 2298 460 2298 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2288 -fill #eef -text "189"
.c create line 140 2288 460 2288 -fill #eef -dash {6 4}
.c create line 300 2280 300 2276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 187 to 189 (Used 1 nobox 1)
# ProcLine[2] stays at 189 (Used 1 nobox 1)
.c create rectangle 228 2278 372 2298 -fill white -width 0
.c create text 300 2288 -text "LEG2CRM!START,S"
.c create text 70 2312 -fill #eef -text "191"
.c create line 140 2312 460 2312 -fill #eef -dash {6 4}
.c create line 460 2256 460 2300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 185 to 191 (Used 1 nobox 1)
# ProcLine[3] stays at 191 (Used 1 nobox 1)
.c create rectangle 388 2302 532 2322 -fill white -width 0
.c create text 460 2312 -text "LEG2CRM?START,S"
.c create text 70 2336 -fill #eef -text "193"
.c create line 140 2336 460 2336 -fill #eef -dash {6 4}
.c create line 460 2328 460 2324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 191 to 193 (Used 1 nobox 1)
# ProcLine[3] stays at 193 (Used 1 nobox 1)
.c create rectangle 436 2326 484 2346 -fill white -width 0
.c create text 460 2336 -text "Start"
.c create text 70 2360 -fill #eef -text "195"
.c create line 140 2360 460 2360 -fill #eef -dash {6 4}
.c create line 460 2352 460 2348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 193 to 195 (Used 1 nobox 1)
# ProcLine[3] stays at 195 (Used 1 nobox 1)
.c create rectangle 452 2350 468 2370 -fill white -width 0
.c create text 460 2360 -text ""
.c create text 70 2384 -fill #eef -text "197"
.c create line 140 2384 460 2384 -fill #eef -dash {6 4}
.c create line 460 2376 460 2372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 195 to 197 (Used 1 nobox 1)
# ProcLine[3] stays at 197 (Used 1 nobox 1)
.c create rectangle 322 2374 598 2394 -fill white -width 0
.c create text 460 2384 -text "<originator>LMS</originator>"
.c create text 70 2408 -fill #eef -text "199"
.c create line 140 2408 460 2408 -fill #eef -dash {6 4}
.c create line 460 2400 460 2396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 197 to 199 (Used 1 nobox 1)
# ProcLine[3] stays at 199 (Used 1 nobox 1)
.c create rectangle 370 2398 550 2418 -fill white -width 0
.c create text 460 2408 -text "<type>START</type>"
.c create text 70 2432 -fill #eef -text "201"
.c create line 140 2432 460 2432 -fill #eef -dash {6 4}
.c create line 460 2424 460 2420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 199 to 201 (Used 1 nobox 1)
# ProcLine[3] stays at 201 (Used 1 nobox 1)
.c create rectangle 340 2422 580 2442 -fill white -width 0
.c create text 460 2432 -text "<status>success</status>"
.c create text 70 2456 -fill #eef -text "203"
.c create line 140 2456 460 2456 -fill #eef -dash {6 4}
.c create line 460 2448 460 2444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 201 to 203 (Used 1 nobox 1)
# ProcLine[3] stays at 203 (Used 1 nobox 1)
.c create rectangle 452 2446 468 2466 -fill white -width 0
.c create text 460 2456 -text ""
.c create text 70 2480 -fill #eef -text "205"
.c create line 140 2480 460 2480 -fill #eef -dash {6 4}
.c create line 460 2472 460 2468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 203 to 205 (Used 1 nobox 1)
# ProcLine[3] stays at 205 (Used 1 nobox 1)
.c create rectangle 394 2470 526 2490 -fill white -width 0
.c create text 460 2480 -text "CRM2LEG!CCR,CO"
.c create line 460 2490 380 2490 -fill darkred -tags mesg -width 2
.c create line 380 2490 300 2490 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2504 -fill #eef -text "207"
.c create line 140 2504 460 2504 -fill #eef -dash {6 4}
.c create line 300 2304 300 2492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 189 to 207 (Used 1 nobox 1)
# ProcLine[2] stays at 207 (Used 1 nobox 1)
.c create rectangle 234 2494 366 2514 -fill white -width 0
.c create text 300 2504 -text "CRM2LEG?CCR,CO"
.c create line 300 2538 380 2538 -fill darkblue -tags mesg -width 2
.c create line 380 2538 460 2538 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2528 -fill #eef -text "209"
.c create line 140 2528 460 2528 -fill #eef -dash {6 4}
.c create line 300 2520 300 2516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 207 to 209 (Used 1 nobox 1)
# ProcLine[2] stays at 209 (Used 1 nobox 1)
.c create rectangle 234 2518 366 2538 -fill white -width 0
.c create text 300 2528 -text "LEG2CRM!CW2,TO"
.c create text 70 2552 -fill #eef -text "211"
.c create line 140 2552 460 2552 -fill #eef -dash {6 4}
.c create line 460 2496 460 2540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 205 to 211 (Used 1 nobox 1)
# ProcLine[3] stays at 211 (Used 1 nobox 1)
.c create rectangle 394 2542 526 2562 -fill white -width 0
.c create text 460 2552 -text "LEG2CRM?CW2,TO"
.c create text 70 2576 -fill #eef -text "213"
.c create line 140 2576 460 2576 -fill #eef -dash {6 4}
.c create line 460 2568 460 2564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 211 to 213 (Used 1 nobox 1)
# ProcLine[3] stays at 213 (Used 1 nobox 1)
.c create rectangle 442 2566 478 2586 -fill white -width 0
.c create text 460 2576 -text "CW2 "
.c create text 70 2600 -fill #eef -text "215"
.c create line 140 2600 460 2600 -fill #eef -dash {6 4}
.c create line 460 2592 460 2588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 213 to 215 (Used 1 nobox 1)
# ProcLine[3] stays at 215 (Used 1 nobox 1)
.c create rectangle 394 2590 526 2610 -fill white -width 0
.c create text 460 2600 -text "CRM2LEG!NCC,CO"
.c create line 460 2610 380 2610 -fill darkred -tags mesg -width 2
.c create line 380 2610 300 2610 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2624 -fill #eef -text "217"
.c create line 140 2624 460 2624 -fill #eef -dash {6 4}
.c create line 300 2544 300 2612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 209 to 217 (Used 1 nobox 1)
# ProcLine[2] stays at 217 (Used 1 nobox 1)
.c create rectangle 234 2614 366 2634 -fill white -width 0
.c create text 300 2624 -text "CRM2LEG?NCC,CO"
.c create line 300 2658 380 2658 -fill darkblue -tags mesg -width 2
.c create line 380 2658 460 2658 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2648 -fill #eef -text "219"
.c create line 140 2648 460 2648 -fill #eef -dash {6 4}
.c create line 300 2640 300 2636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 217 to 219 (Used 1 nobox 1)
# ProcLine[2] stays at 219 (Used 1 nobox 1)
.c create rectangle 234 2638 366 2658 -fill white -width 0
.c create text 300 2648 -text "LEG2CRM!CW1,LF"
.c create text 70 2672 -fill #eef -text "221"
.c create line 140 2672 460 2672 -fill #eef -dash {6 4}
.c create line 460 2616 460 2660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 215 to 221 (Used 1 nobox 1)
# ProcLine[3] stays at 221 (Used 1 nobox 1)
.c create rectangle 394 2662 526 2682 -fill white -width 0
.c create text 460 2672 -text "LEG2CRM?CW1,LF"
.c create text 70 2696 -fill #eef -text "223"
.c create line 140 2696 460 2696 -fill #eef -dash {6 4}
.c create line 460 2688 460 2684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 221 to 223 (Used 1 nobox 1)
# ProcLine[3] stays at 223 (Used 1 nobox 1)
.c create rectangle 442 2686 478 2706 -fill white -width 0
.c create text 460 2696 -text "CW1 "
.c create text 70 2720 -fill #eef -text "225"
.c create line 140 2720 460 2720 -fill #eef -dash {6 4}
.c create line 460 2712 460 2708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 223 to 225 (Used 1 nobox 1)
# ProcLine[3] stays at 225 (Used 1 nobox 1)
.c create rectangle 394 2710 526 2730 -fill white -width 0
.c create text 460 2720 -text "CRM2LEG!NCC,CO"
.c create line 460 2730 380 2730 -fill darkred -tags mesg -width 2
.c create line 380 2730 300 2730 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2744 -fill #eef -text "227"
.c create line 140 2744 460 2744 -fill #eef -dash {6 4}
.c create line 300 2664 300 2732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 219 to 227 (Used 1 nobox 1)
# ProcLine[2] stays at 227 (Used 1 nobox 1)
.c create rectangle 234 2734 366 2754 -fill white -width 0
.c create text 300 2744 -text "CRM2LEG?NCC,CO"
.c create line 300 2778 380 2778 -fill darkblue -tags mesg -width 2
.c create line 380 2778 460 2778 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2768 -fill #eef -text "229"
.c create line 140 2768 460 2768 -fill #eef -dash {6 4}
.c create line 300 2760 300 2756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 227 to 229 (Used 1 nobox 1)
# ProcLine[2] stays at 229 (Used 1 nobox 1)
.c create rectangle 239 2758 361 2778 -fill white -width 0
.c create text 300 2768 -text "LEG2CRM!L3,TF"
.c create text 70 2792 -fill #eef -text "231"
.c create line 140 2792 460 2792 -fill #eef -dash {6 4}
.c create line 460 2736 460 2780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 225 to 231 (Used 1 nobox 1)
# ProcLine[3] stays at 231 (Used 1 nobox 1)
.c create rectangle 399 2782 521 2802 -fill white -width 0
.c create text 460 2792 -text "LEG2CRM?L3,TF"
.c create text 70 2816 -fill #eef -text "233"
.c create line 140 2816 460 2816 -fill #eef -dash {6 4}
.c create line 460 2808 460 2804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 231 to 233 (Used 1 nobox 1)
# ProcLine[3] stays at 233 (Used 1 nobox 1)
.c create rectangle 452 2806 468 2826 -fill white -width 0
.c create text 460 2816 -text "L3"
.c create text 70 2840 -fill #eef -text "235"
.c create line 140 2840 460 2840 -fill #eef -dash {6 4}
.c create line 460 2832 460 2828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 233 to 235 (Used 1 nobox 1)
# ProcLine[3] stays at 235 (Used 1 nobox 1)
.c create rectangle 394 2830 526 2850 -fill white -width 0
.c create text 460 2840 -text "CRM2LEG!NCC,CO"
.c create line 460 2850 380 2850 -fill darkred -tags mesg -width 2
.c create line 380 2850 300 2850 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2864 -fill #eef -text "237"
.c create line 140 2864 460 2864 -fill #eef -dash {6 4}
.c create line 300 2784 300 2852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 229 to 237 (Used 1 nobox 1)
# ProcLine[2] stays at 237 (Used 1 nobox 1)
.c create rectangle 234 2854 366 2874 -fill white -width 0
.c create text 300 2864 -text "CRM2LEG?NCC,CO"
.c create line 300 2898 380 2898 -fill darkblue -tags mesg -width 2
.c create line 380 2898 460 2898 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 2888 -fill #eef -text "239"
.c create line 140 2888 460 2888 -fill #eef -dash {6 4}
.c create line 300 2880 300 2876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 237 to 239 (Used 1 nobox 1)
# ProcLine[2] stays at 239 (Used 1 nobox 1)
.c create rectangle 244 2878 356 2898 -fill white -width 0
.c create text 300 2888 -text "LEG2CRM!L3,S"
.c create text 70 2912 -fill #eef -text "241"
.c create line 140 2912 460 2912 -fill #eef -dash {6 4}
.c create line 460 2856 460 2900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 235 to 241 (Used 1 nobox 1)
# ProcLine[3] stays at 241 (Used 1 nobox 1)
.c create rectangle 404 2902 516 2922 -fill white -width 0
.c create text 460 2912 -text "LEG2CRM?L3,S"
.c create text 70 2936 -fill #eef -text "243"
.c create line 140 2936 460 2936 -fill #eef -dash {6 4}
.c create line 460 2928 460 2924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 241 to 243 (Used 1 nobox 1)
# ProcLine[3] stays at 243 (Used 1 nobox 1)
.c create rectangle 452 2926 468 2946 -fill white -width 0
.c create text 460 2936 -text "L3"
.c create text 70 2960 -fill #eef -text "245"
.c create line 140 2960 460 2960 -fill #eef -dash {6 4}
.c create line 460 2952 460 2948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 243 to 245 (Used 1 nobox 1)
# ProcLine[3] stays at 245 (Used 1 nobox 1)
.c create rectangle 380 2950 540 2970 -fill white -width 0
.c create text 460 2960 -text "Prohibited action"
.c create text 70 2984 -fill #eef -text "247"
.c create line 140 2984 460 2984 -fill #eef -dash {6 4}
.c create line 460 2976 460 2972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 245 to 247 (Used 1 nobox 1)
# ProcLine[3] stays at 247 (Used 1 nobox 1)
.c create rectangle 394 2974 526 2994 -fill white -width 0
.c create text 460 2984 -text "CRM2LEG!CCP,CO"
.c create line 460 2994 380 2994 -fill darkred -tags mesg -width 2
.c create line 380 2994 300 2994 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3008 -fill #eef -text "249"
.c create line 140 3008 460 3008 -fill #eef -dash {6 4}
.c create line 300 2904 300 2996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 239 to 249 (Used 1 nobox 1)
# ProcLine[2] stays at 249 (Used 1 nobox 1)
.c create rectangle 234 2998 366 3018 -fill white -width 0
.c create text 300 3008 -text "CRM2LEG?CCP,CO"
.c create line 300 3042 380 3042 -fill darkblue -tags mesg -width 2
.c create line 380 3042 460 3042 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3032 -fill #eef -text "251"
.c create line 140 3032 460 3032 -fill #eef -dash {6 4}
.c create line 300 3024 300 3020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 249 to 251 (Used 1 nobox 1)
# ProcLine[2] stays at 251 (Used 1 nobox 1)
.c create rectangle 239 3022 361 3042 -fill white -width 0
.c create text 300 3032 -text "LEG2CRM!L8,TF"
.c create text 70 3056 -fill #eef -text "253"
.c create line 140 3056 460 3056 -fill #eef -dash {6 4}
.c create line 460 3000 460 3044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 247 to 253 (Used 1 nobox 1)
# ProcLine[3] stays at 253 (Used 1 nobox 1)
.c create rectangle 399 3046 521 3066 -fill white -width 0
.c create text 460 3056 -text "LEG2CRM?L8,TF"
.c create text 70 3080 -fill #eef -text "255"
.c create line 140 3080 460 3080 -fill #eef -dash {6 4}
.c create line 460 3072 460 3068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 253 to 255 (Used 1 nobox 1)
# ProcLine[3] stays at 255 (Used 1 nobox 1)
.c create rectangle 452 3070 468 3090 -fill white -width 0
.c create text 460 3080 -text "L8"
.c create text 70 3104 -fill #eef -text "257"
.c create line 140 3104 460 3104 -fill #eef -dash {6 4}
.c create line 460 3096 460 3092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 255 to 257 (Used 1 nobox 1)
# ProcLine[3] stays at 257 (Used 1 nobox 1)
.c create rectangle 394 3094 526 3114 -fill white -width 0
.c create text 460 3104 -text "CRM2LEG!NCC,CO"
.c create line 460 3114 380 3114 -fill darkred -tags mesg -width 2
.c create line 380 3114 300 3114 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3128 -fill #eef -text "259"
.c create line 140 3128 460 3128 -fill #eef -dash {6 4}
.c create line 300 3048 300 3116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 251 to 259 (Used 1 nobox 1)
# ProcLine[2] stays at 259 (Used 1 nobox 1)
.c create rectangle 234 3118 366 3138 -fill white -width 0
.c create text 300 3128 -text "CRM2LEG?NCC,CO"
.c create line 300 3162 380 3162 -fill darkblue -tags mesg -width 2
.c create line 380 3162 460 3162 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3152 -fill #eef -text "261"
.c create line 140 3152 460 3152 -fill #eef -dash {6 4}
.c create line 300 3144 300 3140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 259 to 261 (Used 1 nobox 1)
# ProcLine[2] stays at 261 (Used 1 nobox 1)
.c create rectangle 244 3142 356 3162 -fill white -width 0
.c create text 300 3152 -text "LEG2CRM!L8,S"
.c create text 70 3176 -fill #eef -text "263"
.c create line 140 3176 460 3176 -fill #eef -dash {6 4}
.c create line 460 3120 460 3164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 257 to 263 (Used 1 nobox 1)
# ProcLine[3] stays at 263 (Used 1 nobox 1)
.c create rectangle 404 3166 516 3186 -fill white -width 0
.c create text 460 3176 -text "LEG2CRM?L8,S"
.c create text 70 3200 -fill #eef -text "265"
.c create line 140 3200 460 3200 -fill #eef -dash {6 4}
.c create line 460 3192 460 3188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 263 to 265 (Used 1 nobox 1)
# ProcLine[3] stays at 265 (Used 1 nobox 1)
.c create rectangle 452 3190 468 3210 -fill white -width 0
.c create text 460 3200 -text "L8"
.c create text 70 3224 -fill #eef -text "267"
.c create line 140 3224 460 3224 -fill #eef -dash {6 4}
.c create line 460 3216 460 3212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 265 to 267 (Used 1 nobox 1)
# ProcLine[3] stays at 267 (Used 1 nobox 1)
.c create rectangle 380 3214 540 3234 -fill white -width 0
.c create text 460 3224 -text "Prohibited action"
.c create text 70 3248 -fill #eef -text "269"
.c create line 140 3248 460 3248 -fill #eef -dash {6 4}
.c create line 460 3240 460 3236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 267 to 269 (Used 1 nobox 1)
# ProcLine[3] stays at 269 (Used 1 nobox 1)
.c create rectangle 394 3238 526 3258 -fill white -width 0
.c create text 460 3248 -text "CRM2LEG!CCP,CO"
.c create line 460 3258 380 3258 -fill darkred -tags mesg -width 2
.c create line 380 3258 300 3258 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3272 -fill #eef -text "271"
.c create line 140 3272 460 3272 -fill #eef -dash {6 4}
.c create line 300 3168 300 3260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 261 to 271 (Used 1 nobox 1)
# ProcLine[2] stays at 271 (Used 1 nobox 1)
.c create rectangle 234 3262 366 3282 -fill white -width 0
.c create text 300 3272 -text "CRM2LEG?CCP,CO"
.c create line 300 3306 380 3306 -fill darkblue -tags mesg -width 2
.c create line 380 3306 460 3306 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3296 -fill #eef -text "273"
.c create line 140 3296 460 3296 -fill #eef -dash {6 4}
.c create line 300 3288 300 3284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 271 to 273 (Used 1 nobox 1)
# ProcLine[2] stays at 273 (Used 1 nobox 1)
.c create rectangle 234 3286 366 3306 -fill white -width 0
.c create text 300 3296 -text "LEG2CRM!CW1,TO"
.c create text 70 3320 -fill #eef -text "275"
.c create line 140 3320 460 3320 -fill #eef -dash {6 4}
.c create line 460 3264 460 3308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 269 to 275 (Used 1 nobox 1)
# ProcLine[3] stays at 275 (Used 1 nobox 1)
.c create rectangle 394 3310 526 3330 -fill white -width 0
.c create text 460 3320 -text "LEG2CRM?CW1,TO"
.c create text 70 3344 -fill #eef -text "277"
.c create line 140 3344 460 3344 -fill #eef -dash {6 4}
.c create line 460 3336 460 3332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 275 to 277 (Used 1 nobox 1)
# ProcLine[3] stays at 277 (Used 1 nobox 1)
.c create rectangle 442 3334 478 3354 -fill white -width 0
.c create text 460 3344 -text "CW1 "
.c create text 70 3368 -fill #eef -text "279"
.c create line 140 3368 460 3368 -fill #eef -dash {6 4}
.c create line 460 3360 460 3356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 277 to 279 (Used 1 nobox 1)
# ProcLine[3] stays at 279 (Used 1 nobox 1)
.c create rectangle 394 3358 526 3378 -fill white -width 0
.c create text 460 3368 -text "CRM2LEG!NCC,CO"
.c create line 460 3378 380 3378 -fill darkred -tags mesg -width 2
.c create line 380 3378 300 3378 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3392 -fill #eef -text "281"
.c create line 140 3392 460 3392 -fill #eef -dash {6 4}
.c create line 300 3312 300 3380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 273 to 281 (Used 1 nobox 1)
# ProcLine[2] stays at 281 (Used 1 nobox 1)
.c create rectangle 234 3382 366 3402 -fill white -width 0
.c create text 300 3392 -text "CRM2LEG?NCC,CO"
.c create line 300 3426 380 3426 -fill darkblue -tags mesg -width 2
.c create line 380 3426 460 3426 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3416 -fill #eef -text "283"
.c create line 140 3416 460 3416 -fill #eef -dash {6 4}
.c create line 300 3408 300 3404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 281 to 283 (Used 1 nobox 1)
# ProcLine[2] stays at 283 (Used 1 nobox 1)
.c create rectangle 239 3406 361 3426 -fill white -width 0
.c create text 300 3416 -text "LEG2CRM!L6,TF"
.c create text 70 3440 -fill #eef -text "285"
.c create line 140 3440 460 3440 -fill #eef -dash {6 4}
.c create line 460 3384 460 3428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 279 to 285 (Used 1 nobox 1)
# ProcLine[3] stays at 285 (Used 1 nobox 1)
.c create rectangle 399 3430 521 3450 -fill white -width 0
.c create text 460 3440 -text "LEG2CRM?L6,TF"
.c create text 70 3464 -fill #eef -text "287"
.c create line 140 3464 460 3464 -fill #eef -dash {6 4}
.c create line 460 3456 460 3452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 285 to 287 (Used 1 nobox 1)
# ProcLine[3] stays at 287 (Used 1 nobox 1)
.c create rectangle 452 3454 468 3474 -fill white -width 0
.c create text 460 3464 -text "L6"
.c create text 70 3488 -fill #eef -text "289"
.c create line 140 3488 460 3488 -fill #eef -dash {6 4}
.c create line 460 3480 460 3476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 287 to 289 (Used 1 nobox 1)
# ProcLine[3] stays at 289 (Used 1 nobox 1)
.c create rectangle 394 3478 526 3498 -fill white -width 0
.c create text 460 3488 -text "CRM2LEG!NCC,CO"
.c create line 460 3498 380 3498 -fill darkred -tags mesg -width 2
.c create line 380 3498 300 3498 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3512 -fill #eef -text "291"
.c create line 140 3512 460 3512 -fill #eef -dash {6 4}
.c create line 300 3432 300 3500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 283 to 291 (Used 1 nobox 1)
# ProcLine[2] stays at 291 (Used 1 nobox 1)
.c create rectangle 234 3502 366 3522 -fill white -width 0
.c create text 300 3512 -text "CRM2LEG?NCC,CO"
.c create line 300 3546 380 3546 -fill darkblue -tags mesg -width 2
.c create line 380 3546 460 3546 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3536 -fill #eef -text "293"
.c create line 140 3536 460 3536 -fill #eef -dash {6 4}
.c create line 300 3528 300 3524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 291 to 293 (Used 1 nobox 1)
# ProcLine[2] stays at 293 (Used 1 nobox 1)
.c create rectangle 244 3526 356 3546 -fill white -width 0
.c create text 300 3536 -text "LEG2CRM!L6,S"
.c create text 70 3560 -fill #eef -text "295"
.c create line 140 3560 460 3560 -fill #eef -dash {6 4}
.c create line 460 3504 460 3548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 289 to 295 (Used 1 nobox 1)
# ProcLine[3] stays at 295 (Used 1 nobox 1)
.c create rectangle 404 3550 516 3570 -fill white -width 0
.c create text 460 3560 -text "LEG2CRM?L6,S"
.c create text 70 3584 -fill #eef -text "297"
.c create line 140 3584 460 3584 -fill #eef -dash {6 4}
.c create line 460 3576 460 3572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 295 to 297 (Used 1 nobox 1)
# ProcLine[3] stays at 297 (Used 1 nobox 1)
.c create rectangle 452 3574 468 3594 -fill white -width 0
.c create text 460 3584 -text "L6"
.c create text 70 3608 -fill #eef -text "299"
.c create line 140 3608 460 3608 -fill #eef -dash {6 4}
.c create line 460 3600 460 3596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 297 to 299 (Used 1 nobox 1)
# ProcLine[3] stays at 299 (Used 1 nobox 1)
.c create rectangle 380 3598 540 3618 -fill white -width 0
.c create text 460 3608 -text "Prohibited action"
.c create text 70 3632 -fill #eef -text "301"
.c create line 140 3632 460 3632 -fill #eef -dash {6 4}
.c create line 460 3624 460 3620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 299 to 301 (Used 1 nobox 1)
# ProcLine[3] stays at 301 (Used 1 nobox 1)
.c create rectangle 394 3622 526 3642 -fill white -width 0
.c create text 460 3632 -text "CRM2LEG!CCP,CO"
.c create line 460 3642 380 3642 -fill darkred -tags mesg -width 2
.c create line 380 3642 300 3642 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3656 -fill #eef -text "303"
.c create line 140 3656 460 3656 -fill #eef -dash {6 4}
.c create line 300 3552 300 3644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 293 to 303 (Used 1 nobox 1)
# ProcLine[2] stays at 303 (Used 1 nobox 1)
.c create rectangle 234 3646 366 3666 -fill white -width 0
.c create text 300 3656 -text "CRM2LEG?CCP,CO"
.c create line 300 3690 380 3690 -fill darkblue -tags mesg -width 2
.c create line 380 3690 460 3690 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3680 -fill #eef -text "305"
.c create line 140 3680 460 3680 -fill #eef -dash {6 4}
.c create line 300 3672 300 3668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 303 to 305 (Used 1 nobox 1)
# ProcLine[2] stays at 305 (Used 1 nobox 1)
.c create rectangle 239 3670 361 3690 -fill white -width 0
.c create text 300 3680 -text "LEG2CRM!L5,TF"
.c create text 70 3704 -fill #eef -text "307"
.c create line 140 3704 460 3704 -fill #eef -dash {6 4}
.c create line 460 3648 460 3692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 301 to 307 (Used 1 nobox 1)
# ProcLine[3] stays at 307 (Used 1 nobox 1)
.c create rectangle 399 3694 521 3714 -fill white -width 0
.c create text 460 3704 -text "LEG2CRM?L5,TF"
.c create text 70 3728 -fill #eef -text "309"
.c create line 140 3728 460 3728 -fill #eef -dash {6 4}
.c create line 460 3720 460 3716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 307 to 309 (Used 1 nobox 1)
# ProcLine[3] stays at 309 (Used 1 nobox 1)
.c create rectangle 452 3718 468 3738 -fill white -width 0
.c create text 460 3728 -text "L5"
.c create text 70 3752 -fill #eef -text "311"
.c create line 140 3752 460 3752 -fill #eef -dash {6 4}
.c create line 460 3744 460 3740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 309 to 311 (Used 1 nobox 1)
# ProcLine[3] stays at 311 (Used 1 nobox 1)
.c create rectangle 394 3742 526 3762 -fill white -width 0
.c create text 460 3752 -text "CRM2LEG!NCC,CO"
.c create line 460 3762 380 3762 -fill darkred -tags mesg -width 2
.c create line 380 3762 300 3762 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3776 -fill #eef -text "313"
.c create line 140 3776 460 3776 -fill #eef -dash {6 4}
.c create line 300 3696 300 3764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 305 to 313 (Used 1 nobox 1)
# ProcLine[2] stays at 313 (Used 1 nobox 1)
.c create rectangle 234 3766 366 3786 -fill white -width 0
.c create text 300 3776 -text "CRM2LEG?NCC,CO"
.c create line 300 3810 380 3810 -fill darkblue -tags mesg -width 2
.c create line 380 3810 460 3810 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3800 -fill #eef -text "315"
.c create line 140 3800 460 3800 -fill #eef -dash {6 4}
.c create line 300 3792 300 3788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 313 to 315 (Used 1 nobox 1)
# ProcLine[2] stays at 315 (Used 1 nobox 1)
.c create rectangle 244 3790 356 3810 -fill white -width 0
.c create text 300 3800 -text "LEG2CRM!L5,S"
.c create text 70 3824 -fill #eef -text "317"
.c create line 140 3824 460 3824 -fill #eef -dash {6 4}
.c create line 460 3768 460 3812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 311 to 317 (Used 1 nobox 1)
# ProcLine[3] stays at 317 (Used 1 nobox 1)
.c create rectangle 404 3814 516 3834 -fill white -width 0
.c create text 460 3824 -text "LEG2CRM?L5,S"
.c create text 70 3848 -fill #eef -text "319"
.c create line 140 3848 460 3848 -fill #eef -dash {6 4}
.c create line 460 3840 460 3836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 317 to 319 (Used 1 nobox 1)
# ProcLine[3] stays at 319 (Used 1 nobox 1)
.c create rectangle 452 3838 468 3858 -fill white -width 0
.c create text 460 3848 -text "L5"
.c create text 70 3872 -fill #eef -text "321"
.c create line 140 3872 460 3872 -fill #eef -dash {6 4}
.c create line 460 3864 460 3860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 319 to 321 (Used 1 nobox 1)
# ProcLine[3] stays at 321 (Used 1 nobox 1)
.c create rectangle 380 3862 540 3882 -fill white -width 0
.c create text 460 3872 -text "Prohibited action"
.c create text 70 3896 -fill #eef -text "323"
.c create line 140 3896 460 3896 -fill #eef -dash {6 4}
.c create line 460 3888 460 3884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 321 to 323 (Used 1 nobox 1)
# ProcLine[3] stays at 323 (Used 1 nobox 1)
.c create rectangle 394 3886 526 3906 -fill white -width 0
.c create text 460 3896 -text "CRM2LEG!CCP,CO"
.c create line 460 3906 380 3906 -fill darkred -tags mesg -width 2
.c create line 380 3906 300 3906 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3920 -fill #eef -text "325"
.c create line 140 3920 460 3920 -fill #eef -dash {6 4}
.c create line 300 3816 300 3908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 315 to 325 (Used 1 nobox 1)
# ProcLine[2] stays at 325 (Used 1 nobox 1)
.c create rectangle 234 3910 366 3930 -fill white -width 0
.c create text 300 3920 -text "CRM2LEG?CCP,CO"
.c create line 300 3954 380 3954 -fill darkblue -tags mesg -width 2
.c create line 380 3954 460 3954 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 3944 -fill #eef -text "327"
.c create line 140 3944 460 3944 -fill #eef -dash {6 4}
.c create line 300 3936 300 3932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 325 to 327 (Used 1 nobox 1)
# ProcLine[2] stays at 327 (Used 1 nobox 1)
.c create rectangle 239 3934 361 3954 -fill white -width 0
.c create text 300 3944 -text "LEG2CRM!L6,TF"
.c create text 70 3968 -fill #eef -text "329"
.c create line 140 3968 460 3968 -fill #eef -dash {6 4}
.c create line 460 3912 460 3956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 323 to 329 (Used 1 nobox 1)
# ProcLine[3] stays at 329 (Used 1 nobox 1)
.c create rectangle 399 3958 521 3978 -fill white -width 0
.c create text 460 3968 -text "LEG2CRM?L6,TF"
.c create text 70 3992 -fill #eef -text "331"
.c create line 140 3992 460 3992 -fill #eef -dash {6 4}
.c create line 460 3984 460 3980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 329 to 331 (Used 1 nobox 1)
# ProcLine[3] stays at 331 (Used 1 nobox 1)
.c create rectangle 452 3982 468 4002 -fill white -width 0
.c create text 460 3992 -text "L6"
.c create text 70 4016 -fill #eef -text "333"
.c create line 140 4016 460 4016 -fill #eef -dash {6 4}
.c create line 460 4008 460 4004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 331 to 333 (Used 1 nobox 1)
# ProcLine[3] stays at 333 (Used 1 nobox 1)
.c create rectangle 394 4006 526 4026 -fill white -width 0
.c create text 460 4016 -text "CRM2LEG!NCC,CO"
.c create line 460 4026 380 4026 -fill darkred -tags mesg -width 2
.c create line 380 4026 300 4026 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4040 -fill #eef -text "335"
.c create line 140 4040 460 4040 -fill #eef -dash {6 4}
.c create line 300 3960 300 4028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 327 to 335 (Used 1 nobox 1)
# ProcLine[2] stays at 335 (Used 1 nobox 1)
.c create rectangle 234 4030 366 4050 -fill white -width 0
.c create text 300 4040 -text "CRM2LEG?NCC,CO"
.c create line 300 4074 380 4074 -fill darkblue -tags mesg -width 2
.c create line 380 4074 460 4074 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4064 -fill #eef -text "337"
.c create line 140 4064 460 4064 -fill #eef -dash {6 4}
.c create line 300 4056 300 4052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 335 to 337 (Used 1 nobox 1)
# ProcLine[2] stays at 337 (Used 1 nobox 1)
.c create rectangle 244 4054 356 4074 -fill white -width 0
.c create text 300 4064 -text "LEG2CRM!L6,S"
.c create text 70 4088 -fill #eef -text "339"
.c create line 140 4088 460 4088 -fill #eef -dash {6 4}
.c create line 460 4032 460 4076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 333 to 339 (Used 1 nobox 1)
# ProcLine[3] stays at 339 (Used 1 nobox 1)
.c create rectangle 404 4078 516 4098 -fill white -width 0
.c create text 460 4088 -text "LEG2CRM?L6,S"
.c create text 70 4112 -fill #eef -text "341"
.c create line 140 4112 460 4112 -fill #eef -dash {6 4}
.c create line 460 4104 460 4100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 339 to 341 (Used 1 nobox 1)
# ProcLine[3] stays at 341 (Used 1 nobox 1)
.c create rectangle 452 4102 468 4122 -fill white -width 0
.c create text 460 4112 -text "L6"
.c create text 70 4136 -fill #eef -text "343"
.c create line 140 4136 460 4136 -fill #eef -dash {6 4}
.c create line 460 4128 460 4124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 341 to 343 (Used 1 nobox 1)
# ProcLine[3] stays at 343 (Used 1 nobox 1)
.c create rectangle 380 4126 540 4146 -fill white -width 0
.c create text 460 4136 -text "Prohibited action"
.c create text 70 4160 -fill #eef -text "345"
.c create line 140 4160 460 4160 -fill #eef -dash {6 4}
.c create line 460 4152 460 4148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 343 to 345 (Used 1 nobox 1)
# ProcLine[3] stays at 345 (Used 1 nobox 1)
.c create rectangle 394 4150 526 4170 -fill white -width 0
.c create text 460 4160 -text "CRM2LEG!CCP,CO"
.c create line 460 4170 380 4170 -fill darkred -tags mesg -width 2
.c create line 380 4170 300 4170 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4184 -fill #eef -text "347"
.c create line 140 4184 460 4184 -fill #eef -dash {6 4}
.c create line 300 4080 300 4172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 337 to 347 (Used 1 nobox 1)
# ProcLine[2] stays at 347 (Used 1 nobox 1)
.c create rectangle 234 4174 366 4194 -fill white -width 0
.c create text 300 4184 -text "CRM2LEG?CCP,CO"
.c create line 300 4218 380 4218 -fill darkblue -tags mesg -width 2
.c create line 380 4218 460 4218 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4208 -fill #eef -text "349"
.c create line 140 4208 460 4208 -fill #eef -dash {6 4}
.c create line 300 4200 300 4196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 347 to 349 (Used 1 nobox 1)
# ProcLine[2] stays at 349 (Used 1 nobox 1)
.c create rectangle 234 4198 366 4218 -fill white -width 0
.c create text 300 4208 -text "LEG2CRM!CW1,TO"
.c create text 70 4232 -fill #eef -text "351"
.c create line 140 4232 460 4232 -fill #eef -dash {6 4}
.c create line 460 4176 460 4220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 345 to 351 (Used 1 nobox 1)
# ProcLine[3] stays at 351 (Used 1 nobox 1)
.c create rectangle 394 4222 526 4242 -fill white -width 0
.c create text 460 4232 -text "LEG2CRM?CW1,TO"
.c create text 70 4256 -fill #eef -text "353"
.c create line 140 4256 460 4256 -fill #eef -dash {6 4}
.c create line 460 4248 460 4244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 351 to 353 (Used 1 nobox 1)
# ProcLine[3] stays at 353 (Used 1 nobox 1)
.c create rectangle 442 4246 478 4266 -fill white -width 0
.c create text 460 4256 -text "CW1 "
.c create text 70 4280 -fill #eef -text "355"
.c create line 140 4280 460 4280 -fill #eef -dash {6 4}
.c create line 460 4272 460 4268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 353 to 355 (Used 1 nobox 1)
# ProcLine[3] stays at 355 (Used 1 nobox 1)
.c create rectangle 394 4270 526 4290 -fill white -width 0
.c create text 460 4280 -text "CRM2LEG!NCC,CO"
.c create line 460 4290 380 4290 -fill darkred -tags mesg -width 2
.c create line 380 4290 300 4290 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4304 -fill #eef -text "357"
.c create line 140 4304 460 4304 -fill #eef -dash {6 4}
.c create line 300 4224 300 4292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 349 to 357 (Used 1 nobox 1)
# ProcLine[2] stays at 357 (Used 1 nobox 1)
.c create rectangle 234 4294 366 4314 -fill white -width 0
.c create text 300 4304 -text "CRM2LEG?NCC,CO"
.c create line 300 4338 380 4338 -fill darkblue -tags mesg -width 2
.c create line 380 4338 460 4338 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4328 -fill #eef -text "359"
.c create line 140 4328 460 4328 -fill #eef -dash {6 4}
.c create line 300 4320 300 4316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 357 to 359 (Used 1 nobox 1)
# ProcLine[2] stays at 359 (Used 1 nobox 1)
.c create rectangle 239 4318 361 4338 -fill white -width 0
.c create text 300 4328 -text "LEG2CRM!L6,TF"
.c create text 70 4352 -fill #eef -text "361"
.c create line 140 4352 460 4352 -fill #eef -dash {6 4}
.c create line 460 4296 460 4340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 355 to 361 (Used 1 nobox 1)
# ProcLine[3] stays at 361 (Used 1 nobox 1)
.c create rectangle 399 4342 521 4362 -fill white -width 0
.c create text 460 4352 -text "LEG2CRM?L6,TF"
.c create text 70 4376 -fill #eef -text "363"
.c create line 140 4376 460 4376 -fill #eef -dash {6 4}
.c create line 460 4368 460 4364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 361 to 363 (Used 1 nobox 1)
# ProcLine[3] stays at 363 (Used 1 nobox 1)
.c create rectangle 452 4366 468 4386 -fill white -width 0
.c create text 460 4376 -text "L6"
.c create text 70 4400 -fill #eef -text "365"
.c create line 140 4400 460 4400 -fill #eef -dash {6 4}
.c create line 460 4392 460 4388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 363 to 365 (Used 1 nobox 1)
# ProcLine[3] stays at 365 (Used 1 nobox 1)
.c create rectangle 394 4390 526 4410 -fill white -width 0
.c create text 460 4400 -text "CRM2LEG!NCC,CO"
.c create line 460 4410 380 4410 -fill darkred -tags mesg -width 2
.c create line 380 4410 300 4410 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4424 -fill #eef -text "367"
.c create line 140 4424 460 4424 -fill #eef -dash {6 4}
.c create line 300 4344 300 4412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 359 to 367 (Used 1 nobox 1)
# ProcLine[2] stays at 367 (Used 1 nobox 1)
.c create rectangle 234 4414 366 4434 -fill white -width 0
.c create text 300 4424 -text "CRM2LEG?NCC,CO"
.c create line 300 4458 380 4458 -fill darkblue -tags mesg -width 2
.c create line 380 4458 460 4458 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4448 -fill #eef -text "369"
.c create line 140 4448 460 4448 -fill #eef -dash {6 4}
.c create line 300 4440 300 4436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 367 to 369 (Used 1 nobox 1)
# ProcLine[2] stays at 369 (Used 1 nobox 1)
.c create rectangle 244 4438 356 4458 -fill white -width 0
.c create text 300 4448 -text "LEG2CRM!L6,S"
.c create text 70 4472 -fill #eef -text "371"
.c create line 140 4472 460 4472 -fill #eef -dash {6 4}
.c create line 460 4416 460 4460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 365 to 371 (Used 1 nobox 1)
# ProcLine[3] stays at 371 (Used 1 nobox 1)
.c create rectangle 404 4462 516 4482 -fill white -width 0
.c create text 460 4472 -text "LEG2CRM?L6,S"
.c create text 70 4496 -fill #eef -text "373"
.c create line 140 4496 460 4496 -fill #eef -dash {6 4}
.c create line 460 4488 460 4484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 371 to 373 (Used 1 nobox 1)
# ProcLine[3] stays at 373 (Used 1 nobox 1)
.c create rectangle 452 4486 468 4506 -fill white -width 0
.c create text 460 4496 -text "L6"
.c create text 70 4520 -fill #eef -text "375"
.c create line 140 4520 460 4520 -fill #eef -dash {6 4}
.c create line 460 4512 460 4508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 373 to 375 (Used 1 nobox 1)
# ProcLine[3] stays at 375 (Used 1 nobox 1)
.c create rectangle 380 4510 540 4530 -fill white -width 0
.c create text 460 4520 -text "Prohibited action"
.c create text 70 4544 -fill #eef -text "377"
.c create line 140 4544 460 4544 -fill #eef -dash {6 4}
.c create line 460 4536 460 4532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 375 to 377 (Used 1 nobox 1)
# ProcLine[3] stays at 377 (Used 1 nobox 1)
.c create rectangle 394 4534 526 4554 -fill white -width 0
.c create text 460 4544 -text "CRM2LEG!CCP,CO"
.c create line 460 4554 380 4554 -fill darkred -tags mesg -width 2
.c create line 380 4554 300 4554 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4568 -fill #eef -text "379"
.c create line 140 4568 460 4568 -fill #eef -dash {6 4}
.c create line 300 4464 300 4556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 369 to 379 (Used 1 nobox 1)
# ProcLine[2] stays at 379 (Used 1 nobox 1)
.c create rectangle 234 4558 366 4578 -fill white -width 0
.c create text 300 4568 -text "CRM2LEG?CCP,CO"
.c create line 300 4602 380 4602 -fill darkblue -tags mesg -width 2
.c create line 380 4602 460 4602 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4592 -fill #eef -text "381"
.c create line 140 4592 460 4592 -fill #eef -dash {6 4}
.c create line 300 4584 300 4580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 379 to 381 (Used 1 nobox 1)
# ProcLine[2] stays at 381 (Used 1 nobox 1)
.c create rectangle 244 4582 356 4602 -fill white -width 0
.c create text 300 4592 -text "LEG2CRM!L1,S"
.c create text 70 4616 -fill #eef -text "383"
.c create line 140 4616 460 4616 -fill #eef -dash {6 4}
.c create line 460 4560 460 4604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 377 to 383 (Used 1 nobox 1)
# ProcLine[3] stays at 383 (Used 1 nobox 1)
.c create rectangle 404 4606 516 4626 -fill white -width 0
.c create text 460 4616 -text "LEG2CRM?L1,S"
.c create text 70 4640 -fill #eef -text "385"
.c create line 140 4640 460 4640 -fill #eef -dash {6 4}
.c create line 460 4632 460 4628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 383 to 385 (Used 1 nobox 1)
# ProcLine[3] stays at 385 (Used 1 nobox 1)
.c create rectangle 452 4630 468 4650 -fill white -width 0
.c create text 460 4640 -text "L1"
.c create text 70 4664 -fill #eef -text "387"
.c create line 140 4664 460 4664 -fill #eef -dash {6 4}
.c create line 460 4656 460 4652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 385 to 387 (Used 1 nobox 1)
# ProcLine[3] stays at 387 (Used 1 nobox 1)
.c create rectangle 452 4654 468 4674 -fill white -width 0
.c create text 460 4664 -text ""
.c create text 70 4688 -fill #eef -text "389"
.c create line 140 4688 460 4688 -fill #eef -dash {6 4}
.c create line 460 4680 460 4676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 387 to 389 (Used 1 nobox 1)
# ProcLine[3] stays at 389 (Used 1 nobox 1)
.c create rectangle 303 4678 617 4698 -fill white -width 0
.c create text 460 4688 -text "<originator>STUDENT</originator>"
.c create text 70 4712 -fill #eef -text "391"
.c create line 140 4712 460 4712 -fill #eef -dash {6 4}
.c create line 460 4704 460 4700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 389 to 391 (Used 1 nobox 1)
# ProcLine[3] stays at 391 (Used 1 nobox 1)
.c create rectangle 332 4702 588 4722 -fill white -width 0
.c create text 460 4712 -text "<responder>LMS</responder>"
.c create text 70 4736 -fill #eef -text "393"
.c create line 140 4736 460 4736 -fill #eef -dash {6 4}
.c create line 460 4728 460 4724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 391 to 393 (Used 1 nobox 1)
# ProcLine[3] stays at 393 (Used 1 nobox 1)
.c create rectangle 386 4726 534 4746 -fill white -width 0
.c create text 460 4736 -text "<type>L1</type>"
.c create text 70 4760 -fill #eef -text "395"
.c create line 140 4760 460 4760 -fill #eef -dash {6 4}
.c create line 460 4752 460 4748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 393 to 395 (Used 1 nobox 1)
# ProcLine[3] stays at 395 (Used 1 nobox 1)
.c create rectangle 340 4750 580 4770 -fill white -width 0
.c create text 460 4760 -text "<status>success</status>"
.c create text 70 4784 -fill #eef -text "397"
.c create line 140 4784 460 4784 -fill #eef -dash {6 4}
.c create line 460 4776 460 4772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 395 to 397 (Used 1 nobox 1)
# ProcLine[3] stays at 397 (Used 1 nobox 1)
.c create rectangle 452 4774 468 4794 -fill white -width 0
.c create text 460 4784 -text ""
.c create text 70 4808 -fill #eef -text "399"
.c create line 140 4808 460 4808 -fill #eef -dash {6 4}
.c create line 460 4800 460 4796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 397 to 399 (Used 1 nobox 1)
# ProcLine[3] stays at 399 (Used 1 nobox 1)
.c create rectangle 394 4798 526 4818 -fill white -width 0
.c create text 460 4808 -text "CRM2LEG!CCO,CO"
.c create line 460 4818 380 4818 -fill darkred -tags mesg -width 2
.c create line 380 4818 300 4818 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4832 -fill #eef -text "401"
.c create line 140 4832 460 4832 -fill #eef -dash {6 4}
.c create line 300 4608 300 4820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 381 to 401 (Used 1 nobox 1)
# ProcLine[2] stays at 401 (Used 1 nobox 1)
.c create rectangle 234 4822 366 4842 -fill white -width 0
.c create text 300 4832 -text "CRM2LEG?CCO,CO"
.c create line 300 4866 380 4866 -fill darkblue -tags mesg -width 2
.c create line 380 4866 460 4866 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 4856 -fill #eef -text "403"
.c create line 140 4856 460 4856 -fill #eef -dash {6 4}
.c create line 300 4848 300 4844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 401 to 403 (Used 1 nobox 1)
# ProcLine[2] stays at 403 (Used 1 nobox 1)
.c create rectangle 244 4846 356 4866 -fill white -width 0
.c create text 300 4856 -text "LEG2CRM!L2,S"
.c create text 70 4880 -fill #eef -text "405"
.c create line 140 4880 460 4880 -fill #eef -dash {6 4}
.c create line 460 4824 460 4868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 399 to 405 (Used 1 nobox 1)
# ProcLine[3] stays at 405 (Used 1 nobox 1)
.c create rectangle 404 4870 516 4890 -fill white -width 0
.c create text 460 4880 -text "LEG2CRM?L2,S"
.c create text 70 4904 -fill #eef -text "407"
.c create line 140 4904 460 4904 -fill #eef -dash {6 4}
.c create line 460 4896 460 4892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 405 to 407 (Used 1 nobox 1)
# ProcLine[3] stays at 407 (Used 1 nobox 1)
.c create rectangle 452 4894 468 4914 -fill white -width 0
.c create text 460 4904 -text "L2"
.c create text 70 4928 -fill #eef -text "409"
.c create line 140 4928 460 4928 -fill #eef -dash {6 4}
.c create line 460 4920 460 4916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 407 to 409 (Used 1 nobox 1)
# ProcLine[3] stays at 409 (Used 1 nobox 1)
.c create rectangle 452 4918 468 4938 -fill white -width 0
.c create text 460 4928 -text ""
.c create text 70 4952 -fill #eef -text "411"
.c create line 140 4952 460 4952 -fill #eef -dash {6 4}
.c create line 460 4944 460 4940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 409 to 411 (Used 1 nobox 1)
# ProcLine[3] stays at 411 (Used 1 nobox 1)
.c create rectangle 303 4942 617 4962 -fill white -width 0
.c create text 460 4952 -text "<originator>STUDENT</originator>"
.c create text 70 4976 -fill #eef -text "413"
.c create line 140 4976 460 4976 -fill #eef -dash {6 4}
.c create line 460 4968 460 4964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 411 to 413 (Used 1 nobox 1)
# ProcLine[3] stays at 413 (Used 1 nobox 1)
.c create rectangle 332 4966 588 4986 -fill white -width 0
.c create text 460 4976 -text "<responder>LMS</responder>"
.c create text 70 5000 -fill #eef -text "415"
.c create line 140 5000 460 5000 -fill #eef -dash {6 4}
.c create line 460 4992 460 4988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 413 to 415 (Used 1 nobox 1)
# ProcLine[3] stays at 415 (Used 1 nobox 1)
.c create rectangle 386 4990 534 5010 -fill white -width 0
.c create text 460 5000 -text "<type>L2</type>"
.c create text 70 5024 -fill #eef -text "417"
.c create line 140 5024 460 5024 -fill #eef -dash {6 4}
.c create line 460 5016 460 5012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 415 to 417 (Used 1 nobox 1)
# ProcLine[3] stays at 417 (Used 1 nobox 1)
.c create rectangle 340 5014 580 5034 -fill white -width 0
.c create text 460 5024 -text "<status>success</status>"
.c create text 70 5048 -fill #eef -text "419"
.c create line 140 5048 460 5048 -fill #eef -dash {6 4}
.c create line 460 5040 460 5036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 417 to 419 (Used 1 nobox 1)
# ProcLine[3] stays at 419 (Used 1 nobox 1)
.c create rectangle 452 5038 468 5058 -fill white -width 0
.c create text 460 5048 -text ""
.c create text 70 5072 -fill #eef -text "421"
.c create line 140 5072 460 5072 -fill #eef -dash {6 4}
.c create line 460 5064 460 5060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 419 to 421 (Used 1 nobox 1)
# ProcLine[3] stays at 421 (Used 1 nobox 1)
.c create rectangle 394 5062 526 5082 -fill white -width 0
.c create text 460 5072 -text "CRM2LEG!CCO,CO"
.c create line 460 5082 380 5082 -fill darkred -tags mesg -width 2
.c create line 380 5082 300 5082 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5096 -fill #eef -text "423"
.c create line 140 5096 460 5096 -fill #eef -dash {6 4}
.c create line 300 4872 300 5084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 403 to 423 (Used 1 nobox 1)
# ProcLine[2] stays at 423 (Used 1 nobox 1)
.c create rectangle 234 5086 366 5106 -fill white -width 0
.c create text 300 5096 -text "CRM2LEG?CCO,CO"
.c create line 300 5130 380 5130 -fill darkblue -tags mesg -width 2
.c create line 380 5130 460 5130 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5120 -fill #eef -text "425"
.c create line 140 5120 460 5120 -fill #eef -dash {6 4}
.c create line 300 5112 300 5108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 423 to 425 (Used 1 nobox 1)
# ProcLine[2] stays at 425 (Used 1 nobox 1)
.c create rectangle 244 5110 356 5130 -fill white -width 0
.c create text 300 5120 -text "LEG2CRM!L3,S"
.c create text 70 5144 -fill #eef -text "427"
.c create line 140 5144 460 5144 -fill #eef -dash {6 4}
.c create line 460 5088 460 5132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 421 to 427 (Used 1 nobox 1)
# ProcLine[3] stays at 427 (Used 1 nobox 1)
.c create rectangle 404 5134 516 5154 -fill white -width 0
.c create text 460 5144 -text "LEG2CRM?L3,S"
.c create text 70 5168 -fill #eef -text "429"
.c create line 140 5168 460 5168 -fill #eef -dash {6 4}
.c create line 460 5160 460 5156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 427 to 429 (Used 1 nobox 1)
# ProcLine[3] stays at 429 (Used 1 nobox 1)
.c create rectangle 452 5158 468 5178 -fill white -width 0
.c create text 460 5168 -text "L3"
.c create text 70 5192 -fill #eef -text "431"
.c create line 140 5192 460 5192 -fill #eef -dash {6 4}
.c create line 460 5184 460 5180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 429 to 431 (Used 1 nobox 1)
# ProcLine[3] stays at 431 (Used 1 nobox 1)
.c create rectangle 452 5182 468 5202 -fill white -width 0
.c create text 460 5192 -text ""
.c create text 70 5216 -fill #eef -text "433"
.c create line 140 5216 460 5216 -fill #eef -dash {6 4}
.c create line 460 5208 460 5204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 431 to 433 (Used 1 nobox 1)
# ProcLine[3] stays at 433 (Used 1 nobox 1)
.c create rectangle 303 5206 617 5226 -fill white -width 0
.c create text 460 5216 -text "<originator>STUDENT</originator>"
.c create text 70 5240 -fill #eef -text "435"
.c create line 140 5240 460 5240 -fill #eef -dash {6 4}
.c create line 460 5232 460 5228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 433 to 435 (Used 1 nobox 1)
# ProcLine[3] stays at 435 (Used 1 nobox 1)
.c create rectangle 332 5230 588 5250 -fill white -width 0
.c create text 460 5240 -text "<responder>LMS</responder>"
.c create text 70 5264 -fill #eef -text "437"
.c create line 140 5264 460 5264 -fill #eef -dash {6 4}
.c create line 460 5256 460 5252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 435 to 437 (Used 1 nobox 1)
# ProcLine[3] stays at 437 (Used 1 nobox 1)
.c create rectangle 386 5254 534 5274 -fill white -width 0
.c create text 460 5264 -text "<type>L3</type>"
.c create text 70 5288 -fill #eef -text "439"
.c create line 140 5288 460 5288 -fill #eef -dash {6 4}
.c create line 460 5280 460 5276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 437 to 439 (Used 1 nobox 1)
# ProcLine[3] stays at 439 (Used 1 nobox 1)
.c create rectangle 340 5278 580 5298 -fill white -width 0
.c create text 460 5288 -text "<status>success</status>"
.c create text 70 5312 -fill #eef -text "441"
.c create line 140 5312 460 5312 -fill #eef -dash {6 4}
.c create line 460 5304 460 5300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 439 to 441 (Used 1 nobox 1)
# ProcLine[3] stays at 441 (Used 1 nobox 1)
.c create rectangle 452 5302 468 5322 -fill white -width 0
.c create text 460 5312 -text ""
.c create text 70 5336 -fill #eef -text "443"
.c create line 140 5336 460 5336 -fill #eef -dash {6 4}
.c create line 460 5328 460 5324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 441 to 443 (Used 1 nobox 1)
# ProcLine[3] stays at 443 (Used 1 nobox 1)
.c create rectangle 394 5326 526 5346 -fill white -width 0
.c create text 460 5336 -text "CRM2LEG!CCO,CO"
.c create line 460 5346 380 5346 -fill darkred -tags mesg -width 2
.c create line 380 5346 300 5346 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5360 -fill #eef -text "445"
.c create line 140 5360 460 5360 -fill #eef -dash {6 4}
.c create line 300 5136 300 5348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 425 to 445 (Used 1 nobox 1)
# ProcLine[2] stays at 445 (Used 1 nobox 1)
.c create rectangle 234 5350 366 5370 -fill white -width 0
.c create text 300 5360 -text "CRM2LEG?CCO,CO"
.c create line 300 5394 380 5394 -fill darkblue -tags mesg -width 2
.c create line 380 5394 460 5394 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5384 -fill #eef -text "447"
.c create line 140 5384 460 5384 -fill #eef -dash {6 4}
.c create line 300 5376 300 5372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 445 to 447 (Used 1 nobox 1)
# ProcLine[2] stays at 447 (Used 1 nobox 1)
.c create rectangle 239 5374 361 5394 -fill white -width 0
.c create text 300 5384 -text "LEG2CRM!CW1,S"
.c create text 70 5408 -fill #eef -text "449"
.c create line 140 5408 460 5408 -fill #eef -dash {6 4}
.c create line 460 5352 460 5396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 443 to 449 (Used 1 nobox 1)
# ProcLine[3] stays at 449 (Used 1 nobox 1)
.c create rectangle 399 5398 521 5418 -fill white -width 0
.c create text 460 5408 -text "LEG2CRM?CW1,S"
.c create text 70 5432 -fill #eef -text "451"
.c create line 140 5432 460 5432 -fill #eef -dash {6 4}
.c create line 460 5424 460 5420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 449 to 451 (Used 1 nobox 1)
# ProcLine[3] stays at 451 (Used 1 nobox 1)
.c create rectangle 442 5422 478 5442 -fill white -width 0
.c create text 460 5432 -text "CW1 "
.c create text 70 5456 -fill #eef -text "453"
.c create line 140 5456 460 5456 -fill #eef -dash {6 4}
.c create line 460 5448 460 5444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 451 to 453 (Used 1 nobox 1)
# ProcLine[3] stays at 453 (Used 1 nobox 1)
.c create rectangle 452 5446 468 5466 -fill white -width 0
.c create text 460 5456 -text ""
.c create text 70 5480 -fill #eef -text "455"
.c create line 140 5480 460 5480 -fill #eef -dash {6 4}
.c create line 460 5472 460 5468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 453 to 455 (Used 1 nobox 1)
# ProcLine[3] stays at 455 (Used 1 nobox 1)
.c create rectangle 303 5470 617 5490 -fill white -width 0
.c create text 460 5480 -text "<originator>STUDENT</originator>"
.c create text 70 5504 -fill #eef -text "457"
.c create line 140 5504 460 5504 -fill #eef -dash {6 4}
.c create line 460 5496 460 5492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 455 to 457 (Used 1 nobox 1)
# ProcLine[3] stays at 457 (Used 1 nobox 1)
.c create rectangle 332 5494 588 5514 -fill white -width 0
.c create text 460 5504 -text "<responder>LMS</responder>"
.c create text 70 5528 -fill #eef -text "459"
.c create line 140 5528 460 5528 -fill #eef -dash {6 4}
.c create line 460 5520 460 5516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 457 to 459 (Used 1 nobox 1)
# ProcLine[3] stays at 459 (Used 1 nobox 1)
.c create rectangle 380 5518 540 5538 -fill white -width 0
.c create text 460 5528 -text "<type>CW1</type>"
.c create text 70 5552 -fill #eef -text "461"
.c create line 140 5552 460 5552 -fill #eef -dash {6 4}
.c create line 460 5544 460 5540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 459 to 461 (Used 1 nobox 1)
# ProcLine[3] stays at 461 (Used 1 nobox 1)
.c create rectangle 340 5542 580 5562 -fill white -width 0
.c create text 460 5552 -text "<status>success</status>"
.c create text 70 5576 -fill #eef -text "463"
.c create line 140 5576 460 5576 -fill #eef -dash {6 4}
.c create line 460 5568 460 5564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 461 to 463 (Used 1 nobox 1)
# ProcLine[3] stays at 463 (Used 1 nobox 1)
.c create rectangle 452 5566 468 5586 -fill white -width 0
.c create text 460 5576 -text ""
.c create text 70 5600 -fill #eef -text "465"
.c create line 140 5600 460 5600 -fill #eef -dash {6 4}
.c create line 460 5592 460 5588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 463 to 465 (Used 1 nobox 1)
# ProcLine[3] stays at 465 (Used 1 nobox 1)
.c create rectangle 338 5590 582 5610 -fill white -width 0
.c create text 460 5600 -text "LECTURES are now continued"
.c create text 70 5624 -fill #eef -text "467"
.c create line 140 5624 460 5624 -fill #eef -dash {6 4}
.c create line 460 5616 460 5612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 465 to 467 (Used 1 nobox 1)
# ProcLine[3] stays at 467 (Used 1 nobox 1)
.c create rectangle 394 5614 526 5634 -fill white -width 0
.c create text 460 5624 -text "CRM2LEG!CCO,CO"
.c create line 460 5634 380 5634 -fill darkred -tags mesg -width 2
.c create line 380 5634 300 5634 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5648 -fill #eef -text "469"
.c create line 140 5648 460 5648 -fill #eef -dash {6 4}
.c create line 300 5400 300 5636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 447 to 469 (Used 1 nobox 1)
# ProcLine[2] stays at 469 (Used 1 nobox 1)
.c create rectangle 234 5638 366 5658 -fill white -width 0
.c create text 300 5648 -text "CRM2LEG?CCO,CO"
.c create line 300 5682 380 5682 -fill darkblue -tags mesg -width 2
.c create line 380 5682 460 5682 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5672 -fill #eef -text "471"
.c create line 140 5672 460 5672 -fill #eef -dash {6 4}
.c create line 300 5664 300 5660 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 469 to 471 (Used 1 nobox 1)
# ProcLine[2] stays at 471 (Used 1 nobox 1)
.c create rectangle 244 5662 356 5682 -fill white -width 0
.c create text 300 5672 -text "LEG2CRM!L7,S"
.c create text 70 5696 -fill #eef -text "473"
.c create line 140 5696 460 5696 -fill #eef -dash {6 4}
.c create line 460 5640 460 5684 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 467 to 473 (Used 1 nobox 1)
# ProcLine[3] stays at 473 (Used 1 nobox 1)
.c create rectangle 404 5686 516 5706 -fill white -width 0
.c create text 460 5696 -text "LEG2CRM?L7,S"
.c create text 70 5720 -fill #eef -text "475"
.c create line 140 5720 460 5720 -fill #eef -dash {6 4}
.c create line 460 5712 460 5708 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 473 to 475 (Used 1 nobox 1)
# ProcLine[3] stays at 475 (Used 1 nobox 1)
.c create rectangle 452 5710 468 5730 -fill white -width 0
.c create text 460 5720 -text "L7"
.c create text 70 5744 -fill #eef -text "477"
.c create line 140 5744 460 5744 -fill #eef -dash {6 4}
.c create line 460 5736 460 5732 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 475 to 477 (Used 1 nobox 1)
# ProcLine[3] stays at 477 (Used 1 nobox 1)
.c create rectangle 380 5734 540 5754 -fill white -width 0
.c create text 460 5744 -text "Prohibited action"
.c create text 70 5768 -fill #eef -text "479"
.c create line 140 5768 460 5768 -fill #eef -dash {6 4}
.c create line 460 5760 460 5756 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 477 to 479 (Used 1 nobox 1)
# ProcLine[3] stays at 479 (Used 1 nobox 1)
.c create rectangle 394 5758 526 5778 -fill white -width 0
.c create text 460 5768 -text "CRM2LEG!CCP,CO"
.c create line 460 5778 380 5778 -fill darkred -tags mesg -width 2
.c create line 380 5778 300 5778 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5792 -fill #eef -text "481"
.c create line 140 5792 460 5792 -fill #eef -dash {6 4}
.c create line 300 5688 300 5780 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 471 to 481 (Used 1 nobox 1)
# ProcLine[2] stays at 481 (Used 1 nobox 1)
.c create rectangle 234 5782 366 5802 -fill white -width 0
.c create text 300 5792 -text "CRM2LEG?CCP,CO"
.c create line 300 5826 380 5826 -fill darkblue -tags mesg -width 2
.c create line 380 5826 460 5826 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5816 -fill #eef -text "483"
.c create line 140 5816 460 5816 -fill #eef -dash {6 4}
.c create line 300 5808 300 5804 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 481 to 483 (Used 1 nobox 1)
# ProcLine[2] stays at 483 (Used 1 nobox 1)
.c create rectangle 244 5806 356 5826 -fill white -width 0
.c create text 300 5816 -text "LEG2CRM!L8,S"
.c create text 70 5840 -fill #eef -text "485"
.c create line 140 5840 460 5840 -fill #eef -dash {6 4}
.c create line 460 5784 460 5828 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 479 to 485 (Used 1 nobox 1)
# ProcLine[3] stays at 485 (Used 1 nobox 1)
.c create rectangle 404 5830 516 5850 -fill white -width 0
.c create text 460 5840 -text "LEG2CRM?L8,S"
.c create text 70 5864 -fill #eef -text "487"
.c create line 140 5864 460 5864 -fill #eef -dash {6 4}
.c create line 460 5856 460 5852 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 485 to 487 (Used 1 nobox 1)
# ProcLine[3] stays at 487 (Used 1 nobox 1)
.c create rectangle 452 5854 468 5874 -fill white -width 0
.c create text 460 5864 -text "L8"
.c create text 70 5888 -fill #eef -text "489"
.c create line 140 5888 460 5888 -fill #eef -dash {6 4}
.c create line 460 5880 460 5876 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 487 to 489 (Used 1 nobox 1)
# ProcLine[3] stays at 489 (Used 1 nobox 1)
.c create rectangle 380 5878 540 5898 -fill white -width 0
.c create text 460 5888 -text "Prohibited action"
.c create text 70 5912 -fill #eef -text "491"
.c create line 140 5912 460 5912 -fill #eef -dash {6 4}
.c create line 460 5904 460 5900 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 489 to 491 (Used 1 nobox 1)
# ProcLine[3] stays at 491 (Used 1 nobox 1)
.c create rectangle 394 5902 526 5922 -fill white -width 0
.c create text 460 5912 -text "CRM2LEG!CCP,CO"
.c create line 460 5922 380 5922 -fill darkred -tags mesg -width 2
.c create line 380 5922 300 5922 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5936 -fill #eef -text "493"
.c create line 140 5936 460 5936 -fill #eef -dash {6 4}
.c create line 300 5832 300 5924 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 483 to 493 (Used 1 nobox 1)
# ProcLine[2] stays at 493 (Used 1 nobox 1)
.c create rectangle 234 5926 366 5946 -fill white -width 0
.c create text 300 5936 -text "CRM2LEG?CCP,CO"
.c create line 300 5970 380 5970 -fill darkblue -tags mesg -width 2
.c create line 380 5970 460 5970 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 5960 -fill #eef -text "495"
.c create line 140 5960 460 5960 -fill #eef -dash {6 4}
.c create line 300 5952 300 5948 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 493 to 495 (Used 1 nobox 1)
# ProcLine[2] stays at 495 (Used 1 nobox 1)
.c create rectangle 244 5950 356 5970 -fill white -width 0
.c create text 300 5960 -text "LEG2CRM!L4,S"
.c create text 70 5984 -fill #eef -text "497"
.c create line 140 5984 460 5984 -fill #eef -dash {6 4}
.c create line 460 5928 460 5972 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 491 to 497 (Used 1 nobox 1)
# ProcLine[3] stays at 497 (Used 1 nobox 1)
.c create rectangle 404 5974 516 5994 -fill white -width 0
.c create text 460 5984 -text "LEG2CRM?L4,S"
.c create text 70 6008 -fill #eef -text "499"
.c create line 140 6008 460 6008 -fill #eef -dash {6 4}
.c create line 460 6000 460 5996 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 497 to 499 (Used 1 nobox 1)
# ProcLine[3] stays at 499 (Used 1 nobox 1)
.c create rectangle 452 5998 468 6018 -fill white -width 0
.c create text 460 6008 -text "L4"
.c create text 70 6032 -fill #eef -text "501"
.c create line 140 6032 460 6032 -fill #eef -dash {6 4}
.c create line 460 6024 460 6020 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 499 to 501 (Used 1 nobox 1)
# ProcLine[3] stays at 501 (Used 1 nobox 1)
.c create rectangle 452 6022 468 6042 -fill white -width 0
.c create text 460 6032 -text ""
.c create text 70 6056 -fill #eef -text "503"
.c create line 140 6056 460 6056 -fill #eef -dash {6 4}
.c create line 460 6048 460 6044 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 501 to 503 (Used 1 nobox 1)
# ProcLine[3] stays at 503 (Used 1 nobox 1)
.c create rectangle 303 6046 617 6066 -fill white -width 0
.c create text 460 6056 -text "<originator>STUDENT</originator>"
.c create text 70 6080 -fill #eef -text "505"
.c create line 140 6080 460 6080 -fill #eef -dash {6 4}
.c create line 460 6072 460 6068 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 503 to 505 (Used 1 nobox 1)
# ProcLine[3] stays at 505 (Used 1 nobox 1)
.c create rectangle 332 6070 588 6090 -fill white -width 0
.c create text 460 6080 -text "<responder>LMS</responder>"
.c create text 70 6104 -fill #eef -text "507"
.c create line 140 6104 460 6104 -fill #eef -dash {6 4}
.c create line 460 6096 460 6092 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 505 to 507 (Used 1 nobox 1)
# ProcLine[3] stays at 507 (Used 1 nobox 1)
.c create rectangle 386 6094 534 6114 -fill white -width 0
.c create text 460 6104 -text "<type>L4</type>"
.c create text 70 6128 -fill #eef -text "509"
.c create line 140 6128 460 6128 -fill #eef -dash {6 4}
.c create line 460 6120 460 6116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 507 to 509 (Used 1 nobox 1)
# ProcLine[3] stays at 509 (Used 1 nobox 1)
.c create rectangle 340 6118 580 6138 -fill white -width 0
.c create text 460 6128 -text "<status>success</status>"
.c create text 70 6152 -fill #eef -text "511"
.c create line 140 6152 460 6152 -fill #eef -dash {6 4}
.c create line 460 6144 460 6140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 509 to 511 (Used 1 nobox 1)
# ProcLine[3] stays at 511 (Used 1 nobox 1)
.c create rectangle 452 6142 468 6162 -fill white -width 0
.c create text 460 6152 -text ""
.c create text 70 6176 -fill #eef -text "513"
.c create line 140 6176 460 6176 -fill #eef -dash {6 4}
.c create line 460 6168 460 6164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 511 to 513 (Used 1 nobox 1)
# ProcLine[3] stays at 513 (Used 1 nobox 1)
.c create rectangle 394 6166 526 6186 -fill white -width 0
.c create text 460 6176 -text "CRM2LEG!CCO,CO"
.c create line 460 6186 380 6186 -fill darkred -tags mesg -width 2
.c create line 380 6186 300 6186 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6200 -fill #eef -text "515"
.c create line 140 6200 460 6200 -fill #eef -dash {6 4}
.c create line 300 5976 300 6188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 495 to 515 (Used 1 nobox 1)
# ProcLine[2] stays at 515 (Used 1 nobox 1)
.c create rectangle 234 6190 366 6210 -fill white -width 0
.c create text 300 6200 -text "CRM2LEG?CCO,CO"
.c create line 300 6234 380 6234 -fill darkblue -tags mesg -width 2
.c create line 380 6234 460 6234 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6224 -fill #eef -text "517"
.c create line 140 6224 460 6224 -fill #eef -dash {6 4}
.c create line 300 6216 300 6212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 515 to 517 (Used 1 nobox 1)
# ProcLine[2] stays at 517 (Used 1 nobox 1)
.c create rectangle 244 6214 356 6234 -fill white -width 0
.c create text 300 6224 -text "LEG2CRM!L5,S"
.c create text 70 6248 -fill #eef -text "519"
.c create line 140 6248 460 6248 -fill #eef -dash {6 4}
.c create line 460 6192 460 6236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 513 to 519 (Used 1 nobox 1)
# ProcLine[3] stays at 519 (Used 1 nobox 1)
.c create rectangle 404 6238 516 6258 -fill white -width 0
.c create text 460 6248 -text "LEG2CRM?L5,S"
.c create text 70 6272 -fill #eef -text "521"
.c create line 140 6272 460 6272 -fill #eef -dash {6 4}
.c create line 460 6264 460 6260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 519 to 521 (Used 1 nobox 1)
# ProcLine[3] stays at 521 (Used 1 nobox 1)
.c create rectangle 452 6262 468 6282 -fill white -width 0
.c create text 460 6272 -text "L5"
.c create text 70 6296 -fill #eef -text "523"
.c create line 140 6296 460 6296 -fill #eef -dash {6 4}
.c create line 460 6288 460 6284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 521 to 523 (Used 1 nobox 1)
# ProcLine[3] stays at 523 (Used 1 nobox 1)
.c create rectangle 452 6286 468 6306 -fill white -width 0
.c create text 460 6296 -text ""
.c create text 70 6320 -fill #eef -text "525"
.c create line 140 6320 460 6320 -fill #eef -dash {6 4}
.c create line 460 6312 460 6308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 523 to 525 (Used 1 nobox 1)
# ProcLine[3] stays at 525 (Used 1 nobox 1)
.c create rectangle 303 6310 617 6330 -fill white -width 0
.c create text 460 6320 -text "<originator>STUDENT</originator>"
.c create text 70 6344 -fill #eef -text "527"
.c create line 140 6344 460 6344 -fill #eef -dash {6 4}
.c create line 460 6336 460 6332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 525 to 527 (Used 1 nobox 1)
# ProcLine[3] stays at 527 (Used 1 nobox 1)
.c create rectangle 332 6334 588 6354 -fill white -width 0
.c create text 460 6344 -text "<responder>LMS</responder>"
.c create text 70 6368 -fill #eef -text "529"
.c create line 140 6368 460 6368 -fill #eef -dash {6 4}
.c create line 460 6360 460 6356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 527 to 529 (Used 1 nobox 1)
# ProcLine[3] stays at 529 (Used 1 nobox 1)
.c create rectangle 386 6358 534 6378 -fill white -width 0
.c create text 460 6368 -text "<type>L5</type>"
.c create text 70 6392 -fill #eef -text "531"
.c create line 140 6392 460 6392 -fill #eef -dash {6 4}
.c create line 460 6384 460 6380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 529 to 531 (Used 1 nobox 1)
# ProcLine[3] stays at 531 (Used 1 nobox 1)
.c create rectangle 340 6382 580 6402 -fill white -width 0
.c create text 460 6392 -text "<status>success</status>"
.c create text 70 6416 -fill #eef -text "533"
.c create line 140 6416 460 6416 -fill #eef -dash {6 4}
.c create line 460 6408 460 6404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 531 to 533 (Used 1 nobox 1)
# ProcLine[3] stays at 533 (Used 1 nobox 1)
.c create rectangle 452 6406 468 6426 -fill white -width 0
.c create text 460 6416 -text ""
.c create text 70 6440 -fill #eef -text "535"
.c create line 140 6440 460 6440 -fill #eef -dash {6 4}
.c create line 460 6432 460 6428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 533 to 535 (Used 1 nobox 1)
# ProcLine[3] stays at 535 (Used 1 nobox 1)
.c create rectangle 394 6430 526 6450 -fill white -width 0
.c create text 460 6440 -text "CRM2LEG!CCO,CO"
.c create line 460 6450 380 6450 -fill darkred -tags mesg -width 2
.c create line 380 6450 300 6450 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6464 -fill #eef -text "537"
.c create line 140 6464 460 6464 -fill #eef -dash {6 4}
.c create line 300 6240 300 6452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 517 to 537 (Used 1 nobox 1)
# ProcLine[2] stays at 537 (Used 1 nobox 1)
.c create rectangle 234 6454 366 6474 -fill white -width 0
.c create text 300 6464 -text "CRM2LEG?CCO,CO"
.c create line 300 6498 380 6498 -fill darkblue -tags mesg -width 2
.c create line 380 6498 460 6498 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6488 -fill #eef -text "539"
.c create line 140 6488 460 6488 -fill #eef -dash {6 4}
.c create line 300 6480 300 6476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 537 to 539 (Used 1 nobox 1)
# ProcLine[2] stays at 539 (Used 1 nobox 1)
.c create rectangle 239 6478 361 6498 -fill white -width 0
.c create text 300 6488 -text "LEG2CRM!L7,TF"
.c create text 70 6512 -fill #eef -text "541"
.c create line 140 6512 460 6512 -fill #eef -dash {6 4}
.c create line 460 6456 460 6500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 535 to 541 (Used 1 nobox 1)
# ProcLine[3] stays at 541 (Used 1 nobox 1)
.c create rectangle 399 6502 521 6522 -fill white -width 0
.c create text 460 6512 -text "LEG2CRM?L7,TF"
.c create text 70 6536 -fill #eef -text "543"
.c create line 140 6536 460 6536 -fill #eef -dash {6 4}
.c create line 460 6528 460 6524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 541 to 543 (Used 1 nobox 1)
# ProcLine[3] stays at 543 (Used 1 nobox 1)
.c create rectangle 452 6526 468 6546 -fill white -width 0
.c create text 460 6536 -text "L7"
.c create text 70 6560 -fill #eef -text "545"
.c create line 140 6560 460 6560 -fill #eef -dash {6 4}
.c create line 460 6552 460 6548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 543 to 545 (Used 1 nobox 1)
# ProcLine[3] stays at 545 (Used 1 nobox 1)
.c create rectangle 394 6550 526 6570 -fill white -width 0
.c create text 460 6560 -text "CRM2LEG!NCC,CO"
.c create line 460 6570 380 6570 -fill darkred -tags mesg -width 2
.c create line 380 6570 300 6570 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6584 -fill #eef -text "547"
.c create line 140 6584 460 6584 -fill #eef -dash {6 4}
.c create line 300 6504 300 6572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 539 to 547 (Used 1 nobox 1)
# ProcLine[2] stays at 547 (Used 1 nobox 1)
.c create rectangle 234 6574 366 6594 -fill white -width 0
.c create text 300 6584 -text "CRM2LEG?NCC,CO"
.c create line 300 6618 380 6618 -fill darkblue -tags mesg -width 2
.c create line 380 6618 460 6618 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6608 -fill #eef -text "549"
.c create line 140 6608 460 6608 -fill #eef -dash {6 4}
.c create line 300 6600 300 6596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 547 to 549 (Used 1 nobox 1)
# ProcLine[2] stays at 549 (Used 1 nobox 1)
.c create rectangle 244 6598 356 6618 -fill white -width 0
.c create text 300 6608 -text "LEG2CRM!L7,S"
.c create text 70 6632 -fill #eef -text "551"
.c create line 140 6632 460 6632 -fill #eef -dash {6 4}
.c create line 460 6576 460 6620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 545 to 551 (Used 1 nobox 1)
# ProcLine[3] stays at 551 (Used 1 nobox 1)
.c create rectangle 404 6622 516 6642 -fill white -width 0
.c create text 460 6632 -text "LEG2CRM?L7,S"
.c create text 70 6656 -fill #eef -text "553"
.c create line 140 6656 460 6656 -fill #eef -dash {6 4}
.c create line 460 6648 460 6644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 551 to 553 (Used 1 nobox 1)
# ProcLine[3] stays at 553 (Used 1 nobox 1)
.c create rectangle 452 6646 468 6666 -fill white -width 0
.c create text 460 6656 -text "L7"
.c create text 70 6680 -fill #eef -text "555"
.c create line 140 6680 460 6680 -fill #eef -dash {6 4}
.c create line 460 6672 460 6668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 553 to 555 (Used 1 nobox 1)
# ProcLine[3] stays at 555 (Used 1 nobox 1)
.c create rectangle 380 6670 540 6690 -fill white -width 0
.c create text 460 6680 -text "Prohibited action"
.c create text 70 6704 -fill #eef -text "557"
.c create line 140 6704 460 6704 -fill #eef -dash {6 4}
.c create line 460 6696 460 6692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 555 to 557 (Used 1 nobox 1)
# ProcLine[3] stays at 557 (Used 1 nobox 1)
.c create rectangle 394 6694 526 6714 -fill white -width 0
.c create text 460 6704 -text "CRM2LEG!CCP,CO"
.c create line 460 6714 380 6714 -fill darkred -tags mesg -width 2
.c create line 380 6714 300 6714 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6728 -fill #eef -text "559"
.c create line 140 6728 460 6728 -fill #eef -dash {6 4}
.c create line 300 6624 300 6716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 549 to 559 (Used 1 nobox 1)
# ProcLine[2] stays at 559 (Used 1 nobox 1)
.c create rectangle 234 6718 366 6738 -fill white -width 0
.c create text 300 6728 -text "CRM2LEG?CCP,CO"
.c create line 300 6762 380 6762 -fill darkblue -tags mesg -width 2
.c create line 380 6762 460 6762 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6752 -fill #eef -text "561"
.c create line 140 6752 460 6752 -fill #eef -dash {6 4}
.c create line 300 6744 300 6740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 559 to 561 (Used 1 nobox 1)
# ProcLine[2] stays at 561 (Used 1 nobox 1)
.c create rectangle 239 6742 361 6762 -fill white -width 0
.c create text 300 6752 -text "LEG2CRM!CW2,S"
.c create text 70 6776 -fill #eef -text "563"
.c create line 140 6776 460 6776 -fill #eef -dash {6 4}
.c create line 460 6720 460 6764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 557 to 563 (Used 1 nobox 1)
# ProcLine[3] stays at 563 (Used 1 nobox 1)
.c create rectangle 399 6766 521 6786 -fill white -width 0
.c create text 460 6776 -text "LEG2CRM?CW2,S"
.c create text 70 6800 -fill #eef -text "565"
.c create line 140 6800 460 6800 -fill #eef -dash {6 4}
.c create line 460 6792 460 6788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 563 to 565 (Used 1 nobox 1)
# ProcLine[3] stays at 565 (Used 1 nobox 1)
.c create rectangle 442 6790 478 6810 -fill white -width 0
.c create text 460 6800 -text "CW2 "
.c create text 70 6824 -fill #eef -text "567"
.c create line 140 6824 460 6824 -fill #eef -dash {6 4}
.c create line 460 6816 460 6812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 565 to 567 (Used 1 nobox 1)
# ProcLine[3] stays at 567 (Used 1 nobox 1)
.c create rectangle 380 6814 540 6834 -fill white -width 0
.c create text 460 6824 -text "Prohibited action"
.c create text 70 6848 -fill #eef -text "569"
.c create line 140 6848 460 6848 -fill #eef -dash {6 4}
.c create line 460 6840 460 6836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 567 to 569 (Used 1 nobox 1)
# ProcLine[3] stays at 569 (Used 1 nobox 1)
.c create rectangle 394 6838 526 6858 -fill white -width 0
.c create text 460 6848 -text "CRM2LEG!CCP,CO"
.c create line 460 6858 380 6858 -fill darkred -tags mesg -width 2
.c create line 380 6858 300 6858 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6872 -fill #eef -text "571"
.c create line 140 6872 460 6872 -fill #eef -dash {6 4}
.c create line 300 6768 300 6860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 561 to 571 (Used 1 nobox 1)
# ProcLine[2] stays at 571 (Used 1 nobox 1)
.c create rectangle 234 6862 366 6882 -fill white -width 0
.c create text 300 6872 -text "CRM2LEG?CCP,CO"
.c create line 300 6906 380 6906 -fill darkblue -tags mesg -width 2
.c create line 380 6906 460 6906 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 6896 -fill #eef -text "573"
.c create line 140 6896 460 6896 -fill #eef -dash {6 4}
.c create line 300 6888 300 6884 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 571 to 573 (Used 1 nobox 1)
# ProcLine[2] stays at 573 (Used 1 nobox 1)
.c create rectangle 244 6886 356 6906 -fill white -width 0
.c create text 300 6896 -text "LEG2CRM!L7,S"
.c create text 70 6920 -fill #eef -text "575"
.c create line 140 6920 460 6920 -fill #eef -dash {6 4}
.c create line 460 6864 460 6908 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 569 to 575 (Used 1 nobox 1)
# ProcLine[3] stays at 575 (Used 1 nobox 1)
.c create rectangle 404 6910 516 6930 -fill white -width 0
.c create text 460 6920 -text "LEG2CRM?L7,S"
.c create text 70 6944 -fill #eef -text "577"
.c create line 140 6944 460 6944 -fill #eef -dash {6 4}
.c create line 460 6936 460 6932 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 575 to 577 (Used 1 nobox 1)
# ProcLine[3] stays at 577 (Used 1 nobox 1)
.c create rectangle 452 6934 468 6954 -fill white -width 0
.c create text 460 6944 -text "L7"
.c create text 70 6968 -fill #eef -text "579"
.c create line 140 6968 460 6968 -fill #eef -dash {6 4}
.c create line 460 6960 460 6956 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 577 to 579 (Used 1 nobox 1)
# ProcLine[3] stays at 579 (Used 1 nobox 1)
.c create rectangle 380 6958 540 6978 -fill white -width 0
.c create text 460 6968 -text "Prohibited action"
.c create text 70 6992 -fill #eef -text "581"
.c create line 140 6992 460 6992 -fill #eef -dash {6 4}
.c create line 460 6984 460 6980 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 579 to 581 (Used 1 nobox 1)
# ProcLine[3] stays at 581 (Used 1 nobox 1)
.c create rectangle 394 6982 526 7002 -fill white -width 0
.c create text 460 6992 -text "CRM2LEG!CCP,CO"
.c create line 460 7002 380 7002 -fill darkred -tags mesg -width 2
.c create line 380 7002 300 7002 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7016 -fill #eef -text "583"
.c create line 140 7016 460 7016 -fill #eef -dash {6 4}
.c create line 300 6912 300 7004 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 573 to 583 (Used 1 nobox 1)
# ProcLine[2] stays at 583 (Used 1 nobox 1)
.c create rectangle 234 7006 366 7026 -fill white -width 0
.c create text 300 7016 -text "CRM2LEG?CCP,CO"
.c create line 300 7050 380 7050 -fill darkblue -tags mesg -width 2
.c create line 380 7050 460 7050 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7040 -fill #eef -text "585"
.c create line 140 7040 460 7040 -fill #eef -dash {6 4}
.c create line 300 7032 300 7028 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 583 to 585 (Used 1 nobox 1)
# ProcLine[2] stays at 585 (Used 1 nobox 1)
.c create rectangle 228 7030 372 7050 -fill white -width 0
.c create text 300 7040 -text "LEG2CRM!EXAM,TO"
.c create text 70 7064 -fill #eef -text "587"
.c create line 140 7064 460 7064 -fill #eef -dash {6 4}
.c create line 460 7008 460 7052 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 581 to 587 (Used 1 nobox 1)
# ProcLine[3] stays at 587 (Used 1 nobox 1)
.c create rectangle 388 7054 532 7074 -fill white -width 0
.c create text 460 7064 -text "LEG2CRM?EXAM,TO"
.c create text 70 7088 -fill #eef -text "589"
.c create line 140 7088 460 7088 -fill #eef -dash {6 4}
.c create line 460 7080 460 7076 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 587 to 589 (Used 1 nobox 1)
# ProcLine[3] stays at 589 (Used 1 nobox 1)
.c create rectangle 436 7078 484 7098 -fill white -width 0
.c create text 460 7088 -text "EXAM "
.c create text 70 7112 -fill #eef -text "591"
.c create line 140 7112 460 7112 -fill #eef -dash {6 4}
.c create line 460 7104 460 7100 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 589 to 591 (Used 1 nobox 1)
# ProcLine[3] stays at 591 (Used 1 nobox 1)
.c create rectangle 394 7102 526 7122 -fill white -width 0
.c create text 460 7112 -text "CRM2LEG!NCC,CO"
.c create line 460 7122 380 7122 -fill darkred -tags mesg -width 2
.c create line 380 7122 300 7122 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7136 -fill #eef -text "593"
.c create line 140 7136 460 7136 -fill #eef -dash {6 4}
.c create line 300 7056 300 7124 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 585 to 593 (Used 1 nobox 1)
# ProcLine[2] stays at 593 (Used 1 nobox 1)
.c create rectangle 234 7126 366 7146 -fill white -width 0
.c create text 300 7136 -text "CRM2LEG?NCC,CO"
.c create line 300 7170 380 7170 -fill darkblue -tags mesg -width 2
.c create line 380 7170 460 7170 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7160 -fill #eef -text "595"
.c create line 140 7160 460 7160 -fill #eef -dash {6 4}
.c create line 300 7152 300 7148 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 593 to 595 (Used 1 nobox 1)
# ProcLine[2] stays at 595 (Used 1 nobox 1)
.c create rectangle 244 7150 356 7170 -fill white -width 0
.c create text 300 7160 -text "LEG2CRM!L6,S"
.c create text 70 7184 -fill #eef -text "597"
.c create line 140 7184 460 7184 -fill #eef -dash {6 4}
.c create line 460 7128 460 7172 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 591 to 597 (Used 1 nobox 1)
# ProcLine[3] stays at 597 (Used 1 nobox 1)
.c create rectangle 404 7174 516 7194 -fill white -width 0
.c create text 460 7184 -text "LEG2CRM?L6,S"
.c create text 70 7208 -fill #eef -text "599"
.c create line 140 7208 460 7208 -fill #eef -dash {6 4}
.c create line 460 7200 460 7196 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 597 to 599 (Used 1 nobox 1)
# ProcLine[3] stays at 599 (Used 1 nobox 1)
.c create rectangle 452 7198 468 7218 -fill white -width 0
.c create text 460 7208 -text "L6"
.c create text 70 7232 -fill #eef -text "601"
.c create line 140 7232 460 7232 -fill #eef -dash {6 4}
.c create line 460 7224 460 7220 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 599 to 601 (Used 1 nobox 1)
# ProcLine[3] stays at 601 (Used 1 nobox 1)
.c create rectangle 452 7222 468 7242 -fill white -width 0
.c create text 460 7232 -text ""
.c create text 70 7256 -fill #eef -text "603"
.c create line 140 7256 460 7256 -fill #eef -dash {6 4}
.c create line 460 7248 460 7244 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 601 to 603 (Used 1 nobox 1)
# ProcLine[3] stays at 603 (Used 1 nobox 1)
.c create rectangle 303 7246 617 7266 -fill white -width 0
.c create text 460 7256 -text "<originator>STUDENT</originator>"
.c create text 70 7280 -fill #eef -text "605"
.c create line 140 7280 460 7280 -fill #eef -dash {6 4}
.c create line 460 7272 460 7268 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 603 to 605 (Used 1 nobox 1)
# ProcLine[3] stays at 605 (Used 1 nobox 1)
.c create rectangle 332 7270 588 7290 -fill white -width 0
.c create text 460 7280 -text "<responder>LMS</responder>"
.c create text 70 7304 -fill #eef -text "607"
.c create line 140 7304 460 7304 -fill #eef -dash {6 4}
.c create line 460 7296 460 7292 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 605 to 607 (Used 1 nobox 1)
# ProcLine[3] stays at 607 (Used 1 nobox 1)
.c create rectangle 386 7294 534 7314 -fill white -width 0
.c create text 460 7304 -text "<type>L6</type>"
.c create text 70 7328 -fill #eef -text "609"
.c create line 140 7328 460 7328 -fill #eef -dash {6 4}
.c create line 460 7320 460 7316 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 607 to 609 (Used 1 nobox 1)
# ProcLine[3] stays at 609 (Used 1 nobox 1)
.c create rectangle 340 7318 580 7338 -fill white -width 0
.c create text 460 7328 -text "<status>success</status>"
.c create text 70 7352 -fill #eef -text "611"
.c create line 140 7352 460 7352 -fill #eef -dash {6 4}
.c create line 460 7344 460 7340 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 609 to 611 (Used 1 nobox 1)
# ProcLine[3] stays at 611 (Used 1 nobox 1)
.c create rectangle 452 7342 468 7362 -fill white -width 0
.c create text 460 7352 -text ""
.c create text 70 7376 -fill #eef -text "613"
.c create line 140 7376 460 7376 -fill #eef -dash {6 4}
.c create line 460 7368 460 7364 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 611 to 613 (Used 1 nobox 1)
# ProcLine[3] stays at 613 (Used 1 nobox 1)
.c create rectangle 394 7366 526 7386 -fill white -width 0
.c create text 460 7376 -text "CRM2LEG!CCO,CO"
.c create line 460 7386 380 7386 -fill darkred -tags mesg -width 2
.c create line 380 7386 300 7386 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7400 -fill #eef -text "615"
.c create line 140 7400 460 7400 -fill #eef -dash {6 4}
.c create line 300 7176 300 7388 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 595 to 615 (Used 1 nobox 1)
# ProcLine[2] stays at 615 (Used 1 nobox 1)
.c create rectangle 234 7390 366 7410 -fill white -width 0
.c create text 300 7400 -text "CRM2LEG?CCO,CO"
.c create line 300 7434 380 7434 -fill darkblue -tags mesg -width 2
.c create line 380 7434 460 7434 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7424 -fill #eef -text "617"
.c create line 140 7424 460 7424 -fill #eef -dash {6 4}
.c create line 300 7416 300 7412 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 615 to 617 (Used 1 nobox 1)
# ProcLine[2] stays at 617 (Used 1 nobox 1)
.c create rectangle 239 7414 361 7434 -fill white -width 0
.c create text 300 7424 -text "LEG2CRM!CW2,S"
.c create text 70 7448 -fill #eef -text "619"
.c create line 140 7448 460 7448 -fill #eef -dash {6 4}
.c create line 460 7392 460 7436 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 613 to 619 (Used 1 nobox 1)
# ProcLine[3] stays at 619 (Used 1 nobox 1)
.c create rectangle 399 7438 521 7458 -fill white -width 0
.c create text 460 7448 -text "LEG2CRM?CW2,S"
.c create text 70 7472 -fill #eef -text "621"
.c create line 140 7472 460 7472 -fill #eef -dash {6 4}
.c create line 460 7464 460 7460 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 619 to 621 (Used 1 nobox 1)
# ProcLine[3] stays at 621 (Used 1 nobox 1)
.c create rectangle 442 7462 478 7482 -fill white -width 0
.c create text 460 7472 -text "CW2 "
.c create text 70 7496 -fill #eef -text "623"
.c create line 140 7496 460 7496 -fill #eef -dash {6 4}
.c create line 460 7488 460 7484 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 621 to 623 (Used 1 nobox 1)
# ProcLine[3] stays at 623 (Used 1 nobox 1)
.c create rectangle 452 7486 468 7506 -fill white -width 0
.c create text 460 7496 -text ""
.c create text 70 7520 -fill #eef -text "625"
.c create line 140 7520 460 7520 -fill #eef -dash {6 4}
.c create line 460 7512 460 7508 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 623 to 625 (Used 1 nobox 1)
# ProcLine[3] stays at 625 (Used 1 nobox 1)
.c create rectangle 303 7510 617 7530 -fill white -width 0
.c create text 460 7520 -text "<originator>STUDENT</originator>"
.c create text 70 7544 -fill #eef -text "627"
.c create line 140 7544 460 7544 -fill #eef -dash {6 4}
.c create line 460 7536 460 7532 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 625 to 627 (Used 1 nobox 1)
# ProcLine[3] stays at 627 (Used 1 nobox 1)
.c create rectangle 332 7534 588 7554 -fill white -width 0
.c create text 460 7544 -text "<responder>LMS</responder>"
.c create text 70 7568 -fill #eef -text "629"
.c create line 140 7568 460 7568 -fill #eef -dash {6 4}
.c create line 460 7560 460 7556 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 627 to 629 (Used 1 nobox 1)
# ProcLine[3] stays at 629 (Used 1 nobox 1)
.c create rectangle 380 7558 540 7578 -fill white -width 0
.c create text 460 7568 -text "<type>CW2</type>"
.c create text 70 7592 -fill #eef -text "631"
.c create line 140 7592 460 7592 -fill #eef -dash {6 4}
.c create line 460 7584 460 7580 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 629 to 631 (Used 1 nobox 1)
# ProcLine[3] stays at 631 (Used 1 nobox 1)
.c create rectangle 340 7582 580 7602 -fill white -width 0
.c create text 460 7592 -text "<status>success</status>"
.c create text 70 7616 -fill #eef -text "633"
.c create line 140 7616 460 7616 -fill #eef -dash {6 4}
.c create line 460 7608 460 7604 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 631 to 633 (Used 1 nobox 1)
# ProcLine[3] stays at 633 (Used 1 nobox 1)
.c create rectangle 452 7606 468 7626 -fill white -width 0
.c create text 460 7616 -text ""
.c create text 70 7640 -fill #eef -text "635"
.c create line 140 7640 460 7640 -fill #eef -dash {6 4}
.c create line 460 7632 460 7628 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 633 to 635 (Used 1 nobox 1)
# ProcLine[3] stays at 635 (Used 1 nobox 1)
.c create rectangle 338 7630 582 7650 -fill white -width 0
.c create text 460 7640 -text "LECTURES are now continued"
.c create text 70 7664 -fill #eef -text "637"
.c create line 140 7664 460 7664 -fill #eef -dash {6 4}
.c create line 460 7656 460 7652 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 635 to 637 (Used 1 nobox 1)
# ProcLine[3] stays at 637 (Used 1 nobox 1)
.c create rectangle 394 7654 526 7674 -fill white -width 0
.c create text 460 7664 -text "CRM2LEG!CCO,CO"
.c create line 460 7674 380 7674 -fill darkred -tags mesg -width 2
.c create line 380 7674 300 7674 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7688 -fill #eef -text "639"
.c create line 140 7688 460 7688 -fill #eef -dash {6 4}
.c create line 300 7440 300 7676 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 617 to 639 (Used 1 nobox 1)
# ProcLine[2] stays at 639 (Used 1 nobox 1)
.c create rectangle 234 7678 366 7698 -fill white -width 0
.c create text 300 7688 -text "CRM2LEG?CCO,CO"
.c create line 300 7722 380 7722 -fill darkblue -tags mesg -width 2
.c create line 380 7722 460 7722 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7712 -fill #eef -text "641"
.c create line 140 7712 460 7712 -fill #eef -dash {6 4}
.c create line 300 7704 300 7700 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 639 to 641 (Used 1 nobox 1)
# ProcLine[2] stays at 641 (Used 1 nobox 1)
.c create rectangle 244 7702 356 7722 -fill white -width 0
.c create text 300 7712 -text "LEG2CRM!L7,S"
.c create text 70 7736 -fill #eef -text "643"
.c create line 140 7736 460 7736 -fill #eef -dash {6 4}
.c create line 460 7680 460 7724 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 637 to 643 (Used 1 nobox 1)
# ProcLine[3] stays at 643 (Used 1 nobox 1)
.c create rectangle 404 7726 516 7746 -fill white -width 0
.c create text 460 7736 -text "LEG2CRM?L7,S"
.c create text 70 7760 -fill #eef -text "645"
.c create line 140 7760 460 7760 -fill #eef -dash {6 4}
.c create line 460 7752 460 7748 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 643 to 645 (Used 1 nobox 1)
# ProcLine[3] stays at 645 (Used 1 nobox 1)
.c create rectangle 452 7750 468 7770 -fill white -width 0
.c create text 460 7760 -text "L7"
.c create text 70 7784 -fill #eef -text "647"
.c create line 140 7784 460 7784 -fill #eef -dash {6 4}
.c create line 460 7776 460 7772 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 645 to 647 (Used 1 nobox 1)
# ProcLine[3] stays at 647 (Used 1 nobox 1)
.c create rectangle 452 7774 468 7794 -fill white -width 0
.c create text 460 7784 -text ""
.c create text 70 7808 -fill #eef -text "649"
.c create line 140 7808 460 7808 -fill #eef -dash {6 4}
.c create line 460 7800 460 7796 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 647 to 649 (Used 1 nobox 1)
# ProcLine[3] stays at 649 (Used 1 nobox 1)
.c create rectangle 303 7798 617 7818 -fill white -width 0
.c create text 460 7808 -text "<originator>STUDENT</originator>"
.c create text 70 7832 -fill #eef -text "651"
.c create line 140 7832 460 7832 -fill #eef -dash {6 4}
.c create line 460 7824 460 7820 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 649 to 651 (Used 1 nobox 1)
# ProcLine[3] stays at 651 (Used 1 nobox 1)
.c create rectangle 332 7822 588 7842 -fill white -width 0
.c create text 460 7832 -text "<responder>LMS</responder>"
.c create text 70 7856 -fill #eef -text "653"
.c create line 140 7856 460 7856 -fill #eef -dash {6 4}
.c create line 460 7848 460 7844 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 651 to 653 (Used 1 nobox 1)
# ProcLine[3] stays at 653 (Used 1 nobox 1)
.c create rectangle 386 7846 534 7866 -fill white -width 0
.c create text 460 7856 -text "<type>L7</type>"
.c create text 70 7880 -fill #eef -text "655"
.c create line 140 7880 460 7880 -fill #eef -dash {6 4}
.c create line 460 7872 460 7868 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 653 to 655 (Used 1 nobox 1)
# ProcLine[3] stays at 655 (Used 1 nobox 1)
.c create rectangle 340 7870 580 7890 -fill white -width 0
.c create text 460 7880 -text "<status>success</status>"
.c create text 70 7904 -fill #eef -text "657"
.c create line 140 7904 460 7904 -fill #eef -dash {6 4}
.c create line 460 7896 460 7892 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 655 to 657 (Used 1 nobox 1)
# ProcLine[3] stays at 657 (Used 1 nobox 1)
.c create rectangle 452 7894 468 7914 -fill white -width 0
.c create text 460 7904 -text ""
.c create text 70 7928 -fill #eef -text "659"
.c create line 140 7928 460 7928 -fill #eef -dash {6 4}
.c create line 460 7920 460 7916 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 657 to 659 (Used 1 nobox 1)
# ProcLine[3] stays at 659 (Used 1 nobox 1)
.c create rectangle 394 7918 526 7938 -fill white -width 0
.c create text 460 7928 -text "CRM2LEG!CCO,CO"
.c create line 460 7938 380 7938 -fill darkred -tags mesg -width 2
.c create line 380 7938 300 7938 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7952 -fill #eef -text "661"
.c create line 140 7952 460 7952 -fill #eef -dash {6 4}
.c create line 300 7728 300 7940 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 641 to 661 (Used 1 nobox 1)
# ProcLine[2] stays at 661 (Used 1 nobox 1)
.c create rectangle 234 7942 366 7962 -fill white -width 0
.c create text 300 7952 -text "CRM2LEG?CCO,CO"
.c create line 300 7986 380 7986 -fill darkblue -tags mesg -width 2
.c create line 380 7986 460 7986 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 7976 -fill #eef -text "663"
.c create line 140 7976 460 7976 -fill #eef -dash {6 4}
.c create line 300 7968 300 7964 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 661 to 663 (Used 1 nobox 1)
# ProcLine[2] stays at 663 (Used 1 nobox 1)
.c create rectangle 244 7966 356 7986 -fill white -width 0
.c create text 300 7976 -text "LEG2CRM!L8,S"
.c create text 70 8000 -fill #eef -text "665"
.c create line 140 8000 460 8000 -fill #eef -dash {6 4}
.c create line 460 7944 460 7988 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 659 to 665 (Used 1 nobox 1)
# ProcLine[3] stays at 665 (Used 1 nobox 1)
.c create rectangle 404 7990 516 8010 -fill white -width 0
.c create text 460 8000 -text "LEG2CRM?L8,S"
.c create text 70 8024 -fill #eef -text "667"
.c create line 140 8024 460 8024 -fill #eef -dash {6 4}
.c create line 460 8016 460 8012 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 665 to 667 (Used 1 nobox 1)
# ProcLine[3] stays at 667 (Used 1 nobox 1)
.c create rectangle 452 8014 468 8034 -fill white -width 0
.c create text 460 8024 -text "L8"
.c create text 70 8048 -fill #eef -text "669"
.c create line 140 8048 460 8048 -fill #eef -dash {6 4}
.c create line 460 8040 460 8036 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 667 to 669 (Used 1 nobox 1)
# ProcLine[3] stays at 669 (Used 1 nobox 1)
.c create rectangle 452 8038 468 8058 -fill white -width 0
.c create text 460 8048 -text ""
.c create text 70 8072 -fill #eef -text "671"
.c create line 140 8072 460 8072 -fill #eef -dash {6 4}
.c create line 460 8064 460 8060 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 669 to 671 (Used 1 nobox 1)
# ProcLine[3] stays at 671 (Used 1 nobox 1)
.c create rectangle 303 8062 617 8082 -fill white -width 0
.c create text 460 8072 -text "<originator>STUDENT</originator>"
.c create text 70 8096 -fill #eef -text "673"
.c create line 140 8096 460 8096 -fill #eef -dash {6 4}
.c create line 460 8088 460 8084 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 671 to 673 (Used 1 nobox 1)
# ProcLine[3] stays at 673 (Used 1 nobox 1)
.c create rectangle 332 8086 588 8106 -fill white -width 0
.c create text 460 8096 -text "<responder>LMS</responder>"
.c create text 70 8120 -fill #eef -text "675"
.c create line 140 8120 460 8120 -fill #eef -dash {6 4}
.c create line 460 8112 460 8108 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 673 to 675 (Used 1 nobox 1)
# ProcLine[3] stays at 675 (Used 1 nobox 1)
.c create rectangle 386 8110 534 8130 -fill white -width 0
.c create text 460 8120 -text "<type>L8</type>"
.c create text 70 8144 -fill #eef -text "677"
.c create line 140 8144 460 8144 -fill #eef -dash {6 4}
.c create line 460 8136 460 8132 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 675 to 677 (Used 1 nobox 1)
# ProcLine[3] stays at 677 (Used 1 nobox 1)
.c create rectangle 340 8134 580 8154 -fill white -width 0
.c create text 460 8144 -text "<status>success</status>"
.c create text 70 8168 -fill #eef -text "679"
.c create line 140 8168 460 8168 -fill #eef -dash {6 4}
.c create line 460 8160 460 8156 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 677 to 679 (Used 1 nobox 1)
# ProcLine[3] stays at 679 (Used 1 nobox 1)
.c create rectangle 452 8158 468 8178 -fill white -width 0
.c create text 460 8168 -text ""
.c create text 70 8192 -fill #eef -text "681"
.c create line 140 8192 460 8192 -fill #eef -dash {6 4}
.c create line 460 8184 460 8180 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 679 to 681 (Used 1 nobox 1)
# ProcLine[3] stays at 681 (Used 1 nobox 1)
.c create rectangle 394 8182 526 8202 -fill white -width 0
.c create text 460 8192 -text "CRM2LEG!CCO,CO"
.c create line 460 8202 380 8202 -fill darkred -tags mesg -width 2
.c create line 380 8202 300 8202 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8216 -fill #eef -text "683"
.c create line 140 8216 460 8216 -fill #eef -dash {6 4}
.c create line 300 7992 300 8204 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 663 to 683 (Used 1 nobox 1)
# ProcLine[2] stays at 683 (Used 1 nobox 1)
.c create rectangle 234 8206 366 8226 -fill white -width 0
.c create text 300 8216 -text "CRM2LEG?CCO,CO"
.c create line 300 8250 380 8250 -fill darkblue -tags mesg -width 2
.c create line 380 8250 460 8250 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8240 -fill #eef -text "685"
.c create line 140 8240 460 8240 -fill #eef -dash {6 4}
.c create line 300 8232 300 8228 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 683 to 685 (Used 1 nobox 1)
# ProcLine[2] stays at 685 (Used 1 nobox 1)
.c create rectangle 234 8230 366 8250 -fill white -width 0
.c create text 300 8240 -text "LEG2CRM!EXAM,S"
.c create text 70 8264 -fill #eef -text "687"
.c create line 140 8264 460 8264 -fill #eef -dash {6 4}
.c create line 460 8208 460 8252 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 681 to 687 (Used 1 nobox 1)
# ProcLine[3] stays at 687 (Used 1 nobox 1)
.c create rectangle 394 8254 526 8274 -fill white -width 0
.c create text 460 8264 -text "LEG2CRM?EXAM,S"
.c create text 70 8288 -fill #eef -text "689"
.c create line 140 8288 460 8288 -fill #eef -dash {6 4}
.c create line 460 8280 460 8276 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 687 to 689 (Used 1 nobox 1)
# ProcLine[3] stays at 689 (Used 1 nobox 1)
.c create rectangle 436 8278 484 8298 -fill white -width 0
.c create text 460 8288 -text "EXAM "
.c create text 70 8312 -fill #eef -text "691"
.c create line 140 8312 460 8312 -fill #eef -dash {6 4}
.c create line 460 8304 460 8300 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 689 to 691 (Used 1 nobox 1)
# ProcLine[3] stays at 691 (Used 1 nobox 1)
.c create rectangle 452 8302 468 8322 -fill white -width 0
.c create text 460 8312 -text ""
.c create text 70 8336 -fill #eef -text "693"
.c create line 140 8336 460 8336 -fill #eef -dash {6 4}
.c create line 460 8328 460 8324 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 691 to 693 (Used 1 nobox 1)
# ProcLine[3] stays at 693 (Used 1 nobox 1)
.c create rectangle 303 8326 617 8346 -fill white -width 0
.c create text 460 8336 -text "<originator>STUDENT</originator>"
.c create text 70 8360 -fill #eef -text "695"
.c create line 140 8360 460 8360 -fill #eef -dash {6 4}
.c create line 460 8352 460 8348 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 693 to 695 (Used 1 nobox 1)
# ProcLine[3] stays at 695 (Used 1 nobox 1)
.c create rectangle 332 8350 588 8370 -fill white -width 0
.c create text 460 8360 -text "<responder>LMS</responder>"
.c create text 70 8384 -fill #eef -text "697"
.c create line 140 8384 460 8384 -fill #eef -dash {6 4}
.c create line 460 8376 460 8372 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 695 to 697 (Used 1 nobox 1)
# ProcLine[3] stays at 697 (Used 1 nobox 1)
.c create rectangle 375 8374 545 8394 -fill white -width 0
.c create text 460 8384 -text "<type>EXAM</type>"
.c create text 70 8408 -fill #eef -text "699"
.c create line 140 8408 460 8408 -fill #eef -dash {6 4}
.c create line 460 8400 460 8396 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 697 to 699 (Used 1 nobox 1)
# ProcLine[3] stays at 699 (Used 1 nobox 1)
.c create rectangle 340 8398 580 8418 -fill white -width 0
.c create text 460 8408 -text "<status>success</status>"
.c create text 70 8432 -fill #eef -text "701"
.c create line 140 8432 460 8432 -fill #eef -dash {6 4}
.c create line 460 8424 460 8420 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 699 to 701 (Used 1 nobox 1)
# ProcLine[3] stays at 701 (Used 1 nobox 1)
.c create rectangle 452 8422 468 8442 -fill white -width 0
.c create text 460 8432 -text ""
.c create text 70 8456 -fill #eef -text "703"
.c create line 140 8456 460 8456 -fill #eef -dash {6 4}
.c create line 460 8448 460 8444 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 701 to 703 (Used 1 nobox 1)
# ProcLine[3] stays at 703 (Used 1 nobox 1)
.c create rectangle 452 8446 468 8466 -fill white -width 0
.c create text 460 8456 -text ""
.c create text 70 8480 -fill #eef -text "705"
.c create line 140 8480 460 8480 -fill #eef -dash {6 4}
.c create line 460 8472 460 8468 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 703 to 705 (Used 1 nobox 1)
# ProcLine[3] stays at 705 (Used 1 nobox 1)
.c create rectangle 314 8470 606 8490 -fill white -width 0
.c create text 460 8480 -text "<originator>reset</originator>"
.c create text 70 8504 -fill #eef -text "707"
.c create line 140 8504 460 8504 -fill #eef -dash {6 4}
.c create line 460 8496 460 8492 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 705 to 707 (Used 1 nobox 1)
# ProcLine[3] stays at 707 (Used 1 nobox 1)
.c create rectangle 322 8494 598 8514 -fill white -width 0
.c create text 460 8504 -text "<responder>reset</responder>"
.c create text 70 8528 -fill #eef -text "709"
.c create line 140 8528 460 8528 -fill #eef -dash {6 4}
.c create line 460 8520 460 8516 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 707 to 709 (Used 1 nobox 1)
# ProcLine[3] stays at 709 (Used 1 nobox 1)
.c create rectangle 370 8518 550 8538 -fill white -width 0
.c create text 460 8528 -text "<type>reset</type>"
.c create text 70 8552 -fill #eef -text "711"
.c create line 140 8552 460 8552 -fill #eef -dash {6 4}
.c create line 460 8544 460 8540 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 709 to 711 (Used 1 nobox 1)
# ProcLine[3] stays at 711 (Used 1 nobox 1)
.c create rectangle 351 8542 569 8562 -fill white -width 0
.c create text 460 8552 -text "<status>reset</status>"
.c create text 70 8576 -fill #eef -text "713"
.c create line 140 8576 460 8576 -fill #eef -dash {6 4}
.c create line 460 8568 460 8564 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 711 to 713 (Used 1 nobox 1)
# ProcLine[3] stays at 713 (Used 1 nobox 1)
.c create rectangle 452 8566 468 8586 -fill white -width 0
.c create text 460 8576 -text ""
.c create text 70 8600 -fill #eef -text "715"
.c create line 140 8600 460 8600 -fill #eef -dash {6 4}
.c create line 460 8592 460 8588 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 713 to 715 (Used 1 nobox 1)
# ProcLine[3] stays at 715 (Used 1 nobox 1)
.c create rectangle 388 8590 532 8610 -fill white -width 0
.c create text 460 8600 -text "CRM2LEG!CCO,CND"
.c create line 460 8610 380 8610 -fill darkred -tags mesg -width 2
.c create line 380 8610 300 8610 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 8624 -fill #eef -text "717"
.c create line 140 8624 460 8624 -fill #eef -dash {6 4}
.c create line 300 8256 300 8612 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 685 to 717 (Used 1 nobox 1)
# ProcLine[2] stays at 717 (Used 1 nobox 1)
.c create rectangle 228 8614 372 8634 -fill white -width 0
.c create text 300 8624 -text "CRM2LEG?CCO,CND"
.c create text 70 8648 -fill #eef -text "719"
.c create line 140 8648 460 8648 -fill #eef -dash {6 4}
.c create line 140 36 140 8636 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 719 (Used 1 nobox 1)
# ProcLine[1] stays at 719 (Used 1 nobox 1)
.c create rectangle 103 8638 177 8658 -fill white -width 0
.c create text 140 8648 -text "timeout"
.c lower grid
.c raise mesg
