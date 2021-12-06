% Please insert the names and email addresses of the group members:
%
%

initial(1,1,5). initial(1,2,3). initial(1,5,7).
initial(2,1,6). initial(2,4,1). initial(2,5,9). initial(2,6,5).
initial(3,2,9). initial(3,3,8). initial(3,8,6).
initial(4,1,8). initial(4,5,6). initial(4,9,3).
initial(5,1,4). initial(5,4,8). initial(5,6,3). initial(5,9,1).
initial(6,1,7). initial(6,5,2). initial(6,9,6).
initial(7,2,6). initial(7,7,2). initial(7,8,8).
initial(8,4,4). initial(8,5,1). initial(8,6,9). initial(8,9,5).
initial(9,5,8). initial(9,8,7). initial(9,9,9).

subgrid_size(3).

% Hints:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be mapped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

% Your implementation please...

{sudoku(X,Y,N): N=1..S*S}=1 :- X=1..S*S, Y=1..S*S, subgrid_size(S).
sudoku(X,Y,N):- sudoku(X,Y,_), initial(X,Y,N).

:- sudoku(X,Y,N), sudoku(X,Y',N), Y != Y'.
:- sudoku(X,Y,N), sudoku(X,Y',N), subgrid_size(S), SGL=(((X-1)/S)*S + (Y-1)/S), SGL'=(((X-1)/S)*S + (Y'-1)/S), SGL != SGL'.

:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.
:- sudoku(X,Y,N), sudoku(X',Y,N), subgrid_size(S), SGL=(((X-1)/S)*S + (Y-1)/S), SGL'=(((X'-1)/S)*S + (Y-1)/S), SGL != SGL'.


%{sudoku(X,Y,N):N=(1..9)}=1 :- initial(X,Y,N), initial(X',Y',N'), X != X', Y != Y', N != N'.

#show sudoku/3.
