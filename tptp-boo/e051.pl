use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO029-1.p
% Self-dual 2-basis from majority reduction, part 3
% equal_inverse
un(B,M1,U) & disj(B,M1) & un(B,M1,M2) & un(A,M3,U) & disj(A,M3) & nun(A,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

