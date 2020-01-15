use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B10 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
% It seems to be invalid for binary relations with
% domain and range over different sets.
%
/*
 Set-oriented version.

 The axiom has the following form ((+) union, ~ complement):

 M (+) ~B = ~B

 where M has a complex form. However, proving this is 
 equivalent to proving:

 M (+) ~B neq ~B

 is false.

 For trivial properties of set theory, proving this 
 is equivalent to proving:

 nsubset(M,~B)

 is false, which in turn is equivalent to proving:

 inters(M,B,K) & K neq {}

 and then is equivalent to

 (*) P in M & P in B

 Therefore, once M is defined we need to conjoin (*) 
 to M's definition in order to prove the axiom.

 This version takes this reasoning into consideration.

 Besides, since A and B are binary relations in D*D,
 then all other auxiliary sets are also binary
 relations in D*D.
*/

subset(A,cp(D,D)) & 
subset(B,cp(D,D)) & 
inv(A,IA) &                          % M's definition starts
comp(A,B,AB) &
un(AB,CAB,cp(D,D)) & disj(AB,CAB) &
comp(IA,CAB,IC) &                    % M's definition ends
[X,Y] in IC & [X,Y] in B




,2000,_CONSTR,_RES).

get_time(Tend).

