use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET100-6.p
% The relationship of singleton sets to ordered pairs
nun({X},{Y},{X,Y})
 

,2000,_CONSTR,_RES).

get_time(Tend).

