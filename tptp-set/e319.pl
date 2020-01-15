use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET405-6.p
% Monotonicity of composition 2
subset(Xr,Yr) & comp(Zr,Xr,M1) & comp(Zr,Yr,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

