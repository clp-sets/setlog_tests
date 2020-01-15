use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET209-6.p
% Cross product is monotonic 2
subset(Y,Z) & nsubset(cp(X,Y),cp(X,Z))

,2000,_CONSTR,_RES).

get_time(Tend).

