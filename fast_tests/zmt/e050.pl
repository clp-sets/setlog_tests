use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% intersId 1 (not ZMT theorem)
inters(A,B,C) & id(A,IA) & id(B,IB) & id(C,IC) & ncomp(IA,IB,IC)

,2000,_CONSTR,_RES).

get_time(Tend).

