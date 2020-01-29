use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL009+1.p (2)
% Sequential composition is isotone in both arguments
subset(X0,X1) & comp(X2,X0,M1) & comp(X2,X1,M2) & un(M1,M2,M3) & ncomp(X2,X1,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

