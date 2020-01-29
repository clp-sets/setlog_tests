use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET181-6.p
% Corollary to distribution property 2
un(X,M1,U) & disj(X,M1) & inters(X,Z,M2) & un(Y,M2,M3) & un(M1,M3,M4) & un(Y,Z,M5) & nun(M1,M5,M4) & subset(Z,U)

,2000,_CONSTR,_RES).

get_time(Tend).

