use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyNrres
pfun(F) & dom(F,N1) & X in N1 & apply(F,X,N2) & N2 nin S & rares(F,S,N3) & apply(N3,X,N2) & F neq {} & S neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

