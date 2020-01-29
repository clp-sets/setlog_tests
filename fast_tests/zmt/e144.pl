use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% pfunDef 1
nsubset(N1,IB) & comp(IR,R,N1) & id(B,IB) & pfun(R) & subset(R,cp(A,B)) & inv(R,IR)

,2000,_CONSTR,_RES).

get_time(Tend).

