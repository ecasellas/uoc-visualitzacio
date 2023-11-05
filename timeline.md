---
layout: page
title: Timeline
---

Primera tècnica per a la segona PAC.

### Característiques

**Nom**: Timeline

**Origen**: En la tesi *Constructive Visualization: A token-based paradigm allowing to assemble dynamic visual representation for non-experts* d'[Huron (2015)](https://theses.hal.science/tel-02924469/) s'indica que una de les primeres *timeline* de les que es té constància és la feta per Joseph Priestley el 1765. En aquesta *timeline* hi mostrava els filòsofs més importants des del 600 aC fins l'any 0, i és la que mostrem a continuació.

![Primera-Timeline](https://www.researchgate.net/profile/Samuel-Huron/publication/278827040/figure/fig2/AS:614374695788545@1523489750341/First-timeline-charts-by-Joseph-Priestley-1765_W640.jpg "Figura 1. Timeline de Jospeh Priestley, 1765.")

**Descripció i funcionament**: Aquesta visualització permet representar una seqüència d'esdeveniments, ja sigui del passat o del futur. Amb ella es pot dotar de context uns fets o ordenar-los cronològicament a partir d'un eix que representa el temps, normalment horitzontal tot i que també pot ser vertical. A més, permet veure la durada dels esdeveniments i possibles solapaments, així com analitzar canvis i tendències al llarg del temps.

**Exemples d'aplicació**:

- Gestió d'un projecte mitjançant l'assignació de tasques a treballadors d'una empresa, diagrama de Gantt.
- Representar un workflow, que segueix diversos passos.
- Representar sèries temporals, com per exemple mostrar l'evolució del preu de l'energia al llarg del darrer mes.

### Tipus de dades

Poden ser qualitatives o quantitatives sempre que tinguin associades una cronologia, ja sigui en forma de pas o de data. Pel que fa a les dades quantitatives hi ha un mínim de dos registres per tal de poder traçar una línia, però no hi hauria màxim. En el cas de dades qualitatives, també seria recomanable que hi hagués més d'una categoria o element. En general, no presentaria un límit màxim de categories, però sí que un excés d'elements podria suposar una reducció de la llegibilitat o comprensió.

### Representació per a la PAC

En aquest cas he optat per una línia del temps amb els Papes de l'església catòlica des del primer pontificat iniciat el segle XX, el de Pius X, fins avui.

<iframe src="https://ecasellas.github.io/uoc-visualitzacio/timeline/timeline.html" frameborder="0" width="100%" height="520"></iframe>

El codi d'aquesta figura s'ha realitzat mitjançant [Google Charts](http://developers.google.com/chart/) i es pot trobar a [timeline.js](https://github.com/ecasellas/uoc-visualitzacio/tree/main/timeline)