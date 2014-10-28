---
title       : p53 ja apoptoos
subtitle    : Onkobioloogia
author      : Taavi Päll
job         : vanemteadur, VTAK
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax,bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

<!-- Limit image width and height -->
<style type="text/css">
img {     
  max-height: 480px;     
  max-width: 600px; 
}
</style>

<style> .title-slide {
  background-color: #FFFFFF; /*#CBE7A5 #EDE0CF; ; #CA9F9D*/
}

.title-slide hgroup > h1{
 font-family: 'Oswald', 'Helvetica', sanserif; 
}

.title-slide hgroup > h1, 
.title-slide hgroup > h2 {
  color: #535E43 ;  /* ; #EF5150*/
}
</style>

<!-- Center image on slide -->
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function() {     
  $("p:has(img)").addClass('centered'); 
});
</script>

<!-- Italic -->
<style>
em {
  font-style: italic
}
</style>

<!-- Bold -->
<style>
strong {
  font-weight: bold;
}
</style>

<style>
.title-slide {
background-image:url(http://www.pnas.org/content/104/30/12324/F5.large.jpg);
background-repeat: no-repeat;
background-position: 85% 65%;
background-size: 40%;
background-color: #CBE7A5; /* ; ; */
}
</style>




## Recap

---
## p53 avastamine

- 1979. aastal esitasid kuus sõltumatut uurimisrühma andmed, et nad on avastanud 53 kDa valgu inimese ja hiirte rakkudest ([DeLeo et al. 1979](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC383613/), [Kress et al. 1979](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC353470/), [Lane & Crawford 1979](http://www.nature.com/nature/journal/v278/n5701/abs/278261a0.html), [Linzer & Levine 1979](http://www.sciencedirect.com/science/article/pii/0092867479902939), [Melero et al. 1979](http://www.sciencedirect.com/science/article/pii/0042682279902502), [Smith et al. 1979)](http://www.sciencedirect.com/science/article/pii/0092867479900539). 
- Viiel juhul avastati see valk sellepärast, et see immuunosadestus koos SV40 viirusvalguga suur T-antigeen (*large T-antigen*). 
- Sama valk avastati ka pooljuhuslikult kui keemiliselt transformeeritud sarkoomirakkude vastu genereeritud antiseerum tundis ära 53 kDa valgu transformeerunud rakkudest, kuid mitte normaalsetes rakkudes.

---
# Onkoviiruste märklauaks on pRb, p53 ja apoptoos

Viirus | Viirusvalk mille märklauaks on Rb | Viirusvalk mille märklauaks on p53 | Viirusvalk mille märklauaks on apoptoos
-------|------------|---------------|-------------
SV40 | suur T (*large T antigen*) | suur T | 
adenoviirus | E1A | E1B55K | E1B19K
HPV | E7 | E6 | 
polüoomiviirus | suur T | suur T? | keskmine T (*middle T*)
herpesviirus saimiri | V tsükliin (D tsükliini homoloog) | | v-Bcl-2
HHV-8 (KSHV) | K tsükliin (D tsükliini homoloog) | LANA-2 | v-Bcl-2, v-FLIP
HCMV | IE72 | IE86 | vICA, pUL37
HTLV-I | Tax | | 
Epstein-Barr | | EBNA-1 | LMP-1

---
## p53 peeti algselt onkogeeniks

- 1980.ndate alguses oli tuumorsupressorgeenide kontseptsioon veel väga teoreetiline ja viirustest isoleeritud rakulisi onkogeene peeti võtmeks vähi olemuse mõistmisel. 
- **p53 seostus SV40 viiruse peamise onkogeeni - suur T-antigeeniga**, viidates et ta kuulub miskitmoodi suur Tag "signaaliraja"" koosseisu.
- **p53 oli paljudes kasvajates üle-ekspresseeritud**.
- **"Normaalse" p53 viimine normaalsetesse rakkudesse oli võimeline põhjustama rakkude transformeerumise**.

<img src="http://www.nature.com/srep/2013/130722/srep02246/images/srep02246-f1.jpg" style="width:480px;"/>
<p style="font-size:12pt">p53 immuunovärvimine metastaatilises rinnavähis (paremal) võrreldes normaalse koega (vasakul). Pilt: doi:10.1038/srep02246</p>

---
## p53 on klassikaline "*two-hit*" tuumorsupressor

- p53 ilmus jäädavalt radarile kui käärsoolevähist otsiti oletatavat tuumorsupressorgeeni kromosoomi 17p lookusest ([Baker et al. 1989](https://www.msu.edu/~luckie/paris/290B/Vogelstein.pdf)).
- Enamuses käärsoolevähkides olid p53 geenis aminohappe asendusi põhjustavad missens mutatsioonid (C $\rightarrow$ T).
- Kõigil juhtudel oli p53 geeni mõlemad koopiad muteerunud: üks koopia sisaldas mutatsioone ja teine koopia oli täielikult kaduma läinud (LOH). 
- p53 oli muteerunud väga erinevates vähkides ([Nigro et al. 1989](http://www.nature.com/nature/journal/v342/n6250/abs/342705a0.html))

---
## p53 mutatsioonisagedused kasvajates

![plot of chunk prevalence](assets/fig/prevalence-1.png) 
<p style="font-size:10pt">IARC TP53 Database R17, November 2013. Petitjean A, Mathe E, Kato S, Ishioka C, Tavtigian SV, Hainaut P, Olivier M. Impact of mutant p53 functional properties on TP53 mutation patterns and tumor phenotype: lessons from recent developments in the IARC TP53 database.Hum Mutat. 2007 Jun;28(6):622-9.</p>

--- &twocol 
## TSG mutatsioonid



***=left

- TSG sisaldavad laias laastus kahte tüüpi mutatsioone, 
      - ühed viivad valgu osalise või täieliku trunkeerumiseni nt. APC, CDKN2A, 
      - teised põhjustavad aminohappe asendusi (*missens* mutatsioonid).
- p53 kuulub selliste TSG hulka milles on kõige sagedasemad aminohappe asendusteni viivad mutatsioonid.
- Võib oletada, et selline *missens* mutatsioone sisaldav tuumorsupressor valk annab vähirakkudele mingi selektsioonilise eelise.

***=right

![cosmic](assets/fig/tsg-mutation-spectrum.png)
<p style="font-size:10pt">Andmed: TOP 5% enim mutatsioone sisaldavad TSG (kokku 637 TSG-st). TSG-d Vanderbilt University andmebaasist ja mutatsioonid COSMIC andmebaasist, cancer.sanger.ac.uk.</p>

---
## p53 mutatsioonid asuvad peamiselt DNA sidumise domäänis

![tp53dbd](TP53-mutations.png)

---
## p53 mutandid on dominant negatiivsed

- p53 toimib homotetrameerina.
- Kui rakus on näiteks üks p53 alleel muteerunud, siis see mutantne p53 moodustab komplekse *wild-type* p53 ja inaktiveerib need.
- Tetrameeride puhul on kombinatoorikast lähtudes ainult 1/16 p53 kompleksist täielikult *wild-type* ehk aktiivne.
- Kui rakus oleks mutantse p53 alleeli ekspressioon täielikult inaktiveeritud, siis säiliks ikkagi p53 *wild-type* funktsioon.
- Kasvajates p53 muteerunud siiski (kuni 50%) ja läbinud LOH sündmuse.

![homotetramer](http://www.cancerwatch.org/databaseimages/p53str.gif)

---
## p53 reguleeritakse valgu stabiilsuse läbi

- Normaalsetes, mitte stressis olevates rakkudes on p53 väga ebastabiilne poolestusajaga 5-30 min.
- Selline kiire tsükkel võimaldab rakul kiiresti vastata füsioloogilistele signaalidele.
- Ksenotoksilised agendid indutseerivad p53 minutite jooksul.
- Selline induktsioon ei ole tingitud p53 mRNA taseme tõusust.
- p53 valgu tase tõuseb rakkudes täielikult tingituna post-translatsioonilistest modifikatsioonidest mis tõstavad selle normaalselt labiilse valgu stabiilsust.

<img src="assets/fig/p53hela.jpg" style="width:400px;">

---&twocol
## p53 indutseerib stress

***=left

Stiimuli tüüp | stiimul
--------------|--------
stress | hüpoksia, nukleotiidide puudus, UV kiirgus, ioniseeriv kiirgus, RNA- või DNA sünteesi blokk, madal pH, NO, DNA kahjustused, kemoteraapia
onkogeenne signalisatsioon | MYC, E2F1 üle-ekspressioon, DNA demetülatsioon

***=right
- **p53 taseme tõus rakkudes viib pöörduva või pöördumatu (*senescence*) rakutsükli arrestini**.
- p53 aktiveerib DNA reparatsiooni raja.
- p53 blokeerib angiogeneesi (TSP-1$\uparrow$).
- **p53 indutseerib apoptoosi**

---
## p53 indutseerib p21 transkriptsiooni

- p21 vahendab p53 rakutsüklit inhibeerivat efekti, samas p21 inhibeerib p53-sõltuvat apoptoosi.

![p21](assets/fig/p21inhibitsapoptosis.png)

---
## DNA kahjustused ja onkogeenid stabiliseerivad p53

Peamised p53 stabilisatsiooni rajad
- dsDNA kahjustus, ioniseeriv kiirgus, telomeeride lühenemine aktiveerib ATM $\rightarrow$ Chk2 raja.
- ssDNA, UV kiirgus, replikatsioonistress, kemoterapeutikumid akiveerivad ATR (*ATM–Rad3-related protein*) $\rightarrow$ Chk1 raja.
- p53 fosforüleeritakse amino terminusest Ser-15, Ser-37 jt.
- Amino-terminaalne fosforüleerimine blokeerib **MDM2** sidumise p53.
- Myc või E2F1 aktivatsioon viib rakus **p19^ARF** valgu taseme ülesse, mis blokeerib MDM2 ja võib viia rakud apoptoosi.

<img src="http://www-bcf.usc.edu/~forsburg/images/Image10.jpg" style="width:200px;">

---&twocol
## MDM2

***=right

- MDM2 avastati kui *double-minute* kromosoomid hiire sarkoomirakkudes (_**mo**use **d**ouble **m**inutes_).
- **Mdm2 on E3 ubikvitiin ligaas** mis tunneb ära p53 amino-terminaalse trans-aktivatsiooni domääni.
- Mdm2 on p53 märklaudgeen.
- MDM2 ekspressiooni indutseerib ka mitogeenne signalisatsioon läbi MAPK raja (AP-1 TF).
- Samuti stabiliseerib MDM2 Akt/PKB, mille poolt fosfoforüleerimine blokeerib MDM2 auto-ubikvitineerimise.

<p style="font-size:12pt">Double-minute kromosoomid on ekstrakoromosomaalne DNA kasvajates mis on tekkinud geeniamplifikatsiooni tagajärjel.</p>

***=left

![mdm](assets/fig/p53MDM2.jpg)

---
## p19^ARF

- p19^ARF valku kodeerib kompaktne geneetiline lookus kus asub kokku kolm tuumorsupressorgeeni: p16^INK4A, p15^INK4B ja p19^ARF .
- p19^ARF geeni promootor asub 13 kB ülevalpool p16^INK4A promootorist.

![arf](http://www.hhmi.org/sites/default/files/Our%20Scientists/Investigators/sherr_fig1_lg.jpg)

<a href="http://www.hhmi.org/research/arf-tumor-suppression-stem-cells-and-cancer" target="_blank"style="font-size:12pt">Pilt:HHMI</a>


---
## Lingid eelmistele loengutele

1. [Sissejuhatav loeng](http://rpubs.com/tapa741/sissejuhatus)

2. [Vähitüübid](http://rpubs.com/tapa741/vahityybid)

3. [Onkoviirused](http://tpall.github.io/Onkoviirused)

4. [Onkogeenid](http://tpall.github.io/Onkogeenid)

5. [Retseptorid](http://tpall.github.io/Retseptorid)

6. [Signaalirajad](http://tpall.github.io/Signaalirajad)

7. [Tuumorsupressorgeenid](http://tpall.github.io/Tuumorsupressorid)

8. [Rakutsüklikontroll](http://tpall.github.io/Rakutsyklikontroll)
