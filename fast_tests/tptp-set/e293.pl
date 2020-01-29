use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET342-6.p
% Image of union
un(Y,Z,M1) & rimg(Xr,M1,M2) & rimg(Xr,Y,M3) & rimg(Xr,Z,M4) & un(M3,M4,M5) & nsubset(M2,M5)

,2000,_CONSTR,_RES).

get_time(Tend).

