use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET239-6.p
% Restriction alternate definition 2
restrict(Xr,X,Y,M1) & Z in M1 & Z nin Xr

,2000,_CONSTR,_RES).

get_time(Tend).

