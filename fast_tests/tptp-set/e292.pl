use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET341-6.p
% Image under universal class
nrimg(cp(U1,U2),X,U2) & X neq {} & subset(X,U1)

,2000,_CONSTR,_RES).

get_time(Tend).

