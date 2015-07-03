

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

/* Rule triggered by CHOOSE executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(CHOOSE)
{
 WHEN::EVENT(CHOOSE,IS_O(CHOOSE,STUDENT),SC(CHOOSE))
  /* handle CHOOSE with success outcome */
  ->{ SET_X(CHOOSE,STUDENT);
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CHOOSE</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_O(CHOOSE,0);
	 SET_O(CHOOSECONF,1);
     SET_O(CHOOSEREJ,1);
	 
     RD(CHOOSE,STUDENT,CCR,CO);
    }	
 /* handle CHOOSE with technical failure outcome */
 ::EVENT(CHOOSE,IS_O(CHOOSE,STUDENT),TF(CHOOSE))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>CHOOSE</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
    if /* 1st notification of CHOOSE with TF */
    :: (ReqFailBefore==NO) ->ReqFailBefore=YES;
     printf("First CHOOSE-TechnicalFailure"); 
     RD(CHOOSE,STUDENT,CCR,CO);

    /* 2nd notification of CHOOSE with TF */
    :: (ReqFailBefore==YES) -> abncoend=TRUE; 
     printf("Last CHOOSE-TechnicalFailure"); 
     SET_O(CHOOSE,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(CHOOSE,STUDENT,CCR,CND);/*abnormal cont end*/
	 abncoend=FALSE;
    fi
    }
 END(CHOOSE);		 
}



/* Rule triggered by CHOOSEREJ executions initiated
 * by the LMS and completed either in success or 
 * technical failure.
 */
RULE(CHOOSEREJ)
{
 /* handle CHOOSEREJ with success outcome */
 WHEN::EVENT(CHOOSEREJ,IS_O(CHOOSEREJ,LMS),SC(CHOOSEREJ))
  ->{ SET_X(CHOOSEREJ,LMS);
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>CHOOSEREJ</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_O(CHOOSEREJ,0);
     SET_O(CHOOSECONF,0);
	 SET_P(LECTURES,0);
	 SET_P(CW,0)
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(CHOOSEREJ,LMS,CCO,CND);
    }	
 /* handle CHOOSEREJ with technical failure outcome */
 ::EVENT(CHOOSEREJ,IS_O(CHOOSEREJ,LMS),TF(CHOOSEREJ))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>CHOOSEREJ</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
   
     printf("Last CHOOSEREJ-TechnicalFailure"); 
     SET_O(CHOOSEREJ,0);
     SET_O(CHOOSECONF,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(CHOOSEREJ,LMS,CCO,CND);/*abnormal cont end*/
	 abncoend=FALSE;
    }
 END(CHOOSEREJ);		 
}



/* Rule triggered by CHOOSECONF executions initiated
 * by the LMS and completed either in success or 
 * technical failure.
 */
RULE(CHOOSECONF)
{
 /* handle CHOOSECONF with success outcome */
 WHEN::EVENT(CHOOSECONF,IS_O(CHOOSECONF,LMS),SC(CHOOSECONF))
  ->{ SET_X(CHOOSECONF,LMS);
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>CHOOSECONF</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_O(CHOOSEREJ,0);
     SET_O(CHOOSECONF,0);
	 SET_P(LECTURES,0);
	 SET_O(LECTURES,1);
     RD(CHOOSECONF,LMS,CCO,CO);
    }	
 /* handle CHOOSECONF with technical failure outcome */
 ::EVENT(CHOOSECONF,IS_O(CHOOSECONF,LMS),TF(CHOOSECONF))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>CHOOSECONF</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
   
     printf("Last CHOOSECONF-TechnicalFailure"); 
     SET_O(CHOOSEREJ,0);
     SET_O(CHOOSECONF,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(CHOOSECONF,LMS,CCO,CND);/*abnormal cont end*/
	 abncoend=FALSE;
    }
 END(CHOOSECONF);		 
}



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
		::(LCount==lectures) ->	
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
	 abncoend=FALSE;
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
		::(CwCount==cw) ->	
				SET_O(CW,0);
				SET_P(EXAM,0);
				SET_O(EXAM,1);
				printf("EXAM is now available");
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
	 abncoend=FALSE;
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
	 abncoend=FALSE;	 
    }
 END(EXAM);		 
}