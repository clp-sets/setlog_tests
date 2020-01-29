use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p80 (XVIb2)
subset(R,cp(A,B)) & subset(S,cp(B,C)) & comp(R,S,N1) & ninters(N1,T,{}) & inv(T,IT) & subset(T,cp(A,D)) & comp(IT,R,N2) & inv(S,IS) & inters(N2,IS,{})

,2000,_CONSTR,_RES).

get_time(Tend).

