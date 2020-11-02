!classDefinition: #DetectiveTest category: #'TP CarmenSandiegoVersionCamila'!
TestCase subclass: #DetectiveTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoVersionCamila'!

!DetectiveTest methodsFor: 'as yet unclassified'!
setUp
	factory _ FactoryTestObject new.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test001DetectiveTieneLimiteDeTiempoParaResolverElCaso
	factory detective recibeTiempo: 200 * hour.
	Assert
		that: factory detective horasRestantes
		isEqualTo: 200 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test002DetectiveClasicoTardaDiesHorasEnViajarYDosHorasEnInterrogar
	Assert
		that: factory detectiveClasico tardanzaEnViajar
		isEqualTo: 10 * hour.
	Assert
		that: factory detectiveClasico tardanzaEnInterrogar
		isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test003DetectiveInterpolTardaOchoHorasEnViajarYDosHorasEnInterrogar
	Assert
		that: factory detectiveInterpol tardanzaEnViajar
		isEqualTo: 8 * hour.
	Assert
		that: factory detectiveInterpol tardanzaEnInterrogar
		isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test004DetectivePersuasivoTardaDiezHorasEnViajarYUnaHorasEnInterrogar
	Assert
		that: factory detectivePersuasivo tardanzaEnViajar
		isEqualTo: 10 * hour.
	Assert
		that: factory detectivePersuasivo tardanzaEnInterrogar
		isEqualTo: 1 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test005DetectiveTieneListaDePaises
	factory detectiveInterpol agregarPais: factory argentina.
	factory detectiveInterpol agregarPais: factory canada.
	Assert
		that: factory detectiveInterpol listaDePaises size
		isEqualTo: 2.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test006DetectiveCambiaSuUbicacion
	factory detective cambiarUbicacion: factory argentina.
	Assert
		that: factory detective ubicacion
		isEqualTo: factory argentina.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test007CuandoClasicoViajaRestaTiempoYCambiaUbicacion
	factory detectiveClasico cambiarUbicacion: factory argentina.
	factory detectiveClasico recibeTiempo: 20 * hour.
	factory detectiveClasico viaja: factory peru.
	Assert
		that: factory detectiveClasico ubicacion
		isEqualTo: factory peru.
	Assert
		that: factory detectiveClasico horasRestantes
		isEqualTo: 10 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test008CuandoClasicoViajaAPaisLimitrofeRestaSieteHorasYCambiaUbicacion
	factory detectiveClasico cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory detectiveClasico recibeTiempo: 20 * hour.
	factory detectiveClasico viaja: factory chile.
	Assert
		that: factory detectiveClasico ubicacion
		isEqualTo: factory chile.
	Assert
		that: factory detectiveClasico horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test009CuandoPersuasivoViajaAPaisLimitrofeRestaSieteHorasYCambiaUbicacion
	factory detectivePersuasivo cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory detectivePersuasivo recibeTiempo: 20 * hour.
	factory detectivePersuasivo viaja: factory chile.
	Assert
		that: factory detectivePersuasivo ubicacion
		isEqualTo: factory chile.
	Assert
		that: factory detectivePersuasivo horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test010CuandoInterpolViajaAPaisLimitrofeRestaSieteHorasYCambiaUbicacion
	factory detectivePersuasivo cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory detectivePersuasivo recibeTiempo: 20 * hour.
	factory detectivePersuasivo viaja: factory chile.
	Assert
		that: factory detectivePersuasivo ubicacion
		isEqualTo: factory chile.
	Assert
		that: factory detectivePersuasivo horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test011CuandoInterpolViajaRestaOchoHorasYCambiaUbicacion
	factory detectiveInterpol cambiarUbicacion: factory argentina.
	factory detectiveInterpol recibeTiempo: 20 * hour.
	factory detectiveInterpol viaja: factory peru.
	Assert
		that: factory detectiveInterpol ubicacion
		isEqualTo: factory peru.
	Assert
		that: factory detectiveInterpol horasRestantes
		isEqualTo: 12 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test100elDetectiveInterrogaUnTestigo
	^ self.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
test101cuandoElDetectiveConsigueUnaPistaDelAspectoDelDelincuenteSeGuardaenUnaLista
	| temp1 |
	temp1 _ Testigo new.
	detectiveClasico conseguirPistaAspectoDe: temp1.! !

!DetectiveTest methodsFor: 'as yet unclassified'!
testIdeaDeInterrogacion
	| temp1 temp2 |
	temp2 tipo pais rasgoFisico.! !


!classDefinition: #PaisesTest category: #'TP CarmenSandiegoVersionCamila'!
TestCase subclass: #PaisesTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoVersionCamila'!
!PaisesTest commentStamp: '<historical>' prior: 0!
nil!