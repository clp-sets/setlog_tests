use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET144+3.p
% If X is a subset of Z, then X U Y ^ Z = (X U Y) ^ Z
subset(B,C) & inters(D,C,M1) & un(B,M1,M2) & un(B,D,M3) & ninters(M3,C,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

