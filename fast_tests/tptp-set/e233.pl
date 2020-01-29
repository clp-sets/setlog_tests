use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET280-6.p
% Domain property 6
dom(X,{}) & subset(X,cp(U1,U2)) & X neq {}

,2000,_CONSTR,_RES).

get_time(Tend).

