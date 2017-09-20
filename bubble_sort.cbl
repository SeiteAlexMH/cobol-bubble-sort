       identification division.
	   
      ************** 
      *bubble sort!* 
      ************** 
	   
	program-id. pgmsort.
	author. alexandre seite.

	    
       data division.
	    
       working-storage section.
		
        01 sort-status      pic 9 value 0.
           88 sorted        value 1.
           88 un-sorted     value 0.
	   
	01 ws-table.
           05 array         pic 9(3) occurs 5 times.
		 
        01 array-size       pic 9 value 5.
		
        01 ws-var.		 
	   05 ws-temp       pic 9(3).
	   05 ws-swaps      pic 9.
           05 ws-index      pic 9.
	   05 ws-index2     pic 9.
		
       procedure division.
        1000-main section.
	    perform 2000-initialize.
	    perform 4000-display.
	    perform 3000-bubble-sort.
	    perform 4000-display.
	    goback.

        2000-initialize section.
            initialize ws-var ws-table.
	    set un-sorted to true.
			 
	    move 11  to array(1).
	    move 41  to array(2).
	    move 678 to array(3).
	    move 34  to array(4).
	    move 1   to array(5).
			 
	2000-initialize-x.
            exit.		
		
	3000-bubble-sort section.
            perform until sorted
	        move 0 to ws-swaps
	 	perform varying ws-index from 1 by 1 
		    until ws-index = array-size
		    add 1 to ws-index giving ws-index2
		    if array(ws-index)>array(ws-index2)
			move array(ws-index) to ws-temp
			move array(ws-index2) to array(ws-index)
			move ws-temp to array(ws-index2) 
			add 1 to ws-swaps
		    end-if   
		end-perform
		if ws-swaps = 0 
	            set sorted to true
		end-if
	    end-perform.	

	3000-bubble-sort-x.
            exit.
			 
        4000-display section.
            display array(1) "," array(2) "," array(3)
                     "," array(4) "," array(5).

	4000-display-x.
             exit.		
