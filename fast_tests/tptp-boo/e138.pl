use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO038-1.p
% DN-1 is a single axiom for Boolean algebra (bool)
% dn1 axiom
un(A,B,M1) & un(M1,M2,{{}}) & disj(M1,M2) & un(M2,C,M3) & un(M3,M4,{{}}) & disj(M3,M4) & un(C,D,M5) & un(M5,M6,{{}}) & disj(M5,M6) & un(C,M7,{{}}) & disj(C,M7) & un(M7,M6,M8) & un(M8,M13,{{}}) & disj(M8,M13) & un(A,M13,M9) & un(M9,M10,{{}}) & disj(M9,M10) & un(M4,M10,M11) & un(M11,M12,{{}}) & disj(M11,M12) & M12 neq C

,2000,_CONSTR,_RES).

get_time(Tend).

