use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET118-6.p
% Corollary 2 to every ordered pair being a set
X in cp(U1,U2) & sop(X,M1) & nset(M1)

,2000,_CONSTR,_RES).

get_time(Tend).

