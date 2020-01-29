use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET097+1.p
% A class contains 0, 1 or at least 2 members
set(X) & (X = {} or X = {M1} or (V in X & un({V},M1,U) & disj({V},M1) & inters(M1,X,M2) & W in M2))

,2000,_CONSTR,_RES).

get_time(Tend).

