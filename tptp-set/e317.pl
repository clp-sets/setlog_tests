use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET403-6.p
% Domain of composition 2
dom(Yr,M1) & ran(Xr,M2) & subset(M1,M2) & comp(Xr,Yr,M3) & ran(M3,M4) & nran(Yr,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

