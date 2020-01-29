use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET227-6.p
% Cross product left cancellation 2
cp(U,V) = cp(W,X) & W neq {} & V neq X

,2000,_CONSTR,_RES).

get_time(Tend).

