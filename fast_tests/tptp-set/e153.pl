use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET199+3.p
% If Z (= X and Z (= Y, then Z (= X ^ Y
subset(B,C) & subset(B,D) & inters(C,D,M1) & nsubset(B,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

