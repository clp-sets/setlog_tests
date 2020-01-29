use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET260-6.p
% Domain alternate definition 3
[X,Y] in Xr & [X,Y] in cp(U1,U2) & dom(Xr,M1) & X nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

