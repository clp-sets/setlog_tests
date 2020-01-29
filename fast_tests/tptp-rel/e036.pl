use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL032+1.p
% Subdistributivity
inters(X1,X2,M1) & comp(X0,M1,M2) & comp(X0,X1,M3) & comp(X0,X2,M4) &  inters(M3,M4,M5) & un(M2,M5,M6) & ninters(M3,M4,M6)

,2000,_CONSTR,_RES).

get_time(Tend).

