use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyNdres
pfun(F) & X nin S & dom(F,N1) & X in N1 & dares(S,F,N2) & apply(N2,X,N3) & apply(F,X,N3) & F neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

