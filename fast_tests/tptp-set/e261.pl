use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET310-6.p
% Monotonicity of range 3
inters(X,Y,M1) & ran(M1,M2) & ran(X,M3) & nsubset(M2,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

