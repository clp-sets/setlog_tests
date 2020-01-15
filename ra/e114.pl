use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Heterogeneous Relation Algebra, Schmidt, Hattensperger and Winter
% Theorem 3.2.2 (i) S <= A*D ==> (Q /\ R;B*A);S = Q;S /\ R;B*D
subset(S,cp(A,D)) &
comp(R,cp(B,A),M1) & inters(Q,M1,M2) & comp(M2,S,M3) & comp(Q,S,M4) & comp(R,cp(B,D),M5) & ninters(M4,M5,M3)

,2000,_CONSTR,_RES).

get_time(Tend).

