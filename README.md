# HealthManager

## Functional Design

Només és permetrà l'accés a usuaris autoritzats.
Hi poden haver més d'un tipus d'usuaris, cada un amb funcionalitats diferents:

###### super

Pot donar hores
Gestionar clients
Gestionar les dades fiscals
Gestionar les fitxes dels clients
Pot donar d'alta nous massatgistes

###### Massatgista
Pot gestionar els clients
Gestionar les fitxes dels clients

####### Administrador
Pot donar d'alta nous massatgistes
Gestionar les dades fiscals

####### Secretari
Pot donar hores als clients
Gestionar clients

Tant l'aplicació desktop com la d'iOS tindran una base de dades local, que aniran sincronitzades a una base de dades idèntica que es trobarà situada en un servidor (inicialment local).

Quan les aplicacions detectin que està corrent a la mateixa xarxa que el servidor sincronitzaran automàticament les dades, de forma que sempre estaran sincronitzats.

Si quan s'esta en mode offline s'apliquen canvis a algun registre, s'haurà de marcar un flag conforme que les dades no estan sincronitzades, de forma que és farà un “merge” quan es tingui accés al servidor, i si detecta que hi ha hagut algun conflicte és generarà un flag i sortirà una alerta a l'aplicació, que s'haurà de gestionar.

És disposarà també d'una tablet, situada a la sala d'espera dels clients, que farà de host a una aplicació més simple.
Aquesta aplicació estarà sempre en mode fullscreen i s'executarà automàticament a l'iniciar el dispositiu host.
Aquesta app, normalment estarà en mode freeplay, on s'hi mostrarà imatges de la consulta i informació d'interès per al client.

Quan quedin 20 minuts per l'hora en la que el client vingui, mostrarà un missatge per pantalla que contindrà informació amb les dades del client, i els motius de la consulta que s'hagi apuntat el massatgista, seguit d'un petit formulari, on el client podrà detallar amb més detall el perquè de la seva visita. 

Si les dades inicials no estan completes pel motiu que sigui, l'usuari, si vol, haurà de completar-les.

Quan aquest ha completat el formulari i ha validat el seu contingut, s'actualitzaran les dades al servidor central, i, si es vol, des de l'aplicació principal es podrà accedir a les dades que ha introduït el client per tal de que el massatgista es pugui posar al dia de la situació.

