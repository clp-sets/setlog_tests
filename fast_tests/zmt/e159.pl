use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nullInBij 2
id(B,N1) & inv({},N2) & comp(N2,{},N3) & dom({},A) & A = {} & B = {} & (nsubset(N1,N3) or npfun({}))
,2000,_CONSTR,_RES).

get_time(Tend).

