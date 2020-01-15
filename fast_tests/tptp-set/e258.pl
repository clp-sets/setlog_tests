use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET307-6.p
% Range preserves union
ran(X,M1) & ran(Y,M2) & un(M1,M2,M3) & un(X,Y,M4) & nran(M4,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

