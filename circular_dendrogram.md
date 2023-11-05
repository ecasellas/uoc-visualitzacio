---
layout: page
title: Circular dendrogram
---

Segona tècnica per a la segona PAC.

### Característiques

**Nom**: Circular dendrogram

**Origen**: Té el seu origen cap al 1900 en el camp de la biologia per analitzar les relacions entre diferents espècies basades en les seves similituds o trets característics. Concretament, és Pearson qui l'introdueix analitzant diverses fulles d'arbres de diferents espècies o la variació entre característiques de les fulles de diferents arbres de la mateixa espècie. Cal dir, que l'evolució d'aquest tipus de visualització va molt lligada al desenvolupament de les tècniques de classificació jeràrquica.

Captura https://royalsocietypublishing.org/doi/epdf/10.1098/rsta.1901.0020

**Descripció i funcionament**: Aquesta visualització permet representar una jerarquia entre les dades, acostuma a tenir forma d’arbre i mostra la relació entre els diversos elements d’un conjunt de dades a partir de branques. Els últims elements de la relació s’anomenen fulles i, la resta, nodes. Cada node, a excepció dels darrers, té altres nodes associats i això permet escollir nodes en diversos punts de l'arbre i veure'n els associats. En el cas que ens ocupa el dendrograma es circular, fet que permet ocupar millor l’espai.

**Exemples d'aplicació**:

- Anàlisi d'algoritmes de classificació jeràrquica.
- Taxonomia.
- Exploració de dades i anàlisi de relacions.

### Tipus de dades

Crec que és important distingir les dades amb les quals es pot representar la gràfica i de les que s’hi poden aplicar metodologies que resultaran en relacions entre dades. Per a fer-ne la representació es necessiten dades que estiguin connectades entre elles, és a dir, que cada registre representi un node, del qual tingui altres nodes. Que finalment estaran connectats per les branques.

### Representació per a la PAC

En aquest cas he optat per una representació jeràrquica Catalunya/Comarca/Municipis, però reduint les dades a només tres comarques per facilitar-ne la visualització.

Les dades s'han extret de l'[IDESCAT](https://www.idescat.cat/), concretament d'[aquí](https://www.idescat.cat/indicadors/?id=aec&n=15903).

![Circular-dendrogram](https://github.com/ecasellas/uoc-visualitzacio/tree/main/circular_dendrogram/circular_dendrogram.png)

El codi d'aquesta figura s'ha realitzat mitjançant [R](https://www.r-project.org/) i es pot trobar a [dendrogram.R](https://github.com/ecasellas/uoc-visualitzacio/tree/main/circular_dendrogram/dendrogram.R)