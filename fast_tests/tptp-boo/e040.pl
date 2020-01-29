use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO023-1.p
% Half of Padmanabhan's 6-basis with Pixley, part 1
inters(B,C,M1) & un(A,M1,M2) & un(A,B,M3) & un(A,C,M4) & ninters(M3,M4,M2)


,2000,_CONSTR,_RES).

get_time(Tend).

