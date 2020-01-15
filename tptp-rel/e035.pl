use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL031+1.p
% Partial functions are closed under composition
% The direct encoding takes too long
% Direct encoding
% id(M1,M2) 
% & inv(X0,M3) & comp(M3,X0,M4) & subset(M4,M2) 
% & inv(X1,M5) & comp(M5,X1,M6) & subset(M6,M2) 
% & comp(X0,X1,M7) & inv(M7,M8) & comp(X0,X1,M9) & comp(M8,M9,M10) 
% & nsubset(M10,M2)
%
% instead an encoding using the pfun constraint works perfect:
pfun(X0) & pfun(X1) & comp(X0,X1,M1) & npfun(M1)
,2000,_CONSTR,_RES).

get_time(Tend).

