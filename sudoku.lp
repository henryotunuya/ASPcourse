% Please insert the names and email addresses of the group members:
%
%


subgrid_size(3).

% Hints:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

% Your implementation please...

{sudoku(X,Y,N): N=1..S*S}=1 :- X=1..S*S, Y=1..S*S, subgrid_size(S).
sudoku(X,Y,N):- initial(X,Y,N).

:- sudoku(X,Y,N), sudoku(X,Y',N), Y != Y'.
:- sudoku(X,Y,N), sudoku(X',Y',N), |X-X'|+|Y-Y'| != 0,  subgrid_size(S), SGL=(((X-1)/S)*S + (Y-1)/S), SGL'=(((X'-1)/S)*S + (Y'-1)/S),  SGL = SGL'.

:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.


#show sudoku/3.
