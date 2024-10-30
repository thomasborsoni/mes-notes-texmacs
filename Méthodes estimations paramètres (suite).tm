<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|color|dark orange|M�thodes d'estimation de
  param�tres (suite)>>>

  <\with|color|dark yellow>
    <section|<with|color|dark yellow|Moindres carr�s>>

    <with|color|dark cyan|<subsection|Principe>>

    <\with|color|black>
      On compare des donn�es exp�rimentales entach�es d'erreurs de mesure �
      un mod�le math�matique cens� d�crire ces donn�es.

      On consid�re comme mod�le th�orique une famille de fonctions
      <math|f<around*|(|x;\<theta\>|)>> d'une ou plusieurs variables muettes
      <math|x>, index�es par un ou plusieurs param�tres <math|\<theta\>>
      inconnus. On r�sout alors le probl�me de minimsation

      <\equation>
        <below|argmin|\<theta\>> <big|sum><rsub|i=1><rsup|N><around*|(|y<rsub|i>-f<around*|(|x<rsub|i>;\<theta\>|)>|)><rsup|2>=<below|argmin|\<theta\>>
        <big|sum><rsub|i=1><rsup|N>r<rsub|i><around*|(|\<theta\>|)><rsup|2>.
      </equation>
    </with>

    <math|>
  </with>

  Si l'on dispose d'un estimation de l'�cart-type <math|\<sigma\><rsub|i>> du
  bruit qui affecte chaque mesure <math|y<rsub|i>>, on l'utilise pour
  pond�rer la contribution de la mesure au <math|\<chi\><rsup|2>>. La mesure
  aura d'autant plus de poids que son incertitude sera faible :

  <\equation>
    \<chi\><rsup|2><around*|(|\<theta\>|)>=<big|sum><rsub|i=1><rsup|N><around*|(|<frac|y<rsub|i>-f<around*|(|x<rsub|i>;\<theta\>|)>|\<sigma\><rsub|i>>|)><rsup|2>
  </equation>

  C'est un cas particulier d'une fonction de co�t
  <math|J<around*|(|Y,X,\<theta\>|)>.>

  On va chercher alors un <with|font-shape|italic|estimateur>
  <math|<wide|\<theta\>|^>> et possiblement recourir � la m�thode du
  <with|font-shape|italic|maximum de vraisemblance>.\ 

  <\with|color|dark cyan>
    <subsection|La r�gession lin�aire>
  </with>

  La r�gression lin�aire est le point de d�part fondamental. Supposons que
  l'on cherche � ajuster une loi lin�aire du type <math|y=\<alpha\>
  x+\<beta\>+\<varepsilon\>> sur des mesures ind�pendantes. On compte
  <math|n> mesures et <math|k> variables explicatives. On �crit alors la
  formulation matricielle

  <\equation*>
    <with|font-series|bold|y>=<with|font-series|bold|X \<alpha\>>+\<beta\>
    <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|\<vdots\>>>|<row|<cell|1>>>>>+<with|font-series|bold|\<varepsilon\>>,
  </equation*>

  o� <with|font-series||<math|<with|font-series|bold|y>>,
  <math|<with|font-series|bold|X>>, <math|<with|font-series|bold|\<alpha\>>>,
  <math|<with|font-series|bold|\<varepsilon\>>>> sont respectivement de
  dimension <math|n\<times\>1>, <math|n\<times\> k>, <math|k\<times\>1>,
  <math|n\<times\>1>.

  <\with|color|dark yellow>
    <section|<with|color|dark yellow|Optimisation par gradient : ADAM et
    RMSprop<resize|<with|color|red|>||||>>>
  </with>

  <\with|color|dark yellow>
    <section|<with|color|dark yellow|Optimisation globale et
    heuristique<resize|<with|color|red|>||||>>>

    <\with|color|black>
      <with|color|dark cyan|<\subsection>
        Algorithme g�n�tique
      </subsection>>
    </with>
  </with>

  <\with|color|black>
    <with|color|dark cyan|<\subsection>
      Algorithme de colonies de fourmis
    </subsection>>
  </with>

  <\with|color|black>
    <\with|color|dark cyan>
      <\subsection>
        Recuit-simul�
      </subsection>

      <\with|color|dark yellow>
        <section|4D-Var>

        <\with|color|dark yellow>
          <section|Identification param�trique dans les EDP>
        </with>

        <\with|color|black>
          <with|color|dark cyan|<\subsection>
            Techniques de collocation
          </subsection>>
        </with>
      </with>
    </with>

    <\with|color|black>
      <\with|color|dark cyan>
        <\subsection>
          Shooting methods
        </subsection>
      </with>
    </with>
  </with>

  <\with|color|dark yellow>
    <section|SINDy>
  </with>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|5|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|5.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|5.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|6|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|3|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|3.1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|3.2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|3.3|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|4|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
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
    </associate>
  </collection>
</auxiliary>