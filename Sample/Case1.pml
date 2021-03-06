
/*
 * Ching Hay Chau, 7 Jul 2015, Ncl Uni, UK
 *
 * Case1.pml: LPROMELA code of a 
 * contract between a STUDENT and LMS. This model 
 * is meant to correctly implement the English 
 * contract of Fig 4 of this techical report, thus 
 * it accounts for technical failures.
 *
 * To run this code you need 
 * 1) Spin Version 6.1.0 or newer.
 * 2) The macros setting.h and EduOperation.h
 *    bitvector.lpr and for.h deployed in your
 *    working folder.
 * 3) rules.h in your working folder.
 *
 * 4) Edit Sample.pml to comment 
 * and uncomment the LTL provided
 * in the code as needed. Keep in mind that
 * SPIN can verify only a single LTL at a time.
 *
 * 5) To run the code from Linux / Windows PowerShell type:
 * % spin -a Case1.pml
 * % cc -o pan pan.c
 * % pan -a
 *
 * Notation used in this code:
 * S-success, LF-learning failure, TF-technical
 * failure, TO--timeout, exec--execution
 */ 

#include "setting.h"      /* macro definition */
#include "EduOperation.h" /* macro definition */
#include "Case1Rules.h"        /* ECA rule code    */

#define TRUE  1
#define FALSE 0
#define YES   1
#define NO    0

#define PassEnd (fail==FALSE)
#define Finish (lectures==LCount && cw==CwCount && exam==ExamCount)

/* var for recording occurrences of executions 
 * with S and LF outcomes                      
 */
bool fail=FALSE;
int lectures=8;
int LCount=0;
int cw=2;
int CwCount=0;
int exam=1;
int ExamCount=0;

/* declaration of the role players involved */
RolePlayer(STUDENT, LMS);

/* account for S,LF,TF,TO execution outcome,
 * in this ex, we use only S, TF, TO and P  */
RuleMessage(S,LF,TF,TO); 

/* 3 operations are involved in the contract */
LN_EVENT(START);
LN_EVENT(L1);
LN_EVENT(L2);
LN_EVENT(L3);
LN_EVENT(L4);
LN_EVENT(L5);
LN_EVENT(L6);
LN_EVENT(L7);
LN_EVENT(L8);
LN_EVENT(CW1);
LN_EVENT(CW2);
LN_EVENT(EXAM);

/*
 * LTLs for expressing, mutual exclusion of 
 * obligations and prohibitions which are 
 * checked by default
 */ 
 
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
  INIT(START, LMS, 1,0,0);
  INIT(L1,  STUDENT, 0,0,1);
  INIT(L2,  STUDENT, 0,0,1);
  INIT(L3,  STUDENT, 0,0,1); 
  INIT(L4,  STUDENT, 0,0,1); 
  INIT(L5,  STUDENT, 0,0,1);   
  INIT(L6,  STUDENT, 0,0,1); 
  INIT(L7,  STUDENT, 0,0,1);
  INIT(L8,  STUDENT, 0,0,1);   
  INIT(CW1, STUDENT, 0,0,1);
  INIT(CW2, STUDENT, 0,0,1);  
  INIT(EXAM, STUDENT, 0,0,1);
 }
 END_INIT:

 /* generation of learning events.
  * For each of the 5 operations, 2 possible exec
  * are modelled: exec with S and exec with TF */ 
 end:do
 :: L_E(LMS, START, S);
 
 :: L_E(STUDENT, L1,  S); 
 :: L_E(STUDENT, L1,  TF) ->  L_E(STUDENT, L1,  S); 
 :: L_E(STUDENT, L2,  S);
 :: L_E(STUDENT, L2, TF) -> L_E(STUDENT, L2, S);
 :: L_E(STUDENT, L3,  S); 
 :: L_E(STUDENT, L3,  TF) -> L_E(STUDENT, L3,  S);  
 :: L_E(STUDENT, CW1, S);  
 :: L_E(STUDENT, CW1, TO); 
 :: L_E(STUDENT, CW1, LF);   
 :: L_E(STUDENT, L4,  S);  
 :: L_E(STUDENT, L4,  TF) -> L_E(STUDENT, L4,  S);  
 :: L_E(STUDENT, L5,  S);
 :: L_E(STUDENT, L5, TF) -> L_E(STUDENT, L5, S);
 :: L_E(STUDENT, L6,  S);  
 :: L_E(STUDENT, L6,  TF) -> L_E(STUDENT, L6,  S);  

 :: L_E(STUDENT, CW2, S);  
 :: L_E(STUDENT, CW2, TO);
 :: L_E(STUDENT, CW2, LF);   
 
 :: L_E(STUDENT, L7,  S);  
 :: L_E(STUDENT, L7,  TF) -> L_E(STUDENT, L7,  S);  

 :: L_E(STUDENT, L8,  S); 
 :: L_E(STUDENT, L8,  TF) -> L_E(STUDENT, L8,  S);    
 :: L_E(STUDENT, EXAM, S);
 :: L_E(STUDENT, EXAM, TO);
 :: L_E(STUDENT, EXAM, LF);
 od; 
}

/* contract rule manager: it uses the rules.h 
 * file declared in the inline definition.
 * It retrieves and includes the rule (one at a
 * time) needed to respond to the event under
 * process                                    
 */ 
proctype CRM()
{
 printf("CONTRACT RULE MANAGER"); 
 end:do
  :: CONTRACT(START);
  :: CONTRACT(L1); 
  :: CONTRACT(L2);
  :: CONTRACT(L3);  
  :: CONTRACT(L4);   
  :: CONTRACT(L5); 
  :: CONTRACT(L6);
  :: CONTRACT(L7); 
  :: CONTRACT(L8);   
  :: CONTRACT(CW1);
  :: CONTRACT(CW2);  
  :: CONTRACT(EXAM);
 od;
}

init
{
  atomic /* start exec of BRG and CRM */
  { 
   run LEG(); run CRM(); 
  }
}