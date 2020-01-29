use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO109+1 : TPTP v7.0.0. Released v3.5.0.
% Domain   : Boolean Algebra
% Problem  : Josef Urban's problem using the Wajsberg axiom
% tautology, conjecture
nandb(A,A,M1) & nandb(M1,M1,M2) & nandb(B,B,M3) & nandb(M3,M2,M4) & nandb(M4,M4,M5) & nandb(A,M3,M6) & nandb(M6,M5,{})

,2000,_CONSTR,_RES).

get_time(Tend).

