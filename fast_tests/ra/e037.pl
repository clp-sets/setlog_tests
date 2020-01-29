use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Injective OK
inv(R,N1) & comp(R,N1,N2) & subset(R,cp(A,B)) & id(A,N4) & subset(N2,N4) & [X1,Y] in R & [X2,Y] in R & X1 neq X2

,2000,_CONSTR,_RES).

get_time(Tend).

