use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% imageDres
dres(S,R,N1) & rimg(N1,T,N2) & inters(S,T,N3) & rimg(R,N3,N2) & S neq {} & R neq {} & T neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

