use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET343-6.p
% Image of intersection
%
% this doesn't seem to be a theorem
inters(Y,Z,M1) & rimg(Xr,M1,M2) & rimg2(Xr,Y,M3) & rimg2(Xr,Z,M4) & ninters(M3,M4,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

