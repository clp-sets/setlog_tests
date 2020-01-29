use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% id(A,IA) & id(B,IB)  => (subset(R,cp(A,B)) <=> comp(IA,R,R) & comp(R,IB,R))
subset(R,cp(A,B)) & id(A,IA) & id(B,IB) & (ncomp(IA,R,R) or ncomp(R,IB,R))

,2000,_CONSTR,_RES).

get_time(Tend).

