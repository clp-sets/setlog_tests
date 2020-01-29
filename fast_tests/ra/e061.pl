use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Idempotence as the consequence of reflexivity and transitivity
% same domain and range
% Kammüller can't prove it automatically with Isabelle/HOL 
comp(N2,R,R) & id(A,N2) & subset(N2,R) & comp(R,R,N) & subset(N,R) & N neq R

,2000,_CONSTR,_RES).

get_time(Tend).

%subset(R,cp(A,A)) & id(A,N2) & subset(N2,R) & comp(R,R,N) & subset(N,R) & N neq R

% subset(R,cp(A,A)) & id(A,M2) & subset(M2,R) & comp(R,R,M) & subset(M,R) & M neq R

% R = {[K3,K2],[K31,K21],[K32,K22]/K1} & comp(R,R,M) & subset(R,cp(A,A)) & id(A,M2) & subset(M2,R) & subset(M,R) & nsubset(R,M)

% subset(M2,R) & comp(R,R,M) & subset(M,R) & nsubset(R,M) & id(A,M2) & subset(R,cp(A,A))

