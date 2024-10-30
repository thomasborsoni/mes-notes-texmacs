<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|color|dark orange|M�thodes d'estimation de
  param�tres>>>

  <with|color|dark yellow|<section|<with|color|dark yellow|M�thodes
  d'approximation directe <resize|<with|color|red|\<ast\>>||||>>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|M�thode des moindres carr�s<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  C'est la m�thode la plus r�pandue. Minimise la somme des carr�s des �carts
  entre les valeurs pr�dites du mod�le et les valeurs observ�es. Efficace
  pour les syst�mes lin�aires et peut �tre adapt�e aux syst�mes
  non-lin�eaires (moindres carr�s non-lin�aires).

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Optimisation par gradient <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Pour les sys�mes non-lin�aires, descente de gradient et descente de
  gradient stochastique : on optimise une fonction de co�t qui �value
  l'erreur entre les pr�dictions et les donn�es. Variantes avanc�es :
  <with|color|black|<with|font-shape|italic|Adam> et
  <with|font-shape|italic|RMSprop>.>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      MCMC <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  M�thode stochastique pour explorer l'espace de param�tres. Efficace pour
  les syst�mes complexes o� les surfaces de co�t sont irr�guli�res et
  difficiles � optimiser par m�thodes d�terministes.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Optimisation globale et heuristique
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Pour les syst�mes � param�tres multiples et non convexes, des algorithmes
  d'optimisation globale comme <with|font-shape|italic|l'algorithme
  g�n�tique>, <with|font-shape|italic|les algorithmes de colonies de fourmis>
  et la recherche par <with|font-shape|italic|recuit-simul�> sont utilis�s.
  �vite les minima locaux.

  \;

  <with|color|dark yellow|<section|<with|color|dark yellow|M�thodes
  probabilistes ou bay�siennes> <resize|<with|color|red|\<ast\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|M�thodes bay�siennes<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  Elles permettent d'int�grer une incertitude pr�alable sur les param�tres et
  de mettre � jour cette connaissance en fonction des observations. Elle est
  tr�s adapt�e pour les syst�mes incertains, et elle est souvent impl�ment�e
  par MCMC pour �chantillonner l'espace des param�tres.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Filtres de Kalman et de Kalman �tendu
    </subsection>>
  </with>

  Le filtre de Kalman est un outil probabiliste pour estimer les param�tres
  dynamiques d'un syst�me lin�aire. Dans le cas de syst�mes non-lin�aires, le
  filtre �tendu (EKF) et le filtre de Kalman d'ensemble (EnKF) sont des
  variantes courantes. Ils calculent des distributions de probabilit� sur les
  param�tres, en tenant compte des nouvelles observations.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Filtres particulaires
    </subsection>>
  </with>

  Utile pour les syst�mes non-lin�aires et non-gaussie,s, c'est une m�thode
  d'�chantillonnage s�quentielle qui repr�sente les distributions de
  param�tres par un ensemble de particules pond�r�es. Chaque particule
  correspond � une estimation possible de l'�tat, ce qui permet de
  repr�senter des incertitudes complexes.

  \;

  <with|color|dark yellow|<section|<with|color|dark yellow|M�thodes
  variationnelles> <resize|<with|color|red|\<ast\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Inf�rence variationnelle<math|>>
      <resize|<with|color|red|\<ast\>>||||>
    </subsection>>
  </with>

  On approche les distributions de probabilit� sur l'espace des param�tres
  par une classe de distributions param�triques, en minimisant la divergence
  de Kullback-Leibler entre les deux distributions (cible et estimation),
  efficace pour les mod�les probabilistes.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Four-Dimensional Variational Assimilation (4D-Var)
      <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
    </subsection>>
  </with>

  Initialement d�velopp� pour l'assimilation de donn�es en m�t�o, la m�thode
  4D-Var optimise les param�tres d'un mod�le dynamique en minimisant un �cart
  entre le mod�le et les observations sur une fen�tre temporelle donn�e.
  Approche efficace pour les syst�mes avec une grande quantit� de donn�es
  temporelles.

  <with|color|dark yellow|<section|M�thodes d'apprentissage machine>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|R�seaux de neurones et apprentissage
      profond<math|>>
    </subsection>>
  </with>

  Utile pour les cas non-lin�aires et de grande dimension. R�seaux de
  neurones r�currents (RNN) et Long Short-Time Memory (LSTM) efficaces pour
  des syst�mes avec d�pendance temporelle.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Apprentissage par renforcement
    </subsection>>
  </with>

  On ajuste les param�tres du mod�le en fonction des r�compenses observ�es.
  Approche couremment utilis�e dans des syst�mes de contr�le dynamique et
  adaptatif.

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Autoencodeurs et autoencodeurs variationnels
    </subsection>>
  </with>

  On projette les donn�es dans un espace latent de petite dimension et estime
  les param�tres dans cet espace. Potentiellement efficace mais obscur :
  l'information est cach�e.

  <with|color|dark yellow|<section|<with|color|dark yellow|M�thodes bas�es
  sur les EDP et l'identification de syst�mes>
  <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>>>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      <with|color|dark cyan|Identification param�trique dans les EDP<math|>>
      <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
    </subsection>>
  </with>

  Pour les syst�mes gouvern�s par des EDP, les m�thodes comme les
  <with|font-shape|italic|techniques de collocation> et les
  <with|font-shape|italic|shooting method>s sont utilis�s pour ajuster les
  param�tres. Les m�thodes de collation permettent de discr�tiser le probl�me
  continu en un ensemble d'�quations non-lin�aires r�solubles par des
  m�thodes d'optimisation.

  <\with|color|black>
    <\with|color|dark cyan>
      <\subsection>
        SINDy <resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||><resize|<with|color|red|\<star\>>||||>
      </subsection>
    </with>
  </with>

  Technique de r�gression symbolique, on projette le Right-Hand-Side de
  l'�quation sur une base de fonctions d'une librairie en imposant la
  sparsit�. Permet de retrouver un mod�le si l'on conna�t a priori la forme
  de la biblioth�que.

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
      yellow>|M�thodes d'approximation directe
      <resize|<with|color|<quote|red>|\<ast\>>||||>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc><with|color|<quote|dark
      cyan>|M�thode des moindres carr�s<with|mode|<quote|math>|>>
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
      yellow>|M�thodes probabilistes ou bay�siennes>
      <resize|<with|color|<quote|red>|\<ast\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc><with|color|<quote|dark
      cyan>|M�thodes bay�siennes<with|mode|<quote|math>|>>
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Filtres de Kalman et de
      Kalman �tendu <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Filtres particulaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|color|<quote|dark
      yellow>|M�thodes variationnelles> <resize|<with|color|<quote|red>|\<ast\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc><with|color|<quote|dark
      cyan>|Inf�rence variationnelle<with|mode|<quote|math>|>>
      <resize|<with|color|<quote|red>|\<ast\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Four-Dimensional Variational
      Assimilation (4D-Var) <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>M�thodes
      d'apprentissage machine> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc><with|color|<quote|dark
      cyan>|R�seaux de neurones et apprentissage
      profond<with|mode|<quote|math>|>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Apprentissage par
      renforcement <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Autoencodeurs et
      autoencodeurs variationnels <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc><with|color|<quote|dark
      yellow>|M�thodes bas�es sur les EDP et l'identification de syst�mes>
      <resize|<with|color|<quote|red>|\<star\>>||||><resize|<with|color|<quote|red>|\<star\>>||||>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc><with|color|<quote|dark
      cyan>|Identification param�trique dans les
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