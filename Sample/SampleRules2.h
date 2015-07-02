/*
 * EPROMELA code of the ECA rules that implement a
 * a contract between a STUDENT and LMS.
 * The code prints out messages with xml like
 * tags which can be used for signaling out
 * messages when the model is used for generating 
 * execution sequences.
 *
 * Ching Hay Chau, 09 Jun 2015, Ncl Uni, UK
 *
 * Notation used in this code: cont-contract,
 * SC-success, TF-technical failure,
 * tecfail- technical failure. 
 */ 

/* Rule triggered by LECTURES executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(LECTURES){
 printf("LECTURES");
 /* handle LECTURES with success outcome */
 WHEN::EVENT(LECTURES,IS_O(LECTURES,STUDENT),SC(LECTURES))
  ->{SET_X(LECTURES,STUDENT);
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
		::(LCount==3) ->	
				SET_O(LECTURES,0);
				SET_P(LECTURES,1);
				SET_P(CW,0);
				SET_O(CW,1);
				RD(LECTURES,STUDENT,CCO,CO);
		::(LCount==5) ->	
				SET_O(LECTURES,0);
				SET_P(LECTURES,1);
				SET_P(CW,0);
				SET_O(CW,1);
				RD(LECTURES,STUDENT,CCO,CO);
		::(LCount==6) ->	
				SET_O(LECTURES,0);
				SET_P(LECTURES,1);
				SET_P(EXAM,0);
				SET_O(EXAM,1);
				RD(LECTURES,STUDENT,CCO,CO);			
		::(LCount==lectures) ->	
				SET_O(LECTURES,0);
				SET_P(EXAM,0);
				SET_O(EXAM,1);
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
 
     printf("Last LECTURES-TechnicalFailure"); 

     SET_O(LECTURES,0);
     SET_O(CW,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(LECTURES,STUDENT,CCO,CND);/*abnormal cont end*/

    }
	 ::EVENT(LECTURES,IS_P(LECTURES,STUDENT),P(LECTURES))
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
 WHEN::EVENT(CW,IS_O(CW,STUDENT),SC(CW))
  ->{ SET_X(CW,STUDENT);
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
				SET_O(CW,0);
				SET_P(LECTURES,0);
				SET_O(LECTURES,1);
				printf("LECTURES are now continued");
				RD(CW,STUDENT,CCO,CO);
		::else -> RD(CW,STUDENT,CCO,CO);		
	 fi;
    }	
 /* handle CW with technical failure outcome */
 ::EVENT(CW,IS_O(CW,STUDENT),TF(CW))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CW</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("Last CW-TechnicalFailure"); 
     SET_O(LECTURES,0);
     SET_O(CW,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(CW,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 ::EVENT(CW,IS_P(CW,STUDENT),P(CW))
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
 WHEN::EVENT(EXAM,IS_O(EXAM,STUDENT),SC(EXAM))
  ->{ SET_X(EXAM,STUDENT);
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
		::(ExamCount==1) ->	
				SET_O(EXAM,0);
				SET_P(EXAM,1);
				SET_P(LECTURES,0);
				SET_O(LECTURES,1);
				printf("LECTURES are now continued");
				RD(EXAM,STUDENT,CCO,CO);
		::(ExamCount==exam) ->	
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
 ::EVENT(EXAM,IS_O(EXAM,STUDENT),TF(EXAM))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>EXAM</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("Last CW-TechnicalFailure"); 
     SET_O(EXAM,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(EXAM,STUDENT,CCO,CND);/*abnormal cont end*/
    }
 ::EVENT(EXAM,IS_P(EXAM,STUDENT),P(EXAM))
	->{
		printf("Prohibited action");
		RD(EXAM,STUDENT,CCP,CO);
	}
 END(EXAM);		 
}