use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Partial order is antisymmetric 
[X,Y] in R & [Y,X] in R & X neq Y & subset(M4,M2) & subset(R,cp(A,A)) & id(A,M2) & inv(R,M3) & subset(M2,R) & inters(R,M3,M4) & comp(R,R,M5) & subset(M5,R)

,2000,_CONSTR,_RES).

get_time(Tend).

