use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B7 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
comp(A,B,A1) &
inv(A1,A2) &
inv(B,A3) &
inv(A,A4) &
ncomp(A3,A4,A2)


/*
  With neq

comp(A,B,A1) &
inv(A1,A2) &
inv(B,A3) &
inv(A,A4) &
comp(A3,A4,A5) &
A5 neq A2

*/

% ((X in A5 & X nin A2) or (X nin A5 & X in A2))
% is used because A5 neq A2 seems not to work well

,2000,_CONSTR,_RES).

get_time(Tend).

