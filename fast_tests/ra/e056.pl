use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Total order is reflexive
comp(R,R,N5) & subset(N5,R) & id(A,N2) & inv(R,N3) & set(A) & inters(R,N3,N4) & subset(N4,N2) & un(R,N3,cp(A,A)) & X in A & [X,X] nin R

,2000,_CONSTR,_RES).

get_time(Tend).

