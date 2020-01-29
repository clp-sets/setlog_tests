use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET408-6.p
% Inverse of composition
comp(Xr,Yr,M1) & inv(M1,M2) & inv(Yr,M3) & inv(Xr,M4) & ncomp(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

