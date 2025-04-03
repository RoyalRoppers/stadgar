#let template(body) = {
  set document(title: "RoyalRoppers stadgar")
  set page(numbering: "1", number-align: center, margin: 4cm)
  set text(font: "Libertinus Serif", lang: "sv", hyphenate: false, size: 12pt)
  set heading(numbering: sym.section + " 1.1")
  set ref(supplement: sym.section)
  set list(indent: 1em)
  set par(spacing: 1.2em)
  show heading: set block(above: 1.4em, below: 1em)

  v(1fr)

  block(
    text(
      2em,
      weight: 700,
      [
        RoyalRoppers stadgar
      ],
    ),
  )
  text([
    Org. nr.: 802539-6931 \
    #datetime.today().day()
    #(
      "januari",
      "februari",
      "mars",
      "april",
      "maj",
      "juni",
      "juli",
      "augusti",
      "september",
      "oktober",
      "november",
      "december",
    ).at(datetime.today().month() - 1)
    #datetime.today().year()
  ])

  v(7cm)

  pagebreak()

  outline(title: "Innehåll", indent: true, fill: none)

  pagebreak()

  set par(justify: true)

  body
}
