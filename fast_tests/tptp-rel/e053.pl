use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% not in TPTP
% definition of partial function used in REL042+1.p
% the definition is wrong (see e048)
% this definition doesn't imply the pfun constraint
% REL042+1.p <= pfun
% This is an encoding assuming an homogenous RA
pfun(X0) & comp(X0,X1,M5) & un(X1,M6,cp(U,U)) & disj(X1,M6) & comp(X0,M6,M7) & ninters(M5,M7,{}) 

,2000,_CONSTR,_RES).

get_time(Tend).

