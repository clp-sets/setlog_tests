use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Theorem 3.2.4: 
% if x is a point and y is a non empty vector such that y <= x, then x = y
% x is a point is equivalent to x = {y}*B & B neq {} (see e116-e121)
% y is a vector is equivalent to y = dom(y)*B (see e116-e117)
% then we prove: 
% x = {y}*B & B neq {} & y = M*B & M neq {}  & y <= x ==> x = y
X = cp({M1},B) & B neq {} & Y = M2*B & M2 neq {} & subset(Y,X) & nsubset(X,Y) 

,2000,_CONSTR,_RES).

get_time(Tend).

