use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET128-6.p
% Building a triple
un({Y},{Z},M1) & nun({X},M1,{X/{Y/{Z/{}}}})

,2000,_CONSTR,_RES).

get_time(Tend).

