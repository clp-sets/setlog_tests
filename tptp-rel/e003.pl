use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL002+1.p
% There is a (unique) greatest element, namely x + x'
subset(X0,cp(U1,U2)) & nun(X0,cp(U1,U2),cp(U1,U2))

,2000,_CONSTR,_RES).

get_time(Tend).

