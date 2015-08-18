





/*
 * EPROMELA code of the ECA rules that implement a
 * a contract between a STUDENT and LMS.
 * The code prints out messages with xml like
 * tags which can be used for signaling out
 * messages when the model is used for generating 
 * execution sequences.
 *
 * Ching Hay Chau, 06 Jul 2015, Ncl Uni, UK
 *
 * Notation used in this code: cont-contract,
 * SC-success, TF-technical failure,
 * tecfail- technical failure. 
 */ 

/* Rule triggered by START executions initiated
 * by the LMS and completed either in success or 
 * technical failure.
 */

RULE(START){
	printf("Start");
	WHEN::EVENT(START, IS_R(START,LMS),SC(START))
	->{SET_X(START,LMS);
	atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<type>START</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 SET_P(L1, 0);
	 SET_O(L1, 1);
	 SET_R(START, 0);
	 RD(START, LMS, CCR, CO);
		
	}
	END(START);
}

 /* Rule triggered by L1 executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(L1){
 printf("L1");
 /* handle L1 with success outcome */
 WHEN::EVENT(L1,IS_O(L1,STUDENT),SC(L1))
  ->{
	 SET_X(L1,STUDENT); 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L1</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L1,0);
	 SET_R(L1,0);
	 SET_P(L2,0);
	 SET_O(L2,1);
	 RD(L1,STUDENT,CCO,CO);
    }	
 /* handle L1 with technical failure outcome */
 ::EVENT(L1,IS_O(L1,STUDENT),TF(L1))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L1</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L1-TechnicalFailure"); 

     SET_O(L1,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L1,STUDENT,CCO,CO);/*repeat*/
	}

    
 END(L1);		 
}

RULE(L2){
 printf("L2");
 /* handle L2 with success outcome */
 WHEN::EVENT(L2,IS_O(L2,STUDENT),SC(L2))
  ->{
     SET_X(L2,STUDENT); 
	 atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L2</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L2,0);
	 SET_P(L3,0);
	 SET_O(L3,1);
	 RD(L2,STUDENT,CCO,CO);
    }	
 /* handle L2 with technical failure outcome */
 ::EVENT(L2,IS_O(L2,STUDENT),TF(L2))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L2</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L2-TechnicalFailure"); 

     SET_O(L2,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L2,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L2,IS_P(L2,STUDENT),SC(L2))
	->{
		printf("Prohibited action");
		RD(L2,STUDENT,CCP,CO);
	}
    
 END(L2);		 
}

RULE(L3){
 printf("L3");
 /* handle L3 with success outcome */
 WHEN::EVENT(L3,IS_O(L3,STUDENT),SC(L3))
  ->{
	 SET_X(L3,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L3</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L3,0);
	 SET_P(CW1,0);
	 SET_O(CW1,1);
	 SET_P(L4,0);
	 SET_O(L4,1);
	 RD(L3,STUDENT,CCO,CO);
    }	
 /* handle L3 with technical failure outcome */
 ::EVENT(L3,IS_O(L3,STUDENT),TF(L3))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L3</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L3-TechnicalFailure"); 

     SET_O(L3,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L3,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L3,IS_P(L3,STUDENT),SC(L3))
	->{
		printf("Prohibited action");
		RD(L3,STUDENT,CCP,CO);
	}
    
 END(L3);		 
}

RULE(L4){
 printf("L4");
 /* handle L4 with success outcome */
 WHEN::EVENT(L4,IS_O(L4,STUDENT),SC(L4))
  ->{
	 SET_X(L4,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L4</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L4,0);
	 SET_P(L5,0);
	 SET_O(L5,1);
	 RD(L4,STUDENT,CCO,CO);
    }	
 /* handle L4 with technical failure outcome */
 ::EVENT(L4,IS_O(L4,STUDENT),TF(L4))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L4</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L4-TechnicalFailure"); 

     SET_O(L4,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L4,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L4,IS_P(L4,STUDENT),SC(L4))
	->{
		printf("Prohibited action");
		RD(L4,STUDENT,CCP,CO);
	}
    
 END(L4);		 
}


