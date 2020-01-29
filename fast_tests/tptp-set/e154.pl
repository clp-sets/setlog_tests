use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET200+3.p
% Union is monotonic
subset(B,C) & subset(D,E) & un(B,D,M1) & un(C,E,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

