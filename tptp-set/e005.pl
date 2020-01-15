use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET005-1.p
% Associativity of set intersection
inters(A,B,AIB) & inters(B,C,BIC) & inters(A,BIC,AIBIC) & ninters(AIB,C,AIBIC)

,2000,_CONSTR,_RES).

get_time(Tend).

