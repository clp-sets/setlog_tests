use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET318-6.p
% Corollary 2 to range property 4
restrict(X,Y,Z,M1) & ran(M1,M2) & ran(X,M3) & inters(Z,M3,M4) & nsubset(cp(M2,U),cp(M4,U))

,2000,_CONSTR,_RES).

get_time(Tend).

