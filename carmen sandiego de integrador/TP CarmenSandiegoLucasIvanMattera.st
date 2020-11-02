!classDefinition: #BaseDeDatosTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #BaseDeDatosTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:23:58'!
setUp
	factory _ FactoryTestObject new.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:53:01'!
test001BaseDeDatosTieneUnDiccionarioDePistasObtenidas
	| base dicctionarioDePistas |
	base _ BaseDeDatos new.
	dicctionarioDePistas _ Dictionary new.
	dicctionarioDePistas
		at: #uno
		put: '1'.
	dicctionarioDePistas
		at: #dos
		put: '2'.
	base agregarPistas: dicctionarioDePistas.
	Assert
		that: base pistasObtenidas size
		isEqualTo: 2.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:53:38'!
test002BaseDeDatosTieneUnaListaDeSospechosos
	| base |
	base _ BaseDeDatos new.
	base conSospechosos:
		{'sospec1'. 'sospect2'. 'sospect3'}.
	Assert
		that: base listaDeSospechosos size
		isEqualTo: 3.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:54:12'!
test003BaseDeDatosSeCreaConUnaListaDeSospechosos
	| base |
	base _ BaseDeDatos conSospechosos:
		{'sospec1'. 'sospect2'. 'sospect3'}.
	Assert
		that: base listaDeSospechosos size
		isEqualTo: 3.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:24:34'!
test004BaseDeDatosTieneUnaListaDePaises
	factory baseDeDatos conListaDePaises:
		{'pais1'. 'pais2'. 'pais3'}.
	Assert
		that: factory baseDeDatos listaDePaises size
		isEqualTo: 3.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:55:06'!
test005BaseDeDatosSeCreaConUnaListaDePaises
	| base |
	base _ BaseDeDatos
		conSospechosos:
			{'sosp1'. 'sosp2'}
		conPaises:
			{'pais1'. 'pais2'. 'pais3'}.
	Assert
		that: base listaDePaises size
		isEqualTo: 3.! !

!BaseDeDatosTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:55:36'!
test006CuandoBaseDeDatosComparaRasgosFisicosDeSospechosoFiltraLaListaDeSospechosos
	| diccionarioDePistas |
	diccionarioDePistas _ Dictionary new.
	diccionarioDePistas
		at: #sexo
		put: 'masculino'.
	factory baseDeDatos agregarPistas: diccionarioDePistas.
	factory baseDeDatos compararRasgosFisicosDelSospechoso.
	Assert
		that: factory baseDeDatos listaDeSospechosos size
		isEqualTo: 2.! !


!classDefinition: #DetectiveTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #DetectiveTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:28:34'!
setUp
	factory _ FactoryTestObject new.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:56:37'!
test002DetectiveClasicoTardaDiesHorasEnViajarYDosHorasEnInterrogar
	| detClasico |
	detClasico _ Clasico new.
	Assert
		that: detClasico tardanzaEnViajar
		isEqualTo: 10 * hour.
	Assert
		that: detClasico tardanzaEnInterrogar
		isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:56:54'!
test003DetectiveInterpolTardaOchoHorasEnViajarYDosHorasEnInterrogar
	| detInterpol |
	detInterpol _ Interpol new.
	Assert
		that: detInterpol tardanzaEnViajar
		isEqualTo: 8 * hour.
	Assert
		that: detInterpol tardanzaEnInterrogar
		isEqualTo: 2 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:57:06'!
test004DetectivePersuasivoTardaDiezHorasEnViajarYUnaHorasEnInterrogar
	| detPersuasivo |
	detPersuasivo _ Persuasivo new.
	Assert
		that: detPersuasivo tardanzaEnViajar
		isEqualTo: 10 * hour.
	Assert
		that: detPersuasivo tardanzaEnInterrogar
		isEqualTo: 1 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:57:37'!
test005DetectiveTieneListaDePaisesGuardadaEnSuBaseDeDatos
	| detInterpol pais1 pais2 |
	detInterpol _ Interpol new.
	pais1 _ Pais new.
	pais2 _ Pais new.
	factory baseDeDatos conListaDePaises:
		{pais1. pais2}.
	detInterpol conBaseDeDatos: factory baseDeDatos.
	Assert
		that: detInterpol baseDeDatos listaDePaises size
		isEqualTo: 2.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:58:04'!
test006DetectiveCambiaSuUbicacion
	| detective pais |
	detective _ Detective new.
	pais _ Pais new.
	detective cambiarUbicacion: pais.
	Assert
		that: detective ubicacion
		isEqualTo: pais.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:58:54'!
test006ZElDetectiveTomaUbicacionDelPaisQueFueRobado
	| detClasico |
	factory sospechoso1 roba: factory chile.
	detClasico _ Clasico new.
	detClasico conBaseDeDatos: factory baseDeDatos.
	detClasico iniciaEnPaisRobado: factory baseDeDatos.
	Assert
		that: detClasico ubicacion
		isEqualTo: factory chile.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:29:20'!
test007CuandoClasicoViajaRestaTiempo
	factory detectiveClasico cambiarUbicacion: factory argentina.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico
		viaja: factory canada
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 10 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:29:30'!
test008CuandoClasicoViajaCambiaUbicacion
	factory detectiveClasico cambiarUbicacion: factory argentina.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico
		viaja: factory canada
		en: factory partida.
	Assert
		that: factory detectiveClasico ubicacion
		isEqualTo: factory canada.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:29:36'!
test009CuandoClasicoViajaAPaisLimitrofeRestaSieteHoras
	factory detectiveClasico cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico
		viaja: factory chile
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:29:44'!
test010CuandoInterpolViajaAPaisLimitrofeRestaSieteHorasYCambiaUbicacion
	factory detectiveInterpol cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveInterpol
		viaja: factory chile
		en: factory partida.
	Assert
		that: factory detectiveInterpol ubicacion
		isEqualTo: factory chile.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:29:57'!
