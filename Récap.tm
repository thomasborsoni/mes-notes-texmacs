<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Courte note récapitulative>>

  <section|Overview>

  <with|font-series|bold|Question centrale : \PQu'apporte un modèle
  microscopique ?\Q>\ 

  Ambiance générale : Comprendre les mécanismes comportementaux qui
  sous-tendent les déplacements collectifs. Comprendre
  <with|font-series|bold|l'émergence> des mécanismes collectifs depuis les
  mécanismes individuels.

  <section|Motivations>

  <subsection|Mécanismes collectifs d'intérêt ou observés>

  <with|font-shape|italic|<with|font-series|bold|Création de réseaux et flux
  au sein de ceux-ci.>> Dans un cadre bi-directionnel.

  - Comment sont <with|font-series|bold|créés> les pistes (trail) ?

  - Comment est <with|font-series|bold|optimisé> le fourrage (foraging) ?
  Chemin le plus court, flux maximal (et sécurité des workers)

  - Notions d'auto-organisation et de coopération ?

  - Règles de traffic (\Pcode de la route\Q cf. <with|font-shape|italic|Ant
  Traffic Rules>, règles de priorité)

  - Le flux satisfait un \PTwo-phase flow\Q (diagramme fondamental) et bonne
  gestion de la congestion ('Experimental<text-dots>' Poissonnier et al.
  2019)

  \;

  <subsection|Motivations hors biologie>

  - Les comportements ont inspiré des algos d'optimisation globale (voyageur
  de commerce). Meilleure compréhension bio pourrait mener au
  perfectionnement de ces algos.

  - Extrapolation vers les voitures autonomes

  <section|Questions que l'on pourrait poser>

  - <with|font-series|bold|Proposer un modèle micro simple qui explique le
  two-phase flow et la la formule de la vitesse moyenne en fonction du nombre
  de collision><with|font-series|bold|s> <with|font-series|bold|?> (cf.
  'Experimental<text-dots>' Poissonnier et al. 2019)

  - La concentration de phéromone est-elle uniforme le long de la piste :
  pour savoir dans quelle direction le suivre, y a t'il un gradient ou bien
  est-ce une info préalabe ?

  - Étudier le rôle des confrontations (collisions) dans ces flux

  - Dépendance du débit en fonction de l'épaisseur

  - Le rôle des phéromones est-il effectivement nul dans cette expérience ou
  bien joue-t-il tout de même un rôle ?

  - Concernant sa vue : comment est son champ de vision ? Importance de la
  prise en compte du champ visuel pour la trajectoire ?

  <section|Modèles microscopiques existants>

  Question étudiée : quelles règles microscopique cohérentes permettent de
  créer et suivre un trail ? <math|\<rightarrow\>> Weber's law (dépendance
  linéaire en la concentration de phéromones) ou Deneubourg's law (dépendance
  linéaire en la concentration de phéromones à une puissance) pour
  l'orientation par la force de l'appel de phéromones. La plupart des travaux
  regarde la formation de <with|font-shape|italic|trails> (pistes).

  - Reinforcement Random Walk : (e.g. Garnier 2015) modèle de marche
  aléatoire avec renforcement phéromonal. A tout instant l'angle est choisi
  selon une Pareto/Normale.

  \PAn ant navigation model based on Weber's law\Q Amorim-Goudon-Peruani :
  correlated random walk (reinforced random walk)

  \PAnalysis of a model of self-propelled agents interacting through
  pheromone\Q Amorim - Goudon

  Pour <math|t\<gtr\>0>, ils étudient le système d'ODEs

  <\equation*>
    <wide|v<rsub|i>|\<dot\>>=-<frac|1|\<tau\>><around*|(|v<rsub|i>-F<around*|(|x<rsub|i>,v<rsub|i>,P|)>|)>.
  </equation*>

  avec <math|P<around*|(|t,x|)>> la concentration de phéromone, et <math|F>
  capture la loi de Weber.

  <section|Modèle évoqué lors de notre réunion>

  Le modèle que l'on avait évoqué lors de la réunion est le suivant (type
  Boltzmann) :

  Chaque agent suit une trajectoire rectiligne à vitesse constante jusqu'à
  rencontrer un agent de l'autre groupe, auquel cas il y a arrêt pendant une
  durée tirée selon une certaine loi, puis re-tirage de l'orientation des
  deux agents en prenant en compte la direction cible et potentiellement les
  autres agents dans le champ visuel.

  On peut l'écrire, à l'échelle mésoscopique, comme suit :

  <\equation*>
    \<partial\><rsub|t>f+v\<cdot\>\<nabla\><rsub|x>f=Q<around*|(|f<around*|(|s,x,\<cdot\>|)><rsub|s\<leq\>
    t>,f<around*|(|s,x,\<cdot\>|)><rsub|s\<leq\> t>|)>,
  </equation*>

  C'est un modèle de type Boltzmann où les collisions ne sont pas
  instantanées. Possibilité de simulation par DSMC.

  <section|Quelques histogrammes>

  <with|font-shape|italic|Les données utilisées pour les tracés sont celles
  du 16 janvier.>

  <\big-figure|<image|/Users/thomasborsoni/Desktop/Post-doc/Projet
  fourmis/Programmes/histogram_v_mag_100_bins.pdf|.5par|||>
  <image|/Users/thomasborsoni/Desktop/Post-doc/Projet
  fourmis/Programmes/histogram_v_mag_10000_bins.pdf|.5par|||>>
    Histogramme de la magnitude des vitesses. À gauche : 100 bins, échelle
    linéaire. À droite : 10000 bins, échelle log.
  </big-figure>

  On observe deux phénomènes sur l'histogramme ci-dessus : <math|>\<sim\>15%
  des valeurs sont inférieures à 1 : ce bin est sur-représenté comparé aux
  autres ; la répartition des vitesse est globalement uniforme de 1
  <math|\<sim\>> 2 jusqu'à 20 avec un léger mieux vers 18, après quoi il y a
  un déclin. Il semble donc raisonnable de considérer que la vitesse prend
  ses valeurs dans un intervalle, avec une \Pvitesse de croisière\Q autour de
  20, des freinages fréquents et la présence significative d'arrêts (et
  peut-être une sur-accélération occasionnelle).

  <\big-figure>
    <image|/Users/thomasborsoni/Desktop/Post-doc/Projet
    fourmis/fig_tps_x.png|.7par|||>
  <|big-figure>
    Histogramme du temps d'attente à l'arrêt, avec pour comparaison le tracé
    de la fonction\ 

    <math|x\<mapsto\>10<rsup|-2>\<cdot\>x<rsup|-3/2>>. L'axe des abscisse est
    en frames (1/25 s).
  </big-figure>

  \;

  On considère l'agent à l'arrêt quand sa vitesse est inférieure à 1. Temps
  d'attente à l'arrêt moyen : 33 frames (<math|=1.32 s>). On observe sur cet
  histogramme qu'un fit par une loi exponentielle ne colle pas, mais qu'une
  <with|font-series|bold|modélisation> par une telle loi n'est pas
  déraisonnable.

  Pour être précis, <with|font-shape|italic|<with|font-shape|right|on ne
  trace pas l'histogramme du> temps d'attente par arrêt> mais plus
  grossièrement <with|font-shape|italic|du temps total arrêté> sur toute la
  section. Ce graphique est donc plutôt illustratif et indicatif.

  <section|Une proposition de modèle>

  Un modèle, relativement simple, et que je souhaiterais mettre en avant, qui
  contient les informations <with|color|dark magenta|chimique>, (au besoin,
  de <with|color|dark blue|suivi>), de <with|color|dark cyan|frottements> et
  de <with|color|dark green|dialogues>.

  <\equation>
    <wide|v<rsub|>|\<dot\>><rsub|i,souhaité><rsub|>=<with|color|dark
    magenta|<frac|1|\<tau\><rsub|chem>><around*|(|V<rsub|i>-v<rsub|i>|)>><with|color|dark
    blue|<space|1.8spc><around*|(|+Cucker Smale|)>> <with|color|dark
    cyan|-<frac|<embbb|1><rsub|frot>|\<tau\><rsub|frot>>*v<rsub|i>>+<with|color|dark
    orange|<sqrt|2D>\<xi\><rsub|i>>,
  </equation>

  \;

  <\equation*>
    v<rsub|i>=<with|color|dark green|<embbb|1><rsub|dial>>\<times\>v<rsub|i,souhaité>.
  </equation*>

  Dans notre cadre,

  <space|4em>\<bullet\> <with|color|dark magenta|<math|V<rsub|i>>> ne peut
  prendre que 2 valeurs (selon la direction), et correspond à
  <math|F<around*|(|x<rsub|i>,v<rsub|i>,P|)>> de Amorim & Goudon

  <space|4em>\<bullet\> Les <with|color|dark cyan|frottements> surviennent
  lorsqu'une zone latérale est occupée

  <space|4em>\<bullet\> Un peu d'<with|color|dark orange|exploration>

  <space|4em>\<bullet\> Le <with|color|dark green|dialogue> survient lors de
  l'entrée d'une fourmi de l'autre groupe dans la zone des antennes, dont la
  durée suit une certaine loi

  <space|4em>\<bullet\> On pourrait, au besoin, rajouter un <with|color|dark
  blue|Cucker-Smale> pour aligner la vitesse sur les fourmis la précédent
  dans son champ visuel

  \;

  On pourrait étudier les implications et la pertinence de chaque bout du
  modèle. Les attentes sont les suivantes : <math|<with|color|dark
  magenta|<frac|1|\<tau\><rsub|chem>><around*|(|V<rsub|i>-v<rsub|i>|)>>>
  donne la direction générale de chaque groupe, <math|<with|color|dark
  cyan|-<frac|<embbb|1><rsub|frot>|\<tau\><rsub|frot>>*v<rsub|i>>> couplé à
  <math|<with|color|dark green|<embbb|1><rsub|dial>>>

  implique l'apparition de congestion légère occasionnelle, et
  <math|<with|color|dark orange|<sqrt|2D>\<xi\><rsub|i>>> permet de
  fluidifier la dynamique. Au besoin, l'ajout d'un <with|color|dark
  blue|Cucker-Smale> pourrait peut-être expliquer des phénomènes de
  sur-accélération (cf. facteur <math|\<alpha\>+\<beta\> k
  e<rsup|-\<gamma\>k><rsup|>>).

  \;

  <section|SINDy>

  Supposons que l'on ait une équation de la forme
  <math|<wide|X|\<dot\>><rsub|t>=V<around*|(|X<rsub|t>,t|)>>

  On considère une librairie de fonctions <math|\<Theta\><around*|(|X,t|)>>
  (par exemple <math|<around*|[|1,X,X<rsup|2>,X<rsup|3>,sin\<nospace\><around*|(|X|)>,cos\<nospace\><around*|(|X|)>,t,X
  t,t<rsup|2>|]>>)

  On cherche à identifier un sous-ensemble minimal de termes qui gouvernent
  la dynamique du système, de telle sorte que l'on puisse écrire par exemple
  <math|V<around*|(|X<rsub|t>,t|)>=2 X<rsub|t><rsup|2>+X<rsub|t>\<cdot\> t>.

  On voudrait donc trouver un vecteur <math|\<xi\>> sparse tel que
  <math|<wide|X<rsub|t>|\<dot\>>\<approx\>\<Theta\><around*|(|X<rsub|t>|)>
  \<xi\>> : on va donc chercher à résoudre

  <\equation*>
    <below|min\<nospace\>|\<xi\>>\<parallel\><wide|X|\<dot\>><rsub|t>-<big|sum><rsub|j>\<xi\><rsub|j>
    \<theta\><rsub|j><around*|(|X<around*|(|t|)>,t|)>\<parallel\><rsup|2>+\<lambda\>\<parallel\>\<xi\>\<parallel\><rsub|0>
  </equation*>

  Comme le problème avec la norme 0 est np-dur, on peut remplacer par
  <math|\<parallel\>\<xi\>\<parallel\><rsub|1>>et faire un LASSO. En
  pratique, on préfère d'autres méthodes que la régularisation
  <math|L<rsup|1>>, comme la \Psequential thresholded least square\Q
  (sparsification forcée en alternance avec un moindres carrés classique),
  plus robuste.

  C'est une méthode très efficace si la librairie est bien choisie dans le
  problème considéré.\ 

  <section|Quelques extraits>

  Extrait de la thèse de Audrey Dussutour :

  \P<with|font-shape|italic|Lorsque le trafic de fourmis est important, les
  contacts qui ont lieu au niveau de la piste résultent principalement de la
  confrontation entre les fourmis qui reviennent de la source et celles qui
  sortent du nid. Ces contacts pourraient permettre le transfert
  d'information concernant les caractéristiques de la source de nourriture
  comme le suggère Burd et Aranwela (2003) [<text-dots>] L'idée d'un
  transfert d'information par l'intermédiaire des rencontres avait
  initialement été introduite par Moffett [<text-dots>]. Cet auteur montre
  que les fourmis transportant une charge utilisent les contacts établis avec
  les fourmis chargées afin de s'orienter correctement dans la direction du
  nid. Ce mécanisme permet aux fourmis de ne pas faire de mauvais choix
  lorsqu'elles sont confrontées à une bifurcation de la piste.>\Q

  \;

  \PA stochastic model of ant trail formation and maintenance in static and
  dynamic environments\Q Dussutour et al : cherche un modèle micro qui permet
  d'obtenir un multi-trail

  <with|font-shape|italic|\P[<text-dots>] three pheromone-based model
  alternatives: (1) a single pheromone laid on the way toward the food source
  and on the way back to the nest; (2) single pheromone laid on the way
  toward the food source and an internal imperfect compass to navigate toward
  the nest; (3) two different pheromones, each used for one direction.
  [<text-dots>] We found that increasing pheromone deposition for the richer
  food sources has a larger impact on the dynamics than elevation of the ant
  recruitment level for the richer food sources.\Q>

  <with|font-shape|italic|\PIndeed, using both social cues, like pheromone
  trails, and individual cues, such as visual signals, is common in ants
  (Barrie et al., 2023).\Q>

  <with|font-shape|italic|\PGenerally ants follow the direction of higher
  pheromone concentration (Suckling et al., 2011).\Q>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|3>>
    <associate|auto-11|<tuple|7|3>>
    <associate|auto-12|<tuple|8|4>>
    <associate|auto-13|<tuple|9|4>>
    <associate|auto-14|<tuple|9|4>>
    <associate|auto-15|<tuple|8|4>>
    <associate|auto-16|<tuple|9|5>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|1>>
    <associate|auto-5|<tuple|3|1>>
    <associate|auto-6|<tuple|4|2>>
    <associate|auto-7|<tuple|5|2>>
    <associate|auto-8|<tuple|6|2>>
    <associate|auto-9|<tuple|1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Histogramme de la magnitude des vitesses. À gauche : 100 bins,
        échelle linéaire. À droite : 10000 bins, échelle log.
      </surround>|<pageref|auto-9>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Histogramme du temps d'attente à l'arrêt, avec pour comparaison le
        tracé de la fonction\ 

        <with|mode|<quote|math>|x\<mapsto\>10<rsup|-2>\<cdot\>x<rsup|-3/2>>.
        L'axe des abscisse est en frames (1/25 s).
      </surround>|<pageref|auto-10>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Overview>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Motivations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Mécanismes collectifs
      d'intérêt ou observés <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Motivations hors biologie
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Questions
      que l'on pourrait poser> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Modèles
      microscopiques existants> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Modèle
      évoqué lors de notre réunion> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Quelques
      histogrammes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Une
      proposition de modèle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>SINDy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Mise en Place de SINDy pour l'Estimation de
      la Vitesse <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|1. Constitution de la Bibliothèque de
      Fonctions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|Principe de SINDy-PI : Formulation
      Intégrale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Quelques
      extraits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>