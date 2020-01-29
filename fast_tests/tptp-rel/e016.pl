use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL012+1.p
% Cancelativity of converse
comp(X0,X1,M1) & un(M1,M2,cp(U1,U3)) & disj(M1,M2) & inv(X1,M3) & comp(M2,M3,M4) & un(X0,M5,cp(U1,U2)) & disj(X0,M5) & nun(M4,M5,M5) & subset(X1,cp(U2,U3))

,2000,_CONSTR,_RES).

get_time(Tend).

