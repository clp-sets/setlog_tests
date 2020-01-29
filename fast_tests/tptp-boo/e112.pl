use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : BOO109+1 : TPTP v7.0.0. Released v3.5.0.
% Domain   : Boolean Algebra
% Problem  : Josef Urban's problem using the Wajsberg axiom
%
% sets represent truth values
% the universe is {{}} for some X
% if A is a set, A = {} represents A = false
% if A is a set, A = {{}} represents A = true
% then, for instance: inverse(A) becomes:
% un(A,M1,{{}}) & disj(A,M1)
% and so only one of them can be true (and the other is false)
% un(A,B,{{}}) means A or B = true and so A or B must be {{}}
%
% Wajsberg axiom is a formula that it's always true
% so its negation must be false
% so the last parameter of the last nand constraint is {}
% the third parameter for all nand constraints is {{}}
nandb(B,C,M1) & nandb(A,M1,M2) & nandb(A,D,M3) & nandb(M3,M3,M4) & 
nandb(D,C,M5) & nandb(M5,M4,M6) & nandb(A,B,M7) & nandb(A,M7,M8) & nandb(M6,M8,M9) & nandb(M2,M9,{})

,2000,_CONSTR,_RES).

get_time(Tend).

