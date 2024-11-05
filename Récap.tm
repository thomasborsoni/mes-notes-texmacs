<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Courte note r�capitulative>>

  <section|Overview>

  <with|font-series|bold|Question centrale : \PQu'apporte un mod�le
  microscopique ?\Q>\ 

  Ambiance g�n�rale : Comprendre les m�canismes comportementaux qui
  sous-tendent les d�placements collectifs. Comprendre
  <with|font-series|bold|l'�mergence> des m�canismes collectifs depuis les
  m�canismes individuels.

  <section|Motivations>

  <subsection|M�canismes collectifs d'int�r�t ou observ�s>

  <with|font-shape|italic|<with|font-series|bold|Cr�ation de r�seaux et flux
  au sein de ceux-ci.>> Dans un cadre bi-directionnel.

  - Comment sont <with|font-series|bold|cr��s> les pistes (trail) ?

  - Comment est <with|font-series|bold|optimis�> le fourrage (foraging) ?
  Chemin le plus court, flux maximal (et s�curit� des workers)

  - Notions d'auto-organisation et de coop�ration ?

  - R�gles de traffic (\Pcode de la route\Q cf. <with|font-shape|italic|Ant
  Traffic Rules>, r�gles de priorit�)

  - Le flux satisfait un \PTwo-phase flow\Q (diagramme fondamental) et bonne
  gestion de la congestion ('Experimental<text-dots>' Poissonnier et al.
  2019)

  \;

  <subsection|Motivations hors biologie>

  - Les comportements ont inspir� des algos d'optimisation globale (voyageur
  de commerce). Meilleure compr�hension bio pourrait mener au
  perfectionnement de ces algos.

  - Extrapolation vers les voitures autonomes

  <section|Questions que l'on pourrait poser>

  - <with|font-series|bold|Proposer un mod�le micro simple qui explique le
  two-phase flow et la la formule de la vitesse moyenne en fonction du nombre
  de collision><with|font-series|bold|s> <with|font-series|bold|?> (cf.
  'Experimental<text-dots>' Poissonnier et al. 2019)

  - La concentration de ph�romone est-elle uniforme le long de la piste :
  pour savoir dans quelle direction le suivre, y a t'il un gradient ou bien
  est-ce une info pr�alabe ?

  - �tudier le r�le des confrontations (collisions) dans ces flux

  - D�pendance du d�bit en fonction de l'�paisseur

  - Le r�le des ph�romones est-il effectivement nul dans cette exp�rience ou
  bien joue-t-il tout de m�me un r�le ?

  - Concernant sa vue : comment est son champ de vision ? Importance de la
  prise en compte du champ visuel pour la trajectoire ?

  <section|Mod�les microscopiques existants>

  Question �tudi�e : quelles r�gles microscopique coh�rentes permettent de
  cr�er et suivre un trail ? <math|\<rightarrow\>> Weber's law (d�pendance
  lin�aire en la concentration de ph�romones) ou Deneubourg's law (d�pendance
  lin�aire en la concentration de ph�romones � une puissance) pour
  l'orientation par la force de l'appel de ph�romones. La plupart des travaux
  regarde la formation de <with|font-shape|italic|trails> (pistes).

  - Reinforcement Random Walk : (e.g. Garnier 2015) mod�le de marche
  al�atoire avec renforcement ph�romonal. A tout instant l'angle est choisi
  selon une Pareto/Normale.

  \PAn ant navigation model based on Weber's law\Q Amorim-Goudon-Peruani :
  correlated random walk (reinforced random walk)

  \PAnalysis of a model of self-propelled agents interacting through
  pheromone\Q Amorim - Goudon

  Pour <math|t\<gtr\>0>, ils �tudient le syst�me d'ODEs

  <\equation*>
    <wide|v<rsub|i>|\<dot\>>=-<frac|1|\<tau\>><around*|(|v<rsub|i>-F<around*|(|x<rsub|i>,v<rsub|i>,P|)>|)>.
  </equation*>

  avec <math|P<around*|(|t,x|)>> la concentration de ph�romone, et <math|F>
  capture la loi de Weber.

  <section|Mod�le �voqu� lors de notre r�union>

  Le mod�le que l'on avait �voqu� lors de la r�union est le suivant (type
  Boltzmann) :

  Chaque agent suit une trajectoire rectiligne � vitesse constante jusqu'�
  rencontrer un agent de l'autre groupe, auquel cas il y a arr�t pendant une
  dur�e tir�e selon une certaine loi, puis re-tirage de l'orientation des
  deux agents en prenant en compte la direction cible et potentiellement les
  autres agents dans le champ visuel.

  On peut l'�crire, � l'�chelle m�soscopique, comme suit :

  <\equation*>
    \<partial\><rsub|t>f+v\<cdot\>\<nabla\><rsub|x>f=Q<around*|(|f<around*|(|s,x,\<cdot\>|)><rsub|s\<leq\>
    t>,f<around*|(|s,x,\<cdot\>|)><rsub|s\<leq\> t>|)>,
  </equation*>

  C'est un mod�le de type Boltzmann o� les collisions ne sont pas
  instantan�es. Possibilit� de simulation par DSMC.

  <section|Quelques histogrammes>

  <with|font-shape|italic|Les donn�es utilis�es pour les trac�s sont celles
  du 16 janvier.>

  <\big-figure|<image|/Users/thomasborsoni/Desktop/Post-doc/Projet
  fourmis/Programmes/histogram_v_mag_100_bins.pdf|.5par|||>
  <image|/Users/thomasborsoni/Desktop/Post-doc/Projet
  fourmis/Programmes/histogram_v_mag_10000_bins.pdf|.5par|||>>
    Histogramme de la magnitude des vitesses. � gauche : 100 bins, �chelle
    lin�aire. � droite : 10000 bins, �chelle log.
  </big-figure>

  On observe deux ph�nom�nes sur l'histogramme ci-dessus : <math|>\<sim\>15%
  des valeurs sont inf�rieures � 1 : ce bin est sur-repr�sent� compar� aux
  autres ; la r�partition des vitesse est globalement uniforme de 1
  <math|\<sim\>> 2 jusqu'� 20 avec un l�ger mieux vers 18, apr�s quoi il y a
  un d�clin. Il semble donc raisonnable de consid�rer que la vitesse prend
  ses valeurs dans un intervalle, avec une \Pvitesse de croisi�re\Q autour de
  20, des freinages fr�quents et la pr�sence significative d'arr�ts (et
  peut-�tre une sur-acc�l�ration occasionnelle).

  <\big-figure>
    <image|/Users/thomasborsoni/Desktop/Post-doc/Projet
    fourmis/fig_tps_x.png|.7par|||>
  <|big-figure>
    Histogramme du temps d'attente � l'arr�t, avec pour comparaison le trac�
    de la fonction\ 

    <math|x\<mapsto\>10<rsup|-2>\<cdot\>x<rsup|-3/2>>. L'axe des abscisse est
    en frames (1/25 s).
  </big-figure>

  \;

  On consid�re l'agent � l'arr�t quand sa vitesse est inf�rieure � 1. Temps
  d'attente � l'arr�t moyen : 33 frames (<math|=1.32 s>). On observe sur cet
  histogramme qu'un fit par une loi exponentielle ne colle pas, mais qu'une
  <with|font-series|bold|mod�lisation> par une telle loi n'est pas
  d�raisonnable.

  Pour �tre pr�cis, <with|font-shape|italic|<with|font-shape|right|on ne
  trace pas l'histogramme du> temps d'attente par arr�t> mais plus
  grossi�rement <with|font-shape|italic|du temps total arr�t�> sur toute la
  section. Ce graphique est donc plut�t illustratif et indicatif.

  <section|Une proposition de mod�le>

  Un mod�le, relativement simple, et que je souhaiterais mettre en avant, qui
  contient les informations <with|color|dark magenta|chimique>, (au besoin,
  de <with|color|dark blue|suivi>), de <with|color|dark cyan|frottements> et
  de <with|color|dark green|dialogues>.

  <\equation>
    <wide|v<rsub|>|\<dot\>><rsub|i,souhait�><rsub|>=<with|color|dark
    magenta|<frac|1|\<tau\><rsub|chem>><around*|(|V<rsub|i>-v<rsub|i>|)>><with|color|dark
    blue|<space|1.8spc><around*|(|+Cucker Smale|)>> <with|color|dark
    cyan|-<frac|<embbb|1><rsub|frot>|\<tau\><rsub|frot>>*v<rsub|i>>+<with|color|dark
    orange|<sqrt|2D>\<xi\><rsub|i>>,
  </equation>

  \;

  <\equation*>
    v<rsub|i>=<with|color|dark green|<embbb|1><rsub|dial>>\<times\>v<rsub|i,souhait�>.
  </equation*>

  Dans notre cadre,

  <space|4em>\<bullet\> <with|color|dark magenta|<math|V<rsub|i>>> ne peut
  prendre que 2 valeurs (selon la direction), et correspond �
  <math|F<around*|(|x<rsub|i>,v<rsub|i>,P|)>> de Amorim & Goudon

  <space|4em>\<bullet\> Les <with|color|dark cyan|frottements> surviennent
  lorsqu'une zone lat�rale est occup�e

  <space|4em>\<bullet\> Un peu d'<with|color|dark orange|exploration>

  <space|4em>\<bullet\> Le <with|color|dark green|dialogue> survient lors de
  l'entr�e d'une fourmi de l'autre groupe dans la zone des antennes, dont la
  dur�e suit une certaine loi

  <space|4em>\<bullet\> On pourrait, au besoin, rajouter un <with|color|dark
  blue|Cucker-Smale> pour aligner la vitesse sur les fourmis la pr�c�dent
  dans son champ visuel

  \;

  On pourrait �tudier les implications et la pertinence de chaque bout du
  mod�le. Les attentes sont les suivantes : <math|<with|color|dark
  magenta|<frac|1|\<tau\><rsub|chem>><around*|(|V<rsub|i>-v<rsub|i>|)>>>
  donne la direction g�n�rale de chaque groupe, <math|<with|color|dark
  cyan|-<frac|<embbb|1><rsub|frot>|\<tau\><rsub|frot>>*v<rsub|i>>> coupl� �
  <math|<with|color|dark green|<embbb|1><rsub|dial>>>

  implique l'apparition de congestion l�g�re occasionnelle, et
  <math|<with|color|dark orange|<sqrt|2D>\<xi\><rsub|i>>> permet de
  fluidifier la dynamique. Au besoin, l'ajout d'un <with|color|dark
  blue|Cucker-Smale> pourrait peut-�tre expliquer des ph�nom�nes de
  sur-acc�l�ration (cf. facteur <math|\<alpha\>+\<beta\> k
  e<rsup|-\<gamma\>k><rsup|>>).

  \;

  <section|SINDy>

  Supposons que l'on ait une �quation de la forme
  <math|<wide|X|\<dot\>><rsub|t>=V<around*|(|X<rsub|t>,t|)>>

  On consid�re une librairie de fonctions <math|\<Theta\><around*|(|X,t|)>>
  (par exemple <math|<around*|[|1,X,X<rsup|2>,X<rsup|3>,sin\<nospace\><around*|(|X|)>,cos\<nospace\><around*|(|X|)>,t,X
  t,t<rsup|2>|]>>)

  On cherche � identifier un sous-ensemble minimal de termes qui gouvernent
  la dynamique du syst�me, de telle sorte que l'on puisse �crire par exemple
  <math|V<around*|(|X<rsub|t>,t|)>=2 X<rsub|t><rsup|2>+X<rsub|t>\<cdot\> t>.

  On voudrait donc trouver un vecteur <math|\<xi\>> sparse tel que
  <math|<wide|X<rsub|t>|\<dot\>>\<approx\>\<Theta\><around*|(|X<rsub|t>|)>
  \<xi\>> : on va donc chercher � r�soudre

  <\equation*>
    <below|min\<nospace\>|\<xi\>>\<parallel\><wide|X|\<dot\>><rsub|t>-<big|sum><rsub|j>\<xi\><rsub|j>
    \<theta\><rsub|j><around*|(|X<around*|(|t|)>,t|)>\<parallel\><rsup|2>+\<lambda\>\<parallel\>\<xi\>\<parallel\><rsub|0>
  </equation*>

  Comme le probl�me avec la norme 0 est np-dur, on peut remplacer par
  <math|\<parallel\>\<xi\>\<parallel\><rsub|1>>et faire un LASSO. En
  pratique, on pr�f�re d'autres m�thodes que la r�gularisation
  <math|L<rsup|1>>, comme la \Psequential thresholded least square\Q
  (sparsification forc�e en alternance avec un moindres carr�s classique),
  plus robuste.

  C'est une m�thode tr�s efficace si la librairie est bien choisie dans le
  probl�me consid�r�.\ 

  <section|Quelques extraits>

  Extrait de la th�se de Audrey Dussutour :

  \P<with|font-shape|italic|Lorsque le trafic de fourmis est important, les
  contacts qui ont lieu au niveau de la piste r�sultent principalement de la
  confrontation entre les fourmis qui reviennent de la source et celles qui
  sortent du nid. Ces contacts pourraient permettre le transfert
  d'information concernant les caract�ristiques de la source de nourriture
  comme le sugg�re Burd et Aranwela (2003) [<text-dots>] L'id�e d'un
  transfert d'information par l'interm�diaire des rencontres avait
  initialement �t� introduite par Moffett [<text-dots>]. Cet auteur montre
  que les fourmis transportant une charge utilisent les contacts �tablis avec
  les fourmis charg�es afin de s'orienter correctement dans la direction du
  nid. Ce m�canisme permet aux fourmis de ne pas faire de mauvais choix
  lorsqu'elles sont confront�es � une bifurcation de la piste.>\Q

  \;

  \PA stochastic model of ant trail formation and maintenance in static and
  dynamic environments\Q Dussutour et al : cherche un mod�le micro qui permet
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
        Histogramme de la magnitude des vitesses. � gauche : 100 bins,
        �chelle lin�aire. � droite : 10000 bins, �chelle log.
      </surround>|<pageref|auto-9>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Histogramme du temps d'attente � l'arr�t, avec pour comparaison le
        trac� de la fonction\ 

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

      <with|par-left|<quote|1tab>|2.1<space|2spc>M�canismes collectifs
      d'int�r�t ou observ�s <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Motivations hors biologie
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Questions
      que l'on pourrait poser> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Mod�les
      microscopiques existants> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Mod�le
      �voqu� lors de notre r�union> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Quelques
      histogrammes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Une
      proposition de mod�le> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>SINDy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Mise en Place de SINDy pour l'Estimation de
      la Vitesse <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|2tab>|1. Constitution de la Biblioth�que de
      Fonctions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|Principe de SINDy-PI : Formulation
      Int�grale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Quelques
      extraits> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>