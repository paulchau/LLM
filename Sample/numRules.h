
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
	 SET_P(CW2,0);
	 SET_O(CW2,1);
	 if
	 :: ((IS_X(CW2,STUDENT))) -> SET_P(EXAM,0); SET_O(EXAM,1);
	 :: else -> printf("\n\n");printf("Please get coursework done first \n\n");
	 fi;
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

/* Rule triggered by CW2 executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(CW2){
 printf("CW2 ");
 /* handle CW2 with success outcome */
 WHEN::EVENT(CW2,IS_O(CW2,STUDENT),SC(CW2))->{ 
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
	 :: (IS_X(L3,STUDENT)) -> SET_P(EXAM,0); SET_O(EXAM,1);
	 :: else -> printf("\n\n Please get L8 done first \n\n");
	fi;
	printf("LECTURES are now continued");
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