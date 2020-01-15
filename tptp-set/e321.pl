use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET407-6.p
% Corollary 2 monotonicity of composition
id(U,M1) & subset(Xr,M1) & comp(Ur,Xr,M2) & comp(M2,Zr,M3) & comp(Ur,Zr,M4) & nsubset(M3,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

