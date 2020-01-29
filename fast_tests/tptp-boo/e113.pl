use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO109+1 : TPTP v7.0.0. Released v3.5.0.
% Domain   : Boolean Algebra
% Problem  : Josef Urban's problem using the Wajsberg axiom
% modus_ponens_for_nand axiom
nandb(Q,R,M1) & nandb(P,M1,{{}}) & P = {{}} & R = {}

,2000,_CONSTR,_RES).

get_time(Tend).

