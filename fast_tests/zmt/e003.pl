use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% memberFirstInDom
[X,Y] in R & dom(R,N1) & X nin N1
,2000,_CONSTR,_RES).

get_time(Tend).

