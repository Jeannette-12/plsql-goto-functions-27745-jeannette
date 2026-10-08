 Reflection

 1. What is GOTO and why is it discouraged?
 It jumps to a labelled line. It makes code hard to follow. IF/ELSIF or loops are clearer.

 2. What made the GOTO in A3 illegal, and how did you fix it?
 It jumped INTO an IF block. PL/SQL only lets you jump out of a block, not into one. I moved the label to the same level as the GOTO.

 3. Compare A2 (GOTO) with A4 (IF/ELSIF). Which is clearer and why?
 Both give the same output. A4 reads top to bottom with no jumping, so it is easier to follow.

 4. What is the difference between a function and a procedure?
 A function must RETURN a value and can be used inside SQL. A procedure does not return a value and is called as a statement.

 5. What happened when you called your functions from SQL (B5)?
 Each function ran once for each row. Employees with missing data returned NULL, Unassigned or Unknown instead of crashing.

