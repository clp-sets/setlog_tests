use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL046+1.p
% Meet splitting
inters(X1,X2,M1) & subset(X0,M1) & (nsubset(X0,X1) or nsubset(X0,X2))

,2000,_CONSTR,_RES).

get_time(Tend).

