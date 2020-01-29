use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% maddux3_a_kind_of_de_Morgan axiom
un(X1,M1,cp(U1,U2)) & disj(X1,M1) & un(X0,M2,cp(U1,U2)) & disj(X0,M2) & un(M1,M2,M3) & un(M3,M4,cp(U1,U2)) & disj(M3,M4) & un(M2,X1,M5) & un(M5,M6,cp(U1,U2)) & disj(M5,M6) & nun(M6,M4,X0)

,2000,_CONSTR,_RES).

get_time(Tend).

