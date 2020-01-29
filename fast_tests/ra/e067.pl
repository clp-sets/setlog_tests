use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p. 77 (XIII)
subset(R,cp(A,A)) & subset(S,cp(A,A)) & subset(T,cp(A,A)) & inv(T,IT) & inv(R,IR) & comp(R,S,N1) & inters(N1,IT,{}) & comp(S,T,N2) & ninters(N2,IR,{})

,2000,_CONSTR,_RES).

get_time(Tend).

