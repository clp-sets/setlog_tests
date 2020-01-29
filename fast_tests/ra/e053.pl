use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p80 (XVII)
subset(R,cp(A,B)) & subset(S,cp(A,B)) & un(S,CS,cp(A,B)) & disj(S,CS) & inters(R,CS,{}) & inv(R,IR) & inv(S,IS) & un(IS,CIS,cp(B,A)) & disj(IS,CIS) & ninters(IR,CIS,{})

,2000,_CONSTR,_RES).

get_time(Tend).

