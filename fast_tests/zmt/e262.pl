use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applySubset
pfun(F) & pfun(G) & subset(F,G) & dom(F,N1) & X in N1 & apply(F,X,N2) & apply(G,X,N2) & F neq {} & G neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

