use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET178-6.p
% Corollary 1 to distribution property 1
un(X,M1,U) & disj(X,M1) & inters(M1,Z,M2) & un(Y,M2,M3) & un(X,M3,M4) & un(Y,Z,M5) & nun(X,M5,M4) & subset(Z,U)

,2000,_CONSTR,_RES).

get_time(Tend).

