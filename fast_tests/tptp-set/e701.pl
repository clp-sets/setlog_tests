use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET978+1 : TPTP v7.0.0. Released v3.2.0.
% Problem  : Basic properties of sets, theorem 131
A neq B & (ndisj(cp({A},C),cp({B},D)) or ndisj(cp(C,{A}),cp(D,{B})))

,2000,_CONSTR,_RES).

get_time(Tend).

