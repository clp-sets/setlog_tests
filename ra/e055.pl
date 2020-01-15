use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Partial order is reflexive
comp(R,R,N5) & subset(N5,R) & set(A) & subset(R,cp(A,A)) & id(A,N2) & inv(R,N3) & subset(N2,R) & inters(R,N3,N4) & subset(N4,N2) & X in A & [X,X] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

