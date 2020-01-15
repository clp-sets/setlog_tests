use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET269-6.p (1)
% Domain only considers ordered pairs
% direct encoding with type constraint
inters(X,cp(U1,U2),M1) & dom(M1,M2) & ndom(X,M2) & subset(X,cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

