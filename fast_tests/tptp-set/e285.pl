use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET332-6.p
% Corollary to range is image of domain
rimg(Xr,U1,M1) & nran(Xr,M1) & subset(Xr,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

