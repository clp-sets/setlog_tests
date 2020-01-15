use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B8 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
un(A,B,A1) &
inv(A1,A2) &
inv(A,A3) &
inv(B,A4) &
nun(A3,A4,A2)


,2000,_CONSTR,_RES).

get_time(Tend).

