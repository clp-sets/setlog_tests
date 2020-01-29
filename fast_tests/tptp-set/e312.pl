use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET398-6.p
% Associativity of composition
comp(Xr,Yr,M1) & comp(M1,Zr,M2) & comp(Yr,Zr,M3) & ncomp(Xr,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

