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
% REL042+1.p => pfun
% This is an encoding assuming an heterogenous RA
comp(X0,X1,M5) & un(X1,M6,cp(U1,U2)) & disj(X1,M6) & comp(X0,M6,M7) & inters(M5,M7,{}) & npfun(X0) & subset(X0,cp(U3,U1))

,2000,_CONSTR,_RES).

get_time(Tend).

