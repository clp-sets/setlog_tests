use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B3 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
%
un(A,CA,cp(D,R)) & disj(A,CA) &
un(CA,B,CAB) &
un(CAB,CCAB,cp(D,R)) & disj(CAB,CCAB) &
un(B,CB,cp(D,R)) & disj(B,CB) &
un(CA,CB,CACB) &
un(CACB,CCACB,cp(D,R)) & disj(CACB,CCACB) &
nun(CCAB,CCACB,A)


,2000,_CONSTR,_RES).

get_time(Tend).

