use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO034-1.p
% Ternary Boolean Algebra Single axiom is sound
% single_axiom
un(A,M1,U) & disj(A,M1) & tba(A,M1,B,M2) & tba(C,D,E,M3) & tba(C,D,G,M4) & tba(G,F,E,M5) & tba(D,M5,C,M6) & tba(M3,F,M4,M7) & un(M7,M8,U) & disj(M7,M8) & tba(M2,M8,M6,M9) & M9 neq B & subset(B,U)

,2000,_CONSTR,_RES).

get_time(Tend).

