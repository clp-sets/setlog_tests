use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO028-1.p
% Self-dual 2-basis from majority reduction, part 1
% l3 axiom
inters(X,Y,M1) & inters(Y,Z,M2) & un(M1,M2,M3) & nun(M3,Y,Y)

,2000,_CONSTR,_RES).

get_time(Tend).

