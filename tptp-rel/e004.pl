use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL002+1.p (2)
% There is a (unique) greatest element, namely x + x'
top(U1,U2,X0,M1) & nun(X0,M1,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

