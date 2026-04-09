Tak — to najlepiej zrobić jako **mały SVG pattern** i używać go jako `background-image` w CSS. To lżejsze i wygodniejsze niż bitmapa.

Przygotowałem Ci 3 wersje:

* [subtelne białe kropki](dot-pattern-subtle-white.svg)
* [gęstsze subtelne białe kropki](dot-pattern-subtle-white-dense.svg)
* [subtelne złote kropki](dot-pattern-subtle-gold.svg)

Najprostsze użycie dla ciemnego bloku:

```css
.dark-section {
  background-color: #111111;
  background-image: url('/assets/patterns/dot-pattern-subtle-white.svg');
  background-repeat: repeat;
  background-size: 120px 120px;
}
```

Dla jaśniejszego, beżowego albo złotawego tła:

```css
.warm-section {
  background-color: #d9cfbd;
  background-image: url('/assets/patterns/dot-pattern-subtle-gold.svg');
  background-repeat: repeat;
  background-size: 120px 120px;
}
```

Jeśli chcesz mocniej zbliżyć efekt do tego ze “Sketching it out”, to zwykle dobrze działa też pattern tylko na fragmencie bloku, a nie na całym tle, na przykład pseudo-elementem:

```css
.section-with-pattern {
  position: relative;
  overflow: hidden;
}

.section-with-pattern::before {
  content: "";
  position: absolute;
  inset: 0;
  background-image: url('/assets/patterns/dot-pattern-subtle-white.svg');
  background-repeat: repeat;
  background-size: 120px 120px;
  opacity: 0.35;
  pointer-events: none;
}
```

I wtedy można ograniczyć go np. do lewej strony:

```css
.section-with-pattern::before {
  content: "";
  position: absolute;
  left: 8%;
  top: 12%;
  width: 280px;
  height: 420px;
  background-image: url('/assets/patterns/dot-pattern-subtle-white.svg');
  background-repeat: repeat;
  background-size: 120px 120px;
  opacity: 0.22;
  pointer-events: none;
}
```

To daje dużo bardziej elegancki efekt niż pattern na całej sekcji.

Jak wrzucisz SVG do repo, przygotuję Ci potem krótki prompt dla Codexa, żeby użył tego dokładnie tam, gdzie trzeba.