test011CuandoPersuasivoViajaAPaisLimitrofeRestaSieteHoras
	factory detectivePersuasivo cambiarUbicacion: factory argentina.
	factory argentina agregarPaisLimitrofe: factory chile.
	factory partida tiempoTotal: 20 * hour.
	factory detectivePersuasivo
		viaja: factory chile
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:30:05'!
test012CuandoInterpolViajaRestaOchoHoras
	factory detectiveInterpol cambiarUbicacion: factory argentina.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveInterpol
		viaja: factory peru
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 12 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:03:23'!
test013DetectiveTieneUnaBaseDeDatos
	| detective base |
	detective _ Detective new.
	base _ BaseDeDatos new.
	detective conBaseDeDatos: base.
	Assert
		that: detective baseDeDatos
		isEqualTo: base.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:03:36'!
test014DetectiveSeCreaConUnaBaseDeDatos
	| base |
	base _ BaseDeDatos new.
	factory detectiveClasico conBaseDeDatos: base.
	Assert
		that: factory detectiveClasico baseDeDatos
		isEqualTo: base.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:03:47'!
test015CuandoElDetectiveInterrogaUnTestigoLaPistaSeGuardaEnLaBaseDeDatos
	| base |
	base _ BaseDeDatos new.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico conBaseDeDatos: base.
	factory detectiveClasico
		interrogaPorRasgoFisico: factory testigoCanada1
		en: factory partida.
	Assert
		that: base pistasObtenidas size
		isEqualTo: 1.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:04:00'!
test016CuandoElDetectiveInterrogaUnTestigoLaPistaSeGuardaEnLaBaseDeDatosDelDetective
	| base |
	base _ BaseDeDatos new.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico conBaseDeDatos: base.
	factory detectiveClasico
		interrogaPorRasgoFisico: factory testigoCanada3
		en: factory partida.
	Assert
		that: base pistasObtenidas size
		isEqualTo: 1.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:04:11'!
test017CuandoElDetectiveClasicoInterrogaSeDescuentanDosHorasDeDelTiempoRestante
	| base |
	base _ BaseDeDatos new.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico conBaseDeDatos: base.
	factory detectiveClasico
		interrogaPorRasgoFisico: factory testigoCanada3
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 18 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:04:25'!
test018CuandoElDetectivePersuasivoInterrogaSeDescuentaUnaHoraDelTiempoRestante
	| base |
	base _ BaseDeDatos new.
	factory partida tiempoTotal: 20 * hour.
	factory detectivePersuasivo conBaseDeDatos: base.
	factory detectivePersuasivo
		interrogaPorRasgoFisico: factory testigoCanada3
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 19 * hour.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:31:03'!
test019CuandoElDetectiveSeQuedaSienTiempoPierdeLaPartida
	factory partida tiempoTotal: 10 * hour.
	factory detectiveClasico
		viaja: factory chile
		en: factory partida.
	Assert isTrue: (factory detectiveClasico perdioLaPartida: factory partida).! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:05:11'!
test020DetectiveInterrogaATestigoSinPista
	| testigo |
	testigo _ Testigo new.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico
		interrogaPorRasgoFisico: testigo
		en: factory partida.
	Assert
		that: factory detectiveClasico pistasRecolectadas size
		isEqualTo: 0.! !

!DetectiveTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:06:56'!
test021DetectiveInterrogaATestigoPorPistaDePais
	| testigo |
	testigo _ Testigo new.
	testigo guardarPaises:
		{factory peru. factory canada}.
	factory sospechoso2 trayectoriaDeViaje:
		{factory canada}.
	testigo tomaPistaPaisVerdaderaOFalsaDe: factory sospechoso2.
	factory partida tiempoTotal: 20 * hour.
	factory detectiveClasico
		interrogaPorPaisA: testigo
		en: factory partida.
	Assert isTrue:
		({factory canada. factory peru} includes: factory detectiveClasico pistaDePais).! !


!classDefinition: #OrdenDeArrestoTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #OrdenDeArrestoTest
	instanceVariableNames: 'factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!OrdenDeArrestoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:35:30'!
setUp
	factory _ FactoryTestObject new.! !

!OrdenDeArrestoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 17:11:59'!
test001UnaOrdenDeArrestoPuedeSerImpresaEnUnArchivo
	| orden stream|
	orden _ OrdenDeArresto new.
	stream _ ReadWriteStream on: ''.
	orden imprimirCaracteristicasFisicasEn: stream usando: factory baseDeDatos .
	
	Assert that: stream isEqualTo: (ReadWriteStream with: 'colorDePelo: marron	formaDelPelo: liso	colorDeOjos: marron	colorDePiel: moreno	contexturaFisica: normal	altura: media	sexo: masculino	').! !


!classDefinition: #PaisesTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #PaisesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:08:13'!
test001UnPaisTieneUnObjeto
	| pais |
	pais _ Pais new.
	Assert
		that: pais tieneObjetoDeValor
		isEqualTo: true.! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:08:25'!
test002AUnPaisSeLeRobaUnObjeto
	| pais |
	pais _ Pais new.
	pais esRobado.
	Assert
		that: pais tieneObjetoDeValor
		isEqualTo: false.! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:09:14'!
test003PaisSabeSusPaisesLimitrofes
	| argentina chile |
	argentina _ Pais new.
	chile _ Pais new.
	argentina agregarPaisLimitrofe: chile.
	Assert
		that: argentina paisesLimitrofes
		isEqualTo: (Set with: chile).! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:09:42'!
