
/*
 * Ching Hay Chau, 7 Jul 2015, Ncl Uni, UK
 *
 * Case2.pml: LPromela code of a 
 * contract between a STUDENT and LMS. 
 *
 * To run this code you need 
 * 1) Spin Version 6.1.0 or newer.
 * 2) The macros setting.h and EduOperation.h
 *    bitvector.lpr and for.h deployed in your
 *    working folder.
 * 3) Case2Rules.h in your working folder.
 *
 *
 * 4) To run the code from Command Line type:
 * % spin -a Case2.pml
 * % cc -o pan pan.c
 * % pan -a
 *
 * Notation used in this code:
 * S-success, LF-learning failure, TF-technical
 * failure, TO--timeout, exec--execution
 */ 

#include "setting.h"      /* macro definition */
#include "EduOperation.h" /* macro definition */
#include "Case2Rules.h"        /* ECA rule code    */

#define TRUE  1
#define FALSE 0
#define YES   1
#define NO    0

/* var for recording occurrences of executions 
 * with S and LF outcomes                      
 */
bool choose1=FALSE;
bool choose2=FALSE;
bool choose3=FALSE;
bool all=FALSE;

/* declaration of the role players involved */
RolePlayer(STUDENT, LMS);

/* account for S,LF,TF,TO execution outcome,
 * in this ex, we use only S, TF, TO  */
RuleMessage(S,LF,TF,TO); 

/* 7 operations are involved in the contract */
LN_EVENT(RegReq);
LN_EVENT(RegReply);
LN_EVENT(C1);
LN_EVENT(C2);
LN_EVENT(C3);
LN_EVENT(ChooseAccept);
LN_EVENT(ChooseReject);

/* Learning Event Generator */ 
proctype LEG()
{
 BEGIN_INIT:
 {
 /* Define the initial state of the rights (R),
  * obligations (O) and prohibitions (P) of the 2
  * role players following:
  * INIT(OperName, RolePlayerName, R,O,P)
  * 1 means granted, 0 means not granted  
  * In initial state STUDENT has been granted the
  * right to execute CHOOSE. No other R,O,P are
  * granted to STUDENT or LMS */
  DONE(STUDENT);
  DONE(LMS);
  INIT(RegReq, STUDENT, 1,0,0);
  INIT(RegReply,  LMS, 0,0,0);
  INIT(C1, STUDENT, 0,0,0);
  INIT(C2, STUDENT, 0,0,0);
  INIT(C3, STUDENT, 0,0,0);
  INIT(ChooseAccept, LMS, 0,0,0);
  INIT(ChooseReject, LMS, 0,0,0);
 }
 END_INIT:

 /* generation of learning events.
  * For each of the 7 operations, 2 possible exec
  * are modelled: exec with S and exec with TF */ 
 end:do
 :: L_E(STUDENT, RegReq, S);
 :: L_E(STUDENT, RegReq, TF) -> L_E(STUDENT, RegReq, S);
 
 :: L_E(LMS, RegReply, S);
 :: L_E(LMS, RegReply, TF) -> L_E(LMS, RegReply, S);
 
 :: L_E(STUDENT, C1,  S);  
 :: L_E(STUDENT, C1,  TF) -> L_E(STUDENT, C1,  S);             

 :: L_E(STUDENT, C2, S);  
 :: L_E(STUDENT, C2, TF) -> L_E(STUDENT, C2, S);
 
 :: L_E(STUDENT, C3, S);    
 :: L_E(STUDENT, C3, TF) -> L_E(STUDENT, C3, S;
 
 :: L_E(LMS, ChooseAccept, S);
 :: L_E(LMS, ChooseAccept, TF) -> L_E(LMS, ChooseAccept, S);
 
 :: L_E(LMS, ChooseReject, S);
 :: L_E(LMS, ChooseReject, TF) -> L_E(LMS, ChooseReject, S);
 
 od; 
}

/* contract rule manager: it uses the Case2Rules.h 
 * file declared in the inline definition.
 * It retrieves and includes the rule (one at a
 * time) needed to respond to the event under
 * process                                    
 */ 
proctype CRM()
{
 printf("CONTRACT RULE MANAGER"); 
 end:do
  :: CONTRACT(RegReq);
  :: CONTRACT(RegReply); 
  :: CONTRACT(C1);
  :: CONTRACT(C2);
  :: CONTRACT(C3);
  :: CONTRACT(ChooseAccept);  
  :: CONTRACT(ChooseReject);
 od;
}

init
{
  atomic /* start exec of BRG and CRM */
  { 
   run LEG(); run CRM(); 
  }
}