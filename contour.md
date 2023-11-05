---
layout: page
title: Contour
---

Tercera tècnica per a la segona PAC.

### Característiques

**Nom**: Contour

**Origen**: Tal com es desprèn d'*Orígenes de la representación topográfica del terreno en algunos mapas hispanoamericanos del siglo XVI* de [Morato-Moreno, 2017](https://bage.age-geografia.es/ojs/index.php/bage/article/view/2414/2262) té l’origen en la necessitat de representar les profunditats subaquàtiques, ja sigui d'un llac, un oceà o un riu. Aquest darrer element és del primer que es té constància d’un mapa de contorn, concretament del riu Spaarne fet per Pieter Bruinsz el 1584. La imatge d’aquesta representació es mostra a continuació.

![Morato-bathimetry](https://raw.githubusercontent.com/ecasellas/uoc-visualitzacio/main/contour/Morato_bathimetry.png)

Imatge extreta de [Morato-Moreno, 2017](https://bage.age-geografia.es/ojs/index.php/bage/article/view/2414/2262) provinent de la Biblioteca de la Universitat d'Utrecht.

**Descripció i funcionament**: El contour plot representa una superfície en tres dimensions, dues corresponen a la posició o a les coordenades i la tercera fa referència al valor que pren aquesta determinada superfície en aquell punt. D’aquí se’n poden derivar els contorns que són línies que uneixen mateixos valors que es troben en diferents punts. Seria l’equivalent a un mapa de calor, però amb contorns i no colors que indiquin el valor.

**Exemples d'aplicació**:

- Mapes que mostren la topografia.
- Mapes relacionats amb variables meteorològiques: temperatura, humitat, i precipitació, entre moltes d'altres.
- Gràfiques que mostres la resposta d'una variable Z en funció d'altres dues variables (X i Y).

### Tipus de dades

Aquest tipus de visualització requereix de dades tridimensionals i que siguin contínues, per tal de poder traçar contorns per valors iguals. Han de ser, forçosament en aquest cas, variables quantitatives. Dues dimensions que representin localització o coordenades i la tercera els valors d’una variable per cada coordenada. Ara bé, els espais resultants entre dos contorns sí que pot tenir un caràcter qualitatiu.

### Representació per a la PAC

En aquest cas he optat per una representació d'un model digital d'elevació (DEM) corresponent a una zona dels Alps. Les dades s'han descarregat de l'Internation Centre for Tropical Agriculture ([CIAT](http://srtm.csi.cgiar.org)). 

![Contour](https://raw.githubusercontent.com/ecasellas/uoc-visualitzacio/main/contour/contour.png)

El codi d'aquesta figura s'ha realitzat mitjançant [R](https://www.r-project.org/) i es pot trobar a [contour.R](https://github.com/ecasellas/uoc-visualitzacio/tree/main/contour/contour.R)