test004PaisSabeEncontrarUnPaisLimitrofe
	| argentina chile |
	argentina _ Pais new.
	chile _ Pais new.
	argentina agregarPaisLimitrofe: chile.
	Assert isTrue: (argentina tieneDePaisLimitrofeA: chile).! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:10:14'!
test005UnPaisTieneUnTestigo
	| canada chile |
	canada _ Pais new.
	chile _ Testigo new.
	canada conTestigos:
		{chile}.
	Assert
		that: canada testigos size
		isEqualTo: 1.! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:11:19'!
test006UnPaisTieneTresTestigos
	| canada testigo2 testigo3 testigo4 |
	canada _ Pais new.
	testigo2 _ Testigo new.
	testigo3 _ Testigo new.
	testigo4 _ Testigo new.
	canada conTestigos:
		{testigo2. testigo3. testigo4}.
	Assert
		that: canada testigos size
		isEqualTo: 3.! !

!PaisesTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:12:11'!
test007UnPaisTieneTresTestigosCuandoSeCrea
	| testigo1 testigo2 testigo3 pais |
	testigo1 _ Testigo new.
	testigo2 _ Testigo new.
	testigo3 _ Testigo new.
	pais _ Pais conTestigos:
		{testigo1. testigo2. testigo3}.
	Assert
		that: pais testigos size
		isEqualTo: 3.! !


!classDefinition: #PartidaTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #PartidaTest
	instanceVariableNames: 'partida factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:39:21'!
setUp
	factory _ FactoryTestObject new.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:39:24'!
test001unaPartidaTieneTiempoLimiteParaQueSeResuelvaElCaso
	factory partida tiempoTotal: 200 * hour.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 200 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:39:30'!
test002CuandoDetectiveClasicoInterrogaLaPartidaDescuentaDosHoras
	factory partida recibeTiempo: 10 * hour.
	factory detectiveClasico conBaseDeDatos: factory baseDeDatos.
	factory detectiveClasico
		interrogaPorRasgoFisico: factory testigoCanada3
		en: factory partida.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 8 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:39:34'!
test003LaPartidaDescuentaUnaHoraDeInterrogarPorDetectivePersuasivo
	factory partida tiempoTotal: 10 * hour.
	factory partida descontarTiempoDeInterrogarA: factory detectivePersuasivo.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 9 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:13:58'!
test004LaPartidaDescuentaDosHorasDeInterrogarPorDetectiveInterpol
	| detInterpol |
	detInterpol _ Interpol new.
	factory partida tiempoTotal: 10 * hour.
	factory partida descontarTiempoDeInterrogarA: detInterpol.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 8 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:14:14'!
test005LaPartidaDescuentaDiezHorasDeViajarPorDetectiveClasico
	| detClasico |
	detClasico _ Clasico new.
	factory partida tiempoTotal: 20 * hour.
	factory partida descontarTiempoDeViajeA: detClasico.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 10 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:15:24'!
test006LaPartidaDescuenta7HorasPorViajeAPaisLimitrofe
	| detClasico canada chile |
	detClasico _ Clasico new.
	canada _ Pais new.
	chile _ Pais new.
	canada agregarPaisLimitrofe: chile.
	factory partida tiempoTotal: 20 * hour.
	detClasico cambiarUbicacion: canada.
	factory partida
		descontarTiempoDeViajeA: detClasico
		hacia: chile.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:15:56'!
test007CuandoPersuasivoViajaAPaisLimitrofeLaPartidaDescuenta7Horas
	| detPersuasivo canada chile |
	detPersuasivo _ Persuasivo new.
	canada _ Pais new.
	chile _ Pais new.
	canada agregarPaisLimitrofe: chile.
	factory partida tiempoTotal: 20 * hour.
	detPersuasivo cambiarUbicacion: canada.
	factory partida
		descontarTiempoDeViajeA: detPersuasivo
		hacia: chile.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:16:46'!
test008LaPartidaDescuenta7HorasAInterpolPorViajarAPaisLimitrofe
	| detInterpol canada chile |
	detInterpol _ Interpol new.
	canada _ Pais new.
	chile _ Pais new.
	canada agregarPaisLimitrofe: chile.
	factory partida tiempoTotal: 20 * hour.
	detInterpol cambiarUbicacion: canada.
	factory partida
		descontarTiempoDeViajeA: detInterpol
		hacia: chile.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 13 * hour.! !

!PartidaTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:40:03'!
test009LaPartidaNoRestaMenosDeCeroHoras
	factory partida tiempoTotal: 1 * hour.
	factory partida restarHoras: 2 * hour.
	Assert
		that: factory partida horasRestantes
		isEqualTo: 0 * hour.! !


!classDefinition: #SospechosoTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #SospechosoTest
	instanceVariableNames: 'caracteristicas1 sospechoso1 factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:41:51'!
setUp
	factory _ FactoryTestObject new.! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:17:47'!
test0001SospechosoTieneCaracteristicasFisicas
	| suspect |
	suspect _ Sospechoso new.
	suspect conCaracteristicas: factory caracteristicas2.
	Assert
		that: suspect caracteristicasFisicas
		isEqualTo: factory caracteristicas2.! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:19:08'!
test001SospechosoSeCreaConCaracteristicasFisicas
	| suspect |
	suspect _ Sospechoso conCaracteristicas: factory caracteristicas1.
	Assert
		that: suspect caracteristicasFisicas
		isEqualTo: factory caracteristicas1.! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:42:01'!
test002SospechosoRobaUnObjetoDeValorDeUnPaisYSeConvierteEnLadron
	factory sospechoso1 roba: factory argentina.
	Assert
		that: factory sospechoso1 esLadron
		isEqualTo: False.! !

!SospechosoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:42:04'!
test003SospechosoTieneUnaTrayectoriaDeViaje
	factory sospechoso1 trayectoriaDeViaje:
		{factory argentina. factory peru. factory chile. factory peru}.
	Assert
		that: factory sospechoso1 trayectoriaDeViaje
		isEqualTo:
			{factory canada. factory argentina. factory peru. factory chile. factory peru} asOrderedCollection.! !


!classDefinition: #TestigoTest category: #'TP CarmenSandiegoLucasIvanMattera'!
TestCase subclass: #TestigoTest
	instanceVariableNames: 'caracteristicas1 sospechoso1 factory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:44:09'!
setUp
	factory _ FactoryTestObject new.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:20:08'!
test001TestigoTienePistas
	| testigo |
	testigo _ Testigo new.
	testigo pistas add: #unaPista -> 'pista'.
	Assert
		that: testigo pistas size
		isEqualTo: 1.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:20:23'!
test002TestigoTomaUnaPistaAleatoriaDeSospechoso
	| testigo |
	testigo _ Testigo new.
	testigo agregarPistaDeRasgoFisico: factory sospechoso1.
	Assert
		that: testigo pistas size
		isEqualTo: 1.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:20:58'!
test003TestigoTomaUnaPistaAleatoriaDeSospechosoUnaDeterminadaCantidadDeVeces
	| testigo |
	testigo _ Testigo new.
	testigo
		conUnaCantidadDePistas: 2
		deSospechoso: factory sospechoso1.
	Assert
		that: testigo pistas size
		isEqualTo: 2.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:44:26'!
test004TestigoTomaDosPistasDelSospechosoQuePasóPorSuPais
	factory sospechoso1 trayectoriaDeViaje:
		{factory chile}.
	Assert
		that: factory testigoChile1 pistas size
		isEqualTo: 2.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:22:27'!
test005TestigoSeGuardaUnPais
	| chile testigo |
	testigo _ Testigo new.
	chile _ Pais new.
	testigo guardaPais: chile.
	Assert
		that: testigo pais
		isEqualTo: chile.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:23:02'!
test006CuandoPaisSeCreaTestigoConoceElPaisAlQuePertenece
	| chile testigo |
	testigo _ Testigo new.
	chile _ Pais conTestigos:
		{testigo}.
	Assert
		that: testigo pais
		isEqualTo: chile.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:23:23'!
test007TestigoTieneUnaPistaDePais
	| testigo |
	testigo _ Testigo new.
	testigo
		conUnaCantidadDePistas: 0
		deSospechoso: factory sospechoso2.
	factory sospechoso2 trayectoriaDeViaje:
		{factory argentina. factory peru. factory chile}.
	testigo agregarPistaVerdaderaDePaisDe: factory sospechoso2.
	Assert
		that: testigo pistaPais
		isNotEqualTo: factory chile.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:24:18'!
test008TestigoEntregaUnaPistaFalsaDeUnPais
	| testigo |
	testigo _ Testigo new.
	testigo guardarPaises:
		{factory argentina. factory chile. factory canada. factory peru}.
	factory sospechoso2 trayectoriaDeViaje:
		{factory argentina. factory chile}.
	testigo agregarPistaFalseDePaisDe: factory sospechoso2.
	Assert
		that: testigo pistaPais
		isNotEqualTo: factory chile.
	Assert
		that: testigo pistaPais
		isNotEqualTo: factory argentina.! !

!TestigoTest methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 15:25:14'!
test009TestigoDaUnaPistaDePaisAleatoriamenteFalsaOVerdadera
	| testigo |
	testigo _ Testigo new.
	testigo guardarPaises:
		{factory canada. factory peru}.
	factory sospechoso2 trayectoriaDeViaje:
		{factory peru}.
	testigo agregarPistaFalseDePaisDe: factory sospechoso2.
	Assert
		that: testigo pistaPais
		isNotEqualTo: factory chile.
	Assert
		that: testigo pistaPais
		isNotEqualTo: factory argentina.! !


!classDefinition: #BaseDeDatos category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #BaseDeDatos
	instanceVariableNames: 'pistasObtenidas listaDePaises listaDeSospechosos pistaDePais'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!BaseDeDatos methodsFor: 'initialize' stamp: 'asd 12/19/2018 14:23:06'!
initialize
	pistasObtenidas _ Dictionary new.
	listaDePaises _ Set new.
	listaDeSospechosos _ Set new.! !


!BaseDeDatos methodsFor: 'imprimir orden' stamp: 'asd 12/19/2018 17:05:52'!
imprimirOrdenEn: unaOrdenDeArresto

		unaOrdenDeArresto imprimirDesde: self.! !


!BaseDeDatos methodsFor: 'pais' stamp: 'asd 12/19/2018 14:54:36'!
conListaDePaises: unArregloDePaises
	listaDePaises _ unArregloDePaises.! !

!BaseDeDatos methodsFor: 'pais' stamp: 'asd 12/19/2018 14:23:10'!
listaDePaises
	^ listaDePaises.! !


!BaseDeDatos methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:56:07'!
compararRasgosFisicosDelSospechoso
	listaDeSospechosos _ listaDeSospechosos select: [ :sospechoso |
		sospechoso coincideCaracteristicaCon: self pistasObtenidas ].! !

!BaseDeDatos methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:53:57'!
conSospechosos: unArrayDeSospechosos
	listaDeSospechosos addAll: unArrayDeSospechosos.! !

!BaseDeDatos methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 16:18:08'!
conSospechosos: unArrayDeSospechosos conListaDePaises: unArrayDePaises
	listaDeSospechosos _ unArrayDeSospechosos.
	listaDePaises _ unArrayDePaises.! !

!BaseDeDatos methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:23:14'!
listaDeSospechosos
	^ listaDeSospechosos.! !


