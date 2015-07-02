/*
 * Ching Hay Chau, 24 Jun 2015, Ncl Uni, UK
 *
 * Sample.pml: EPROMELA code of a 
 * contract between a STUDENT and LMS. This model 
 * is meant to correctly implement the English 
 * contract of Fig 4 of this techical report, thus 
 * it accounts for technical failures.
 *
 * To run this code you need 
 * 1) Spin Version 6.1.0 or newer.
 * 2) The macros setting.h and BizOperation.h
 *    vector.lpr and for.h deployed in your
 *    working folder.
 * 3) rules.h in your working folder.
 *
 * 4) Edit BuyerLMSContract.pml to comment 
 * and uncomment the LTL provided
 * in the code as needed. Keep in mind that
 * SPIN can verify only a single LTL at a time.
 *
 * 5) To run the code from Linux type:
 * % spin -a BuyerLMSContract.pml
 * % cc -o pan pan.c
 * % pan -a
 *
 * Notation used in this code:
 * S-success, LF-learning failure, TF-technical
 * failure, TO--timeout, exec--execution
 */ 

#include "setting.h"      /* macro definition */
#include "EduOperation.h" /* macro definition */
#include "SampleRules2.h"        /* ECA rule code    */

#define TRUE  1
#define FALSE 0
#define YES   1
#define NO    0

#define AbnContractEnd (abncoend==TRUE)

/* var for recording occurrences of executions 
 * with S and LF outcomes                      
 */
bool abncoend=FALSE;
bool ReqFailBefore=NO;
bool RejFailBefore=NO;
bool ConfFailBefore=NO;
bool PayFailBefore=NO;
bool CancFailBefore=NO;
int lectures=8;
int LCount=0;
int cw=2;
int CwCount=0;
int exam=2;
int ExamCount=0;

/* declaration of the 2 role players involved */
RolePlayer(STUDENT,LMS);

/* account for S,LF,TF,TO,P execution outcome,
 * in this ex, we use only S, P and TF */
RuleMessage(S,LF,TF,TO,P); 

/* 5 operations are involved in the contract */
LN_EVENT(LECTURES);
LN_EVENT(CW);
LN_EVENT(EXAM);

/*
 * LTLs for expressing, mutual exclusion of 
 * obligations and prohibitions which are 
 * checked by default
 */ 

/* 
 * When the STUDENT is obliged to pay the obligation
 * remains pending until the STUDENT pays or cancels
 * or the contract terminates abnormally.
 */
/* ltl p0 { [](!IS_O(LECTURES,STUDENT)) || 
   <>(IS_O(LECTURES,STUDENT) -> <> (IS_X(LECTURES,STUDENT) 
   || IS_X(CW,STUDENT) || AbnContractEnd))  } */ 


/*
 * trap LTL for generating execution sequences
 */
/*
 * the following LTL can be used for generation
 * sequences that include the execution of CHOOSEREJ
 * including the simplest one: CHOOSE(S)-> CHOOSEREJ(S).
 */
/* ltl p1 { !<>IS_X(CHOOSEREJ,LMS) } */

/*
 * The following LTL can be used for generating
 * exe sequences that include the successful
 * and learning fail execution of operations that
 * eventually complete in a successful execution 
 * of LECTURES 
 */
/* ltl p2 { !<>IS_X(LECTURES,STUDENT) } */

/*
 * The following LTL can be used for generating
 * exe sequences that include the successful
 * and tecfail execution of operations that
 * eventually complete in a successful execution 
 * of CW 
 */
/* ltl p3 { !<>IS_X(CW,STUDENT) }*/

/*
 * The following LTL can be used for generating
 * exe sequences that include the successful
 * and tecfail execution of operations that
 * eventually complete in a successful execution 
 * of EXAM 
 */
 /*ltl p4 { !<>IS_X(EXAM,STUDENT) }*/
 
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

  INIT(LECTURES,  STUDENT, 0,1,0);
  INIT(CW, STUDENT, 0,0,1);
  INIT(EXAM, STUDENT, 0,0,1);
 }
 END_INIT:

 /* generation of learning events.
  * For each of the 5 operations, 2 possible exec
  * are modelled: exec with S and exec with TF */ 
 end:do

 :: L_E(STUDENT, LECTURES,  S);   
 :: L_E(STUDENT, LECTURES,  P);    
 :: L_E(STUDENT, LECTURES,  TF);             

 :: L_E(STUDENT, CW, S); 
 :: L_E(STUDENT, CW,  P);    
 :: L_E(STUDENT, CW, TF); 
 
 :: L_E(STUDENT, EXAM, S);  
 :: L_E(STUDENT, EXAM,  P);    
 :: L_E(STUDENT, EXAM, TF); 
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
  :: CONTRACT(LECTURES); 
  :: CONTRACT(CW);
  :: CONTRACT(EXAM);
 od;
}

init
{
  atomic /* start exec of BRG and CRM */
  { 
   run LEG(); run CRM(); 
  }
  /*Completeness check*/
  /*   assert(lectures == LCount);
   *assert(cw == CwCount);
   *assert(exam == ExamCount);
  */
}
