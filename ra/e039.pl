use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Reflexive ok
subset(R,cp(A,B)) & id(A,N2) & subset(N2,R) & X in A & [X,X] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

