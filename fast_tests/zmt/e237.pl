use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% idImage
id(S,N1) & inters(S,T,N2) & rimg(N1,T,N2) & S neq {} & T neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

