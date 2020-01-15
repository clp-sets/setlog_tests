%%%%%%%%%%%% GOAL %%%%%%%%%%%%

use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File  
% File     : SET565-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Domain   : Set Theory
% Problem  : Corollary 2 to compatible function property 3
compatible(Xh1,Xf1,Xf2) & compatible(Xh2,Xf2,Xf3) & comp(Xh1,Xh2,M1) & dom(M1,M2) & dom(Xh1,M3) & cp(M2,M2) neq cp(M3,M3)

,2000,_CONSTR,_RES).

get_time(Tend).


%%%%%%%%%% END GOAL %%%%%%%%%%

