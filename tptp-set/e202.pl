use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET248-6.p
% Restriction preserves intersections
restrict(Xr1,X1,Y1,M1) & restrict(Xr2,X2,Y2,M2) & ninters(M1,M2,M3) & inters(Xr1,Xr2,M4) & inters(X1,X2,M5) & inters(Y1,Y2,M6) & restrict(M4,M5,M6,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

