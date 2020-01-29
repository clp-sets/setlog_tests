use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET406-6.p
% Corollary 1 monotonicity of composition
subset(Xr,Yr) & comp(Ur,Xr,M1) & comp(M1,Zr,M2) & comp(Ur,Yr,M3) & comp(M3,Zr,M4) & nsubset(M2,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

