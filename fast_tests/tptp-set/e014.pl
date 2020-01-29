use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET014-2.p
% Union of subsets is a subset
subset(As,Cs) & subset(Bs,Cs) & un(As,Bs,M1) & nsubset(M1,Cs)

,2000,_CONSTR,_RES).

get_time(Tend).

