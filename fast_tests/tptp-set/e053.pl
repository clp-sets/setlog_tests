use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET078-6.p
% Corollary to every singleton is a set
{Y} nin {X,{Y}}

,2000,_CONSTR,_RES).

get_time(Tend).

