use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET319-6.p
% Corollary 3 to range property 4
restrict(X,Y,Z,M1) & ran(M1,M2) & ran(X,M3) & inters(Z,M3,M4) & nsubset(cp(U,M2),cp(U,M4))

,2000,_CONSTR,_RES).

get_time(Tend).

