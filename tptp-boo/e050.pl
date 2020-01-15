use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO028-1.p
% Self-dual 2-basis from majority reduction, part 1
% b2 axiom
inters(X,Y,M1) & un(Y,M2,U) & disj(Y,M2) & inters(X,M2,M3) & nun(M1,M3,X) & subset(X,U)

,2000,_CONSTR,_RES).

get_time(Tend).

