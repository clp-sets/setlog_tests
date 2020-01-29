use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL026+1.p
% Splitting rule for x;y if x is a subidentity
id(U,M2) & subset(X0,M2) & comp(X0,cp(U,U),M5) & comp(X0,X1,M4) & rres(X1,U,X1) & ninters(M5,X1,M4)

,2000,_CONSTR,_RES).

get_time(Tend).


