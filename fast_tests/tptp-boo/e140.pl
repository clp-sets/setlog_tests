use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO02-1.p
% TBA associativity axiom (bool)
tba(V,W,X,M1) & tba(V,W,Z,M2) & tba(M1,Y,M2,M3) & tba(X,Y,Z,M4) & tba(V,W,M4,M5) & M3 neq M5 & bool(V) & bool(W) & bool(X) & bool(Z) & bool(Y)

,2000,_CONSTR,_RES).

get_time(Tend).

