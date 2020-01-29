use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET329-6.p
% Image alternate definition 4
[X,Y] in Xr & [X,Y] in cp(U1,U2) & X in Z & rimg(Xr,Z,M1) & Y nin M1

,2000,_CONSTR,_RES).

get_time(Tend).

