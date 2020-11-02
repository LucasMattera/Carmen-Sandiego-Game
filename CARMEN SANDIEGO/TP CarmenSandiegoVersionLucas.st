!classDefinition: #DetectiveTest category: #'TP CarmenSandiegoVersionLucas'!
TestCase subclass: #DetectiveTest
	instanceVariableNames: 'detectiveClasico detectiveInterpol detectivePersuasivo argentina chile canada sospechoso1 marron ondulado blanco negro relleno masculino baja sospechoso2 lacio castanio delgado femenino media sospechoso3 verde pelado sospechoso4 azul corto normal factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoVersionLucas'!

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'L 12/1/2018 11:09:02'!
setUp

	factory _ TestObjects new.
	
	

	detectiveClasico _ Clasico new.
	detectiveInterpol _ Interpol new.
	detectivePersuasivo _ Persuasivo new.
	argentina _ Pais new.
	
	chile _ Pais new.
	canada _ Pais new.
	sospechoso1 _ Sospechoso
		colorDeOjos: marron
		formaDeCabello: ondulado
		colorDeCabello: blanco
		colorDeTez: negro
		contexturaFisica: relleno
		sexo: masculino
		altura: baja.
	sospechoso2 _ Sospechoso
		colorDeOjos: marron
		formaDeCabello: lacio
		colorDeCabello: castanio
		colorDeTez: negro
		contexturaFisica: delgado
		sexo: femenino
		altura: media.
	sospechoso3 _ Sospechoso
		colorDeOjos: verde
		formaDeCabello: pelado
		colorDeCabello: blanco
		colorDeTez: negro
		contexturaFisica: relleno
		sexo: masculino
		altura: media.
	sospechoso4 _ Sospechoso
		colorDeOjos: azul
		formaDeCabello: corto
		colorDeCabello: negro
		colorDeTez: blanco
		contexturaFisica: normal
		sexo: femenino
		altura: media.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'L 12/1/2018 11:10:50'!
test011CuandoInterpolViajaRestaOchoHorasYCambiaUbicacion
	| temp1 peru |
	temp1 _ Interpol new.
	peru _ factory peru.
	temp1 cambiarUbicacion: argentina.
	temp1 recibeTiempo: 20 * hour.
	temp1 viaja: peru.
	Assert
		that: temp1 ubicacion
		isEqualTo: peru.
	Assert
		that: temp1 horasRestantes
		isEqualTo: 12 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'L 12/1/2018 10:09:46'!
test100elDetectiveInterrogaUnTestigoConDosPistasDeRasgoFisico
	
	| temp1 temp2 temp3 |
	temp2 _ PistaRasgoFisico new.
	temp3 _ PistaRasgoFisico new.
	temp1 _ Testigo
		pista1: temp2
		pista2: temp3.
	detectiveClasico _ Clasico new.
	detectiveClasico interroga: temp1.
	Assert
		that: detectiveClasico pistas size
		isEqualTo: 1.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified'!
! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'L 12/1/2018 10:36:18'!
testNuevoDeInterrogacion

		detectiveClasico arrestarSospechoso ! !


!classDefinition: #PaisesTest category: #'TP CarmenSandiegoVersionLucas'!
TestCase subclass: #PaisesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoVersionLucas'!
!PaisesTest commentStamp: '<historical>' prior: 0!
nil!