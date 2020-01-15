use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageSubsetRange
rimg(R,S,N1) & ran(R,N2) & nsubset(N1,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

