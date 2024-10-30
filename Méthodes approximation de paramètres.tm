<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|color|dark orange|Méthodes d'estimation de
  paramètres>>>

  <with|color|dark yellow|<section|<with|color|dark yellow|Méthodes
  d'approximation directe <resize|<with|color|red|\<ast\>>||||>>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Méthode des moindres carrés<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  C'est la méthode la plus répandue. Minimise la somme des carrés des écarts
  entre les valeurs prédites du modèle et les valeurs observées. Efficace
  pour les systèmes linéaires et peut être adaptée aux systèmes
  non-linéeaires (moindres carrés non-linéaires).

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Optimisation par gradient <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Pour les sysèmes non-linéaires, descente de gradient et descente de
  gradient stochastique : on optimise une fonction de coût qui évalue
  l'erreur entre les prédictions et les données. Variantes avancées :
  <with|color|black|<with|font-shape|italic|Adam> et
  <with|font-shape|italic|RMSprop>.>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      MCMC <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Méthode stochastique pour explorer l'espace de paramètres. Efficace pour
  les systèmes complexes où les surfaces de coût sont irrégulières et
  difficiles à optimiser par méthodes déterministes.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Optimisation globale et heuristique
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Pour les systèmes à paramètres multiples et non convexes, des algorithmes
  d'optimisation globale comme <with|font-shape|italic|l'algorithme
  génétique>, <with|font-shape|italic|les algorithmes de colonies de fourmis>
  et la recherche par <with|font-shape|italic|recuit-simulé> sont utilisés.
  Évite les minima locaux.

  \;

  <with|color|dark yellow|<section|<with|color|dark yellow|Méthodes
  probabilistes ou bayésiennes> <resize|<with|color|red|\<ast\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Méthodes bayésiennes<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Elles permettent d'intégrer une incertitude préalable sur les paramètres et
  de mettre à jour cette connaissance en fonction des observations. Elle est
  très adaptée pour les systèmes incertains, et elle est souvent implémentée
  par MCMC pour échantillonner l'espace des paramètres.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Filtres de Kalman et de Kalman Étendu
    </subsection>>
  </with>

  Le filtre de Kalman est un outil probabiliste pour estimer les paramètres
  dynamiques d'un système linéaire. Dans le cas de systèmes non-linéaires, le
  filtre étendu (EKF) et le filtre de Kalman d'ensemble (EnKF) sont des
  variantes courantes. Ils calculent des distributions de probabilité sur les
  paramètres, en tenant compte des nouvelles observations.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Filtres particulaires
    </subsection>>
  </with>

  Utile pour les systèmes non-linéaires et non-gaussie,s, c'est une méthode
  d'échantillonnage séquentielle qui représente les distributions de
  paramètres par un ensemble de particules pondérées. Chaque particule
  correspond à une estimation possible de l'état, ce qui permet de
  représenter des incertitudes complexes.

  \;

  <with|color|dark yellow|<section|<with|color|dark yellow|Méthodes
  variationnelles> <resize|<with|color|red|\<ast\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Inférence variationnelle<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  On approche les distributions de probabilité sur l'espace des paramètres
  par une classe de distributions paramétriques, en minimisant la divergence
  de Kullback-Leibler entre les deux distributions (cible et estimation),
  efficace pour les modèles probabilistes.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Four-Dimensional Variational Assimilation (4D-Var)
      <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
    </subsection>>
  </with>

  Initialement développé pour l'assimilation de données en météo, la méthode
  4D-Var optimise les paramètres d'un modèle dynamique en minimisant un écart
  entre le modèle et les observations sur une fenêtre temporelle donnée.
  Approche efficace pour les systèmes avec une grande quantité de données
  temporelles.

  <with|color|dark yellow|<section|Méthodes d'apprentissage machine>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Réseaux de neurones et apprentissage
      profond<math|>>
    </subsection>>
  </with>

  Utile pour les cas non-linéaires et de grande dimension. Réseaux de
  neurones récurrents (RNN) et Long Short-Time Memory (LSTM) efficaces pour
  des systèmes avec dépendance temporelle.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Apprentissage par renforcement
    </subsection>>
  </with>

  On ajuste les paramètres du modèle en fonction des récompenses observées.
  Approche couremment utilisée dans des systèmes de contrôle dynamique et
  adaptatif.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Autoencodeurs et autoencodeurs variationnels
    </subsection>>
  </with>

  On projette les données dans un espace latent de petite dimension et estime
  les paramètres dans cet espace. Potentiellement efficace mais obscur :
  l'information est cachée.

  <with|color|dark yellow|<section|<with|color|dark yellow|Méthodes basées
  sur les EDP et l'identification de systèmes>
  <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Identification paramétrique dans les EDP<math|>>
      <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
    </subsection>>
  </with>

  Pour les systèmes gouvernés par des EDP, les méthodes comme les
  <with|font-shape|italic|techniques de collocation> et les
  <with|font-shape|italic|shooting method>s sont utilisés pour ajuster les
  paramètres. Les méthodes de collation permettent de discrétiser le problème
  continu en un ensemble d'équations non-linéaires résolubles par des
  méthodes d'optimisation.

  <\with|color|black>
    <\with|color|dark cyan>
      <\subsection>
        SINDy <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
      </subsection>
    </with>
  </with>

  Technique de régression symbolique, on projette le Right-Hand-Side de
  l'équation sur une base de fonctions d'une librairie en imposant la
  sparsité. Permet de retrouver un modèle si l'on connaît a priori la forme
  de la bibliothèque.

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-base-size|11>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3|2>>
    <associate|auto-11|<tuple|3.1|2>>
    <associate|auto-12|<tuple|3.2|2>>
    <associate|auto-13|<tuple|4|2>>
    <associate|auto-14|<tuple|4.1|2>>
    <associate|auto-15|<tuple|4.2|2>>
    <associate|auto-16|<tuple|4.3|2>>
    <associate|auto-17|<tuple|5|2>>
    <associate|auto-18|<tuple|5.1|2>>
    <associate|auto-19|<tuple|5.2|3>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|1>>
    <associate|auto-5|<tuple|1.4|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2.1|1>>
    <associate|auto-8|<tuple|2.2|1>>
    <associate|auto-9|<tuple|2.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc><with|color|<quote|dark
      yellow>|Méthodes d'approximation directe
      <resize|<with|color|<quote|red>|\<ast\>>||||>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc><with|color|<quote|dark
      cyan>|Méthode des moindres carrés<with|mode|<quote|math>|>>
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Optimisation par gradient
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>MCMC
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Optimisation globale et
      heuristique <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc><with|color|<quote|dark
      yellow>|Méthodes probabilistes ou bayésiennes>
      <resize|<with|color|<quote|red>|\<ast\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc><with|color|<quote|dark
      cyan>|Méthodes bayésiennes<with|mode|<quote|math>|>>
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Filtres de Kalman et de
      Kalman Étendu <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Filtres particulaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|color|<quote|dark
      yellow>|Méthodes variationnelles> <resize|<with|color|<quote|red>|\<ast\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc><with|color|<quote|dark
      cyan>|Inférence variationnelle<with|mode|<quote|math>|>>
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Four-Dimensional Variational
      Assimilation (4D-Var) <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Méthodes
      d'apprentissage machine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc><with|color|<quote|dark
      cyan>|Réseaux de neurones et apprentissage
      profond<with|mode|<quote|math>|>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Apprentissage par
      renforcement <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Autoencodeurs et
      autoencodeurs variationnels <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc><with|color|<quote|dark
      yellow>|Méthodes basées sur les EDP et l'identification de systèmes>
      <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc><with|color|<quote|dark
      cyan>|Identification paramétrique dans les
      EDP<with|mode|<quote|math>|>> <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>SINDy
      <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>
    </associate>
  </collection>
</auxiliary>