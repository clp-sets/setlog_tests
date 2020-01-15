use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET264-6.p
% Domain is monotonic 1
subset(X,Y) & dom(X,M1) & dom(Y,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

