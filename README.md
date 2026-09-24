# Šablona prezentací VŠAK

Projekt je rozdělený tak, aby se obsah běžné prezentace nemíchal s definicí vzhledu.

## Rychlý start

1. Uprav metadata a položky titulky v `presentation-config.tex`.
2. Nahraď ukázkové soubory v `slides/` vlastním obsahem.
3. Obrázky ukládej do `assets/`.
4. Až budeš chtít výsledek, spusť `make`. Příkaz `make watch` průběžně obnovuje PDF při úpravách.

Další dostupné příkazy vypíše `make help`. `make clean` odstraní pomocné soubory a ponechá hotové PDF.

Původní `vsak_beamer_sablona.tex` zůstává jako krátký kompatibilní vstupní soubor.

## Struktura

```text
main.tex                         vstupní bod a pořadí kapitol
presentation-config.tex          údaje konkrétní prezentace
slides/                          vlastní obsah
assets/                          loga a obrázky
theme/beamerthemeVSAK.sty        titulka, sekce, hlavička a patička
theme/vsak-colors.sty            barevná paleta
theme/vsak-components.sty        callouty a pomocné komponenty
```

## Komponenty

- `Note`, `Tip`, `Important`, `Warning`, `Caution` — významové boxy;
- `\begin{Rule} ... \end{Rule}` — metodické nebo bezpečnostní pravidlo;
- `\vsakImagePlaceholder[výška]{popisek}` — zástupný blok při přípravě slidu.

Novou kapitolu přidej do `slides/` a načti ji v `main.tex` pomocí `\input{slides/nazev-souboru}`.
