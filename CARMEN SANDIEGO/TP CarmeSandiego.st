!classDefinition: #DetectiveTest category: #'TP CarmeSandiego'!
TestCase subclass: #DetectiveTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:16:43'!
test001DetectiveTieneLimiteDeTiempoParaResolverElCaso
	
	| sherlock |
	sherlock _ Detective new.
	
	sherlock recibeTiempo: 200 * hour.
	
	Assert that: sherlock horasRestantes isEqualTo: 200 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:38:08'!
test002DetectiveClasicoTardaDiesHorasEnViajarYDosHorasEnInterrogar

		| clasico1 |
	clasico1 _ Clasico new.
		
		Assert that: clasico1 tardanzaEnViajar isEqualTo: 10 * hour.
		Assert that: clasico1 tardanzaEnInterrogar isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:39:15'!
test003DetectiveInterpolTardaOchoHorasEnViajarYDosHorasEnInterrogar

		| interpol1 |
	interpol1 _ Interpol new.
		
		Assert that: interpol1 tardanzaEnViajar isEqualTo: 8 * hour.
		Assert that: interpol1 tardanzaEnInterrogar isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:40:29'!
test004DetectivePersuasivoTardaDiezHorasEnViajarYUnaHorasEnInterrogar

		| persuasivo1 |
	persuasivo1 _ Persuasivo new.
		
		Assert that: persuasivo1 tardanzaEnViajar isEqualTo: 10 * hour.
		Assert that: persuasivo1 tardanzaEnInterrogar isEqualTo: 1 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:39:33'!
test005DetectiveTieneListaDePaises

		| interpol1 pais1 pais2 |
	interpol1 _ Interpol new.
		pais1 _ Pais new.
		pais2 _ Pais new.
		
		interpol1 agregarPais: pais1.
		interpol1 agregarPais: pais2.
		
		Assert that: interpol1 listaDePaises size isEqualTo: 2! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 10:52:21'!
test006DetectiveCambiaSuUbicacion

		| detective1 pais1 |
		
	detective1 _ Detective new.
		pais1 _ Pais new.
		
		detective1 cambiarUbicacion: pais1.
		
		Assert that: detective1 ubicacion isEqualTo: pais1.
		
		! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:53:24'!
test007CuandoClasicoViajaRestaTiempo

		
		
	| detective1 pais1 |
	detective1 _ Clasico new.
		pais1 _ Pais new.
		
		detective1 recibeTiempo: 20 * hour.
		detective1 viaja: pais1.
		
		Assert that: detective1 ubicacion isEqualTo: pais1.
		Assert that: detective1 horasRestantes isEqualTo: 10 * hour.
		
		! !


!classDefinition: #PaisesTest category: #'TP CarmeSandiego'!
TestCase subclass: #PaisesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'l 11/14/2018 16:32:41'!
test001UnPaisTieneUnObjeto
	
	| argentina |
	argentina _ Pais new.
	
	Assert that: argentina tieneObjetoDeValor isEqualTo: True.
	! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 15:52:58'!
test002AUnPaisSeLeRobaUnObjeto
	| temp1 |
	temp1 _ Pais new.
	temp1 esRobado.
	Assert
		that: temp1 tieneObjetoDeValor
		isEqualTo: False.! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:22:13'!
test003PaisSabeSusPaisesLimitrofes

		| pais1 pais2 |
	pais1 _ Pais new.
	pais2 _ Pais new.
	
		pais1 agregarPaisLimitrofe: pais2.
		
		Assert that: pais1 paisesLimitrofes isEqualTo: (Set with: pais2 )! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:25:56'!
test004PaisSabeEncontrarUnPaisLimitrofe

		| pais1 pais2 |
	pais1 _ Pais new.
	pais2 _ Pais new.
	
		pais1 agregarPaisLimitrofe: pais2.
		
		Assert isTrue: (pais1 tieneDePaisLimitrofeA: pais2) ! !


!classDefinition: #SospechosoTest category: #'TP CarmeSandiego'!
TestCase subclass: #SospechosoTest
	instanceVariableNames: 'marron ondulado blanco negro relleno femenino baja'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 12:02:14'!
