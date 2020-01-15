use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO067-1 : TPTP v7.0.0. Released v2.6.0. (bool)
% Problem  : Ternary Boolean Algebra Single axiom is complete, part 1
un(A,M1,{{}}) & disj(A,M1) & tba(A,M1,B,M2) & tba(C,D,G,M3) & tba(C,D,E,M4) & tba(M4,F,M3,M5) & un(M5,M6,{{}}) & disj(M5,M6) & tba(G,F,E,M7) & tba(D,M7,C,M8) & tba(M2,M6,M8,M9) & M9 neq B & bool(A) & bool(B) & bool(C) & bool(D) & bool(G) & bool(E) & bool(F)

,2000,_CONSTR,_RES).

get_time(Tend).

