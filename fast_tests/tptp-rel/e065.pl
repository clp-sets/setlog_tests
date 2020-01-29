use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% maddux4_definiton_of_meet axiom
un(X0,M1,cp(U1,U2)) & disj(X0,M1) & un(X1,M2,cp(U1,U2)) & disj(X1,M2) & un(M1,M2,M3) & un(M3,M4,cp(U1,U2)) & disj(M3,M4) & ninters(X0,X1,M4)

,2000,_CONSTR,_RES).

get_time(Tend).

