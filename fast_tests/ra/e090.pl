use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Höfner-Struth 2008 (29)
inv(X,IX) & inv(Y,IY) &
((inters(IX,Y,{}) & ninters(X,IY,{}))
 or
 (inters(X,IY,{}) & ninters(IX,Y,{}))
)
 
,2000,_CONSTR,_RES).

get_time(Tend).