RULE(L5){
 printf("L5");
 /* handle L5 with success outcome */
 WHEN::EVENT(L5,IS_O(L5,STUDENT),SC(L5))
  ->{
	 SET_X(L5,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L5</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L5,0);
	 SET_P(L6,0);
	 SET_O(L6,1);
	 RD(L5,STUDENT,CCO,CO);
    }	
 /* handle L5 with technical failure outcome */
 ::EVENT(L5,IS_O(L5,STUDENT),TF(L5))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L5</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L5-TechnicalFailure"); 

     SET_O(L5,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L5,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L5,IS_P(L5,STUDENT),SC(L5))
	->{
		printf("Prohibited action");
		RD(L5,STUDENT,CCP,CO);
	}
    
 END(L5);		 
}

RULE(L6){
 printf("L6");
 /* handle L6 with success outcome */
 WHEN::EVENT(L6,IS_O(L6,STUDENT),SC(L6))
  ->{
	 SET_X(L6,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L6</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L6,0);
	 SET_P(CW2,0);
	 SET_O(CW2,1);
	 SET_P(L7,0);
	 SET_O(L7,1);
	 RD(L6,STUDENT,CCO,CO);
    }	
 /* handle L6 with technical failure outcome */
 ::EVENT(L6,IS_O(L6,STUDENT),TF(L6))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L6</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L6-TechnicalFailure"); 

     SET_O(L6,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L6,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L6,IS_P(L6,STUDENT),SC(L6))
	->{
		printf("Prohibited action");
		RD(L6,STUDENT,CCP,CO);
	}
    
 END(L6);		 
}

RULE(L7){
 printf("L7");
 /* handle L7 with success outcome */
 WHEN::EVENT(L7,IS_O(L7,STUDENT),SC(L7))
  ->{
	 SET_X(L7,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L7</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L7,0);
	 SET_P(L8,0);
	 SET_O(L8,1);
	 RD(L7,STUDENT,CCO,CO);
    }	
 /* handle L7 with technical failure outcome */
 ::EVENT(L7,IS_O(L7,STUDENT),TF(L7))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L7</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L7-TechnicalFailure"); 

     SET_O(L7,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L7,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L7,IS_P(L7,STUDENT),SC(L7))
	->{
		printf("Prohibited action");
		RD(L7,STUDENT,CCP,CO);
	}
    
 END(L7);		 
}

