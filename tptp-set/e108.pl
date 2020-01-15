use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET155+4.p
% De Morgans law 1
subset(A,E) & subset(B,E) & un(A,B,M1) & diff(E,M1,M2) & diff(E,A,M3) & diff(E,B,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

