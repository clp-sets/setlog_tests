use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p80 (XVIa1)
subset(R,cp(A,B)) & subset(S,cp(B,C)) & comp(R,S,N1) & inters(N1,T,{}) & inv(T,IT) & subset(T,cp(D,C)) & comp(S,IT,N2) & inv(R,IR) & ninters(N2,IR,{})

,2000,_CONSTR,_RES).

get_time(Tend).

