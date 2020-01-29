use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET386-6.p
% Relation property 4
restrict(X,U1,U2,X) & nsubset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