test001SospechosoConCaracteristicasFisicas

	| temp1 |
	temp1 _ Sospechoso
		colorDeOjos: marron
		formaDeCabello: ondulado
		colorDeCabello: blanco
		colorDeTez: negro
		contexturaFisica: relleno
		sexo: femenino
		altura: baja.
	Assert
		that: temp1 colorDeOjos
		isEqualTo: marron.
	Assert
		that: temp1 formaDeCabello
		isEqualTo: ondulado.
	Assert
		that: temp1 colorDeCabello
		isEqualTo: blanco.
	Assert
		that: temp1 colorDeTez
		isEqualTo: negro.
	Assert
		that: temp1 contexturaFisica
		isEqualTo: relleno.
	Assert
		that: temp1 sexo
		isEqualTo: femenino.
	Assert
		that: temp1 altura
		isEqualTo: baja.! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 12:02:32'!
test002SospechosoRobaUnObjetoDeValorDeUnPais

	| temp1 argentina |
	temp1 _ Sospechoso
		colorDeOjos: marron
		formaDeCabello: ondulado
		colorDeCabello: blanco
		colorDeTez: negro
		contexturaFisica: relleno
		sexo: femenino
		altura: baja.	
	argentina _ Pais new.
	
	temp1 roba: argentina.
	
	Assert that: argentina tieneObjetoDeValor isEqualTo: False.
	Assert that: temp1 esLadron isEqualTo: True.
	! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 14:53:48'!
test003SospechosoTieneUnaListaDePaises

		| pais1 pais2 pais3 pais4 ladron |
		
		pais1 _ Pais new.
		pais2 _ Pais new.
		pais3 _ Pais new.
		pais4 _ Pais new.
		
		ladron _ Sospechoso new.
	
	
	

	! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 14:52:08'!
test004SospechosoViajaAUnPais

	| ladron argentina |
	
	ladron _ Sospechoso
		colorDeOjos: marron
		formaDeCabello: ondulado
		colorDeCabello: blanco
		colorDeTez: negro
		contexturaFisica: relleno
		sexo: femenino
		altura: baja.	
	argentina _ Pais new.
	
	ladron viajaA: argentina.
	
	Assert that: ladron ubicacionActual isEqualTo: argentina  "revisar ubicacion sin inicializar"
	
	
	

	! !


!classDefinition: #Detective category: #'TP CarmeSandiego'!
Object subclass: #Detective
	instanceVariableNames: 'horasRestantes tardanzaEnViajar tardanzaEnInterrogar listaDeSospechosos ubicacion listaDePaises argentina'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:30:01'!
agregarPais: unPais

	listaDePaises add: unPais! !

!Detective methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 10:52:48'!
cambiarUbicacion: aPais 
	ubicacion _ aPais! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 17:43:15'!
cantidadDeSospechosos
	^listaDeSospechosos size! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:15:48'!
horasRestantes
	^horasRestantes! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:23:50'!
listaDePaises
	
	^listaDePaises! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 17:40:25'!
listaDeSospechosos
	^listaDeSospechosos! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:16:14'!
recibeTiempo: unaCantidadDeTiempoEnHoras
	horasRestantes _ unaCantidadDeTiempoEnHoras ! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:32:43'!
tardanzaEnInterrogar
	^tardanzaEnInterrogar! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 16:29:58'!
tardanzaEnViajar
	^ tardanzaEnViajar! !

!Detective methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:20:04'!
ubicacion

	^ubicacion! !

!Detective methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:27:56'!
viaja: unPais

		(self ubicacion tieneDePaisLimitrofeA: unPais) ifTrue: [self horasRestantes - 7 * hour] ifFalse:[self horasRestantes - self tardanzaEnViajar]! !


!classDefinition: #Clasico category: #'TP CarmeSandiego'!
Detective subclass: #Clasico
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Clasico methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 14:43:44'!
initialize 
	tardanzaEnViajar _ 10 * hour.
	tardanzaEnInterrogar _ 2 * hour.
	listaDeSospechosos _ Set new.
	listaDePaises _ Set new.
	"argentina _ Pais new.
	ubicacion _ argentina."! !


!classDefinition: #Interpol category: #'TP CarmeSandiego'!
Detective subclass: #Interpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Interpol methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:40:47'!
agregarPais: aPais 
	listaDePaises add: aPais! !

