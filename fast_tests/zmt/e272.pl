use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% unitInBij 1
id(B,N1) & inv({[N4,N5]},N2) & comp(N2,{[N4,N5]},N3) & subset(N1,N3) & pfun({[N4,N5]}) & dom({[N4,N5]},A) & A = {N4} & B = {N5}
,2000,_CONSTR,_RES).

get_time(Tend).

