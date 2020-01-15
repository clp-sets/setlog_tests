use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET125-6.p
% Alternative definition of set builder, part 3
X in Z & X nin {Y/Z}

,2000,_CONSTR,_RES).

get_time(Tend).

