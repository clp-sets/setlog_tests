use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET397-6.p
% Range of composition
comp(Xr,Yr,M1) & ran(M1,M2) & ran(Yr,M3) & nsubset(M2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

