use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (17)
inv(X,IX) & inv(Y,IY) & 
((subset(X,Y) & nsubset(IX,IY)) or (nsubset(X,Y) & subset(IX,IY)))
 
,2000,_CONSTR,_RES).

get_time(Tend).

