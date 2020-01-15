use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B6 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
inv(A,A1) &
ninv(A1,A)


/*
  With neq

inv(A,A1) &
inv(A1,A2) &
A neq A2

*/


% ((X in A & X nin A2) or (X nin A & X in A2))
% is used because A neq A2 seems not to work well

,2000,_CONSTR,_RES).

get_time(Tend).

