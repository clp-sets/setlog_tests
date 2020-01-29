use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET395-6.p
% Composition relates to image
comp(Xr,Yr,M1) & rimg(M1,X,M2) & rimg(Xr,X,M3) & nrimg(Yr,M3,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

