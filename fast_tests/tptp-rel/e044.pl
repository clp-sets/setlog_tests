use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL040+1.p
% Partial functions distribute over meet under sequential comp'n
% The direct encoding takes too long
% Direct encoding
% inv(X0,M1) & comp(M1,X0,M2) & id(M3,M4) & subset(M2,M4) 
% & inters(X1,X2,M5) & comp(X0,M5,M6) 
% & comp(X0,X1,M7) & comp(X0,X2,M8)  
% & ninters(M7,M8,M6)
%
% instead an encoding using the pfun constraint works perfect:
pfun(X0) & inters(X1,X2,M5) & comp(X0,M5,M6) & comp(X0,X1,M7) & comp(X0,X2,M8) & ninters(M7,M8,M6)

,2000,_CONSTR,_RES).

get_time(Tend).

