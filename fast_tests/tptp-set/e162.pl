use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET208-6.p
% Cross product is monotonic 1
subset(X,Y) & nsubset(cp(X,Z),cp(Y,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

