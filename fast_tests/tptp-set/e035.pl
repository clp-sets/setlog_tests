use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET050-6.p
% Corollary to Unordered pair axiom
%
% The interpretation of the first conjecture is
% cross products contain only ordered pairs
% Then we prove that something that is not an
% ordered pair cannot belong to a cross product
%
% Ordered pairs are terms of the form [X,Y],
% then any other functor is not an ordered pair
% We take "any other functor" as symbol f
f(X,Y) in cp(U,V) or
%
% second conjecture
%
X nin {X,Y}

,2000,_CONSTR,_RES).

get_time(Tend).

