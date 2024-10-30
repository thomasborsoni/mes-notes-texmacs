<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Helly type problems and combinatorial
  convexity>|<doc-author|<author-data|<author-name|Andreas F. Holmsen>>>>

  Une présentation dans le thème de la combinatoire.

  <section|Théorème important en géométrie>

  <\theorem>
    [<with|font-series|bold|Helly's Theorem]> Soit <math|F> une famille finie
    de convexes de <math|\<bbb-R\><rsup|d>>. Si tout <math|d+1> membres de
    <math|F> ont une intersection non vide, alors il y a un point en commun
    de tous les membres de <math|F>.
  </theorem>

  Application : notion de <with|font-series|bold|médiane en haute dimension>
  :

  <\theorem>
    Soit <math|X> un ensmble de <math|n> points de <math|\<bbb-R\><rsup|d>>.
    Il existe un point <math|P\<in\>\<bbb-R\><rsup|d> > tel que tout
    halfspace contenant <math|P> contient au moins <frac|n|d+1> points de
    <math|X>.
  </theorem>

  Il y a aussi une généralisation des pourcentiles (cf.
  <with|font-shape|italic|Bounded size weak <math|\<varepsilon\>>-nets>,
  1992).

  La preuve du Théorème 1 repose sur le lemme suivant :

  <\lemma>
    Soit <math|X> un ensemble de <math|n\<gtr\>d+1> points dans
    <math|\<bbb-R\><rsup|d>>. Alors il existe une partition
    <math|X=A\<cup\>B> telle que <math|<around*|(|conv
    A|)>\<cap\><around*|(|conv B|)>=\<emptyset\>.>
  </lemma>

  <section|Convexity spaces>

  <\definition>
    Soit <math|X> un ensemble et <math|\<cal-C\>\<in\>
    <with|font|cal|P><around*|(|X|)>>. Si <math|\<cal-C\> >contient
    <math|\<emptyset\>> et <math|X>, est stable par intersection et union
    imbriquée. Alors <math|<around*|(|X,\<cal-C\>|)>> est un espace de
    convexité.
  </definition>

  <\definition>
    [Geodesic convexity] <math|C> l'est si elle contient toutes les
    géodésiques entre deux de ses points.
  </definition>

  Soit <math|<around*|(|X,\<cal-C\>|)>> un espace de convexité. On peut
  définir une notion d'enveloppe convexe de <math|Y\<subset\>X>. Alors ce que
  l'équipe de Holmsen a montré est que la notion de pourcentiles a aussi un
  sens.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>