!Interpol methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:34:23'!
initialize 
	tardanzaEnViajar _ 8 * hour.
	tardanzaEnInterrogar _ 2 * hour.
	listaDePaises _ Set new.
	listaDeSospechosos _ Set new.
	! !


!classDefinition: #Persuasivo category: #'TP CarmeSandiego'!
Detective subclass: #Persuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Persuasivo methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:34:32'!
initialize 
	tardanzaEnViajar _ 10 * hour.
	tardanzaEnInterrogar _ 1 * hour.
	listaDeSospechosos _ Set new.
	listaDePaises _ Set new.! !


!classDefinition: #Pais category: #'TP CarmeSandiego'!
Object subclass: #Pais
	instanceVariableNames: 'tieneObjetoDeValor paisesLimitrofes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Pais methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:22:12'!
agregarPaisLimitrofe: aPais 
	paisesLimitrofes add: aPais! !

!Pais methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 10:49:45'!
esRobado
	self tieneObjetoDeValor: False.! !

!Pais methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:09:48'!
initialize
	tieneObjetoDeValor  _ True.
	paisesLimitrofes _ Set new.! !

!Pais methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 18:13:10'!
paisesLimitrofes
	^paisesLimitrofes! !

!Pais methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 11:26:51'!
tieneDePaisLimitrofeA: unPais
	^self paisesLimitrofes includes: unPais! !

!Pais methodsFor: 'as yet unclassified' stamp: 'l 11/14/2018 16:15:24'!
tieneObjetoDeValor
	^tieneObjetoDeValor! !

!Pais methodsFor: 'as yet unclassified' stamp: 'l 11/14/2018 16:18:41'!
tieneObjetoDeValor: unBooleano
	
	tieneObjetoDeValor _ unBooleano! !


!classDefinition: #Sospechoso category: #'TP CarmeSandiego'!
Object subclass: #Sospechoso
	instanceVariableNames: 'colorDeOjos formaDeCabello colorDeCabello colorDeTez contexturaFisica sexo altura esLadron ubicacionActual'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmeSandiego'!

!Sospechoso methodsFor: 'as yet unclassified'!
altura
	^ altura.! !

!Sospechoso methodsFor: 'as yet unclassified'!
colorDeCabello
	^ colorDeCabello.! !

!Sospechoso methodsFor: 'as yet unclassified'!
colorDeOjos
	^ colorDeOjos.! !

!Sospechoso methodsFor: 'as yet unclassified'!
colorDeOjos: arg1 formaDeCabello: arg2 colorDeCabello: arg3 colorDeTez: arg4 contexturaFisica: arg5 sexo: arg6 altura: arg7
	colorDeOjos _ arg1.
	formaDeCabello _ arg2.
	colorDeCabello _ arg3.
	colorDeTez _ arg4.
	contexturaFisica _ arg5.
	sexo _ arg6.
	altura _ arg7.! !

!Sospechoso methodsFor: 'as yet unclassified'!
colorDeTez
	^ colorDeTez.! !

!Sospechoso methodsFor: 'as yet unclassified'!
contexturaFisica
	^ contexturaFisica.! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'l 11/14/2018 18:33:05'!
convertirseEnLadron
	esLadron _ True! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 15:54:53'!
esLadron
	^esLadron! !

!Sospechoso methodsFor: 'as yet unclassified'!
formaDeCabello
	^ formaDeCabello.! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 15:54:12'!
initialize
	esLadron _ False! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'sddd 11/21/2018 15:52:59'!
roba: unPais
	self convertirseEnLadron.
	unPais esRobado.! !

!Sospechoso methodsFor: 'as yet unclassified'!
sexo
	^ sexo.! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 14:44:37'!
ubicacionActual
	^ubicacionActual! !

!Sospechoso methodsFor: 'as yet unclassified' stamp: 'l 11/23/2018 14:45:01'!
viajaA: aPais 
	ubicacionActual _ aPais! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: #'TP CarmeSandiego'!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'as yet unclassified'!
colorDeOjos: arg1 formaDeCabello: arg2 colorDeCabello: arg3 colorDeTez: arg4 contexturaFisica: arg5 sexo: arg6 altura: arg7
	^ self new
		colorDeOjos: arg1
		formaDeCabello: arg2
		colorDeCabello: arg3
		colorDeTez: arg4
		contexturaFisica: arg5
		sexo: arg6
		altura: arg7.! !
