use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL009+1.p (1)
% Sequential composition is isotone in both arguments
subset(X0,X1) & comp(X0,X2,M1) & comp(X1,X2,M2) & un(M1,M2,M3) & ncomp(X1,X2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

