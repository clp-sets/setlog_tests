use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET531-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Application property 1
napply(Z,X,M3) & M3 in M2  & pfun(Z) & dom(Z,M1) & X in M1 & rimg(Z,{X},M2)
 
,2000,_CONSTR,_RES).

get_time(Tend).

