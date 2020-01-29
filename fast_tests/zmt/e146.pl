use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyInRanPfun
pfun(F) & dom(F,N1) & A in N1 & apply(F,A,N2) & ran(F,N3) & N2 nin N3
,2000,_CONSTR,_RES).

get_time(Tend).

