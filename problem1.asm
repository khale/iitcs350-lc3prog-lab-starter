;;
;; Problem 1: Implement strcmp()
;;   strcmp is a subroutine that compares the length of two strings.
;;   The address of the first string is given in R0.
;;   The address of the second string is given in R1.
;;   If they are of equal length, R0 will hold 0 on return
;;   If they are different length, R0 will hold 1 on return
;;   You will fill in the strcmp() subroutine below. 
;;

.ORIG x3000

    LEA R0, STR1
    LEA R1, STR2
    JSR STRCMP
    ADD R0, R0, #0      ; test return value
    BRz EQUAL
    LEA R0, DIFFSTR
    PUTS
    BRnzp DONE
EQUAL
    LEA R0, SAMESTR
    PUTS
DONE
    HALT

STRCMP
    ;;
    ;; TODO: fill me in!
    ;; 
    RET


;; Replace these with other strings to test your code
STR1 .STRINGZ "placeholder1"
STR2 .STRINGZ "placeholder1111"

SAMESTR .STRINGZ "They are the same length"
DIFFSTR .STRINGZ "They are different lengths"

.END
