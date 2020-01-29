use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pfunDef 2
npfun(R) & subset(R,cp(A,B)) & inv(R,IR) & id(B,IB) & comp(IR,R,N1) & subset(N1,IB)

,2000,_CONSTR,_RES).

get_time(Tend).

