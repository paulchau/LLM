

/*
 * LPROMELA code of the ECA rules that implement a
 * a contract between a STUDENT and LMS.
 *
 * Ching Hay Chau, 27 Jul 2015, Ncl Uni, UK
 *

 */ 


RULE(a){
	WHEN::EVENT(a, IS_R(a,STUDENT),SC(a))
	->{
	 SET_R(a, 0);
	 SET_P(d, 0);
	 if
	 ::(IS_P(b, STUDENT)) -> SET_P(b,1);
	 ::else -> SET_O(b,1);
	 fi;
	 if
	 ::(IS_P(c, STUDENT)) -> SET_P(c,1);
	 ::else -> SET_O(c,1);
	 fi;
	 if 
	 ::IS_X(b, STUDENT) -> SET_O(d,1);
	 ::IS_X(c, STUDENT) -> SET_O(d,1);
	 ::else SET_P(d,1);
	 fi;
	 RD(a, STUDENT, CCR, CO);	
	}
	::EVENT(a, IS_P(a,STUDENT),SC(a))
	->{
		RD(a, STUDENT, CCP, CO);	
	}
	END(a);
}

RULE(b){
 WHEN::EVENT(b,IS_O(b,STUDENT),SC(b))
	->{
		SET_R(a,1);
		SET_O(b,0);
		SET_P(b,1);
		SET_X(b,STUDENT);
		RD(b, STUDENT, CCO, CO);	
    }
	::EVENT(b,IS_P(b,STUDENT),SC(b))
	->{
		SET_R(a,1);
		SET_O(b,0);
		SET_O(c,0);
		SET_O(d,0);
		RD(b, STUDENT, CCP, CO);
	}
  END(b);		 
}

RULE(c){
 WHEN::EVENT(c,IS_O(c,STUDENT),SC(c))
	->{
		SET_R(a,1);
		SET_O(c,0);
		SET_P(c,1);
		SET_X(c,STUDENT);
		RD(c, STUDENT, CCO, CO);	
    }
	::EVENT(c,IS_P(c,STUDENT),SC(c))
	->{
		SET_R(a,1);
		SET_O(b,0);
		SET_O(c,0);
		SET_O(d,0);
		RD(c, STUDENT, CCP, CO);
	}	
 END(c);		 
}
	
RULE(d){

 WHEN::EVENT(d,IS_O(d,STUDENT),SC(d))
	->{ 
		SET_O(d,0);
		SET_R(a,1);
		RD(d, STUDENT, CCO, CO);	
	}
	:: EVENT(d,IS_P(d, STUDENT),SC(d))
	->{
		SET_R(a,1);
		SET_O(b,0);
		SET_O(c,0);
		SET_O(d,0);
		RD(d, STUDENT, CCP, CO);
	}
 END(d);		 
}