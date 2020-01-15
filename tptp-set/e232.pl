use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET279-6.p
% Domain property 5
restrict(Xr,Y,{Z},M1) & dom(M1,M2) & U in M2 & [U,Z] nin Xr

,2000,_CONSTR,_RES).

get_time(Tend).

