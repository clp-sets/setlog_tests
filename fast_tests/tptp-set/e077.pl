use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET124-6.p
% Alternative definition of set builder, part 2
set(X) & X nin {X/Z}

,2000,_CONSTR,_RES).

get_time(Tend).

