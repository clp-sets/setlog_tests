use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET270-6.p
% Domain property 2
dom(cp(X,Y),M1) & M1 neq X & Y = {M2/M3}

,2000,_CONSTR,_RES).

get_time(Tend).

