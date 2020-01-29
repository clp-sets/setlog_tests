use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET320-6.p
% Corollary 4 to range property 4
restrict(X1,Y1,Z1,M1) & ran(M1,M2) & restrict(X2,Y2,Z2,M3) & ran(M3,M4) & nsubset(cp(M2,M4),cp(Z1,Z2))

,2000,_CONSTR,_RES).

get_time(Tend).

