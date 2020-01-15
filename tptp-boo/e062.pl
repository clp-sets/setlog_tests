use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO035-1.p
% Ternary Boolean Algebra Single axiom is complete
% tba_axioms right_inverse axiom
un(B,M1,U) & disj(B,M1) & tba(A,B,M1,M2) & M2 neq A & subset(A,U)

,2000,_CONSTR,_RES).

get_time(Tend).