!BaseDeDatos methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:53:22'!
agregarPistas: unDiccionarioDePistas
	pistasObtenidas addAll: unDiccionarioDePistas.! !

!BaseDeDatos methodsFor: 'pistas' stamp: 'asd 12/19/2018 16:16:32'!
agregarPistasPaisDe: unTestigo
	pistaDePais _ unTestigo.! !

!BaseDeDatos methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:23:21'!
pistaDePais
	^ pistaDePais.! !

!BaseDeDatos methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:23:25'!
pistasObtenidas
	^ pistasObtenidas.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BaseDeDatos class' category: #'TP CarmenSandiegoLucasIvanMattera'!
BaseDeDatos class
	instanceVariableNames: ''!

!BaseDeDatos class methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:46:55'!
conSospechosos: arg1
	^ self new conSospechosos: arg1.! !

!BaseDeDatos class methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 16:17:32'!
conSospechosos: unArrayDeSospechosos conPaises: unArrayDePaises
	^ self new
		conSospechosos: unArrayDeSospechosos
		conListaDePaises: unArrayDePaises.! !


!classDefinition: #Detective category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #Detective
	instanceVariableNames: 'tardanzaEnViajar tardanzaEnInterrogar ubicacion baseDeDatos pistaDePais tomaTodasLasPistas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Detective methodsFor: 'brinda su informacion' stamp: 'asd 12/19/2018 14:25:25'!
baseDeDatos
	^ baseDeDatos.! !

!Detective methodsFor: 'brinda su informacion' stamp: 'asd 12/19/2018 14:26:36'!
ubicacion
	^ ubicacion.! !


!Detective methodsFor: 'tiempos' stamp: 'asd 12/19/2018 14:26:21'!
tardanzaEnInterrogar
	^ tardanzaEnInterrogar.! !

!Detective methodsFor: 'tiempos' stamp: 'asd 12/19/2018 14:26:26'!
tardanzaEnViajar
	^ tardanzaEnViajar.! !


!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 14:58:39'!
cambiarUbicacion: unPais
	ubicacion _ unPais.! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 15:13:14'!
conBaseDeDatos: unaBaseDeDatos
	baseDeDatos _ unaBaseDeDatos.! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 16:55:26'!
emitirOrdenDeArresto: unaOrdenDeArresto
  
	self baseDeDatos imprimirOrdenEn: unaOrdenDeArresto! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 15:00:00'!
iniciaEnPaisRobado: unaBaseDeDatos
	ubicacion _ unaBaseDeDatos listaDePaises detect: [ :pais |
		pais tieneObjetoDeValor = false ].! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 16:16:32'!
interrogaPorPaisA: unTestigo en: unaPartida
	baseDeDatos agregarPistasPaisDe: unTestigo pistaPais.
	unaPartida restarHoras: self tardanzaEnInterrogar.! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 16:20:43'!
interrogaPorRasgoFisico: unTestigo en: unaPartida
	| testigo |
	testigo _ unTestigo pistas.
	self tomaTodasLasPistas ifFalse: [
		testigo _ testigo select: [ :pista |
			pista = testigo anyOne ]].
	baseDeDatos agregarPistas: testigo.
	baseDeDatos compararRasgosFisicosDelSospechoso.
	unaPartida restarHoras: self tardanzaEnInterrogar.! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 15:04:45'!
perdioLaPartida: unaPartida
	^ unaPartida horasRestantes = (0 * hour).! !

!Detective methodsFor: 'acciones' stamp: 'asd 12/19/2018 16:19:02'!
viaja: unPais en: unaPartida
	unaPartida
		descontarTiempoDeViajeA: self
		hacia: unPais.! !


!Detective methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:26:18'!
pistaDePais
	^ self baseDeDatos pistaDePais.! !

!Detective methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:27:13'!
pistasRecolectadas
	^ self baseDeDatos pistasObtenidas.! !

!Detective methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:26:31'!
tomaTodasLasPistas
	^ tomaTodasLasPistas.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Detective class' category: #'TP CarmenSandiegoLucasIvanMattera'!
Detective class
	instanceVariableNames: ''!

!Detective class methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:47:55'!
conBaseDeDatos: arg1
	^ self new conBaseDeDatos: arg1.! !


!classDefinition: #Clasico category: #'TP CarmenSandiegoLucasIvanMattera'!
Detective subclass: #Clasico
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Clasico methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:27:52'!
initialize
	tardanzaEnViajar _ 10 * hour.
	tardanzaEnInterrogar _ 2 * hour.
	tomaTodasLasPistas _ false.! !


!classDefinition: #Interpol category: #'TP CarmenSandiegoLucasIvanMattera'!
Detective subclass: #Interpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Interpol methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:28:01'!
initialize
	tardanzaEnViajar _ 8 * hour.
	tardanzaEnInterrogar _ 2 * hour.
	tomaTodasLasPistas _ false.! !


!classDefinition: #Persuasivo category: #'TP CarmenSandiegoLucasIvanMattera'!
Detective subclass: #Persuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Persuasivo methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:28:11'!
initialize
	tardanzaEnViajar _ 10 * hour.
	tardanzaEnInterrogar _ 1 * hour.
	tomaTodasLasPistas _ true.! !


!classDefinition: #FactoryTestObject category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #FactoryTestObject
	instanceVariableNames: 'detectiveClasico detectiveInterpol detectivePersuasivo partida argentina peru chile canada caracteristicas1 sospechoso1 caracteristicas2 sospechoso2 caracteristicas3 sospechoso4 testigoArg1 testigoArg2 testigoArg3 testigoPeru1 testigoPeru2 testigoPeru3 testigoChile1 testigoChile2 testigoChile3 testigoCanada1 testigoCanada2 testigoCanada3 caracteristica2 caracteristica3 sospechoso3 baseDeDatos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!FactoryTestObject methodsFor: 'initialize' stamp: 'asd 12/19/2018 14:33:01'!