RULE(L8){
 printf("L8");
 /* handle L8 with success outcome */
 WHEN::EVENT(L8,IS_O(L8,STUDENT),SC(L8))
  ->{
	 SET_X(L8,STUDENT);  
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L8</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 SET_O(L8,0);
	 if
	 :: (IS_X(CW1,STUDENT) && (IS_X(CW2,STUDENT))) -> SET_P(EXAM,0); SET_O(EXAM,1);
	 :: else -> printf("\n\n");printf("Please get coursework done first \n\n");
	 fi;
	 RD(L8,STUDENT,CCO,CO);
    }	
 /* handle L8 with technical failure outcome */
 ::EVENT(L8,IS_O(L8,STUDENT),TF(L8))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>L8</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("L8-TechnicalFailure"); 

     SET_O(L8,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(L8,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(L8,IS_P(L8,STUDENT),SC(L8))
	->{
		printf("Prohibited action");
		RD(L8,STUDENT,CCP,CO);
	}
    
 END(L8);		 
}

/* Rule triggered by CW executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(CW1){
 printf("CW1 ");
 /* handle CW1 with success outcome */
 WHEN::EVENT(CW1,IS_O(CW1,STUDENT),SC(CW1))->{ 
     atomic{
	 SET_X(CW1,STUDENT); 
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW1</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	CwCount=CwCount+1;	 
	SET_X(CW1,STUDENT);
	SET_O(CW1,0);
	printf("Learning are now continued");
	RD(CW1,STUDENT,CCO,CO);
    }	
	
 /* handle CW1 with technical failure outcome */
 ::EVENT(CW1,IS_O(CW1,STUDENT),TO(CW1))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW1</type>\n");
     printf("<status>timeout</status>\n");
     printf("\n\n")
     } 
 
     printf("No submission at within required time"); 
     SET_O(CW1,0);
	 SET_O(CW2,0);
	 SET_O(EXAM,0);
	 
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(CW1,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 /* handle CW1 with fail outcome */
 ::EVENT(CW1,IS_O(CW1,STUDENT),LF(CW1))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW1</type>\n");
     printf("<status>Learning Fail</status>\n");
     printf("\n\n")
     } 
 
     printf("Coursework 1 failed"); 
     SET_O(CW1,0);
	 SET_O(CW2,0);
	 SET_O(EXAM,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(CW1,STUDENT,CCO,CND);/*abnormal cont end*/
    }		
 ::EVENT(CW1,IS_P(CW1,STUDENT),SC(CW1))
	->{
		printf("Prohibited action");
		RD(CW1,STUDENT,CCP,CO);
	}
 END(CW1);		 
}

/* Rule triggered by CW2 executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(CW2){
 printf("CW2 ");
 /* handle CW2 with success outcome */
 WHEN::EVENT(CW2,IS_O(CW2,STUDENT),SC(CW2))->{ 
	if
	:: IS_X(CW1,STUDENT) ->
     atomic{
	 SET_X(CW2,STUDENT); 	 
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW2</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	CwCount=CwCount+1;	 
	SET_X(CW2,STUDENT);
	SET_O(CW2,0);
	if
	 :: (IS_X(L8,STUDENT) && (IS_X(CW1,STUDENT))) -> SET_P(EXAM,0); SET_O(EXAM,1);
	 :: else -> printf("\n\n Please get L8 done first \n\n");
	fi;
	printf("LECTURES are now continued");
   	:: else -> printf("\n\n");printf("Please complete CW1 first \n\n");
	fi;
	RD(CW2,STUDENT,CCO,CO);
	}
 /* handle CW2 with technical failure outcome */
 ::EVENT(CW2,IS_O(CW2,STUDENT),TO(CW2))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW2</type>\n");
     printf("<status>timeout</status>\n");
     printf("\n\n")
     } 
 
     printf("No submission at within required time"); 
     SET_O(CW1,0);
	 SET_O(CW2,0);
	 SET_O(EXAM,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(CW2,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 /* handle CW2 with fail outcome */
 ::EVENT(CW2,IS_O(CW2,STUDENT),LF(CW2))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW2</type>\n");
     printf("<status>Learning Fail</status>\n");
     printf("\n\n")
     } 
     SET_O(CW1,0);
	 SET_O(CW2,0);
	 SET_O(EXAM,0);
     printf("Coursework 2 failed"); 
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(CW2,STUDENT,CCO,CND);/*abnormal cont end*/
    }	
 ::EVENT(CW2,IS_P(CW2,STUDENT),SC(CW2))
	->{
		printf("Prohibited action");
		RD(CW2,STUDENT,CCP,CO);
	}
 END(CW2);		 
}


/* Rule triggered by EXAM executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(EXAM){
 printf("EXAM ");
 /* handle Exam with success outcome */
 WHEN::EVENT(EXAM,IS_O(EXAM,STUDENT),SC(EXAM))->{ 
     atomic{
	 SET_X(EXAM,STUDENT); 
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>EXAM</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	ExamCount=ExamCount+1;	 
				SET_X(EXAM,STUDENT);
				SET_O(EXAM,0);
				atomic{
				printf("\n\n");
				printf("<originator>reset</originator>\n");
				printf("<responder>reset</responder>\n");
				printf("<type>reset</type>\n");
				printf("<status>reset</status>\n");
				printf("\n\n")}
				RD(EXAM,STUDENT,CCO,CND);
    }	
 /* handle EXAM with timeout outcome */
 ::EVENT(EXAM,IS_O(EXAM,STUDENT),TO(EXAM))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>EXAM</type>\n");
     printf("<status>timeout</status>\n");
     printf("\n\n")
     } 
 
     printf("Exam -- timeout"); 
     SET_O(EXAM,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(EXAM,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 /* handle CW with fail outcome */
 ::EVENT(EXAM,IS_O(EXAM,STUDENT),LF(EXAM))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>EXAM</type>\n");
     printf("<status>Learning Fail</status>\n");
     printf("\n\n")
     } 
 
     printf("Exam -- fail"); 
     SET_O(EXAM,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(EXAM,STUDENT,CCO,CND);/*abnormal cont end*/
    }	
 ::EVENT(EXAM,IS_P(EXAM,STUDENT), SC(EXAM))
	->{
		printf("Prohibited action");
		RD(EXAM,STUDENT,CCP,CO);
	}
	
 END(EXAM);		 
}