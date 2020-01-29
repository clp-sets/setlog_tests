use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p82 (XXI)
subset(S,cp(A,B)) & subset(T,cp(A,B)) & un(T,CT,cp(A,B)) & disj(T,CT) & inters(S,CT,{}) & subset(R,cp(D,A)) & comp(R,S,N1) & comp(R,T,N2) & un(N2,CN2,cp(D,B)) & disj(N2,CN2) & ninters(N1,CN2,{})

,2000,_CONSTR,_RES).

get_time(Tend).

