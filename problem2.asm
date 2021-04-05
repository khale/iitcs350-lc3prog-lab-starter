;;
;; You will implement the daystring program below.
;; You will first prompt the user to enter a number
;; from 0 to 6, inclusive. Your program will output
;; a string for the day of the week that the number corresponds to.
;; The DAYSTRING subroutine accepts a number from 0 to 6 in R0
;; and prints out the appropriate string. 
;;
;; Here is an example run;
;;
;; HINTS:
;;  - understand how GETC works (and what data format is returned!)
;;  - understand how to use strings


.ORIG x3000

    LEA R0, PROMPT
    PUTS
    ;; TODO: fill me in!
    HALT

    
DAYSTRING
    ;; TODO: fill me in!
    RET

PROMPT .STRINGZ "Input a number> "


.END
