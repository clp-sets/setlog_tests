use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyRres
pfun(F) & dom(F,N1) & X in N1 & apply(F,X,N2) & N2 in S & rres(F,S,N3) & napply(N3,X,N2)
,2000,_CONSTR,_RES).

get_time(Tend).

