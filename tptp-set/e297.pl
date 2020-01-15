use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET382-6.p
% Corollary 1 to relation property 2
subset(X,cp(U1,U2)) & nrestrict(X,U1,U2,X)

,2000,_CONSTR,_RES).

get_time(Tend).

