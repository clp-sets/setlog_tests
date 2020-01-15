use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET404-6.p
% Monotonicity of composition 1
subset(Xr,Yr) & comp(Xr,Zr,M1) & comp(Yr,Zr,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

