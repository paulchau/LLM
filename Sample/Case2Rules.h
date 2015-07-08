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

RULE(RegReq){
	printf("Start\n");
	printf("Registration Request by Student");
	WHEN::EVENT(RegReq, IS_R(RegReq,STUDENT),SC(RegReq))
	->{SET_X(RegReq,STUDENT);
	atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
	 printf("<responder>LMS</responder>\n");
     printf("<type>Registration Request</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n");
     }
	 SET_O(RegReply, 1);
	 SET_R(RegReq, 0);
	 RD(RegReq, STUDENT, CCR, CO);
	}
	::EVENT(RegReq, IS_R(RegReq, STUDENT), TF(RegReq))->{
	atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
	 printf("<responder>LMS</responder>\n");
     printf("<type>RegReq</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n");
     } 
 
     printf("RegReq-TechnicalFailure"); 
	 SET_O(RegReply, 0);
	 SET_R(RegReq, 1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n");
	 }

     RD(RegReply,LMS,CCO,CO);/*repeat*/
	}
	END(RegReq);
}

 /* Rule triggered by LECTURES executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(RegReply){
 printf("Course list reply");
 /* handle LECTURES with success outcome */
 WHEN::EVENT(RegReply,IS_O(RegReply,LMS),SC(RegReply))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>RegReply</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
	 SET_X(RegReply, LMS);
	 SET_O(RegReply,0);
	 SET_O(C1,1);
	 SET_O(C2,1);
	 SET_O(C3,1);
	 RD(RegReply,LMS,CCO,CO);		
    }	
 /* handle LECTURES with technical failure outcome */
 ::EVENT(RegReply,IS_O(RegReply,LMS),TF(RegReply))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>RegReply</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
 
     printf("RegReply-TechnicalFailure"); 
	 SET_O(RegReply,1);
	 SET_O(C1,0);
	 SET_O(C2,0);
	 SET_O(C3,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(RegReply,LMS,CCO,CO);/*repeat*/
	}
 END(RegReply);		 
}



/* Rule triggered by CW executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(C1){
 printf("C1");
 /* handle CW with success outcome */
 WHEN::EVENT(C1,IS_O(C1,STUDENT),SC(C1))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C1</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_X(C1,STUDENT);
	 SET_O(ChooseAccept,1);
	 SET_O(ChooseReject,1);
     SET_O(C1,0);
	 SET_O(C2,0);
	 SET_O(C3,0);
	 choose1 = TRUE;
	 printf("C1 is chosen");
	 RD(C1,STUDENT,CCO,CO);
    }	
	
 /* handle CW with technical failure outcome */
 ::EVENT(C1,IS_O(C1,STUDENT),TF(C1))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C1</type>\n");
     printf("<status>techfail</status>\n");
     printf("\n\n")
     } 
 
     printf("Technical fail on choosing C1"); 
     SET_O(ChooseAccept,0);
	 SET_O(ChooseReject,0);
     SET_O(C1,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
     RD(C1,STUDENT,CCO,CO);/*repeat*/
    }
 ::EVENT(C1,IS_P(C1,STUDENT),P(C1))
	->{
		printf("Prohibited choice");
		RD(C1,STUDENT,CCP,CO);
	}
 END(C1);		 
}	

RULE(C2){
 printf("C2");
 /* handle CW with success outcome */
 WHEN::EVENT(C2,IS_O(C2,STUDENT),SC(C2))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C2</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_X(C2,STUDENT);
	 SET_O(ChooseAccept,1);
	 SET_O(ChooseReject,1);
     SET_O(C1,0);
	 SET_O(C2,0);
	 SET_O(C3,0);
	 choose2 = TRUE;
	 printf("C2 is chosen");
	 RD(C2,STUDENT,CCO,CO);
    }	
	
 /* handle CW with technical failure outcome */
 ::EVENT(C2,IS_O(C2,STUDENT),TF(C2))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C2</type>\n");
     printf("<status>techfail</status>\n");
     printf("\n\n")
     } 
 
     printf("Technical fail on choosing C2"); 
     SET_O(ChooseAccept,0);
	 SET_O(ChooseReject,0);
     SET_O(C2,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
     RD(C2,STUDENT,CCO,CO);/*repeat*/
    }
 ::EVENT(C2,IS_P(C2,STUDENT),P(C2))
	->{
		printf("Prohibited choice");
		RD(C2,STUDENT,CCP,CO);
	}
 END(C2);		 
}	

/* Rule triggered by C3 executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(C3){
 printf("C3");
 /* handle CW with success outcome */
 WHEN::EVENT(C3,IS_O(C3,STUDENT),SC(C3))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C3</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_X(C3,STUDENT);
	 SET_O(ChooseAccept,1);
	 SET_O(ChooseReject,1);
     SET_O(C1,0);
	 SET_O(C2,0);
	 SET_O(C3,0);
	 choose3 = TRUE;
	 printf("C3 is chosen");
	 RD(C3,STUDENT,CCO,CO);
    }	
	
 /* handle CW with technical failure outcome */
 ::EVENT(C3,IS_O(C3,STUDENT),TF(C3))->{
     atomic{
     printf("\n\n");
     printf("<originator>STUDENT</originator>\n");
     printf("<responder>LMS</responder>\n");
     printf("<type>C3</type>\n");
     printf("<status>techfail</status>\n");
     printf("\n\n")
     } 
 
     printf("Technical fail on choosing C3"); 
     SET_O(ChooseAccept,0);
	 SET_O(ChooseReject,0);
     SET_O(C3,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
     RD(C3,STUDENT,CCO,CO);/*repeat*/
    }
 ::EVENT(C3,IS_P(C3,STUDENT),P(C3))
	->{
		printf("Prohibited choice");
		RD(C3,STUDENT,CCP,CO);
	}
 END(C3);		 
}	
/* Rule triggered by ChooseAccept executions initiated
 * by the STUDENT and completed either in success or 
 * technical failure.
 */
