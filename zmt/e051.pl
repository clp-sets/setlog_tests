use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% intersId 2 (not ZMT theorem)
id(A,IA) & id(B,IB) & id(C,IC) & comp(IA,IB,IC) & ninters(A,B,C)

,2000,_CONSTR,_RES).

get_time(Tend).

