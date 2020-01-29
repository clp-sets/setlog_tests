use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET271-6.p
% Corollary to domain property 2
dom(cp(X,X),M1) & M1 neq X

,2000,_CONSTR,_RES).

get_time(Tend).

