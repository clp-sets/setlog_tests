use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO025-1.p
% Half of Padmanabhan's 6-basis with Pixley, part 3
un(B,M1,U) & disj(B,M1) & inters(B,M1,M2) & un(A,M3,U) & disj(A,M3) & ninters(A,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

