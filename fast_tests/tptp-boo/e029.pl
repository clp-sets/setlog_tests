use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO020-1.p (1)
% Huntington equation
un(X,M1,U) & disj(X,M1) & un(Y,M2,U) & disj(Y,M2) & un(M1,M2,M3) & un(M3,M4,U) & disj(M3,M4) & un(M1,Y,M5) & un(M5,M6,U) & disj(M5,M6) & nun(M4,M6,X)


,2000,_CONSTR,_RES).

get_time(Tend).

