use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET325-6.p
% Image alternate definition 2
rimg(Xr,X,M1) & Y in M1 & domain(Xr,X,Y,M2) & [M2,Y] nin Xr

,2000,_CONSTR,_RES).

get_time(Tend).

