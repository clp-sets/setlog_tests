use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET179-6.p
% Corollary 2 to distribution property 1
inters(Y,Z,M1) & un(X,M2,U) & disj(X,M2) & inters(M2,M1,M3) & inters(X,Z,M4) & un(M4,M3,M5) & nun(M4,M1,M5) & subset(Y,U)

,2000,_CONSTR,_RES).

get_time(Tend).