initialize
	caracteristicas1 _ Dictionary new.
	caracteristicas1
		at: #colorDePelo
		put: 'marron'.
	caracteristicas1
		at: #colorDeOjos
		put: 'marron'.
	caracteristicas1
		at: #colorDePiel
		put: 'moreno'.
	caracteristicas1
		at: #altura
		put: 'media'.
	caracteristicas1
		at: #formaDelPelo
		put: 'liso'.
	caracteristicas1
		at: #sexo
		put: 'masculino'.
	caracteristicas1
		at: #contexturaFisica
		put: 'normal'.
	caracteristicas2 _ Dictionary new.
	caracteristicas2
		at: #colorDePelo
		put: 'rubio'.
	caracteristicas2
		at: #colorDeOjos
		put: 'celeste'.
	caracteristicas2
		at: #colorDePiel
		put: 'blanco'.
	caracteristicas2
		at: #altura
		put: 'alto'.
	caracteristicas2
		at: #formaDelPelo
		put: 'ondulado'.
	caracteristicas2
		at: #sexo
		put: 'masculino'.
	caracteristicas2
		at: #contexturaFisica
		put: 'flaco'.
	caracteristicas3 _ Dictionary new.
	caracteristicas3
		at: #colorDePelo
		put: 'negro'.
	caracteristicas3
		at: #colorDeOjos
		put: 'verde'.
	caracteristicas3
		at: #colorDePiel
		put: 'blanco'.
	caracteristicas3
		at: #altura
		put: 'media'.
	caracteristicas3
		at: #formaDelPelo
		put: 'liso'.
	caracteristicas3
		at: #sexo
		put: 'femenino'.
	caracteristicas3
		at: #contexturaFisica
		put: 'relleno'.
	partida _ Partida new.
	sospechoso1 _ Sospechoso conCaracteristicas: caracteristicas1.
	sospechoso2 _ Sospechoso conCaracteristicas: caracteristicas2.
	sospechoso3 _ Sospechoso conCaracteristicas: caracteristicas3.
	testigoArg1 _ Testigo new.
	testigoArg2 _ Testigo new.
	testigoArg3 _ Testigo new.
	testigoChile1 _ Testigo new.
	testigoChile2 _ Testigo new.
	testigoChile3 _ Testigo new.
	testigoPeru1 _ Testigo new.
	testigoPeru2 _ Testigo new.
	testigoPeru3 _ Testigo new.
	testigoCanada1 _ Testigo new.
	testigoCanada2 _ Testigo new.
	testigoCanada3 _ Testigo new.
	argentina _ Pais conTestigos:
		{testigoArg1. testigoArg2. testigoArg3}.
	canada _ Pais conTestigos:
		{testigoCanada1. testigoCanada2. testigoCanada3}.
	chile _ Pais conTestigos:
		{testigoChile1. testigoChile3. testigoChile2}.
	peru _ Pais conTestigos:
		{testigoPeru1. testigoPeru2. testigoPeru3}.
	baseDeDatos _ BaseDeDatos
		conSospechosos:
			{sospechoso1. sospechoso2. sospechoso3}
		conPaises:
			{argentina. chile. peru. canada}.
	detectiveClasico _ Clasico conBaseDeDatos: baseDeDatos.
	detectivePersuasivo _ Persuasivo conBaseDeDatos: baseDeDatos.
	detectiveInterpol _ Interpol conBaseDeDatos: baseDeDatos.
	sospechoso1 trayectoriaDeViaje:
		{canada}.
	sospechoso1 roba: canada.
	detectiveClasico iniciaEnPaisRobado: detectiveClasico baseDeDatos.
	detectivePersuasivo iniciaEnPaisRobado: detectivePersuasivo baseDeDatos.
	detectiveInterpol iniciaEnPaisRobado: detectiveInterpol baseDeDatos.! !


!FactoryTestObject methodsFor: 'partida' stamp: 'asd 12/19/2018 14:33:29'!
partida
	^ partida.! !


!FactoryTestObject methodsFor: 'base de datos' stamp: 'asd 12/19/2018 14:32:20'!
baseDeDatos
	^ baseDeDatos.! !


!FactoryTestObject methodsFor: 'pais' stamp: 'asd 12/19/2018 14:32:17'!
argentina
	^ argentina.! !

!FactoryTestObject methodsFor: 'pais' stamp: 'asd 12/19/2018 14:32:24'!
canada
	^ canada.! !

!FactoryTestObject methodsFor: 'pais' stamp: 'asd 12/19/2018 14:32:44'!
chile
	^ chile.! !

!FactoryTestObject methodsFor: 'pais' stamp: 'asd 12/19/2018 14:33:33'!
peru
	^ peru.! !


!FactoryTestObject methodsFor: 'caracteristica' stamp: 'asd 12/19/2018 14:32:28'!
caracteristicas1
	^ caracteristicas1.! !

!FactoryTestObject methodsFor: 'caracteristica' stamp: 'asd 12/19/2018 14:32:32'!
caracteristicas2
	^ caracteristica2.! !

!FactoryTestObject methodsFor: 'caracteristica' stamp: 'asd 12/19/2018 14:32:38'!
caracteristicas3
	^ caracteristica3.! !


!FactoryTestObject methodsFor: 'detective' stamp: 'asd 12/19/2018 14:32:48'!
detectiveClasico
	^ detectiveClasico.! !

!FactoryTestObject methodsFor: 'detective' stamp: 'asd 12/19/2018 14:32:52'!
detectiveInterpol
	^ detectiveInterpol.! !

!FactoryTestObject methodsFor: 'detective' stamp: 'asd 12/19/2018 14:32:55'!
detectivePersuasivo
	^ detectivePersuasivo.! !


