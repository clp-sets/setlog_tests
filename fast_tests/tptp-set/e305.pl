use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET391-6.p
% Composition property 1
[X,Y] in Xr & [Y,Z] in Yr & [X,Y] in cp(U1,U2) & [Y,Z] in cp(U1,U3) & comp(Xr,Yr,M1) & [X,Z] nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

