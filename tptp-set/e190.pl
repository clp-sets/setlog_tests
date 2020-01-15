use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET236-6.p
% Cross product property 11
subset(X,cp(U1,U2)) & M1 in X & M1 nin Y & prolog_call(nth1(1,M1,M2)) & prolog_call(nth1(2,M1,M3)) & [M2,M3] in Y & nsubset(X,Y)

,2000,_CONSTR,_RES).

get_time(Tend).