RULE(ChooseAccept){
 printf("Accept the choice ");
 /* handle CW with success outcome */
 WHEN::EVENT(ChooseAccept,IS_O(ChooseAccept,LMS),SC(ChooseAccept))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>ChooseAccept</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_X(ChooseAccept,LMS);
	 SET_O(ChooseAccept,0);
	 atomic{
	 printf("\n\n");
	 printf("<originator>reset</originator>\n");
	 printf("<responder>reset</responder>\n");
	 printf("<type>reset</type>\n");
	 printf("<status>reset</status>\n");
	 printf("\n\n")}
	 RD(ChooseAccept,STUDENT,CCO,CND);
    }	
 /* handle CW with technical failure outcome */
 ::EVENT(ChooseAccept,IS_O(ChooseAccept,LMS),TF(ChooseAccept))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>LSTUDENT</responder>\n");
     printf("<type>ChooseAccept</type>\n");
     printf("<status>technical fail</status>\n");
     printf("\n\n")
     } 
 
     printf("Technical fail on validating choice of course"); 
     SET_O(ChooseAccept,1);
	 SET_O(ChooseReject,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
     RD(ChooseAccept,STUDENT,CCO,CO);
	 }
 END(ChooseAccept);		 
}

RULE(ChooseReject){
 printf("Reject the choice ");
 /* handle CW with success outcome */
 WHEN::EVENT(ChooseReject,IS_O(ChooseReject,LMS),SC(ChooseReject))->{ 
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>STUDENT</responder>\n");
     printf("<type>ChooseReject</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_X(ChooseReject,LMS);
	 SET_O(ChooseReject,0);
	 SET_O(ChooseAccept,0);
	 if
		::(choose1==TRUE)->
			SET_P(C1,1);
			if
				::(choose2==TRUE)->
					SET_P(C2,1);
					if
					::(choose3==TRUE)->
						SET_P(C3,1);
						all = TRUE;
					::else-> SET_O(C3,1);				
					fi;	
				::else-> SET_O(C2,1);
			fi;
			if
				::(choose3==TRUE)->
					SET_P(C3,1);
					if
					::(choose2==TRUE)->
						SET_P(C2,1);
						all = TRUE;
					::else-> SET_O(C2,1);				
					fi;	
				::else-> SET_O(C3,1);				
			fi;	
		::(choose2==TRUE)->
			SET_P(C2,1);
			if
				::(choose1==TRUE)->
					SET_P(C1,1);
					if
					::(choose3==TRUE)->
						SET_P(C3,1);
						all = TRUE;
					::else-> SET_O(C3,1);				
					fi;	
				::else-> SET_O(C1,1);
			fi;
			if
				::(choose3==TRUE)->
					SET_P(C3,1);
					if
					::(choose1==TRUE)->
						SET_P(C1,1);
						all = TRUE;
					::else-> SET_O(C1,1);				
					fi;	
				::else-> SET_O(C3,1);				
			fi;	
		::(choose3==TRUE)->
			SET_P(C3,1);
			if
				::(choose2==TRUE)->
					SET_P(C2,1);
					if
					::(choose1==TRUE)->
						SET_P(C1,1);
						all = TRUE;
					::else-> SET_O(C1,1);				
					fi;	
				::else-> SET_O(C2,1);
			fi;
			if
				::(choose1==TRUE)->
					SET_P(C1,1);
					if
					::(choose2==TRUE)->
						SET_P(C2,1);
						all = TRUE;
					::else-> SET_O(C2,1);				
					fi;	
				::else-> SET_O(C1,1);				
			fi;	
	 fi;
	 atomic{
	 printf("\n\n");
	 printf("<originator>reset</originator>\n");
	 printf("<responder>reset</responder>\n");
	 printf("<type>reset</type>\n");
	 printf("<status>reset</status>\n");
	 printf("\n\n")}
	 if
	 :: (all == TRUE) -> 
		printf("No course is suitable for you");
		RD(ChooseReject,STUDENT,CCO,CND);
	 :: else->	
		RD(ChooseReject,STUDENT,CCO,CO);
	 fi;	
    }	
 /* handle CW with technical failure outcome */
 ::EVENT(ChooseReject,IS_O(ChooseReject,LMS),TF(ChooseReject))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>LMS</originator>\n");
     printf("<responder>LSTUDENT</responder>\n");
     printf("<type>ChooseReject</type>\n");
     printf("<status>technical fail</status>\n");
     printf("\n\n")
     } 
 
     printf("Technical fail on validating choice of course"); 
     SET_O(ChooseAccept,0);
	 SET_O(ChooseReject,1);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}
     RD(ChooseReject,STUDENT,CCO,CO);
    }
 END(ChooseReject);		 
}