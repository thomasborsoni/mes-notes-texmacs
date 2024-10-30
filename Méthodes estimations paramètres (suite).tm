<TeXmacs|2.1.4>

<style|<tuple|generic|french>>

<\body>
  <doc-data|<doc-title|<with|color|dark orange|Méthodes d'estimation de
  paramètres (suite)>>>

  \;

  <\with|color|dark yellow>
    <section|<with|color|dark yellow|Moindres carrés>>

    <with|color|dark cyan|<subsection|Principe>>

    <\with|color|black>
      On compare des données expérimentales entachées d'erreurs de mesure à
      un modèle mathématique censé décrire ces données.

      On considère comme modèle théorique une famille de fonctions
      <math|f<around*|(|x;\<theta\>|)>> d'une ou plusieurs variables muettes
      <math|x>, indexées par un ou plusieurs paramètres <math|\<theta\>>
      inconnus. On résout alors le problème de minimsation

      <\equation>
        <below|argmin|\<theta\>> <big|sum><rsub|i=1><rsup|N><around*|(|y<rsub|i>-f<around*|(|x<rsub|i>;\<theta\>|)>|)><rsup|2>=<below|argmin|\<theta\>>
        <big|sum><rsub|i=1><rsup|N>r<rsub|i><around*|(|\<theta\>|)><rsup|2>.
      </equation>
    </with>

    <math|>
  </with>

  Si l'on dispose d'un estimation de l'écart-type <math|\<sigma\><rsub|i>> du
  bruit qui affecte chaque mesure <math|y<rsub|i>>, on l'utilise pour
  pondérer la contribution de la mesure au <math|\<chi\><rsup|2>>. La mesure
  aura d'autant plus de poids que son incertitude sera faible :

  <\equation>
    \<chi\><rsup|2><around*|(|\<theta\>|)>=<big|sum><rsub|i=1><rsup|N><around*|(|<frac|y<rsub|i>-f<around*|(|x<rsub|i>;\<theta\>|)>|\<sigma\><rsub|i>>|)><rsup|2>
  </equation>

  C'est un cas particulier d'une fonction de coût
  <math|J<around*|(|Y,X,\<theta\>|)>.>

  On va chercher alors un <with|font-shape|italic|estimateur>
  <math|<wide|\<theta\>|^>> et possiblement recourir à la méthode du
  <with|font-shape|italic|maximum de vraisemblance>.\ 

  <\with|color|dark cyan>
    <subsection|La régession linéaire>
  </with>

  La régression linéaire est le point de départ fondamental. Supposons que
  l'on cherche à ajuster une loi linéaire du type
  <math|y<rsub|i>=<with|font-series|bold|x><rsub|i><rsup|T><with|font-series|bold|\<beta\>>+\<varepsilon\>>
  sur des mesures indépendantes. On compte <math|n> mesures et <math|k>
  variables explicatives. On écrit alors la formulation matricielle

  <\equation*>
    <with|font-series|bold|Y>=<with|font-series|bold|X
    \<beta\>>+<with|font-series|bold|\<varepsilon\>>,
  </equation*>

  où <with|font-series||<math|<with|font-series|bold|Y>>,
  <math|<with|font-series|bold|X>>, <math|<with|font-series|bold|\<beta\>>>,
  <math|<with|font-series|bold|\<varepsilon\>>>> sont respectivement de
  dimension <math|n\<times\>1>, <math|n\<times\> k>, <math|k\<times\>1>,
  <math|n\<times\>1>. Dans la méthode, on suppose les
  <math|\<varepsilon\><rsub|i>> indépendants, i.i.d. de moyenne nulle et de
  variance <math|\<sigma\><rsup|2>>. Si l'on cherche alors à minimiser

  <\equation*>
    S<around*|(|\<beta\>|)>=\<\|\|\>Y-X \<beta\>\<\|\|\><rsup|2>,
  </equation*>

  on trouve que la solution de cette minimsation donne
  <with|font-series|bold|l'estimateur des moindres
  carré><with|font-series|bold|s>

  <\equation*>
    <wide|\<beta\>|^>=<around*|(|X<rsup|T>X|)><rsup|-1>X<rsup|T> Y.
  </equation*>

  <\with|color|dark blue>
    <subsubsection|Maximum de vraisemblance>
  </with>

  C'est une autre méthode pour estimer les paramètres d'un modèle, en
  cherchant à maximiser la probabilité (vraisemblance) d'observer les données
  avec le jeu de paramètres. Dans le cas de la régression linéaire avec des
  erreurs gaussiennes, on suppose que chaque <math|Y<rsub|i> suit une
  distribution normale conditionnelle> <math|Y<rsub|i><around*|\||X<rsub|i>\<sim\>
  <with|font|cal|N><around*|(|X<rsub|i><rsup|T>\<beta\>|\<nobracket\>>,\<sigma\><rsup|2>|)>>.
  La fonction de vraisemblance est alors

  <\equation*>
    L<around*|(|\<beta\>,\<sigma\><rsup|2><around*|\||Y|\<nobracket\>>|)>=<big|prod><rsub|i=1><rsup|N><frac|1|<sqrt|2
    \<pi\> \<sigma\><rsup|2>>> exp<around*|(|-<frac|<around*|(|y<rsub|i>-x<rsub|i><rsup|T>\<beta\>|)><rsup|2>|2
    \<sigma\><rsup|2>>|)>.
  </equation*>

  \ Maximiser <math|L> revient donc dans ce cas à minimiser la somme des
  carrés des résidus et correspond donc, dans ce cas gaussien, aux moindres
  carrés.

  Donnons un exemple de maximisation de la log-vraisemblance dans un cas
  non-gaussien. Pour des durées de vie ou attente, on utilisera souvent la
  distribution exponentielle. Si chaque <math|y<rsub|i> suit une distribution
  exponentielle de paramètre> <math|\<lambda\>>, la fonction de densité est

  <\equation*>
    p<around*|(|y;\<lambda\>|)>=\<lambda\> e<rsup|-\<lambda\>y>.
  </equation*>

  La log-vraisemblance est

  <\equation*>
    log L<around*|(|\<lambda\><around*|\||y<rsub|1>,\<ldots\>,y<rsub|N>|\<nobracket\>>|)>=N
    log<around*|(|\<lambda\>|)>-\<lambda\>
    <big|sum><rsub|i=1><rsup|N>y<rsub|i>.
  </equation*>

  Maximiser cette log-vraisemblance donne un estimateur pour
  <math|\<lambda\>>. Une analyse triviale montre que cet estimateur est donné
  par

  <\equation*>
    <wide|\<lambda\>|^>=<frac|1|N><big|sum><rsub|i=1><rsup|N>y<rsub|i>.
  </equation*>

  <\with|color|dark yellow>
    <section|<with|color|dark yellow|Optimisation globale et
    heuristique<resize|<with|color|red|>||||>>>

    <\with|color|black>
      On ira chercher du côté de cette optimisation quand la fonction de coût
      à optimiser est complexe, typiquement non différentiable, avec beaucoup
      de minima locaux ou sur un espace de grande dimension.

      <\with|color|dark cyan>
        <\subsection>
          Algorithme génétique
        </subsection>
      </with>
    </with>
  </with>

  L'<strong|algorithme génétique (AG)> est une méthode d'optimisation globale
  et heuristique inspirée par les principes de la sélection naturelle et de
  l'évolution biologique. Il fait partie des <strong|métaheuristiques>, des
  méthodes conçues pour trouver des solutions optimales ou quasi-optimales
  pour des problèmes complexes, souvent non linéaires, et difficiles à
  résoudre par des méthodes analytiques classiques.

  <subsection*|1. Principe de l'algorithme génétique>

  L'algorithme génétique repose sur le concept de l'évolution darwinienne.
  Dans ce cadre, une<nbsp><strong|population><nbsp>d'individus (solutions
  potentielles) évolue d'une génération à l'autre en sélectionnant les
  individus les plus adaptés, en les combinant et en les modifiant pour
  explorer progressivement l'espace des solutions. Voici les étapes
  principales :

  <\enumerate>
    <item><strong|Initialisation><nbsp>: On génère
    une<nbsp><strong|population initiale><nbsp>composée d'un ensemble de
    solutions candidates, souvent de manière aléatoire.

    <item><strong|Évaluation><nbsp>: Chaque individu de la population est
    évalué en fonction d'une<nbsp><strong|fonction de fitness><nbsp>(ou de
    coût) qui mesure la qualité de chaque solution par rapport à l'objectif à
    optimiser.

    <item><strong|Sélection><nbsp>: On sélectionne les individus qui seront
    parents pour la prochaine génération. Les individus ayant un meilleur
    score de fitness ont généralement une probabilité plus élevée d'être
    sélectionnés.

    <item><strong|Croisement (Crossover)><nbsp>: Deux individus ``parents''
    sélectionnés sont combinés pour produire un ou plusieurs ``enfants". Le
    croisement mélange les caractéristiques des parents afin de créer une
    nouvelle solution qui peut potentiellement être meilleure.

    <item><strong|Mutation><nbsp>: Avec une faible probabilité, les enfants
    subissent des modifications aléatoires pour introduire de la diversité
    dans la population. La mutation aide à explorer l'espace de recherche et
    évite le risque de convergence prématurée.

    <item><strong|Nouvelle génération><nbsp>: La population suivante est
    créée à partir des enfants générés. On réitère alors les étapes 2 à 5
    jusqu'à ce qu'un critère d'arrêt soit atteint (nombre de générations,
    convergence, ou qualité de la solution).
  </enumerate>

  <subsection*|2. Concepts clés de l'algorithme génétique>

  <\itemize>
    <item><strong|Chromosome><nbsp>: Représente une solution candidate codée
    sous une forme particulière (par exemple, un vecteur de bits ou de
    nombres).

    <item><strong|Population><nbsp>: Ensemble de solutions (chromosomes)
    présentes à chaque itération de l'algorithme.

    <item><strong|Fonction de fitness><nbsp>: Évalue la qualité d'une
    solution pour orienter l'évolution.

    <item><strong|Opérateurs génétiques><nbsp>: Les mécanismes de croisement
    et de mutation qui permettent de générer de nouvelles solutions.

    <item><strong|Sélection><nbsp>: Elle peut se faire de plusieurs façons
    (roulette, tournoi, rang, etc.) pour choisir les parents qui donneront
    naissance à la prochaine génération.
  </itemize>

  <subsection*|3. Avantages et inconvénients de l'algorithme génétique>

  <subsubsection*|Avantages>

  <\itemize>
    <item><strong|Optimisation globale><nbsp>: L'algorithme explore l'espace
    des solutions globalement, réduisant le risque de rester coincé dans un
    minimum local.

    <item><strong|Flexibilité><nbsp>: Peut s'appliquer à une large variété de
    problèmes sans nécessiter d'information préalable sur la structure du
    problème ou de calcul de gradient.

    <item><strong|Robustesse><nbsp>: Capable de gérer des fonctions de coût
    non différentiables, discontinues ou bruyantes.
  </itemize>

  <subsubsection*|Inconvénients>

  <\itemize>
    <item><strong|Temps de calcul><nbsp>: Les algorithmes génétiques peuvent
    être coûteux en calcul, surtout pour des populations et des nombres de
    générations élevés.

    <item><strong|Convergence lente><nbsp>: Les AG peuvent nécessiter de
    nombreuses générations pour approcher une solution optimale.

    <item><strong|Paramétrage><nbsp>: La performance dépend de nombreux
    hyperparamètres (taille de la population, taux de mutation, taux de
    croisement) qui nécessitent un réglage fin.
  </itemize>

  <subsection*|4. Applications de l'algorithme génétique>

  Les algorithmes génétiques sont appliqués dans de nombreux domaines,
  notamment :

  <\itemize>
    <item><strong|Optimisation combinatoire><nbsp>: Résolution de problèmes
    comme le voyageur de commerce (TSP) ou le problème d'affectation.

    <item><strong|Conception et ingénierie><nbsp>: Optimisation de
    structures, design de circuits électroniques.

    <item><strong|Apprentissage automatique><nbsp>: Sélection de
    caractéristiques, optimisation des hyperparamètres.

    <item><strong|Recherche et sciences de la vie><nbsp>: Bioinformatique,
    modélisation moléculaire, et optimisation de traitements.
  </itemize>

  <subsection*|5. Variantes et améliorations>

  L'algorithme génétique de base a donné lieu à plusieurs variantes et
  améliorations, comme :

  <\itemize>
    <item><strong|Algorithmes génétiques multi-objectifs><nbsp>(NSGA-II, par
    exemple) : Ils cherchent à optimiser plusieurs objectifs contradictoires.

    <item><strong|Algorithmes génétiques hybrides><nbsp>: Les AG peuvent être
    combinés avec d'autres méthodes, comme les algorithmes de recuit simulé
    ou les algorithmes de descente de gradient.

    <item><strong|Génétique différentielle><nbsp>: Une méthode similaire aux
    AG mais qui utilise des opérations de recombinaison et de mutation
    différentielles.
  </itemize>

  <subsection*|En résumé>

  L'algorithme génétique est un puissant outil d'optimisation heuristique
  global qui simule les mécanismes de sélection naturelle pour explorer
  efficacement l'espace des solutions. Bien que gourmand en calcul, il est
  particulièrement utile dans des contextes complexes où d'autres méthodes
  d'optimisation échouent.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Algorithme de colonies de fourmis
    </subsection>>

    L'<strong|algorithme de colonies de fourmis (Ant Colony Optimization,
    ACO)><nbsp>est une méthode d'optimisation heuristique inspirée par le
    comportement collectif des fourmis, qui utilisent des traces de
    phéromones pour trouver les chemins les plus courts entre leur nid et une
    source de nourriture. Créé dans les années 1990 par Marco Dorigo, cet
    algorithme est particulièrement efficace pour résoudre des problèmes
    combinatoires complexes, comme le<nbsp><strong|problème du voyageur de
    commerce (TSP)>, et d'autres problèmes d'optimisation où les méthodes
    traditionnelles sont moins efficaces.

    <subsection*|1. Principe de l'algorithme de colonies de fourmis>

    L'algorithme ACO repose sur le<nbsp><strong|concept de stigmergie>, un
    mécanisme de communication indirecte entre agents autonomes (les fourmis)
    par le biais de l'environnement. En se déplaçant, chaque fourmi dépose
    une<nbsp><strong|trace de phéromone>sur le chemin emprunté. Les autres
    fourmis sont attirées par ces traces, et plus un chemin contient de
    phéromones, plus il a de chances d'être choisi par les autres fourmis.
    Cela permet un processus de renforcement positif : les chemins les plus
    courts (ou de meilleure qualité) reçoivent plus de phéromones et sont
    donc davantage empruntés, ce qui guide la colonie vers des solutions
    optimales ou quasi-optimales.

    <subsection*|2. Fonctionnement de l'algorithme de colonies de fourmis>

    Voici les étapes principales de l'algorithme :

    <\enumerate>
      <item><strong|Initialisation><nbsp>: On définit le graphe du problème,
      où les n÷uds représentent les éléments ou étapes possibles (par
      exemple, des villes dans le TSP), et les arêtes sont les chemins
      possibles entre eux. Chaque arête commence avec un niveau de phéromone
      initial.

      <item><strong|Déplacement des fourmis><nbsp>: Chaque fourmi construit
      une solution en se déplaçant d'un n÷ud à un autre selon
      une<nbsp><strong|probabilité><nbsp>basée à la fois sur la quantité de
      phéromone présente sur chaque arête et sur une<nbsp><strong|fonction
      d'attractivité> qui reflète la qualité ou le coût du déplacement vers
      le prochain n÷ud.

      <equation*|P<rsub|ij>=<frac|<around*|(|\<tau\><rsub|ij>|)><rsup|\<alpha\>>\<cdot\><around*|(|\<eta\><rsub|ij>|)><rsup|\<beta\>>|<big|sum><rsub|k\<in\>N<around*|(|i|)>><around*|(|\<tau\><rsub|ik>|)><rsup|\<alpha\>>\<cdot\><around*|(|\<eta\><rsub|ik>|)><rsup|\<beta\>>>>

      où :

      <\itemize>
        <item><math|\<tau\><rsub|ij>><nbsp>est la quantité de phéromone sur
        l'arête<nbsp><math|<around*|(|i,j|)>>,

        <item><math|\<eta\><rsub|ij>><nbsp>est une mesure d'attractivité (par
        exemple, l'inverse de la distance) de
        l'arête<nbsp><math|<around*|(|i,j|)>>,

        <item><math|\<alpha\>><nbsp>et<nbsp><math|\<beta\>><nbsp>sont des
        paramètres de contrôle de l'importance relative de la phéromone et de
        l'attractivité.
      </itemize>

      \;

      <item><strong|Évaluation des solutions><nbsp>: Une fois que toutes les
      fourmis ont complété une solution (par exemple, un chemin complet dans
      le TSP), chaque solution est évaluée selon une<nbsp><strong|fonction de
      coût><nbsp>(par exemple, la longueur du chemin).

      <item><strong|Mise à jour des phéromones><nbsp>:

      <\itemize>
        <item><strong|Évaporation><nbsp>: Une partie des phéromones s'évapore
        à chaque itération pour éviter un excès de concentration de
        phéromone, favorisant ainsi l'exploration. Cela se fait selon un
        coefficient d'évaporation<nbsp><math|\<rho\>>\<rho\>, avec une mise à
        jour du type :

        <equation*|\<tau\><rsub|ij>\<leftarrow\><around*|(|1-\<rho\>|)>\<cdot\>\<tau\><rsub|ij>.>

        <item><strong|Dépôt de phéromones><nbsp>: Les fourmis déposent des
        phéromones sur les arêtes de leurs chemins respectifs, souvent en
        fonction de la qualité de la solution. Les meilleurs chemins (plus
        courts ou de moindre coût) reçoivent davantage de phéromones,
        renforçant leur attractivité.
      </itemize>

      <item><strong|Itérations><nbsp>: Les étapes 2 à 4 sont répétées pendant
      un certain nombre d'itérations ou jusqu'à ce qu'un critère de
      convergence soit atteint (comme la stagnation des solutions).
    </enumerate>

    <subsection*|3. Concepts clés dans l'algorithme de colonies de fourmis>

    <\itemize>
      <item><strong|Phéromones><nbsp>: Représentent une mémoire collective de
      la colonie, stockant des informations sur les bons chemins empruntés
      précédemment.

      <item><strong|Évaporation de phéromones><nbsp>: Permet d'éviter que la
      solution converge trop rapidement en supprimant progressivement les
      traces laissées par les solutions passées.

      <item><strong|Exploration vs exploitation><nbsp>: L'algorithme
      équilibre l'exploration de nouveaux chemins et l'exploitation des
      chemins déjà identifiés comme de qualité supérieure.
    </itemize>

    <subsection*|4. Avantages et inconvénients de l'algorithme de colonies de
    fourmis>

    <subsubsection*|Avantages>

    <\itemize>
      <item><strong|Optimisation globale><nbsp>: L'ACO explore de nombreuses
      solutions en parallèle, ce qui réduit le risque de rester bloqué dans
      un minimum local.

      <item><strong|Adaptabilité><nbsp>: Convient pour des problèmes où les
      solutions optimales peuvent être modifiées dynamiquement, car les
      phéromones s'adaptent aux nouvelles informations.

      <item><strong|Résultats robustes><nbsp>: Fonctionne bien pour des
      problèmes combinatoires difficiles, notamment ceux sans dérivées ou
      avec des coûts très irréguliers.
    </itemize>

    <subsubsection*|Inconvénients>

    <\itemize>
      <item><strong|Complexité computationnelle><nbsp>: Avec un grand nombre
      de fourmis et d'itérations, le calcul des probabilités de déplacement
      et la mise à jour des phéromones peuvent devenir coûteux.

      <item><strong|Paramétrage délicat><nbsp>: La performance de
      l'algorithme dépend de plusieurs paramètres (nombre de fourmis, taux
      d'évaporation, poids des phéromones), qui peuvent être difficiles à
      optimiser.

      <item><strong|Convergence lente><nbsp>: En cas de mauvaise
      initialisation ou d'un espace de solution très vaste, l'algorithme peut
      nécessiter de nombreuses itérations pour converger.
    </itemize>

    <subsection*|5. Applications de l'algorithme de colonies de fourmis>

    L'algorithme de colonies de fourmis est largement utilisé dans des
    problèmes d'optimisation combinatoire et des applications nécessitant des
    chemins optimaux ou l'organisation de tâches :

    <\itemize>
      <item><strong|Problème du voyageur de commerce (TSP)><nbsp>:
      Optimisation de parcours pour visiter un ensemble de villes.

      <item><strong|Routage dans les réseaux><nbsp>: Optimisation du routage
      dans les réseaux de télécommunications ou d'informatique.

      <item><strong|Planification et ordonnancement><nbsp>: Optimisation de
      l'allocation des tâches et de l'ordonnancement dans des environnements
      de production.

      <item><strong|Bioinformatique><nbsp>: Alignement de séquences ou
      modélisation de structures biologiques.
    </itemize>

    <subsection*|6. Variantes et améliorations>

    L'algorithme de colonies de fourmis a donné lieu à plusieurs variantes
    visant à améliorer sa performance dans divers contextes :

    <\itemize>
      <item><strong|Ant Colony System (ACS)><nbsp>: Une variante qui accentue
      l'exploration en renforçant les dépôts de phéromones uniquement sur les
      meilleurs chemins.

      <item><strong|Max-Min Ant System><nbsp>: Limite les valeurs de
      phéromones à une fourchette spécifique pour éviter une convergence
      prématurée.

      <item><strong|Hybridations><nbsp>: Combinaison avec d'autres
      algorithmes comme les algorithmes génétiques ou les techniques de
      recuit simulé pour renforcer l'optimisation.
    </itemize>

    <subsection*|En résumé>

    L'algorithme de colonies de fourmis est une méthode puissante et flexible
    pour l'optimisation globale. Inspiré par le comportement collectif des
    fourmis, il permet de résoudre des problèmes complexes en exploitant un
    équilibre entre l'exploration de nouvelles solutions et l'exploitation
    des meilleures solutions identifiées, grâce à l'utilisation de traces de
    phéromones.
  </with>

  <\with|color|dark cyan>
    <\subsection>
      Recuit-simulé
    </subsection>
  </with>

  <\itemize>
    <item>Le<nbsp><strong|recuit simulé><nbsp>est une adaptation de
    l'algorithme de<nbsp><strong|Metropolis-Hastings><nbsp>pour les problèmes
    d'optimisation, intégrant un mécanisme de refroidissement pour réduire la
    probabilité d'acceptation des solutions de moindre qualité au fil du
    temps.

    <item>Les deux algorithmes utilisent une<nbsp><strong|probabilité
    d'acceptation basée sur une ``température"><nbsp>pour permettre une
    exploration flexible de l'espace des solutions, mais le recuit simulé
    modifie cette température progressivement, orientant ainsi la convergence
    vers un minimum global.
  </itemize>

  Cette connexion entre les deux algorithmes fait du recuit simulé une
  méthode puissante pour de nombreux problèmes d'optimisation complexes, où
  les minima locaux rendent difficiles l'application de méthodes
  d'optimisation plus classiques.

  \;

  Le<nbsp><strong|recuit simulé><nbsp>(ou<nbsp><em|simulated annealing>) est
  une technique d'optimisation heuristique inspirée du processus
  de<nbsp><strong|recuit métallurgique>, qui consiste à chauffer un matériau
  à haute température, puis à le refroidir lentement pour minimiser ses
  défauts et obtenir une structure cristalline stable, c'est-à-dire de faible
  énergie. Ce procédé est adapté en optimisation pour rechercher une solution
  optimale (ou quasi-optimale) à des problèmes où la fonction de coût est
  complexe et où des minima locaux sont présents, rendant difficile
  l'utilisation de méthodes classiques.

  <subsection*|1. Principe du recuit simulé>

  Le recuit simulé permet de<nbsp><strong|trouver un minimum
  global><nbsp>d'une fonction de coût en s'inspirant du refroidissement
  progressif d'un matériau. L'idée est de parcourir l'espace des solutions en
  acceptant, avec une certaine probabilité, des solutions de moindre qualité
  (c'est-à-dire plus coûteuses) au début du processus, pour permettre
  l'exploration de l'espace global et éviter de rester coincé dans un minimum
  local. À mesure que la température diminue, la probabilité d'accepter de
  telles solutions diminue, ce qui conduit l'algorithme à se stabiliser
  autour d'un minimum.

  <subsection*|2. Fonctionnement de l'algorithme de recuit simulé>

  L'algorithme se déroule en plusieurs étapes clés :

  <\enumerate>
    <item><strong|Initialisation><nbsp>: On commence par définir un point de
    départ (solution initiale) et une température
    initiale<nbsp><math|T<rsub|0>> élevée.

    <item><strong|Génération de solution voisine><nbsp>: À chaque étape, une
    nouvelle solution est générée à partir de la solution actuelle,
    généralement en appliquant une petite perturbation à celle-ci.

    <item><strong|Évaluation de la solution><nbsp>: La fonction de coût est
    calculée pour la solution voisine afin de déterminer si elle améliore ou
    dégrade la solution actuelle.

    <item><strong|Décision d'acceptation><nbsp>:

    <\itemize>
      <item>Si la nouvelle solution est meilleure (fonction de coût plus
      faible), elle est automatiquement acceptée comme nouvelle solution.

      <item>Si elle est moins bonne, elle peut encore être acceptée avec une
      probabilité<nbsp><math|p>p<nbsp>donnée par :

      <equation*|p=e<rsup|-<frac|\<Delta\>E|T>>,>

      <nbsp>où<nbsp><math|\<Delta\>E><nbsp>est la différence de coût entre la
      solution actuelle et la solution voisine, et<nbsp><math|T><nbsp>est la
      température actuelle. Cette probabilité décroît avec la température,
      permettant à l'algorithme d'accepter moins souvent des solutions plus
      coûteuses à mesure que<nbsp><math|T><nbsp>diminue.
    </itemize>

    <item><strong|Mise à jour de la température><nbsp>: Après un certain
    nombre d'itérations, la température est réduite selon un planning de
    refroidissement (souvent multiplicatif,
    comme<nbsp><math|T=\<alpha\>\<times\>T>,
    avec<nbsp><math|\<alpha\>><nbsp>proche de 1).

    <item><strong|Critère d'arrêt><nbsp>: L'algorithme continue jusqu'à ce
    qu'un critère d'arrêt soit atteint (température minimale atteinte, nombre
    maximal d'itérations, ou convergence de la solution).
  </enumerate>

  <subsection*|3. Concepts clés du recuit simulé>

  <\itemize>
    <item><strong|Température><nbsp>: Elle contrôle la probabilité
    d'acceptation des solutions sous-optimales. Plus elle est élevée, plus
    l'algorithme explore l'espace des solutions en acceptant même des
    solutions défavorables.

    <item><strong|Solution voisine><nbsp>: Elle représente une légère
    modification de la solution actuelle, permettant d'explorer localement
    autour de chaque point.

    <item><strong|Probabilité d'acceptation><nbsp>: Assure un équilibre entre
    l'exploration et l'exploitation. Les solutions de moindre qualité peuvent
    être acceptées au début, mais deviennent de moins en moins probables avec
    le refroidissement.

    <item><strong|Planning de refroidissement><nbsp>: Définit la vitesse à
    laquelle la température diminue. Un refroidissement lent favorise la
    recherche de solutions de meilleure qualité, mais rallonge le temps de
    calcul.
  </itemize>

  <subsection*|4. Avantages et inconvénients du recuit simulé>

  <subsubsection*|Avantages>

  <\itemize>
    <item><strong|Optimisation globale><nbsp>: Le recuit simulé a une bonne
    capacité à éviter les minima locaux, car il accepte temporairement des
    solutions sous-optimales, favorisant une exploration plus large de
    l'espace des solutions.

    <item><strong|Simplicité et flexibilité><nbsp>: L'algorithme est
    relativement simple à implémenter et peut s'adapter à une large gamme de
    problèmes.

    <item><strong|Robustesse><nbsp>: Fonctionne bien pour des fonctions de
    coût non différentiables, discontinues, ou complexes.
  </itemize>

  <subsubsection*|Inconvénients>

  <\itemize>
    <item><strong|Temps de calcul><nbsp>: Un planning de refroidissement lent
    améliore les résultats mais rend le processus plus long.

    <item><strong|Paramétrage délicat><nbsp>: La performance dépend de
    plusieurs paramètres (température initiale, taux de refroidissement,
    etc.) qui nécessitent des ajustements en fonction du problème.

    <item><strong|Convergence non garantie><nbsp>: Dans certains cas,
    l'algorithme peut ne pas converger vers une solution optimale si les
    paramètres ne sont pas bien choisis.
  </itemize>

  <subsection*|5. Applications du recuit simulé>

  Le recuit simulé est utilisé dans divers domaines nécessitant de
  l'optimisation combinatoire, notamment :

  <\itemize>
    <item><strong|Problème du voyageur de commerce (TSP)><nbsp>: Recherche du
    plus court chemin passant par un ensemble de villes.

    <item><strong|Planification et ordonnancement><nbsp>: Optimisation de la
    répartition des tâches ou des horaires dans un environnement de
    production.

    <item><strong|Design de circuits><nbsp>: Optimisation de la disposition
    des composants pour minimiser les interférences.

    <item><strong|Apprentissage automatique><nbsp>: Optimisation
    d'hyperparamètres ou d'architectures de modèles.
  </itemize>

  <subsection*|6. Variantes et améliorations>

  Au fil des ans, plusieurs variantes du recuit simulé ont été proposées pour
  améliorer ses performances ou l'adapter à des problèmes spécifiques :

  <\itemize>
    <item><strong|Recuit simulé adaptatif><nbsp>: Ajuste dynamiquement le
    taux de refroidissement en fonction de la qualité des solutions trouvées.

    <item><strong|Recuit simulé parallèle><nbsp>: Exécute plusieurs chaînes
    de recuit en parallèle pour explorer différentes régions de l'espace de
    solution simultanément.

    <item><strong|Hybridation><nbsp>: Combinaison avec d'autres méthodes
    heuristiques comme les algorithmes génétiques pour améliorer les
    performances d'optimisation.
  </itemize>

  <subsection*|En résumé>

  Le recuit simulé est un algorithme d'optimisation inspiré de la physique,
  particulièrement adapté pour résoudre des problèmes difficiles avec des
  fonctions de coût comportant de nombreux minima locaux. Sa capacité à
  accepter temporairement des solutions sous-optimales permet une exploration
  étendue de l'espace des solutions, avec une convergence progressive vers
  des solutions de haute qualité.

  <\with|color|dark yellow>
    <section|4D-Var>
  </with>

  La méthode<nbsp><strong|4D-Var><nbsp>(ou<nbsp><strong|4-Dimensional
  Variational Data Assimilation>) est une technique avancée d'assimilation de
  données utilisée principalement dans la prévision météorologique et
  l'océanographie pour améliorer les estimations des états d'un système
  dynamique, comme l'atmosphère ou l'océan, en tenant compte des observations
  sur une période de temps donnée.

  Elle intègre non seulement des informations provenant de mesures
  ponctuelles (satellites, stations météorologiques, capteurs océaniques,
  etc.) mais aussi des lois de la physique représentées par
  un<nbsp><strong|modèle de prévision numérique>. Le terme ``4D'' se réfère
  aux trois dimensions de l'espace (longitude, latitude, altitude) et à la
  dimension temporelle. Cette méthode permet d'ajuster un état initial pour
  qu'il soit en accord avec les observations disponibles sur
  une<nbsp><strong|fenêtre temporelle><nbsp>définie.

  <subsection*|1. Objectif et principe de la méthode 4D-Var>

  L'objectif de la méthode 4D-Var est de<nbsp><strong|minimiser une fonction
  de coût><nbsp>qui quantifie l'écart entre le modèle et les observations sur
  la période d'assimilation. La fonction de coût inclut :

  <\enumerate>
    <item><strong|L'écart entre l'état initial du modèle et une estimation
    initiale (ou a priori)>.

    <item><strong|L'écart entre les prévisions du modèle><nbsp>(basées sur
    cet état initial) et les observations disponibles sur l'intervalle de
    temps.
  </enumerate>

  Cette approche permet d'obtenir un état initial optimisé (état d'analyse)
  qui, lorsqu'il est intégré dans le modèle, donne une évolution temporelle
  en accord optimal avec les observations sur la période d'assimilation.

  <subsection*|2. Formulation mathématique>

  Soit :

  <\itemize>
    <item><math|x<rsub|0>><nbsp>: état initial du modèle, que l'on cherche à
    estimer.

    <item><math|<with|math-font-series|bold|M>><nbsp>: le modèle de prévision
    qui intègre cet état initial dans le futur.

    <item><math|<with|math-font-series|bold|y><rsub|k>><nbsp>: observations
    disponibles aux instants<nbsp><math|t<rsub|k>><nbsp>(pour<nbsp><math|k=1,\<ldots\>,K>).

    <item><math|<with|math-font-series|bold|H><rsub|k>><nbsp>: opérateur
    d'observation qui permet de comparer le modèle aux observations, souvent
    une projection de l'espace d'état vers l'espace des observations.

    <item><math|<with|math-font-series|bold|B>><nbsp>: matrice de covariance
    des erreurs d'estimation a priori de l'état initial.

    <item><math|<with|math-font-series|bold|R><rsub|k>><nbsp>: matrice de
    covariance des erreurs d'observation à chaque
    instant<nbsp><math|t<rsub|k>>.
  </itemize>

  La<nbsp><strong|fonction de coût><nbsp>à minimiser s'écrit alors :

  <equation*|J<around*|(|x<rsub|0>|)>=<frac|1|2><around*|(|x<rsub|0>-x<rsub|b>|)><rsup|\<top\>><with|math-font-series|bold|B><rsup|-1><around*|(|x<rsub|0>-x<rsub|b>|)>+<frac|1|2><big|sum><rsub|k=1><rsup|K><around*|(|<with|math-font-series|bold|y><rsub|k>-<with|math-font-series|bold|H><rsub|k><with|math-font-series|bold|M><rsub|0\<rightarrow\>k><around*|(|x<rsub|0>|)>|)><rsup|\<top\>><with|math-font-series|bold|R><rsub|k><rsup|-1><around*|(|<with|math-font-series|bold|y><rsub|k>-<with|math-font-series|bold|H><rsub|k><with|math-font-series|bold|M><rsub|0\<rightarrow\>k><around*|(|x<rsub|0>|)>|)>,>

  où :

  <\itemize>
    <item><math|x<rsub|b>><nbsp>est une<nbsp><strong|première estimation de
    l'état initial><nbsp>(ou ``background").

    <item><math|<with|math-font-series|bold|M><rsub|0\<rightarrow\>k><around*|(|x<rsub|0>|)>><nbsp>représente
    l'état du modèle au temps<nbsp><math|t<rsub|k>>, obtenu en intégrant
    l'état initial<nbsp><math|x<rsub|0>><nbsp>à travers le modèle jusqu'à
    l'instant<nbsp><math|t<rsub|k>>.
  </itemize>

  La minimisation de<nbsp><math|J<around*|(|x<rsub|0>|)>><nbsp>permet de
  trouver l'état initial<nbsp><math|x<rsub|0>><nbsp>qui donne la meilleure
  correspondance entre le modèle et les observations sur la période
  considérée.

  <subsection*|3. Processus de minimisation>

  La minimisation de la fonction de coût est réalisée à l'aide de méthodes
  d'optimisation numériques. Pour calculer les dérivées de<nbsp><math|J>, il
  faut :

  <\itemize>
    <item><strong|Intégrer le modèle direct><nbsp>pour obtenir la trajectoire
    temporelle.

    <item><strong|Calculer le gradient><nbsp>de la fonction de coût par
    rapport à l'état initial<nbsp><math|x<rsub|0>>. Cela nécessite de
    calculer les dérivées partielles de la fonction de coût, souvent à l'aide
    de l'<strong|équation adjoint><nbsp>du modèle.
  </itemize>

  La méthode adjoint permet de calculer efficacement le gradient de la
  fonction de coût par rapport à<nbsp><math|x<rsub|0>><nbsp>en<nbsp><strong|propageant
  l'information en sens inverse><nbsp>à partir des observations dans le
  temps. Cela permet de minimiser<nbsp><math|J> en effectuant des mises à
  jour successives de<nbsp><math|x<rsub|0>><nbsp>jusqu'à convergence.

  <subsection*|4. Avantages et défis de la méthode 4D-Var>

  <subsubsection*|Avantages>

  <\itemize>
    <item><strong|Assimilation temporelle><nbsp>: Contrairement à des
    méthodes d'assimilation statique (comme la méthode 3D-Var), la 4D-Var
    utilise l'information temporelle des observations, ce qui améliore
    l'estimation de l'état du système.

    <item><strong|Cohérence dynamique><nbsp>: Le modèle est utilisé pour
    garantir que les états estimés sont cohérents avec les lois physiques, ce
    qui rend les prévisions plus fiables.

    <item><strong|Précision><nbsp>: La méthode est statistiquement optimale
    sous certaines hypothèses et tend à offrir des résultats plus précis que
    des méthodes qui ignorent les dynamiques temporelles.
  </itemize>

  <subsubsection*|Défis>

  <\itemize>
    <item><strong|Coût de calcul élevé><nbsp>: Le calcul du gradient via le
    modèle adjoint, ainsi que l'intégration temporelle répétée du modèle,
    demandent des ressources informatiques importantes, surtout pour des
    systèmes de grande dimension comme les modèles atmosphériques ou
    océaniques.

    <item><strong|Développement complexe><nbsp>: La construction de
    l'opérateur adjoint d'un modèle complexe est techniquement exigeante et
    nécessite de l'expertise.

    <item><strong|Sensibilité aux erreurs de modélisation><nbsp>: La méthode
    suppose que le modèle est représentatif du système réel, ce qui peut
    introduire des erreurs si le modèle est incorrect ou simplifié.
  </itemize>

  <subsection*|5. Applications>

  La méthode 4D-Var est utilisée principalement dans les domaines suivants :

  <\itemize>
    <item><strong|Météorologie et prévision climatique><nbsp>: Assimilation
    des données météorologiques pour estimer l'état de l'atmosphère et
    produire des prévisions de haute qualité.

    <item><strong|Océanographie><nbsp>: Estimation des courants océaniques,
    température, salinité, etc., en utilisant les observations satellites et
    in situ.

    <item><strong|Hydrologie et gestion des ressources en eau><nbsp>:
    Modélisation de bassins fluviaux et gestion de l'eau en fonction des
    observations et des prévisions météorologiques.
  </itemize>

  <subsection*|6. Variantes de la méthode 4D-Var>

  Des variantes de la méthode 4D-Var ont été développées pour répondre aux
  défis computationnels et à certaines limitations, parmi lesquelles :

  <\itemize>
    <item><strong|Incremental 4D-Var><nbsp>: Simplifie le calcul en
    linéarisant la fonction de coût autour d'un état de référence, réduisant
    ainsi le coût de calcul.

    <item><strong|Hybrid 4D-Var/Ensemble Methods><nbsp>: Combine 4D-Var avec
    des méthodes d'ensemble pour mieux représenter les incertitudes et
    variabilités dans les modèles.
  </itemize>

  <subsection*|En résumé>

  La méthode 4D-Var est une approche puissante pour intégrer les observations
  de manière optimale sur une fenêtre temporelle, en ajustant l'état initial
  d'un modèle pour qu'il soit cohérent avec les observations et les lois de
  la physique. Bien qu'elle demande des ressources de calcul importantes,
  elle reste une méthode de référence en assimilation de données pour des
  systèmes dynamiques, en particulier dans les applications météorologiques
  et océaniques.

  <\with|color|dark yellow>
    <section|Identification paramétrique dans les EDP>
  </with>

  <\with|color|black>
    <\with|color|dark cyan>
      <\subsection>
        Techniques de collocation
      </subsection>

      \;
    </with>
  </with>

  La<nbsp><strong|méthode de collocation><nbsp>est une technique utilisée
  en<nbsp><strong|identification paramétrique des équations aux dérivées
  partielles (EDP)><nbsp>pour estimer des paramètres inconnus d'une EDP en
  utilisant des observations du système. Cette approche permet
  de<nbsp><strong|calibrer un modèle><nbsp>en ajustant les paramètres pour
  que les solutions de l'EDP concordent au mieux avec les données observées.

  <subsection*|Contexte et objectif>

  Lorsqu'on modélise un phénomène physique par une EDP, il est courant de ne
  pas connaître exactement certains paramètres (par exemple, un coefficient
  de diffusion dans une équation de chaleur ou la vitesse d'advection dans
  une équation de transport). Le problème d'<strong|identification
  paramétrique><nbsp>consiste à estimer ces paramètres inconnus en utilisant
  des observations du système.

  Supposons une EDP du type :

  <equation*|L<around*|(|u,\<theta\>|)>=0<with|mode|text|
  dans<nbsp>un<nbsp>domaine<nbsp>>\<Omega\>,>

  avec<nbsp><math|u<around*|(|x,t|)>><nbsp>la solution
  recherchée,<nbsp><math|L><nbsp>un opérateur différentiel
  et<nbsp><math|\<theta\>><nbsp>le paramètre (ou ensemble de paramètres) à
  identifier. La méthode de collocation vise à trouver une approximation
  de<nbsp><math|u><nbsp>et une estimation de<nbsp><math|\<theta\>><nbsp>en
  imposant que l'EDP soit vérifiée sur un ensemble de points spécifiques,
  appelés<nbsp><strong|points de collocation>.

  <subsection*|Principe de la méthode de collocation>

  La méthode de collocation pour l'identification paramétrique dans les EDP
  repose sur trois éléments clés :

  <\enumerate>
    <item><strong|Choix d'une approximation
    pour<nbsp><math|u<around*|(|x,t|)>>><nbsp>: On choisit
    une<nbsp><strong|forme paramétrique><nbsp>pour
    approximer<nbsp><math|u<around*|(|x,t|)>>, généralement une somme de
    fonctions de base pondérées par des coefficients inconnus. Par exemple,
    on peut utiliser une approximation de type :

    <equation*|u<around*|(|x,t|)>\<approx\><big|sum><rsub|j=1><rsup|N>c<rsub|j>\<phi\><rsub|j><around*|(|x,t|)>,>

    où<nbsp><math|<around*|{|\<phi\><rsub|j>|}>><nbsp>est un ensemble de
    fonctions de base et<nbsp><math|c<rsub|j>><nbsp>sont des coefficients à
    déterminer.

    <item><strong|Définition des points de collocation><nbsp>: On sélectionne
    un ensemble de points discrets<nbsp><math|<around*|{|<around*|(|x<rsub|i>,t<rsub|i>|)>|}>><nbsp>dans
    le domaine<nbsp><math|\<Omega\>><nbsp>où l'EDP doit être satisfaite. Ces
    points représentent des ``lieux'' où l'on souhaite que la solution
    approchée satisfasse l'équation au mieux. Par exemple, si l'on résout une
    équation de chaleur, ces points peuvent être choisis de manière régulière
    dans l'espace et le temps.

    <item><strong|Formulation du problème d'identification><nbsp>: En
    insérant l'approximation<nbsp><math|u<around*|(|x,t|)>><nbsp>dans l'EDP
    et en imposant que celle-ci soit vérifiée aux points de
    collocation<nbsp><math|<around*|{|<around*|(|x<rsub|i>,t<rsub|i>|)>|}>>,
    on obtient un ensemble d'équations algébriques
    en<nbsp><math|c<rsub|j>><nbsp>et en<nbsp><math|\<theta\>>. On ajuste ces
    inconnues pour minimiser les écarts entre les prédictions du modèle et
    les observations.
  </enumerate>

  <subsection*|Étapes de la méthode de collocation pour l'identification
  paramétrique>

  <\enumerate>
    <item><strong|Modèle paramétrique><nbsp>: Supposons qu'on dispose d'un
    modèle de la forme<nbsp><math|L<around*|(|u<around*|(|x,t;\<theta\>|)>|)>=0>,
    où<nbsp><math|\<theta\>> est un paramètre à estimer.

    <item><strong|Approximation de la solution><nbsp>: On choisit une
    approximation paramétrique pour la solution,
    comme<nbsp><math|u<around*|(|x,t|)>\<approx\><big|sum><rsub|j=1><rsup|N>c<rsub|j>\<phi\><rsub|j><around*|(|x,t|)>>.

    <item><strong|Imposition de l'EDP aux points de collocation><nbsp>: Pour
    chaque point de collocation<nbsp><math|<around*|(|x<rsub|i>,t<rsub|i>|)>>,
    on impose que :

    <equation*|L<around*|(|<big|sum><rsub|j=1><rsup|N>c<rsub|j>\<phi\><rsub|j><around*|(|x<rsub|i>,t<rsub|i>|)>,\<theta\>|)>\<approx\>0.>

    Cela génère un système d'équations algébriques
    en<nbsp><math|c<rsub|j>><nbsp>et<nbsp><math|\<theta\>>.

    <item><strong|Utilisation des observations><nbsp>: Si on dispose
    d'observations<nbsp><math|u<rsup|<with|mode|text|obs>><around*|(|x<rsub|i>,t<rsub|i>|)>><nbsp>de
    la solution aux points de collocation, on cherche les valeurs
    de<nbsp><math|c<rsub|j>><nbsp>et de<nbsp><math|\<theta\>><nbsp>qui
    minimisent une fonction de coût mesurant la différence entre les valeurs
    calculées et les valeurs observées :

    <equation*|J<around*|(|\<theta\>,<with|math-font-series|bold|c>|)>=<big|sum><rsub|i><around*|(|u<around*|(|x<rsub|i>,t<rsub|i>;\<theta\>|)>-u<rsup|<with|mode|text|obs>><around*|(|x<rsub|i>,t<rsub|i>|)>|)><rsup|2>.>

    <item><strong|Optimisation><nbsp>: On résout le problème d'optimisation
    en ajustant les paramètres<nbsp><math|c<rsub|j>><nbsp>et<nbsp><math|\<theta\>><nbsp>pour
    minimiser<nbsp><math|J<around*|(|\<theta\>,<with|math-font-series|bold|c>|)>>,
    obtenant ainsi une estimation des paramètres inconnus et une solution
    approchée de l'EDP.
  </enumerate>

  <subsection*|Avantages et limitations de la méthode de collocation>

  <subsubsection*|Avantages>

  <\itemize>
    <item><strong|Simplicité et flexibilité><nbsp>: La méthode est
    relativement simple à mettre en ÷uvre pour des EDP avec peu de paramètres
    inconnus.

    <item><strong|Approche discrète><nbsp>: En travaillant sur des points
    discrets, la méthode de collocation est souvent plus rapide que les
    méthodes continues comme les méthodes variationnelles.

    <item><strong|Utilisation directe des données><nbsp>: Elle est adaptée
    lorsque des observations sont disponibles de façon ponctuelle.
  </itemize>

  <subsubsection*|Limitations>

  <\itemize>
    <item><strong|Sensibilité au choix des points de collocation><nbsp>: Si
    les points de collocation sont mal choisis, la solution peut être
    imprécise ou ne pas converger.

    <item><strong|Nombre limité de paramètres><nbsp>: Lorsque le nombre de
    paramètres à estimer est important, la méthode devient plus complexe et
    moins stable.

    <item><strong|Difficulté pour des EDP non linéaires ou instables><nbsp>:
    Les EDP non linéaires ou présentant des comportements instables sont
    difficiles à traiter par la collocation.
  </itemize>

  <subsection*|Exemple illustratif : identification dans l'équation de
  chaleur>

  Pour une équation de chaleur d'un matériau, modélisée par :

  <equation*|<frac|\<partial\>u|\<partial\>t>-\<theta\>\<Delta\>u=0,>

  où<nbsp><math|\<theta\>><nbsp>est le coefficient de diffusion thermique à
  identifier, on peut appliquer la méthode de collocation en suivant les
  étapes suivantes :

  <\enumerate>
    <item><strong|Approximation de<nbsp><math|u<around*|(|x,t|)>>><nbsp>: On
    utilise une base de fonctions (par exemple des polynômes ou des fonctions
    sinus) pour approximer<nbsp><math|u<around*|(|x,t|)>><nbsp>avec des
    coefficients inconnus<nbsp><math|c<rsub|j>>.

    <item><strong|Points de collocation><nbsp>: On choisit des
    points<nbsp><math|<around*|(|x<rsub|i>,t<rsub|i>|)>><nbsp>dans
    l'espace-temps.

    <item><strong|Formulation du problème><nbsp>: En imposant que l'équation
    soit vérifiée en<nbsp><math|<around*|(|x<rsub|i>,t<rsub|i>|)>>, on
    obtient un système d'équations dépendant de<nbsp><math|\<theta\>><nbsp>et
    des<nbsp><math|c<rsub|j>>.

    <item><strong|Minimisation de l'erreur><nbsp>: On utilise des
    observations de<nbsp><math|u<around*|(|x<rsub|i>,t<rsub|i>|)>><nbsp>pour
    ajuster<nbsp><math|\<theta\>><nbsp>et obtenir une solution approchée de
    l'équation de chaleur en minimisant l'erreur quadratique.
  </enumerate>

  <subsection*|Conclusion>

  La méthode de collocation est une approche discrète et flexible pour
  l'identification paramétrique dans les EDP. En imposant que l'EDP soit
  satisfaite à des points de collocation spécifiques, elle permet d'estimer
  des paramètres inconnus et d'obtenir une approximation de la solution. Bien
  que cette méthode soit efficace pour des systèmes modérément complexes,
  elle reste limitée par la sensibilité au choix des points de collocation et
  par sa capacité à traiter des systèmes fortement non linéaires ou
  instables.

  <\with|color|dark cyan>
    <\subsection>
      Shooting methods
    </subsection>
  </with>

  Les <em|méthodes de tir> (ou <em|méthodes de shooting>) sont une classe de
  méthodes numériques utilisées pour résoudre des problèmes de conditions aux
  limites pour des équations différentielles, y compris pour l'estimation de
  paramètres dans des équations aux dérivées partielles (EDP). Elles sont
  particulièrement utiles pour transformer un problème de conditions aux
  limites en un problème de conditions initiales, ce qui est souvent plus
  facile à résoudre numériquement.

  Dans le contexte de l'estimation de paramètres d'une EDP, les méthodes de
  tir consistent à trouver les valeurs initiales (ou de paramètres) qui
  satisfont les conditions aux limites imposées. Voici un aperçu de comment
  elles fonctionnent et sont appliquées dans ce cadre :

  <subsection*|1. Principe des Méthodes de Tir pour des EDP>

  En général, le problème consiste à résoudre une EDP en cherchant les
  paramètres qui minimisent l'erreur entre une solution numérique et des
  données observées, en respectant les conditions aux limites. La méthode de
  tir convertit le problème de conditions aux limites en un problème de
  conditions initiales en :

  <\enumerate>
    <item><strong|Choisissant une valeur initiale> pour les paramètres ou la
    solution de départ.

    <item><strong|Intégrant la solution> jusqu'à atteindre la frontière, où
    les conditions aux limites doivent être vérifiées.

    <item><strong|Ajustant les paramètres initiaux> en fonction des écarts
    aux conditions aux limites, en utilisant des méthodes itératives pour
    minimiser l'erreur entre la solution obtenue et la solution souhaitée.
  </enumerate>

  <subsection*|2. Approche par Équations aux Dérivées Ordinaires (EDO)>

  Pour utiliser la méthode de tir dans les EDP, on procède souvent par une
  réduction des dimensions de l'EDP en utilisant des techniques de
  discrétisation (par exemple, en discrétisant l'espace pour obtenir un
  système d'équations différentielles ordinaires, ou EDO). Cette
  transformation rend le problème plus simple et permet d'appliquer la
  méthode de tir.

  Par exemple, pour une EDP du type :

  <equation*|<frac|\<partial\>u|\<partial\>t>=f<around*|(|u,\<nabla\>u,p|)>>

  on peut discrétiser spatialement pour obtenir un système d'EDO dépendant du
  temps et des paramètres <math|p>. La méthode de tir est alors appliquée
  pour déterminer les valeurs de <math|p> qui minimisent l'erreur entre la
  solution obtenue et les observations.

  <subsection*|3. Algorithmes d'Optimisation et Ajustement de Paramètres>

  L'ajustement de paramètres se fait souvent avec des méthodes
  d'optimisation, comme la descente de gradient, la méthode de Newton, ou des
  algorithmes d'optimisation plus sophistiqués (par exemple, des méthodes
  stochastiques pour éviter des minima locaux). Le but est de minimiser une
  fonction coût, qui mesure l'écart entre les valeurs obtenues par
  l'intégration numérique et les valeurs observées sur les conditions aux
  limites.

  <subsection*|4. Méthodes de Tir Multiple>

  Dans certains cas, il est avantageux d'utiliser des méthodes de tir
  multiple. Au lieu de partir d'un seul point initial, on démarre à plusieurs
  points et on ajuste simultanément plusieurs trajectoires pour satisfaire
  les conditions aux limites de manière plus robuste, surtout en présence de
  non-linéarités marquées.

  <subsection*|5. Avantages et Limitations>

  <strong|Avantages> :

  <\itemize>
    <item>Permet de transformer un problème de conditions aux limites en un
    problème de conditions initiales, ce qui est souvent plus simple.

    <item>Efficace pour des problèmes avec des conditions aux limites non
    triviales, notamment pour des systèmes dynamiques non linéaires.
  </itemize>

  <strong|Limitations> :

  <\itemize>
    <item>Sensible aux conditions initiales : il est parfois difficile de
    choisir un bon point de départ, surtout en présence de multiples
    solutions possibles.

    <item>Peut être inefficace pour des problèmes fortement non linéaires ou
    lorsque le domaine est très sensible aux variations des conditions
    initiales.
  </itemize>

  En somme, les méthodes de tir sont un outil puissant pour estimer les
  paramètres dans des EDP, en particulier lorsque les conditions aux limites
  sont complexes et nécessitent une approche itérative pour être satisfaites.

  <\with|color|dark yellow>
    <section|SINDy>
  </with>

  La méthode SINDy (<em|Sparse Identification of Nonlinear Dynamics>) est une
  approche puissante pour identifier des dynamiques déterministes à partir de
  données, en particulier lorsque le modèle sous-jacent est inconnu. Dans le
  cadre d'un système intermittent comme décrit, SINDy peut être utilisée pour
  estimer le champ de vitesse <math|v<around*|(|X<rsub|t>,t|)>> à partir des
  trajectoires observées, en se concentrant sur les phases actives.

  <subsection*|Rappel : Principe de la Méthode SINDy>

  La méthode SINDy repose sur l'idée d'une représentation parcimonieuse des
  dynamiques. Elle utilise une bibliothèque de fonctions candidates pour
  modéliser les dynamiques des variables d'état (ici la position
  <math|X<rsub|t>>), et recherche une combinaison parcimonieuse de ces
  fonctions pour modéliser l'évolution de la trajectoire. Autrement dit, elle
  identifie un sous-ensemble minimal de termes qui gouvernent la dynamique du
  système.

  <subsection*|Mise en Place de SINDy pour l'Estimation de la Vitesse>

  Voici comment appliquer SINDy pour estimer la vitesse <math|v>v à partir de
  données de trajectoires intermittentes :

  <subsubsection*|1. Constitution de la Bibliothèque de Fonctions>

  Pour commencer, on définit une bibliothèque de fonctions candidates pour le
  champ de vitesse <math|v<around*|(|X,t|)>>. Cette bibliothèque contient des
  fonctions de <math|X> et, si pertinent, de <math|t>. Par exemple, pour un
  système en dimension 1, on pourrait inclure dans la bibliothèque les
  fonctions suivantes :

  <equation*|\<Theta\><around*|(|X,t|)>=<around*|[|1,X,X<rsup|2>,X<rsup|3>,sin\<nospace\><around*|(|X|)>,cos\<nospace\><around*|(|X|)>,t,Xt,t<rsup|2>|]>>

  En dimension plus élevée, les fonctions pourraient inclure des termes
  croisés pour capturer la dépendance spatiale et temporelle, comme
  <math|X<rsub|1>X<rsub|2>>, <math|X<rsub|1><rsup|2>>,
  <math|X<rsub|2><rsup|3>>, etc.

  <subsubsection*|2. Filtrage des Phases Actives>

  Puisque le mouvement ne se produit que lors des phases actives
  (<math|J<rsub|t>=1>), on filtre les données de trajectoire pour ne
  conserver que les points correspondant à ces phases. Cela permet d'obtenir
  une série de points <math|<around*|(|X<rsub|t<rsub|k>>|)>> correspondant
  aux phases actives.

  <subsubsection*|3. Calcul des Dérivées>

  La méthode SINDy utilise les dérivées temporelles
  <math|<wide|X|\<dot\>><around*|(|t|)>> des trajectoires pour identifier les
  dynamiques sous-jacentes. À partir des données filtrées, on calcule donc
  les dérivées <math|<wide|X|\<dot\>><rsub|t<rsub|k>>> (estimations de la
  vitesse) aux points d'échantillonnage correspondants.

  Ces dérivées peuvent être approximées par différences finies, par exemple :

  <equation*|<wide|X|\<dot\>><rsub|t<rsub|k>>\<approx\><frac|X<rsub|t<rsub|k+1>>-X<rsub|t<rsub|k>>|t<rsub|k+1>-t<rsub|k>>>

  Cette étape génère un vecteur de valeurs de <math|<wide|X|\<dot\>>> pour
  chaque point de la trajectoire dans les phases actives.

  <subsubsection*|4. Formulation et Résolution du Problème Linéaire
  Parcimonieux>

  On cherche ensuite à modéliser <math|<wide|X|\<dot\>>> en fonction d'une
  combinaison de termes de la bibliothèque :

  <equation*|<wide|X|\<dot\>>\<approx\>\<Theta\><around*|(|X,t|)>\<cdot\>\<xi\>>

  où <math|\<xi\>> est un vecteur de coefficients correspondant à chaque
  terme de la bibliothèque. La solution de ce problème consiste à trouver un
  vecteur de coefficients <math|\<xi\>> qui est à la fois parcimonieux
  (c'est-à-dire que la plupart de ses éléments sont nuls) et qui approxime au
  mieux les données.

  Pour résoudre ce problème parcimonieux, on utilise des méthodes de
  régression avec pénalisation <math|L<rsub|1>> (comme la <em|lasso
  regression> ou d'autres techniques de régression parcimonieuse). Cela
  permet de sélectionner automatiquement les termes les plus pertinents de la
  bibliothèque pour modéliser la dynamique.

  <subsubsection*|5. Interprétation du Résultat et Reconstitution de la
  Dynamique>

  La solution obtenue pour <math|\<xi\>> correspond à une estimation du champ
  de vitesse <math|v<around*|(|X,t|)>> sous une forme explicitement
  déterminée par les termes retenus dans la bibliothèque. Le modèle final
  pour <math|v> est donc une combinaison de quelques fonctions de la
  bibliothèque initiale, avec des coefficients pondérés, par exemple :

  <equation*|v<around*|(|X,t|)>=\<xi\><rsub|1>X+\<xi\><rsub|2>X<rsup|2>+\<xi\><rsub|3>sin\<nospace\><around*|(|X|)>>

  <subsection*|Implémentation de SINDy pour un Système Intermittent>

  Dans un cas intermittent, on peut appliquer les étapes ci-dessus sur des
  sous-ensembles de données correspondant uniquement aux phases actives. Une
  fois <math|v<around*|(|X,t|)>> estimé, il est possible de valider le modèle
  en vérifiant que la dynamique reconstruite à partir de
  <math|v<around*|(|X,t|)>> est cohérente avec les phases actives observées
  dans les données d'origine.

  <subsection*|Avantages de SINDy pour l'Estimation dans un Modèle
  Intermittent>

  <\enumerate>
    <item><strong|Identification Automatique de la Structure> : SINDy permet
    d'identifier automatiquement les termes pertinents de la dynamique, ce
    qui est idéal pour des systèmes complexes où la forme exacte de
    <math|v<around*|(|X,t|)>> n'est pas connue.

    <item><strong|Robustesse aux Données Parcellaires> : En se concentrant
    uniquement sur les phases actives, SINDy évite de biaiser l'estimation
    avec des données inactives.

    <item><strong|Réduction du Modèle> : En obtenant une représentation
    parcimonieuse de <math|v<around*|(|X,t|)>>, SINDy fournit un modèle plus
    simple et plus facilement interprétable que certaines méthodes
    d'estimation.
  </enumerate>

  En conclusion, la méthode SINDy fournit un cadre efficace pour estimer la
  vitesse <math|v>v dans un modèle intermittent déterministe en identifiant
  une représentation parcimonieuse et interprétable de la dynamique. Elle
  s'adapte parfaitement aux systèmes où seules certaines phases de la
  trajectoire fournissent des informations utiles, comme dans ce cas.

  \;

  \;

  Dans le cas de données bruitées, le calcul direct des dérivées peut
  amplifier le bruit et compromettre la robustesse des estimations obtenues
  avec SINDy. Les dérivées sont particulièrement sensibles au bruit, car même
  un faible bruit sur les données peut produire des variations importantes
  dans les estimations de la vitesse ou de l'accélération. Voici quelques
  stratégies pour rendre SINDy plus robuste face aux trajectoires bruitées.

  <subsection*|1. Utiliser une Méthode de Régularisation des Dérivées>

  Pour améliorer la robustesse de l'estimation des dérivées, on peut utiliser
  des techniques de régularisation. Quelques méthodes populaires incluent :

  <\itemize>
    <item><strong|Filtrage par Convolution> : En appliquant une convolution
    avec une fonction lisse, telle qu'une gaussienne, on peut réduire les
    fluctuations dues au bruit. Cela revient à appliquer un filtre passe-bas
    pour atténuer le bruit haute fréquence dans les trajectoires.

    <item><strong|Filtrage de Savitzky-Golay> : Ce filtre lisse les données
    et peut calculer des dérivées simultanément, en ajustant localement un
    polynôme aux points voisins. C'est un choix fréquent en traitement de
    signal pour des trajectoires bruitées.

    <item><strong|Régularisation de Tikhonov> : Ce type de régularisation
    introduit un terme de pénalisation sur la variation des dérivées, ce qui
    peut atténuer la sensibilité au bruit en limitant les variations
    extrêmes.
  </itemize>

  <subsection*|2. Utiliser des Méthodes d'Optimisation Intégrée (SINDy-PI)>

  La méthode SINDy-PI (<em|SINDy with Integral>) propose une approche
  alternative qui évite complètement le calcul direct des dérivées, en se
  basant sur une intégration des trajectoires au lieu de la différentiation.
  L'idée est d'identifier les paramètres du modèle en utilisant une version
  intégrée de l'équation :

  <equation*|X<around*|(|t|)>=X<around*|(|0|)>+<big|int><rsub|0><rsup|t>v<around*|(|X<around*|(|\<tau\>|)>,\<tau\>|)><with|mode|text|
  >d\<tau\>>

  Dans ce cas, on ne cherche plus à calculer
  <math|<wide|X|\<dot\>><around*|(|t|)>> directement, mais à minimiser la
  différence entre les positions prédites par l'intégrale des termes
  candidats de la bibliothèque de fonctions et les positions observées. Cela
  permet de limiter l'effet du bruit, car l'intégration agit naturellement
  comme un filtre passe-bas, réduisant ainsi les fluctuations dues au bruit.

  <subsection*|3. Utiliser des Algorithmes de Filtrage Non-Linéaire (Filtrage
  de Kalman Étendu ou Filtrage Particulaire)>

  Pour des systèmes bruités et non linéaires, des filtres non linéaires tels
  que le filtre de Kalman étendu (EKF) ou le filtrage particulaire (PF)
  peuvent être utilisés pour estimer les états et leurs dérivées. Ces filtres
  peuvent :

  <\itemize>
    <item>Estimer l'état de la particule tout en prenant en compte les
    incertitudes dues au bruit de mesure,

    <item>Fournir une estimation des dérivées (vitesses et accélérations)
    plus robuste en ajustant les observations bruitées à un modèle
    sous-jacent.
  </itemize>

  Les filtres non linéaires offrent une bonne robustesse pour les systèmes
  intermittents, en permettant des mises à jour itératives et dynamiques des
  dérivées basées sur les mesures successives.

  <subsection*|4. Utiliser une Régression Parcimonieuse avec Pénalisation du
  Bruit>

  Certaines variantes de SINDy, comme <em|Robust SINDy> ou <em|SINDy with
  noise>, intègrent une méthode de régression adaptée aux données bruitées en
  ajoutant des termes de régularisation. Ces méthodes considèrent le bruit
  directement dans le modèle d'optimisation et utilisent une pénalisation
  plus forte pour éviter de sélectionner des termes qui amplifient les
  erreurs dues au bruit.

  La fonction de coût optimisée prend alors en compte non seulement la
  parcimonie mais aussi la variance du bruit observé, ce qui conduit à une
  sélection de termes plus stable malgré la présence de bruit.

  <subsection*|5. Collecte de Données Supplémentaires pour la Moyenne et le
  Filtrage>

  Si possible, collecter plusieurs trajectoires expérimentales permet de
  réduire le bruit en prenant la moyenne ou une médiane glissante des
  trajectoires avant d'appliquer SINDy. En moyenne, le bruit aléatoire se
  réduit et la robustesse de l'estimation de la dynamique augmente. Cela
  permet d'identifier les motifs cohérents dans les trajectoires, malgré les
  fluctuations dues au bruit.

  <subsection*|En Conclusion>

  La robustesse de SINDy pour des trajectoires bruitées peut être améliorée
  par :

  <\itemize>
    <item>Des méthodes de régularisation et de lissage pour le calcul des
    dérivées,

    <item>L'utilisation de SINDy-PI pour éviter la différentiation directe,

    <item>Le recours à des filtres non linéaires comme le filtre de Kalman
    étendu ou les filtres particulaires,

    <item>Une optimisation parcimonieuse prenant explicitement en compte le
    bruit.
  </itemize>

  Ces techniques permettent de préserver l'efficacité de la méthode SINDy
  pour estimer des champs de vitesse et d'autres paramètres dans des systèmes
  intermittents et bruités.

  \;

  La formulation intégrale de SINDy, souvent appelée <strong|SINDy-PI>
  (<em|Sparse Identification of Nonlinear Dynamics with Integral
  formulation>), est particulièrement utile pour les trajectoires bruitées,
  car elle évite le calcul direct des dérivées en se basant sur une
  intégration de l'équation de la dynamique. Cela rend le modèle plus robuste
  face au bruit, puisque l'intégration agit comme un filtre passe-bas,
  atténuant les effets des fluctuations rapides.

  <subsection*|Principe de SINDy-PI : Formulation Intégrale>

  Au lieu de modéliser directement <math|<wide|X|\<dot\>><around*|(|t|)>=v<around*|(|X<around*|(|t|)>,t|)>>,
  comme dans SINDy classique, on reformule le problème en intégrant les deux
  côtés de l'équation entre deux instants <math|t<rsub|0>> et <math|t> :

  <equation*|X<around*|(|t|)>=X<around*|(|t<rsub|0>|)>+<big|int><rsub|t<rsub|0>><rsup|t>v<around*|(|X<around*|(|\<tau\>|)>,\<tau\>|)><with|mode|text|
  >d\<tau\>>

  En procédant ainsi, on obtient une relation pour <math|X<around*|(|t|)>>
  sans calculer explicitement <math|<wide|X|\<dot\>><around*|(|t|)>>. On
  cherche alors une forme parcimonieuse de <math|v<around*|(|X,t|)>> qui soit
  cohérente avec cette relation intégrée.

  <subsection*|Étapes de la Méthode SINDy-PI>

  <\enumerate>
    <item><strong|Choix de la Bibliothèque de Fonctions> : On construit une
    bibliothèque de fonctions candidates <math|\<Theta\><around*|(|X,t|)>>
    comme en SINDy classique, avec des termes possibles pour
    <math|v<around*|(|X,t|)>>. Cette bibliothèque peut inclure des fonctions
    polynomiales, trigonométriques, exponentielles, etc. Par exemple :

    <equation*|\<Theta\><around*|(|X,t|)>=<around*|[|1,X,X<rsup|2>,sin\<nospace\><around*|(|X|)>,t,X\<cdot\>t,t<rsup|2>|]>>

    <item><strong|Calcul de l'Intégrale des Fonctions Candidats> : Pour
    chaque fonction candidate <math|\<theta\><rsub|j><around*|(|X,t|)>> dans
    la bibliothèque, on calcule son intégrale sur un intervalle donné
    <math|<around*|[|t<rsub|0>,t|]>> :

    <equation*|<big|int><rsub|t<rsub|0>><rsup|t>\<theta\><rsub|j><around*|(|X<around*|(|\<tau\>|)>,\<tau\>|)><with|mode|text|
    >d\<tau\>>

    En pratique, si les valeurs de <math|X<around*|(|t|)>> et de <math|t>
    sont échantillonnées, cette intégrale peut être approchée par des
    méthodes d'intégration numérique comme la méthode des trapèzes ou la
    méthode de Simpson.

    <item><strong|Formulation de la Relation Linéaire Intégrée> : Une fois
    les intégrales calculées pour chaque fonction candidate, on exprime
    <math|X<around*|(|t|)>-X<around*|(|t<rsub|0>|)>> comme une combinaison
    linéaire de ces intégrales :

    <equation*|X<around*|(|t|)>-X<around*|(|t<rsub|0>|)>\<approx\><big|sum><rsub|j>\<xi\><rsub|j><big|int><rsub|t<rsub|0>><rsup|t>\<theta\><rsub|j><around*|(|X<around*|(|\<tau\>|)>,\<tau\>|)><with|mode|text|
    >d\<tau\>>

    \;

    Ici, <math|\<xi\><rsub|j>> sont les coefficients à estimer.

    <strong|Régression Parcimonieuse sur les Coefficients> : Comme en SINDy
    classique, on cherche une solution parcimonieuse pour les coefficients
    <math|\<xi\><rsub|j>> en appliquant une régression Lasso ou une autre
    méthode de régression parcimonieuse, en minimisant l'erreur entre
    <math|X<around*|(|t|)>-X<around*|(|t<rsub|0>|)>> et les termes intégrés :

    <equation*|<below|min\<nospace\>|\<xi\>>\<parallel\>X<around*|(|t|)>-X<around*|(|t<rsub|0>|)>-<big|sum><rsub|j>\<xi\><rsub|j><big|int><rsub|t<rsub|0>><rsup|t>\<theta\><rsub|j><around*|(|X<around*|(|\<tau\>|)>,\<tau\>|)><with|mode|text|
    >d\<tau\>\<parallel\><rsup|2>+\<lambda\>\<parallel\>\<xi\>\<parallel\><rsub|1>>

    où <math|\<lambda\>> est un paramètre de régularisation pour encourager
    la parcimonie.

    <item><strong|Identification de la Structure Dynamique> : Les
    coefficients <math|\<xi\><rsub|j>> non nuls correspondent aux termes
    retenus dans le modèle de <math|v<around*|(|X,t|)>>. Le modèle final pour
    la vitesse <math|v<around*|(|X,t|)>> est donc une combinaison
    parcimonieuse des fonctions dans la bibliothèque, telle que :

    <equation*|v<around*|(|X,t|)>=\<xi\><rsub|1>X+\<xi\><rsub|2>X<rsup|2>+\<xi\><rsub|3>sin\<nospace\><around*|(|X|)>>
  </enumerate>

  <subsection*|Avantages de SINDy-PI en Présence de Bruit>

  La formulation intégrale présente plusieurs avantages dans le contexte de
  données bruitées :

  <\itemize>
    <item><strong|Filtrage Naturel du Bruit> : L'intégration agit comme un
    filtre passe-bas, réduisant les variations rapides dues au bruit.

    <item><strong|Évitement du Calcul Direct de
    <math|<wide|X|\<dot\>><around*|(|t|)>>> : En évitant de calculer
    <math|<wide|X|\<dot\>><around*|(|t|)>> par différences finies ou autres
    méthodes sensibles au bruit, SINDy-PI devient plus stable et plus précise
    pour des trajectoires bruitées.

    <item><strong|Flexibilité dans le Choix des Intervalles> : On peut
    adapter la longueur des intervalles d'intégration
    <math|<around*|[|t<rsub|0>,t|]>> pour obtenir une meilleure robustesse
    selon le niveau de bruit : des intervalles plus longs réduisent encore
    plus l'effet du bruit, bien que cela puisse atténuer les détails fins de
    la dynamique.
  </itemize>

  <subsection*|Exemples Pratiques d'Utilisation de SINDy-PI>

  En pratique, SINDy-PI est particulièrement efficace pour des systèmes où :

  <\itemize>
    <item><strong|Le bruit est dominant> : Les systèmes où les mesures sont
    sujettes à un bruit important peuvent tirer un grand avantage de
    l'intégration.

    <item><strong|Les données sont partiellement observées> : Dans des
    systèmes où certaines dérivées sont coûteuses à calculer ou où les
    données sont discrètes, SINDy-PI offre une solution en limitant les
    besoins d'information.

    <item><strong|Les dynamiques sont intermittentes ou non continues> :
    Comme dans votre cas, pour des systèmes intermittents, on peut utiliser
    SINDy-PI pour estimer les dynamiques dans les phases actives, où les
    effets du bruit sont filtrés par l'intégration.
  </itemize>

  En résumé, SINDy-PI fournit une alternative robuste au calcul direct des
  dérivées, exploitant l'intégration pour extraire les dynamiques
  sous-jacentes de manière plus stable face au bruit, et permet ainsi une
  identification parcimonieuse des modèles dynamiques.

  <section|Méthode pour estimer avec trajectoires EDS>

  Si chaque particule suit une dynamique stochastique, on peut décrire la
  trajectoire <math|X<rsub|t>> de chaque particule en utilisant une équation
  différentielle stochastique (EDS) :

  <equation*|dX<rsub|t>=v<around*|(|X<rsub|t>,t;\<theta\>|)><with|mode|text|
  >dt+<sqrt|2D><with|mode|text| >dW<rsub|t>>

  où <math|W<rsub|t>> est un processus de Wiener (ou mouvement brownien),
  <math|\<theta\>> est le vecteur de paramètres du champ de vitesse <math|v>,
  et <math|<sqrt|2D>> est le terme de diffusion.

  <subsection*|3. Estimation des Paramètres en Utilisant les Trajectoires
  Observées>

  Avec cette modélisation, les trajectoires sont décrites par une
  distribution de probabilité qui évolue dans le temps sous l'effet combiné
  de la convection (due à <math|v>) et de la diffusion (due à <math|D>).
  Voici les étapes pour estimer <math|v> en présence de diffusion :

  <\enumerate>
    <item><strong|Identification du Modèle de Paramétrisation> : Comme
    précédemment, on paramétrise le champ de vitesse
    <math|v<around*|(|x,t;\<theta\>|)>> avec des paramètres <math|\<theta\>>,
    et on suppose <math|D> connu ou à estimer.

    <item><strong|Méthode des Moindres Carrés Stochastiques> : On peut
    estimer <math|v> en minimisant une fonction de coût qui tient compte de
    la composante aléatoire. Si <math|x<rsub|i><around*|(|t|)>> sont les
    trajectoires observées et <math|\<Delta\>x<rsub|i>> leurs incréments sur
    de petits intervalles de temps, l'équation de coût devient :

    <equation*|<below|min\<nospace\>|\<theta\>><big|sum><rsub|i><big|sum><rsub|t<rsub|k>>\<bbb-E\><around*|(|\<\|\|\><frac|\<Delta\>x<rsub|i>|\<Delta\>t>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<\|\|\><rsup|2>|)>>

    où l'espérance <math|\<bbb-E\><around*|[|\<cdot\>|]>> peut être approchée
    par des moyennes temporelles si les trajectoires sont assez nombreuses.

    <item><strong|Méthodes Bayésiennes (Filtre de Kalman et Filtrage
    Particulaire)> : Pour prendre en compte la composante aléatoire des
    trajectoires de manière plus fine, on peut aussi utiliser des méthodes
    d'estimation bayésienne. Le filtre de Kalman étendu ou des méthodes de
    filtrage particulaire permettent de suivre l'évolution des trajectoires
    en mettant à jour les estimations de <math|v> et de <math|D> au fur et à
    mesure.
  </enumerate>

  <subsection*|4. Estimation par Maximisation de la Vraisemblance>

  Une autre approche consiste à maximiser la vraisemblance des trajectoires
  observées par rapport au modèle stochastique. En supposant que chaque
  incrément de la trajectoire suit une loi normale centrée sur
  <math|v<around*|(|x<rsub|i><around*|(|t|)>,t;\<theta\>|)>\<Delta\>t> et de
  variance <math|2D\<Delta\>t>, la vraisemblance devient :

  <equation*|L<around*|(|\<theta\>,D|)>=<big|prod><rsub|i><big|prod><rsub|t<rsub|k>>exp\<nospace\><around*|(|-<frac|\<parallel\>\<Delta\>x<rsub|i>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<Delta\>t\<parallel\><rsup|2>|4D\<Delta\>t>|)>>

  En maximisant cette fonction de vraisemblance, on peut estimer
  simultanément <math|\<theta\>> et <math|D>.

  \;

  <with|color|dark yellow|<section|Cas d'une EDS à régime intermittent>>

  Si les trajectoires suivent une dynamique encore plus complexe, telle que
  celle où le terme brownien est activé de manière intermittente, cela peut
  être représenté par une <em|équation différentielle stochastique (EDS) à
  régime intermittent> ou <em|EDS avec sauts>. Typiquement, cela signifie que
  le mouvement brownien, ou diffusion, est appliqué de façon conditionnelle
  selon un événement aléatoire, ce qui ajoute une couche de non-linéarité et
  de discontinuité au modèle.

  Voici comment aborder ce type de problème et estimer le champ de vitesse
  <math|v>v en présence de ces dynamiques complexes :

  <subsection*|1. Modéliser la Dynamique Intermittente avec un Processus à
  Commutations Stochastiques>

  Dans ce cas, une manière courante de modéliser les trajectoires consiste à
  introduire un processus d'intermittence, souvent sous la forme d'un
  processus de Poisson ou de processus de Markov qui active ou désactive la
  composante brownienne de manière aléatoire.

  L'équation de la trajectoire devient alors :

  <equation*|dX<rsub|t>=v<around*|(|X<rsub|t>,t;\<theta\>|)><with|mode|text|
  >dt+<sqrt|2D><with|mode|text| >1<rsub|<around*|{|J<rsub|t>=1|}>><with|mode|text|
  >dW<rsub|t>>

  où :

  <\itemize>
    <item><math|J<rsub|t>> est un processus de commutation qui prend des
    valeurs discrètes (par exemple, <math|J<rsub|t>=1> signifie que la
    diffusion est active et <math|J<rsub|t>=0> qu'elle est inactive),

    <item><math|1<rsub|<around*|{|J<rsub|t>=1|}>>> est une indicatrice qui
    active ou désactive le terme brownien en fonction de l'état de
    <math|J<rsub|t>>,

    <item><math|W<rsub|t>> est un mouvement brownien,

    <item><math|v<around*|(|X<rsub|t>,t;\<theta\>|)>> est le champ de vitesse
    dépendant des paramètres <math|\<theta\>> que l'on souhaite estimer.
  </itemize>

  Le processus <math|J<rsub|t>> peut être modélisé par un processus de saut
  ou un processus de Markov à deux états, avec des taux de transition
  <math|\<lambda\><rsub|01>> (de l'état 0 à l'état 1) et
  <math|\<lambda\><rsub|10>> (de l'état 1 à l'état 0).

  <subsection*|2. Méthodes d'Estimation en Présence d'un Processus de
  Commutation>

  L'ajout du processus <math|J<rsub|t>> impose des adaptations dans la
  méthode d'estimation de <math|v>v, car on ne peut pas supposer que la
  diffusion est constamment active. Voici les étapes adaptées pour
  l'estimation :

  <subsubsection*|a. Identification des Intervalles d'Activation et
  Désactivation>

  À partir des trajectoires observées, il faut identifier les intervalles de
  temps où le mouvement brownien semble actif et ceux où il est inactif. Cela
  peut être fait en segmentant les trajectoires en fonction de l'amplitude de
  la variation : les segments avec des fluctuations importantes correspondent
  aux périodes où <math|J<rsub|t>=1>, et les segments plus réguliers
  indiquent <math|J<rsub|t>=0>.

  <subsubsection*|b. Maximisation de la Vraisemblance Conditionnelle>

  Avec les segments identifiés, on peut utiliser une approche de
  <em|vraisemblance conditionnelle>. Pendant les périodes où
  <math|J<rsub|t>=1>, la trajectoire suit la dynamique avec diffusion :

  <equation*|E<around*|[|\<Delta\>x<rsub|i>|]>=v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<Delta\>t>

  et la variance est proportionnelle à <math|2D\<Delta\>t>. En revanche,
  pendant les périodes où <math|J<rsub|t>=0>, on néglige la contribution du
  terme brownien, et on suppose que :

  <equation*|\<Delta\>x<rsub|i>\<approx\>v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<Delta\>t>

  La fonction de vraisemblance devient alors :

  <equation*|L<around*|(|\<theta\>,D,\<lambda\>|)>=<big|prod><rsub|i><big|prod><rsub|t<rsub|k>><around*|{|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|<with|math-level|0|math-display|false|exp\<nospace\><around*|(|-<frac|\<parallel\>\<Delta\>x<rsub|i>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<Delta\>t\<parallel\><rsup|2>|4D\<Delta\>t>|)>>>|<cell|<with|math-level|0|math-display|false|<with|mode|text|si<nbsp>>J<rsub|t>=1>>>|<row|<cell|<with|math-level|0|math-display|false|exp\<nospace\><around*|(|-<frac|\<parallel\>\<Delta\>x<rsub|i>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<Delta\>t\<parallel\><rsup|2>|\<sigma\><rsup|2>>|)>>>|<cell|<with|math-level|0|math-display|false|<with|mode|text|si<nbsp>>J<rsub|t>=0>>>>>>|\<nobracket\>>>

  où <math|\<lambda\>>\<lambda\> représente les taux de transition du
  processus <math|J<rsub|t>>.

  <subsubsection*|c. Optimisation conjointe des Paramètres>

  On peut alors estimer les paramètres <math|\<theta\>>, <math|D>, et
  <math|\<lambda\>> en maximisant la vraisemblance
  <math|L<around*|(|\<theta\>,D,\<lambda\>|)>>. Cette optimisation peut être
  faite en utilisant des méthodes de Monte Carlo pour gérer la discontinuité
  induite par le processus <math|J<rsub|t>>, ou des algorithmes de type EM
  (Expectation-Maximization) pour estimer séquentiellement les périodes
  <math|J<rsub|t>=1> et <math|J<rsub|t>=0>.

  <subsubsection*|d. Filtre de Kalman Hybride et Filtrage Particulaire>

  Pour estimer <math|v>v en ligne, c'est-à-dire au fur et à mesure des
  observations, des méthodes comme le filtre de Kalman hybride ou le filtrage
  particulaire peuvent être utilisées. Ces méthodes permettent de mettre à
  jour l'estimation de <math|v>, <math|D>, et <math|J<rsub|t>> au fur et à
  mesure, en combinant estimation des états continus (la position et la
  vitesse) et des états discrets (le processus <math|J<rsub|t>>).

  <subsection*|3. Validation du Modèle et Simulations>

  Il est important de simuler des trajectoires en utilisant les valeurs
  estimées pour <math|v>, <math|D>, et <math|\<lambda\>>, puis de comparer
  ces trajectoires simulées aux trajectoires expérimentales pour valider la
  qualité de l'ajustement. Les simulations permettent de vérifier si le
  modèle reproduit bien les caractéristiques des trajectoires intermittentes
  observées.

  En somme, l'estimation du champ de vitesse dans ce cas nécessite de prendre
  en compte l'intermittence du mouvement brownien, ce qui peut être fait via
  une EDS avec commutation aléatoire. La maximisation de la vraisemblance, le
  filtrage particulaire, ou l'EM sont des outils efficaces pour traiter les
  sauts de diffusion et estimer simultanément le champ de vitesse <math|v> et
  les paramètres de commutation.

  \;

  <with|color|dark yellow|<section|Cas <math|D=0>>>

  Si on supprime le terme brownien, le modèle devient entièrement
  déterministe dans les phases actives. Autrement dit, les trajectoires sont
  alors gouvernées par un champ de vitesse <math|v> lorsqu'elles sont actives
  (c'est-à-dire lorsque <math|J<rsub|t>=1>), et elles n'ont aucun mouvement
  lorsque <math|J<rsub|t>=0>.

  Dans ce cas, l'équation de la trajectoire <math|X<rsub|t>> se simplifie en
  :

  <equation*|\<mathd\>X<rsub|t>=<with|font|roman|<embbb|1>><rsub|<around*|{|J<rsub|t>=1|}>><with|mode|text|
  >v<around*|(|X<rsub|t>,t;\<theta\>|)><with|mode|text| >\<mathd\>t>

  où :

  <\itemize>
    <item><math|J<rsub|t>> est un processus de commutation aléatoire (par
    exemple, un processus de Markov à deux états) qui alterne entre des
    phases d'activation (<math|J<rsub|t>=1>) et de repos
    (<math|J<rsub|t>=0>),

    <item><math|v<around*|(|X<rsub|t>,t;\<theta\>|)>> est le champ de vitesse
    dépendant de paramètres <math|\<theta\>> que l'on cherche à estimer.
  </itemize>

  <subsection*|Étapes d'Estimation dans un Modèle Complètement Déterministe
  avec Intermittence>

  Pour estimer le champ de vitesse <math|v> dans ce cadre, il suffit
  d'analyser les périodes actives, car les phases inactives ne fournissent
  aucune information dynamique. Voici les étapes d'estimation adaptées pour
  ce type de modèle.

  <subsubsection*|1. Identification des Phases Actives et Inactives>

  Comme précédemment, il est nécessaire de détecter les phases actives et
  inactives dans les trajectoires observées. Cela peut se faire en utilisant
  des algorithmes de détection de changement de vitesse, ou en identifiant
  les segments où la trajectoire présente un mouvement orienté correspondant
  au champ de vitesse <math|v>.

  <subsubsection*|2. Formulation de la Vraisemblance pour les Phases Actives>

  Puisque les trajectoires suivent uniquement le champ de vitesse <math|v>
  pendant les phases actives, la vraisemblance pour une trajectoire observée
  <math|<around*|(|x<rsub|i><around*|(|t|)>|)>> lors d'une phase active est
  basée sur l'écart entre les vitesses observées et celles prédites par
  <math|v>. La fonction de vraisemblance devient alors :

  <equation*|L<around*|(|\<theta\>,\<lambda\>|)>=<big|prod><rsub|<with|mode|text|actifs>>exp\<nospace\><around*|(|-<frac|\<parallel\><frac|\<Delta\>x<rsub|i>|\<Delta\>t>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<parallel\><rsup|2>|2\<sigma\><rsup|2>>|)>>

  où <math|\<sigma\><rsup|2>> représente une variance résiduelle qui tient
  compte des petites erreurs de mesure ou de modélisation.

  <subsubsection*|3. Estimation des Taux de Transition du Processus de
  Commutation>

  Le processus <math|J<rsub|t>> peut être modélisé par un processus de Markov
  binaire avec des taux de transition <math|\<lambda\><rsub|01>> et
  <math|\<lambda\><rsub|10>> représentant respectivement les probabilités de
  passage de l'état inactif à l'état actif et de l'état actif à l'état
  inactif. On peut estimer ces paramètres de transition en comptant le nombre
  de transitions observées dans les données et en calculant les durées
  moyennes des phases actives et inactives.

  <subsubsection*|4. Maximisation de la Vraisemblance>

  L'estimation de <math|v>v, des taux de transition
  <math|\<lambda\><rsub|01>> et <math|\<lambda\><rsub|10>>, et des paramètres
  associés se fait par maximisation de la vraisemblance
  <math|L<around*|(|\<theta\>,\<lambda\>|)>>. On optimise en utilisant des
  techniques numériques, telles que la descente de gradient ou des
  algorithmes de type Expectation-Maximization (EM), pour affiner les
  estimations des périodes actives et des paramètres de transition.

  <subsubsection*|5. Méthode Alternative : Moindres Carrés Sélectionnés sur
  les Phases Actives>

  Une approche alternative à la maximisation de la vraisemblance consiste à
  utiliser une méthode des moindres carrés, en ne considérant que les phases
  actives. On cherche alors à minimiser l'erreur entre la vitesse observée
  \ et la vitesse prédite par <math|v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>>
  dans les phases actives :

  <equation*|<below|min\<nospace\>|\<theta\>><big|sum><rsub|<with|mode|text|actifs>>\<parallel\><frac|\<Delta\>x<rsub|i>|\<Delta\>t>-v<around*|(|x<rsub|i><around*|(|t<rsub|k>|)>,t<rsub|k>;\<theta\>|)>\<parallel\><rsup|2>>

  Cette méthode peut être plus simple à mettre en ÷uvre, surtout si les
  données sont bien segmentées en phases actives et inactives.

  <subsubsection*|6. Validation du Modèle>

  Une fois les paramètres estimés, il est important de valider le modèle en
  simulant des trajectoires avec les valeurs estimées pour <math|v> et les
  paramètres de commutation <math|\<lambda\><rsub|01>> et
  <math|\<lambda\><rsub|10>>. Ces simulations permettront de s'assurer que le
  modèle intermittent reproduit bien les caractéristiques des trajectoires
  observées, en termes de vitesse et de fréquence des phases d'activation.

  En résumé, lorsque le modèle est purement déterministe et intermittent,
  l'estimation du champ de vitesse se concentre uniquement sur les périodes
  actives. Les méthodes de vraisemblance conditionnelle ou de moindres carrés
  appliquées aux phases actives permettent d'estimer le champ de vitesse
  <math|v> avec précision, tandis que l'identification des transitions
  actives/inactives permet d'estimer les paramètres de commutation du
  processus <math|J<rsub|t>>.

  \;

  <with|color|dark yellow|<section|Méthode PBDW>>

  La méthode<nbsp><strong|Parameterized-Background Data-Weak><nbsp>(PBDW) est
  une approche d'assimilation de données qui vise à intégrer des observations
  dans des modèles basés sur des équations aux dérivées partielles (EDP), en
  particulier dans le contexte de la prévision numérique et de la
  modélisation des systèmes dynamiques. Cette méthode représente une avancée
  par rapport à d'autres techniques d'assimilation de données, en se
  concentrant sur l'utilisation de données incomplètes ou incertaines tout en
  maintenant une certaine souplesse dans le traitement des paramètres du
  modèle.

  <subsection*|Contexte et motivation>

  Dans les systèmes dynamiques, notamment ceux modélisés par des EDP (comme
  la météo ou l'océanographie), il est fréquent que les données d'observation
  soient limitées, bruitées ou incomplètes. Les méthodes classiques
  d'assimilation de données, telles que la 3D-Var ou la 4D-Var, nécessitent
  souvent une connaissance précise des erreurs et des structures de
  covariance, ce qui peut être difficile à obtenir. La méthode PBDW vise à
  contourner ces limitations en adoptant une approche moins rigide dans la
  manière dont les données sont intégrées.

  <subsection*|Principes de la méthode PBDW>

  <subsubsection*|1. <strong|Approche Background Data-Weak>>

  Le terme <strong|"Data-Weak"> fait référence à une méthode qui ne nécessite
  pas de dépendance forte aux observations. Cela signifie que la méthode peut
  fonctionner même lorsque les données d'observation sont peu nombreuses ou
  bruyantes. Dans un cadre PBDW, l'objectif est de tirer parti des
  observations disponibles, mais sans en faire la pièce maîtresse de
  l'assimilation.

  <subsubsection*|2.<nbsp><strong|Parameterized Background>>

  Le terme<nbsp><strong|"Parameterized Background"><nbsp>indique que
  l'approche utilise une forme paramétrique pour représenter l'état de fond
  (background state) du système. Cela signifie que l'état du système est
  exprimé en termes de paramètres qui peuvent être ajustés en fonction des
  observations. Cette paramétrisation permet d'intégrer une certaine
  flexibilité dans la manière dont les informations sont utilisées pour
  améliorer les prévisions.

  <subsection*|Étapes de la méthode PBDW>

  <\enumerate>
    <item><strong|Modèle dynamique><nbsp>: On commence par un modèle
    dynamique décrit par une EDP, qui peut être formulée de manière
    paramétrique. Le modèle a une forme :

    <equation*|L<around*|(|u,\<theta\>|)>=0,>

    où<nbsp><math|u><nbsp>est la solution du modèle
    et<nbsp><math|\<theta\>><nbsp>représente les paramètres à identifier ou à
    estimer.

    <item><strong|Background State><nbsp>: Un état de
    fond<nbsp><math|u<rsub|b>><nbsp>est défini, souvent basé sur des
    prévisions précédentes ou une solution connue. Cet état est également
    paramétré pour capturer des caractéristiques importantes du système.

    <item><strong|Assimilation des données><nbsp>: Les observations
    disponibles,<nbsp><math|y>, sont intégrées dans le modèle de manière
    ``faible". Cela signifie que les observations sont utilisées pour ajuster
    les paramètres du modèle plutôt que d'imposer strictement la solution du
    modèle aux données.

    <item><strong|Formulation de l'erreur><nbsp>: Une fonction de coût est
    souvent définie pour mesurer l'écart entre l'état prédit par le modèle
    (avec des paramètres ajustés) et les observations. Cela peut impliquer
    une minimisation de l'erreur quadratique entre les données prédites et
    observées.

    <item><strong|Optimisation><nbsp>: Les paramètres sont optimisés par des
    techniques d'optimisation pour minimiser la fonction de coût. Cela permet
    d'affiner le modèle en tenant compte des incertitudes des données.
  </enumerate>

  <subsection*|Avantages de la méthode PBDW>

  <\itemize>
    <item><strong|Flexibilité><nbsp>: La méthode PBDW offre une flexibilité
    importante dans l'intégration des données, ce qui est essentiel lorsque
    les observations sont limitées ou bruitées.

    <item><strong|Robustesse><nbsp>: Elle est moins sensible aux erreurs de
    mesure et peut donner des résultats fiables même en présence
    d'incertitudes importantes.

    <item><strong|Adaptabilité><nbsp>: PBDW peut être appliquée à divers
    types de modèles et domaines, ce qui la rend très adaptable aux besoins
    spécifiques de différents systèmes dynamiques.
  </itemize>

  <subsection*|Applications de la méthode PBDW>

  <\itemize>
    <item><strong|Prévision météorologique><nbsp>: Dans le cadre de la
    prévision numérique, la méthode PBDW peut être utilisée pour intégrer des
    données météorologiques incomplètes ou incertaines afin d'améliorer la
    qualité des prévisions.

    <item><strong|Modélisation océanographique><nbsp>: Elle peut également
    être appliquée pour estimer les états océaniques à partir de données de
    surface limitées.

    <item><strong|Hydrologie><nbsp>: Dans les modèles hydrologiques, PBDW
    peut aider à ajuster les paramètres de modélisation basés sur des mesures
    d'écoulement ou de précipitation.
  </itemize>

  <subsection*|Conclusion>

  La méthode<nbsp><strong|Parameterized-Background Data-Weak
  (PBDW)><nbsp>représente une avancée dans l'assimilation de données pour les
  modèles d'EDP. En utilisant une approche flexible et robuste pour intégrer
  des observations, elle permet d'améliorer la prévision et la compréhension
  des systèmes dynamiques, même lorsque les données disponibles sont limitées
  ou incertaines. Cette méthode est particulièrement précieuse dans des
  domaines tels que la météorologie et l'océanographie, où les conditions
  dynamiques peuvent changer rapidement et où les données peuvent être
  sporadiques ou bruitées.

  \;

  \;

  \;

  <doc-data|<doc-title|LASSO>>

  La méthode LASSO (Least Absolute Shrinkage and Selection Operator) est une
  technique de régression utilisée principalement pour la sélection de
  variables et la régularisation. Elle est particulièrement utile lorsque
  vous avez un grand nombre de variables explicatives (prédicteurs) et que
  vous souhaitez construire un modèle prédictif tout en évitant le
  surajustement. Voici une explication détaillée de cette méthode :

  <subsection*|1. Principe de Base>

  LASSO est une forme de régression linéaire qui inclut une pénalisation sur
  la somme des valeurs absolues des coefficients des prédicteurs. L'idée
  principale est d'ajuster le modèle de régression tout en imposant une
  contrainte qui favorise la parcimonie dans la sélection des variables.

  <subsection*|2. Formulation Mathématique>

  L'objectif de LASSO est de minimiser la fonction de coût suivante :

  <equation*|<with|mode|text|Minimiser><space|1em>J<around*|(|\<beta\>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|y<rsub|i>-X<rsub|i>\<beta\>|)><rsup|2>+\<lambda\><big|sum><rsub|j=1><rsup|p>\<mid\>\<beta\><rsub|j>\<mid\>>

  où :

  <\itemize>
    <item><math|y<rsub|i>> : la variable dépendante (cible).

    <item><math|X<rsub|i>> : le vecteur des variables indépendantes
    (prédicteurs) pour l'observation <math|i>i.

    <item><math|\<beta\>> : le vecteur des coefficients associés aux
    prédicteurs.

    <item><math|n> : le nombre d'observations.

    <item><math|p> : le nombre de prédicteurs.

    <item><math|\<lambda\>> : le paramètre de régularisation, qui contrôle le
    degré de pénalisation des coefficients.
  </itemize>

  <subsection*|3. Composantes de la Fonction de Coût>

  <\itemize>
    <item><strong|Erreur Quadratique> : La première partie de la fonction de
    coût, <math|<big|sum><rsub|i=1><rsup|n><around*|(|y<rsub|i>-X<rsub|i>\<beta\>|)><rsup|2>>,
    mesure la somme des carrés des erreurs, représentant la qualité de
    l'ajustement du modèle aux données.

    <item><strong|Pénalisation L1> : La deuxième partie,
    <math|\<lambda\><big|sum><rsub|j=1><rsup|p>\<mid\>\<beta\><rsub|j>\<mid\>>,
    est la régularisation L1. Cette contrainte pénalise les grands
    coefficients et pousse certains d'entre eux à être exactement nuls. Cela
    permet de réaliser une sélection de variables en éliminant celles qui
    n'ont pas d'impact significatif sur la variable cible.
  </itemize>

  <subsection*|4. Interprétation du Paramètre de Régularisation
  <math|\<lambda\>>>

  <\itemize>
    <item>Lorsque <math|\<lambda\>=0>, LASSO revient à la régression linéaire
    classique sans régularisation.

    <item>En augmentant <math|\<lambda\>>, on impose une pénalisation plus
    forte, ce qui peut réduire la variance du modèle, mais au prix d'une
    augmentation du biais.

    <item>Pour choisir la meilleure valeur de <math|\<lambda\>>, on peut
    utiliser des méthodes comme la validation croisée. Cela permet d'évaluer
    la performance du modèle avec différentes valeurs de <math|\<lambda\>> et
    de sélectionner celle qui minimise l'erreur de prédiction.
  </itemize>

  <subsection*|5. Avantages de LASSO>

  <\itemize>
    <item><strong|Sélection de Variables> : LASSO est efficace pour
    identifier les variables les plus importantes dans un modèle, surtout
    lorsqu'il y a une grande dimensionnalité.

    <item><strong|Réduction du Surajustement> : En réduisant la complexité du
    modèle, LASSO aide à éviter le surajustement, ce qui améliore les
    performances sur des données de test.

    <item><strong|Interprétabilité> : Les modèles résultants sont souvent
    plus simples et plus faciles à interpréter grâce à la réduction du nombre
    de variables.
  </itemize>

  <subsection*|6. Limites de LASSO>

  <\itemize>
    <item><strong|Corrélation entre Variables> : Si deux variables
    prédictives sont fortement corrélées, LASSO tend à en sélectionner une au
    détriment de l'autre, ce qui peut mener à une perte d'information.

    <item><strong|Modèles Non Linéaires> : LASSO est basé sur un modèle
    linéaire ; pour des relations non linéaires, d'autres méthodes comme le
    LASSO généralisé ou les arbres de décision peuvent être plus appropriés.
  </itemize>

  <subsection*|7. Mise en ÷uvre>

  LASSO peut être facilement implémenté dans de nombreux langages de
  programmation et bibliothèques statistiques. Par exemple, en Python, on
  peut utiliser la bibliothèque <code*|scikit-learn> :

  <\python>
    from sklearn.linear_model import Lasso

    \;

    # Création de l objet Lasso avec un paramètre lambda

    lasso = Lasso(alpha=0.1)

    \;

    # Ajustement du modèle

    lasso.fit(X_train, y_train)

    \;

    # Prédictions

    predictions = lasso.predict(X_test)

    \;

    # Coefficients

    coefficients = lasso.coef_

    \;
  </python>

  <subsection*|Conclusion>

  En résumé, la méthode LASSO est un outil puissant pour la régression et la
  sélection de variables, particulièrement utile dans des contextes où les
  données sont nombreuses et les variables sont corrélées. Sa capacité à
  réduire le nombre de variables tout en maintenant la performance du modèle
  en fait une approche couramment utilisée dans l'analyse de données, la
  modélisation prédictive et l'apprentissage automatique.

  \;

  <doc-data|<doc-title|LASSO généralisé>>

  Le LASSO généralisé, souvent appelé <strong|GLASSO> (Generalized Least
  Absolute Shrinkage and Selection Operator), est une extension de la méthode
  LASSO qui permet de s'adapter à des situations plus complexes où les
  données peuvent suivre une distribution non gaussienne ou lorsque l'on
  souhaite modéliser des relations non linéaires. Le GLASSO est
  particulièrement utilisé dans les contextes de la statistique et de
  l'apprentissage automatique pour la sélection de variables et la
  régularisation.

  <subsection*|1. Principe du LASSO Généralisé>

  Le GLASSO étend le LASSO en permettant de travailler avec des distributions
  d'erreurs non normales (par exemple, binomiale, poissonienne) et en
  intégrant des méthodes pour gérer les relations entre variables. Cela le
  rend plus flexible et applicable à un éventail plus large de problèmes.

  <subsection*|2. Formulation Mathématique>

  La formulation de base du LASSO généralisé peut être exprimée comme suit :

  <equation*|<with|mode|text|Minimiser><space|1em>J<around*|(|\<beta\>|)>=<big|sum><rsub|i=1><rsup|n>L<around*|(|y<rsub|i>,<wide|y|^><rsub|i>|)>+\<lambda\><big|sum><rsub|j=1><rsup|p>\<mid\>\<beta\><rsub|j>\<mid\>>

  où :

  <\itemize>
    <item><math|L<around*|(|y<rsub|i>,<wide|y|^><rsub|i>|)>> est la fonction
    de perte qui mesure l'erreur entre les valeurs observées <math|y<rsub|i>>
    et les valeurs prédites <math|<wide|y|^><rsub|i>> (par exemple, la perte
    logistique pour des données binomiales).

    <item>Le terme de régularisation <math|\<lambda\><big|sum><rsub|j=1><rsup|p>\<mid\>\<beta\><rsub|j>\<mid\>>
    reste le même que dans le LASSO classique, servant à encourager la
    parcimonie en forçant certains coefficients à être nuls.
  </itemize>

  <subsection*|3. Composantes de la Fonction de Coût>

  <\itemize>
    <item><strong|Fonction de Perte> : Contrairement à LASSO, qui utilise une
    perte quadratique, le GLASSO permet d'utiliser diverses fonctions de
    perte adaptées à des distributions différentes. Par exemple, pour des
    données binomiales, on pourrait utiliser la fonction de perte logistique
    :

    <equation*|L<around*|(|y<rsub|i>,<wide|y|^><rsub|i>|)>=-<around*|(|y<rsub|i>log\<nospace\><around*|(|<wide|y|^><rsub|i>|)>+<around*|(|1-y<rsub|i>|)>log\<nospace\><around*|(|1-<wide|y|^><rsub|i>|)>|)>>

    \;

    <item><strong|Pénalisation L1> : Comme pour le LASSO, la régularisation
    L1 est utilisée pour encourager la sélection de variables, mais le GLASSO
    permet également d'incorporer des pénalisations supplémentaires si
    nécessaire, comme la pénalisation L2 (ridge).
  </itemize>

  <subsection*|4. Avantages du LASSO Généralisé>

  <\itemize>
    <item><strong|Flexibilité> : GLASSO peut être appliqué à une variété de
    modèles statistiques, y compris ceux qui nécessitent des distributions
    d'erreurs spécifiques, ce qui le rend adapté à différents types de
    données.

    <item><strong|Sélection de Variables> : Tout comme LASSO, GLASSO permet
    la sélection de variables tout en évitant le surajustement, mais avec la
    possibilité d'utiliser des modèles non linéaires ou des variables
    dépendantes.

    <item><strong|Gestion des Corrélations> : GLASSO est souvent utilisé dans
    des contextes où les variables prédictives sont corrélées, car il peut
    s'adapter à ces structures tout en sélectionnant un sous-ensemble de
    variables pertinentes.
  </itemize>

  <subsection*|5. Application du LASSO Généralisé>

  Le LASSO généralisé est souvent utilisé dans des domaines tels que :

  <\itemize>
    <item><strong|Bioinformatique> : Pour sélectionner des gènes
    significatifs à partir de données d'expression génique.

    <item><strong|Économie> : Dans les modèles de régression avec des
    variables dépendantes et non gaussiennes.

    <item><strong|Apprentissage Automatique> : Pour créer des modèles
    prédictifs robustes qui incluent la sélection de variables.
  </itemize>

  <subsection*|6. Mise en ÷uvre>

  Le LASSO généralisé peut être mis en ÷uvre dans plusieurs environnements de
  programmation. Par exemple, en Python, des bibliothèques telles que
  <code*|statsmodels> ou <code*|scikit-learn> peuvent être utilisées pour
  appliquer le GLASSO à différents types de modèles.

  \;

  <\python>
    import numpy as np

    import statsmodels.api as sm

    \;

    # Exemple de données

    X = np.random.rand(100, 10)

    y = np.random.binomial(n=1, p=0.5, size=100)

    \;

    # Modèle GLASSO (par exemple, régression logistique avec LASSO)

    model = sm.GLM(y, X, family=sm.families.Binomial(),
    link=sm.families.links.logit())

    results = model.fit_regularized(method='elastic_net', alpha=0.1, L1_wt=1)

    \;

    # Coefficients estimés

    coefficients = results.params

    \;
  </python>

  <subsection*|7. Limites du LASSO Généralisé>

  <\itemize>
    <item><strong|Complexité Computationnelle> : Bien que GLASSO soit plus
    flexible, il peut également être plus complexe à ajuster et à
    interpréter, en particulier avec des modèles non linéaires.

    <item><strong|Choix de la Fonction de Perte> : La performance du GLASSO
    dépend fortement de la sélection appropriée de la fonction de perte et du
    paramètre de régularisation <math|\<lambda\>>.
  </itemize>

  <subsection*|Conclusion>

  En résumé, le LASSO généralisé est une méthode puissante et flexible pour
  la régression et la sélection de variables qui permet de travailler avec
  des modèles non linéaires et des distributions d'erreurs variées. En
  combinant les avantages du LASSO classique avec une approche généralisée,
  le GLASSO est largement utilisé dans divers domaines où la complexité des
  données nécessite des solutions plus robustes.

  \;

  <section|STLS>

  \;

  Recently, Rudy et al. (2017) proposed to utilize sparse regression to
  approximate the solution of \<xi\> as follows,\ 

  2\ 

  \<xi\>=argmin\<xi\>\B \<Theta\>\<xi\>\B\<minus\>Ut +\<lambda\> \<xi\>\B .
  (2.5) 20\ 

  It means that the prescribed terms only show up in the derived PDE if their
  effect on\ 

  the error \<Theta\>\<xi\>\B \<minus\> Ut is over their addition to \<xi\>\B\ 

  right-hand side of equation (2.5), makes this problem
  np-hard.<next-line>Specifically, the convex relaxation of the l0
  optimization problem in equation (2.5) can\ 

  be written as\ 

  0\ 

  . The l0 term, i.e. the last term on the\ 

  2\ 

  \<xi\>=argmin\<xi\>\B \<Theta\>\<xi\>\B\<minus\>Ut +\<lambda\> \<xi\>\B .
  (2.6) 21\ 

  This convex optimization problem can be solved by the least absolute
  shrinkage and selection operator (LASSO) (Tibshirani 1996). However,
  previous studies demonstrated that LASSO tends to have difficulty in
  finding a sparse basis if the columns in the matrix \<Theta\> are
  correlated. Recently, Rudy et al. (2017) proposed an alternative method
  called sequentially threshold least squares (STLS) method. In STLS, a least
  squares predictor is obtained and a hard threshold is performed on the
  regression coefficients. The process is repeated recursively on the
  remaining nonzero coefficients.\ 

  As reported by Rudy et al. (2017), STLS performed better than LASSO in most
  of cases but still has the challenge of correlation in the data. In order
  to overcome this problem, ridge regression with an l2 regularizer has been
  proposed by Rudy et al. (2017) to replace the least squares in STLS, that
  is,\ 

  \<xi\>\B = arg min\<xi\> \<parallel\>\<Theta\>\<xi\> \<minus\>
  Ut\<parallel\>2 + \<lambda\> \<parallel\>\<xi\>\<parallel\>2 = (\<Theta\>T
  \<Theta\> + \<lambda\>I)\<minus\>1\<Theta\>T Ut. (2.7)\ 

  This method is called sequential threshold ridge regression (STRidge) (Rudy
  et al. 2017). A variation of test cases in the recent works Rudy et al.
  (2017, 2019) have demonstrated that STRidge has the best empirical
  performance. Note that a different threshold tolerance would result in a
  different level of sparsity in the final solution. To find the best
  tolerance, predictors are trained for varying tolerances and their
  performances are evaluated.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-100|<tuple|9|?>>
    <associate|auto-101|<tuple|9|?>>
    <associate|auto-102|<tuple|9|?>>
    <associate|auto-103|<tuple|9|?>>
    <associate|auto-104|<tuple|9|?>>
    <associate|auto-105|<tuple|9|?>>
    <associate|auto-106|<tuple|5|?>>
    <associate|auto-107|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-108|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-109|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-110|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-111|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-112|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-113|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-114|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-115|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-116|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-117|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-118|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-119|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-120|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-121|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-122|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-123|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-124|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-125|<tuple|10|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-15|<tuple|2.2|?>>
    <associate|auto-16|<tuple|2.2|?>>
    <associate|auto-17|<tuple|2.2|?>>
    <associate|auto-18|<tuple|5|?>>
    <associate|auto-19|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-25|<tuple|2.3|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-28|<tuple|6|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-35|<tuple|3|?>>
    <associate|auto-36|<tuple|3|?>>
    <associate|auto-37|<tuple|2|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-39|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-4|<tuple|1.2.1|1>>
    <associate|auto-40|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-41|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-43|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-44|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-45|<tuple|4|?>>
    <associate|auto-46|<tuple|4.1|?>>
    <associate|auto-47|<tuple|4.1|?>>
    <associate|auto-48|<tuple|4.1|?>>
    <associate|auto-49|<tuple|3|?>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-50|<tuple|5|?>>
    <associate|auto-51|<tuple|5|?>>
    <associate|auto-52|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-53|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-54|<tuple|4|?>>
    <associate|auto-55|<tuple|4.2|?>>
    <associate|auto-56|<tuple|4.2|?>>
    <associate|auto-57|<tuple|3|?>>
    <associate|auto-58|<tuple|3|?>>
    <associate|auto-59|<tuple|3|?>>
    <associate|auto-6|<tuple|2.1|2>>
    <associate|auto-60|<tuple|3|?>>
    <associate|auto-61|<tuple|5|?>>
    <associate|auto-62|<tuple|5|?>>
    <associate|auto-63|<tuple|5|?>>
    <associate|auto-64|<tuple|5|?>>
    <associate|auto-65|<tuple|5|?>>
    <associate|auto-66|<tuple|5|?>>
    <associate|auto-67|<tuple|5|?>>
    <associate|auto-68|<tuple|5|?>>
    <associate|auto-69|<tuple|5|?>>
    <associate|auto-7|<tuple|2.1|2>>
    <associate|auto-70|<tuple|5|?>>
    <associate|auto-71|<tuple|3|?>>
    <associate|auto-72|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-73|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-74|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-75|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-76|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-77|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-78|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-79|<tuple|4|?>>
    <associate|auto-8|<tuple|6|2>>
    <associate|auto-80|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-81|<tuple|6|?>>
    <associate|auto-82|<tuple|6|?>>
    <associate|auto-83|<tuple|3|?>>
    <associate|auto-84|<tuple|7|?>>
    <associate|auto-85|<tuple|7|?>>
    <associate|auto-86|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-87|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-88|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-89|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-90|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-91|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-92|<tuple|8|?>>
    <associate|auto-93|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-94|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-95|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-96|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-97|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-98|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-99|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc><with|color|<quote|dark
      yellow>|Moindres carrés>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Principe
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>La régession linéaire
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.2.1<space|2spc>Maximum de vraisemblance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc><with|color|<quote|dark
      yellow>|Optimisation par gradient : ADAM et
      RMSprop<resize|<with|color|<quote|red>|>||||>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|color|<quote|dark
      yellow>|Optimisation globale et heuristique<resize|<with|color|<quote|red>|>||||>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Algorithme génétique
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Algorithme de colonies de
      fourmis <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>Recuit-simulé
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>4D-Var>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Identification
      paramétrique dans les EDP> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Techniques de collocation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Shooting methods
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>SINDy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>