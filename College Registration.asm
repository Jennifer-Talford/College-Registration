; College Registration Program
; Jennifer Talford

INCLUDE Irvine32.inc

.data

LowerGrade = 1
HighGrade = 400
LowerCredit = 1
HighCredit = 30

gradeAverage	DWORD 375;
Credits			DWORD 28;

PromptGradeAvrg BYTE "Please input the students grade average in the range from 1-400: ",0
PromptCredit BYTE "Next, please input the students total credits in the range from 1-30: ",0
PromptHighGrade BYTE "Invalid input. The grade average is over 400.",0
PromptLowGrade BYTE "Invalid input. The grade average is below 1.",0
PromptHighCredit BYTE "Invalid input. The credit total is over 30.",0
PromptLowCredit BYTE "Invalid input. The credit total is below 1.",0
PromptRegister BYTE "The student can register. ",0
PromptCantRegister BYTE "The student cannot register. ",0

.code
main PROC

; Get grade from user
mov EDX, OFFSET PromptGradeAvrg
call WriteString
call ReadInt
mov gradeAverage, EAX

; Check input to ensure grade input is within limits
; Check if grade too high
cmp EAX, HighGrade
jg FunctionHighGrade
; Check if grade too low
cmp EAX, LowerGrade
jl FunctionLowGrade

; Get credit from user
mov EDX, OFFSET PromptCredit
call WriteString
call ReadInt
mov Credits, EAX
		
; Check input to ensure credit input is within limits
; Check if credit too high
cmp EAX, HighCredit
jg FunctionHighCredit
; Check if credit too low
cmp EAX, LowerCredit
jl FunctionLowCredit

; Store values
mov EAX, gradeAverage
mov EBX, Credits
	
; Check if student can register
; If grade >350
cmp EAX, 350
ja FunctionRegister
; If grade >250
cmp EAX, 250
ja Test1
jmp Test2

Test1:
; If credits <=16
cmp EBX, 16
jbe FunctionRegister
jmp FunctionCantRegister

Test2:
cmp EBX, 12
jbe FunctionRegister
jmp FunctionCantRegister

; Prompt if user grade input too high
FunctionHighGrade:
mov EDX, OFFSET PromptHighGrade
call WriteString
JMP QUIT

; Prompt if user grade input too low
FunctionLowGrade:
mov EDX, OFFSET PromptLowGrade
call WriteString
JMP QUIT

; Prompt if user credit input too high
FunctionHighCredit:
mov EDX, OFFSET PromptHighCredit
call WriteString
JMP QUIT

; Prompt if user grade input too low
FunctionLowCredit:
mov EDX, OFFSET PromptLowCredit
call WriteString
JMP QUIT

; Prompt to tell user student cant register
FunctionCantRegister:
mov EDX, OFFSET PromptCantRegister
call WriteString
JMP QUIT

; Prompt to tell user student can register
FunctionRegister:
mov EDX, OFFSET PromptRegister
call WriteString
JMP QUIT
QUIT:

exit
main ENDP

END main