use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET390-6.p
% Composition alternate definition 4
comp(Xf,Yf,M1) & [U,V] in M1 & rimg(Yf,{U},M2) & domain(Xf,M2,V,M3) & [M3,V] nin cp(U,U) & subset(Xf,cp(U,U)) & subset(Yf,cp(U,U))

,2000,_CONSTR,_RES).

get_time(Tend).

