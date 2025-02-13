Program created for CISP 2410. Created on Aug 28th, 2024.

Critical Thought Process:
Program sets positive limits for both grade average and credit hours then it needs to ask user for student grade average and number of credit hours. Program then needs to take these and check them against limits for valid response, and see if student can/cannot register for classes. Then it outputs prompt of final decision.

Steps:
Declare the variables and set limits to grade and credit variables so we dont have negative numbers or numbers ranging too high.
Set prompts for all possibilities such as; asking user for info, invalid input, and student can/cannot register.
Prompt user for grade average and credits then store our limited variables in EAX. Check value of variables to make sure valid using functions.
If values valid store our limited variables in EAX and EBX .
Then check valid variables to see if student can/cannot register. 
After all variables have been checked output result of student can/cannot register and exit program.

End Result:
Program is able to take input grade average and credits, check interger values for correct limits, and check to see if values student can/cannot register.

