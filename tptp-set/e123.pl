use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET171+3.p
% Union distributes over intersection
inters(C,D,M1) & un(B,M1,M2) & un(B,C,M3) & un(B,D,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

