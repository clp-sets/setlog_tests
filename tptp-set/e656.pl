use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET916+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : ~ ( ~ in(A,B) & ~ in(C,B) & ~ disjoint(unordered_pair(A,C),B) )
A nin B & C nin B & ndisj({A,C},B)

,2000,_CONSTR,_RES).

get_time(Tend).

