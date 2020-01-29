use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyInverse
pfun(F) & inv(F,N1) & pfun(N1) & dom(F,N2) & X in N2 & apply(F,X,N3) & napply(N1,N3,X)
,2000,_CONSTR,_RES).

get_time(Tend).