!FactoryTestObject methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:33:36'!
sospechoso1
	^ sospechoso1.! !

!FactoryTestObject methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:33:40'!
sospechoso2
	^ sospechoso2.! !

!FactoryTestObject methodsFor: 'sospechoso' stamp: 'asd 12/19/2018 14:33:44'!
sospechoso3
	^ sospechoso3.! !


!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:33:48'!
testigoArg1
	^ testigoArg1.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:33:52'!
testigoArg2
	^ testigoArg2.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:33:56'!
testigoArg3
	^ testigoArg3.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:01'!
testigoCanada1
	^ testigoCanada1.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:05'!
testigoCanada2
	^ testigoCanada2.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:08'!
testigoCanada3
	^ testigoCanada3.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:11'!
testigoChile1
	^ testigoChile1.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:15'!
testigoChile2
	^ testigoChile2.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:18'!
testigoChile3
	^ testigoChile3.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:25'!
testigoPeru1
	^ testigoPeru1.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:29'!
testigoPeru2
	^ testigoPeru2.! !

!FactoryTestObject methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:34:32'!
testigoPeru3
	^ testigoPeru3.! !


!classDefinition: #OrdenDeArresto category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #OrdenDeArresto
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!OrdenDeArresto methodsFor: 'imprimir orden' stamp: 'asd 12/19/2018 17:02:42'!
imprimirCaracteristicasFisicasEn: stream usando: unaBaseDeDatos
	stream
		nextPutAll: 'colorDePelo:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #colorDePelo value);
		tab;
		nextPutAll: 'formaDelPelo:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #formaDelPelo value);
		tab;
		nextPutAll: 'colorDeOjos:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #colorDeOjos value);
		tab;
		nextPutAll: 'colorDePiel:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #colorDePiel value);
		tab;
		nextPutAll: 'contexturaFisica:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #contexturaFisica value);
		tab;
		nextPutAll: 'altura:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #altura value);
		tab;
		nextPutAll: 'sexo:';
		space;
		nextPutAll: (unaBaseDeDatos listaDeSospechosos first caracteristicasFisicas at: #sexo value);
		tab.! !

!OrdenDeArresto methodsFor: 'imprimir orden' stamp: 'asd 12/19/2018 17:05:52'!
imprimirDesde: unaBaseDeDatos

		'./ordenDeArresto.txt' asFileEntry writeStreamDo: [ :stream |
		self imprimirCaracteristicasFisicasEn: stream usando: unaBaseDeDatos ].
	! !


!classDefinition: #Pais category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #Pais
	instanceVariableNames: 'tieneObjetoDeValor paisesLimitrofes testigos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Pais methodsFor: 'initialize' stamp: 'asd 12/19/2018 14:36:14'!
initialize
	tieneObjetoDeValor _ true.
	paisesLimitrofes _ Set new.
	testigos _ Set new.! !


!Pais methodsFor: 'testigos' stamp: 'asd 12/19/2018 15:10:34'!
conTestigos: unArregloDeTestigos
	testigos addAll: unArregloDeTestigos.
	unArregloDeTestigos do: [ :testigo |
		testigo guardaPais: self ].! !

!Pais methodsFor: 'testigos' stamp: 'asd 12/19/2018 14:36:21'!
testigos
	^ testigos.! !

!Pais methodsFor: 'testigos' stamp: 'asd 12/19/2018 16:21:56'!
testigosVieronSospechoso: unSospechoso
	self testigos do: [ :testigo |
		testigo
			conUnaCantidadDePistas: 2
			deSospechoso: unSospechoso ].! !


!Pais methodsFor: 'pais limitrofe' stamp: 'asd 12/19/2018 15:01:19'!
agregarPaisLimitrofe: unPais
	paisesLimitrofes add: unPais.! !

!Pais methodsFor: 'pais limitrofe' stamp: 'asd 12/19/2018 14:36:18'!
paisesLimitrofes
	^ paisesLimitrofes.! !

!Pais methodsFor: 'pais limitrofe' stamp: 'asd 12/19/2018 14:36:45'!
tiempoAPaisLimitrofe
	^ 7 * hour.! !

!Pais methodsFor: 'pais limitrofe' stamp: 'asd 12/19/2018 15:09:56'!
tieneDePaisLimitrofeA: unPais
	^ self paisesLimitrofes includes: unPais.! !


!Pais methodsFor: 'objeto de valor' stamp: 'asd 12/19/2018 14:36:08'!
esRobado
	self tieneObjetoDeValor: false.! !

!Pais methodsFor: 'objeto de valor' stamp: 'asd 12/19/2018 14:36:51'!
tieneObjetoDeValor
	^ tieneObjetoDeValor.! !

!Pais methodsFor: 'objeto de valor' stamp: 'asd 12/19/2018 15:08:38'!
tieneObjetoDeValor: unBooleano
	tieneObjetoDeValor _ unBooleano.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pais class' category: #'TP CarmenSandiegoLucasIvanMattera'!
Pais class
	instanceVariableNames: ''!

!Pais class methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:48:43'!
conTestigos: arg1
	^ self new conTestigos: arg1.! !


!classDefinition: #Partida category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #Partida
	instanceVariableNames: 'horasRestantes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 15:13:38'!
descontarTiempoDeInterrogarA: unDetective
	self restarHoras: unDetective tardanzaEnInterrogar.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 15:15:16'!
descontarTiempoDeViajeA: unDetective
	self restarHoras: unDetective tardanzaEnViajar.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 16:22:47'!
descontarTiempoDeViajeA: unDetective hacia: unPais
	(unDetective ubicacion tieneDePaisLimitrofeA: unPais)
		ifTrue: [ self restarHoras: unPais tiempoAPaisLimitrofe ]
		ifFalse: [ self descontarTiempoDeViajeA: unDetective ].
	unDetective cambiarUbicacion: unPais.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 14:38:48'!
horasRestantes
	^ horasRestantes.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 15:13:00'!
recibeTiempo: unaCantDeTiempoEnHoras
	horasRestantes _ unaCantDeTiempoEnHoras.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 15:17:13'!
restarHoras: unaCantDeTiempoEnHoras
	horasRestantes _ 0 * hour max: horasRestantes - unaCantDeTiempoEnHoras.! !

!Partida methodsFor: 'tiempo' stamp: 'asd 12/19/2018 15:00:30'!
tiempoTotal: unaCantidadDeTiempoEnHoras
	horasRestantes _ unaCantidadDeTiempoEnHoras.! !


!classDefinition: #Sospechoso category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #Sospechoso
	instanceVariableNames: 'trayectoriaDeViaje caracteristicasFisicas esLadron'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Sospechoso methodsFor: 'initialize' stamp: 'asd 12/19/2018 14:41:10'!
initialize
	esLadron _ False.
	trayectoriaDeViaje _ OrderedCollection new.! !


!Sospechoso methodsFor: 'delincuente' stamp: 'asd 12/19/2018 14:41:06'!
esLadron
	^ esLadron.! !

!Sospechoso methodsFor: 'delincuente' stamp: 'asd 12/19/2018 14:59:16'!
roba: unPais
	unPais esRobado.! !


!Sospechoso methodsFor: 'viaje' stamp: 'asd 12/19/2018 14:41:17'!
trayectoriaDeViaje
	^ trayectoriaDeViaje.! !

!Sospechoso methodsFor: 'viaje' stamp: 'asd 12/19/2018 15:06:18'!
trayectoriaDeViaje: unArregloDePises
	trayectoriaDeViaje addAll: unArregloDePises.
	unArregloDePises do: [ :pais |
		pais testigosVieronSospechoso: self ].! !


!Sospechoso methodsFor: 'caracteristicas' stamp: 'asd 12/19/2018 14:40:50'!
caracteristicasFisicas
	^ caracteristicasFisicas.! !

!Sospechoso methodsFor: 'caracteristicas' stamp: 'asd 12/19/2018 16:24:58'!
coincideCaracteristicaCon: unaListaDePistas
	^ unaListaDePistas associations anySatisfy: [ :pista |
		self caracteristicasFisicas associations includes: pista ].! !

!Sospechoso methodsFor: 'caracteristicas' stamp: 'asd 12/19/2018 15:18:39'!
conCaracteristicas: unDiccionarioDeCaracteristicas
	caracteristicasFisicas _ unDiccionarioDeCaracteristicas.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: #'TP CarmenSandiegoLucasIvanMattera'!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'as yet unclassified' stamp: 'asd 12/19/2018 14:48:55'!
conCaracteristicas: arg1
	^ self new conCaracteristicas: arg1.! !


!classDefinition: #Testigo category: #'TP CarmenSandiegoLucasIvanMattera'!
Object subclass: #Testigo
	instanceVariableNames: 'pistas pistaPais pais paisesDelMundo pistaVerdadera pistaFalsa'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TP CarmenSandiegoLucasIvanMattera'!

!Testigo methodsFor: 'initialize' stamp: 'asd 12/19/2018 14:42:59'!
initialize
	pistas _ Dictionary new.! !


!Testigo methodsFor: 'pais' stamp: 'asd 12/19/2018 15:22:37'!
guardaPais: unPais
	pais _ unPais.! !

!Testigo methodsFor: 'pais' stamp: 'asd 12/19/2018 15:05:45'!
guardarPaises: unArregloDePaises
	paisesDelMundo _ unArregloDePaises.! !

!Testigo methodsFor: 'pais' stamp: 'asd 12/19/2018 14:43:03'!
pais
	^ pais.! !

!Testigo methodsFor: 'pais' stamp: 'asd 12/19/2018 14:43:07'!
paisesDelMundo
	^ paisesDelMundo.! !


!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 15:20:38'!
agregarPistaDeRasgoFisico: unSospechoso
	pistas add: (unSospechoso caracteristicasFisicas associations at: (1 to: unSospechoso caracteristicasFisicas size) atRandom).! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 15:24:51'!
agregarPistaFalseDePaisDe: unSospechoso
	pistaFalsa _ (self paisesDelMundo reject: [ :pais |
		unSospechoso trayectoriaDeViaje includes: pais ]) atRandom.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 15:24:03'!
agregarPistaVerdaderaDePaisDe: unSospechoso
	pistaVerdadera _ (unSospechoso trayectoriaDeViaje reject: [ :pais |
		pais = self pais ]) atRandom.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 15:21:29'!
conUnaCantidadDePistas: unaCantidadNumerica deSospechoso: unSospechoso
	| temp3 |
	temp3 _ unaCantidadNumerica.
	[ temp3 > 0 ] whileTrue: [
		self agregarPistaDeRasgoFisico: unSospechoso.
		temp3 _ temp3 - 1 ].! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:43:10'!
pistaFalsa
	^ pistaFalsa.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:43:13'!
pistaPais
	^ pistaPais.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:43:16'!
pistaVerdadera
	^ pistaVerdadera.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 14:43:20'!
pistas
	^ pistas.! !

!Testigo methodsFor: 'pistas' stamp: 'asd 12/19/2018 15:06:56'!
tomaPistaPaisVerdaderaOFalsaDe: unSospechoso
	self agregarPistaFalseDePaisDe: unSospechoso.
	self agregarPistaVerdaderaDePaisDe: unSospechoso.
	pistaPais _ {self pistaFalsa. self pistaVerdadera} atRandom.! !
