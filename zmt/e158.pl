use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% nullInBij 1
id(B,N1) & inv({},N2) & comp(N2,{},N3) & subset(N1,N3) & pfun({}) & dom({},A) & (A neq {} or B neq {})
,2000,_CONSTR,_RES).

get_time(Tend).

