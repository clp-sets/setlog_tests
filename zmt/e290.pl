use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% applyComp
pfun(F) & pfun(G) & dom(F,N1) & X in N1 & apply(F,X,N2) & dom(G,N3) & N2 in N3 & comp(F,G,N4) & apply(N4,X,N5) & apply(G,N2,N5) & F neq {} & G neq {}
,2000,_CONSTR,_RES).

get_time(Tend).

