// Agent ev3Agent in project jasonTestProgram

/* Initial beliefs and rules */

value(0).
not_riched(A) :- value(A) & A < 5.

/* Initial goals */

!move.

/* Plans */

+!move : not_riched(A) <- .print("Not riched yet : value is ", A); robot.testInternalAction(ModelArch, Executed, Closed); 
.print("Model Architecture : ", ModelArch);
.print("Was Executed       : ", Executed);
.print("Was Closed         : ", Closed);
-+value(A + 1); !!move.

+!move : not not_riched(A) <- .print("Riched").

/* -+belief(newVal) replace all instances of "belief" by belief(newVal)*/