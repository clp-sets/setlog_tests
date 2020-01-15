use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET289-6.p
% Proof of Goedel's axiom B6, part 1
inv(X,M1) & nsubset(M1,cp(U1,U2)) & subset(X,cp(U2,U1))

,2000,_CONSTR,_RES).

get_time(Tend).

