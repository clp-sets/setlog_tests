use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET331-6.p
% Range is image of the domain
dom(Xr,M1) & rimg(Xr,M1,M2) & nran(Xr,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

