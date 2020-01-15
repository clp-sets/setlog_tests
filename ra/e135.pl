use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Subgoal taken from tptp-set e583
% This goal shows that replace rules br7, br7bis, br8 and br8bis 
% might not be a good choice
% Discovered when testing ITP 5
pfun(F) & dom(F,A) & pfun(G) & dom(G,B) & ran(G,M2) & subset(M2,C) & pfun(H) & dom(H,C) & ran(H,M3) & subset(M3,A) & comp(G,H,M6) & comp(M6,F,M7) & bij(M7) & inv(G,_n1) & npfun(_n1)
,2000,_CONSTR,_RES).

get_time(Tend).

