use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET232-6.p
% Cross product property 7
nsubset(cp(X,Y),Z) & NSE in cp(X,Y) & NSE nin Z & prolog_call(nth1(1,NSE,NSE1)) & NSE1 nin X

,2000,_CONSTR,_RES).

get_time(Tend).

