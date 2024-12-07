% Solución en Prolog
% Aquí va el código.
vivenEn(alf,almagro).
vivenEn(juan,almagro).
vivenEn(nico,almagro).
vivenEn(julian,almagro).

vivenEn(vale,flores).
vivenEn(fer,flores).

viveEnUna(juan,casa(120)).
viveEnUna(nico,departamento(3,2)).
viveEnUna(alf,departamento(3,1)).
viveEnUna(julian,loft(2000)).
viveEnUna(vale,departamento(4,1)).
viveEnUna(fer,casa(110)).

seQuiereMudar(rocio,casa(90)).

persona(Persona):-
    vivenEn(Persona,_).


%PUNTO2


esCopada(casa(MetrosCuadrados)):-
    MetrosCuadrados > 100.

esCopada(departamento(Ambiente,_)):-
    Ambiente > 3.

esCopada(departamento(_,Banio)):-
    Banio > 1.

esCopada(loft(AnioDeConstruccion)):-
    AnioDeConstruccion > 2015. 

%%%%%%%%%%%%%%%%%%%%%%%%%%
%PUNTO 4

casaDe(juan,precio(150000)).
casaDe(nico,precio(80000)).
casaDe(alf,precio(75000)).
casaDe(julian,precio(140000)).
casaDe(vale,precio(95000)).
casaDe(fer,precio(60000)).

casaDe(juan,precio(150000)).

casa(juan).
casa(nico).
casa(alf).
casa(julian).
casa(vale).
casa(fer).

%%COMPRAR AL MENOS UNA CASA
comprarUnaCasa(CasaDePersona,Dinero,Sobrante):-
    %casa(CasaDePersona),
    %tasacionDeCasa(CasaDePersona,Valor),
    casaDe(CasaDePersona,precio(Valor)),
    Dinero > Valor,
    Sobrante is Dinero - Valor.

generarLista(Lista):-
    findall(casaDe(Persona,precio(Valor)),casaDe(Persona,precio(Valor)),Lista).
    
generarSubLista(SubLista):-
    generarLista(Lista),
    subLista1(Lista,SubLista),
    sum_list(SubLista,valor(casaDe(_,precio(Precio)),Precio)).
    



valor(casaDe(_,precio(Precio)),Precio).










subLista1([],[]).
subLista1([_|Cola],Sublista):-subLista1(Cola,Sublista).
subLista1([Cabeza|Cola],[Cabeza|Sublista]):-subLista1(Cola,Sublista).
