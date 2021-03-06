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
	 SET_P(LECTURES, 0);
	 SET_O(LECTURES, 1);
	 SET_R(START, 0);
	 RD(START, LMS, CCR, CO);
		
	}
	END(START);
}

 /* Rule triggered by LECTURES executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(LECTURES){
 printf("LECTURES");
 /* handle LECTURES with success outcome */
 WHEN::EVENT(LECTURES,IS_O(LECTURES,STUDENT),SC(LECTURES))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>LECTURES</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 LCount=LCount+1; 
	 if
		::(LCount==lectures) ->	
				SET_O(LECTURES,0);
				SET_P(EXAM,0);
				SET_O(EXAM,1);
				SET_X(LECTURES,STUDENT);
				RD(LECTURES,STUDENT,CCO,CO);
		::(LCount==3) ->
				SET_O(LECTURES,0);
				SET_P(CW,0);
				SET_O(CW,1);
				RD(LECTURES,STUDENT,CCO,CO);
		::(LCount==6) ->
				SET_O(LECTURES,0);
				SET_P(CW,0);
				SET_O(CW,1);
				RD(LECTURES,STUDENT,CCO,CO);		
		::else -> RD(LECTURES,STUDENT,CCO,CO);		
	 fi;
 
	 
    }	
 /* handle LECTURES with technical failure outcome */
 ::EVENT(LECTURES,IS_O(LECTURES,STUDENT),TF(LECTURES))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>LECTURES</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("LECTURES-TechnicalFailure"); 

     SET_O(LECTURES,1);
     SET_O(CW,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(LECTURES,STUDENT,CCO,CO);/*repeat*/
	}
	 /*Handle prohibited action*/
 ::EVENT(LECTURES,IS_P(LECTURES,STUDENT),TF(LECTURES))
	->{
		printf("Prohibited action");
		RD(LECTURES,STUDENT,CCP,CO);
	}
    
 END(LECTURES);		 
}



/* Rule triggered by CW executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(CW){
 printf("CW ");
 /* handle CW with success outcome */
 WHEN::EVENT(CW,IS_O(CW,STUDENT),SC(CW))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	CwCount=CwCount+1;	 
	 if
		::(CwCount==1) ->	
				SET_O(CW,0);
				SET_P(CW,1);
				SET_P(LECTURES,0);
				SET_O(LECTURES,1);
				printf("LECTURES are now continued");
				RD(CW,STUDENT,CCO,CO);
		::(CwCount==cw) ->	
				SET_X(CW,STUDENT);
				SET_O(CW,0);
				SET_P(LECTURES,0);
				SET_O(LECTURES,1);
				printf("LECTURES are now continued");
				RD(CW,STUDENT,CCO,CO);
		::else -> RD(CW,STUDENT,CCO,CO);		
	 fi;
    }	
	
 /* handle CW with technical failure outcome */
 ::EVENT(CW,IS_O(CW,STUDENT),TO(CW))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW</type>\n");
     printf("<status>timeout</status>\n");
     printf("\n\n")
     } 
 
     printf("No submission at within required time"); 
     SET_O(LECTURES,0);
     SET_O(CW,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
	 fail=TRUE;
     RD(CW,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 ::EVENT(CW,IS_P(CW,STUDENT),TF(CW))
	->{
		printf("Prohibited action");
		RD(CW,STUDENT,CCP,CO);
	}
 END(CW);		 
}
	
/* Rule triggered by EXAM executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(EXAM){
 printf("EXAM ");
 /* handle CW with success outcome */
 WHEN::EVENT(EXAM,IS_O(EXAM,STUDENT),SC(EXAM))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>EXAM</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	ExamCount=ExamCount+1;	 
	 if
		::(ExamCount==exam) ->	
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
		::else -> RD(EXAM,STUDENT,CCO,CO);		
	 fi;
    }	
 /* handle CW with technical failure outcome */
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
 ::EVENT(EXAM,IS_P(EXAM,STUDENT),SC(EXAM))
	->{
		printf("Prohibited action");
		RD(EXAM,STUDENT,CCP,CO);
	}
	
 END(EXAM);		 
}