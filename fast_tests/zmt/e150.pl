use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyCupRight
pfun(F) & pfun(G) & un(F,G,N1) & dom(G,N2) & X in N2 & apply(N1,X,N3) & napply(G,X,N3)
,2000,_CONSTR,_RES).

get_time(Tend).

