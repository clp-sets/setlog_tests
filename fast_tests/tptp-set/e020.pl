use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET020+1.p
% Uniqueness of 1st and 2nd when X is an ordered pair of sets
X = [U,V] & prolog_call(nth1(1,X,M1)) & prolog_call(nth1(2,X,M2)) & (M1 neq U or M2 neq V)

,2000,_CONSTR,_RES).

get_time(Tend).

