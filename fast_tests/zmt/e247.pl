use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applicationInImage
pfun(F) & X in S & dom(F,N1) & X in N1 & apply(F,X,N2) & rimg(F,S,N3) & N2 in N3 & F neq {} & S nin {}
,2000,_CONSTR,_RES).

get_time(Tend).

