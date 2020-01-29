use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL001+1.p (2)
% There is a (unique) least element, namely 0
zero(U1,U2,X0,M1) & nun(M1,X0,X0)

,2000,_CONSTR,_RES).

get_time(Tend).

