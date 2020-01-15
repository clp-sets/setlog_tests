use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET388-6.p
% Composition alternate definition 2
comp(Xf,Yf,M1) & [U,V] in M1 & rimg(Xf,{U},M2) & domain(Yf,M2,V,M3) & [U,M3] nin cp(U,U) & subset(Xf,cp(U,U)) & subset(Yf,cp(U,U))


,2000,_CONSTR,_RES).

get_time(Tend).

