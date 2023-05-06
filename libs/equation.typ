#let foldl1(a, f) = a.slice(1).fold(a.first(), f)
#let concat(a) = foldl1(a, (acc, x) => acc + x)
#let nonumber(e) = math.equation(block: true, numbering: none, e)

#let eq(es, numberlast: false) = if es.has("children") {
  // see https://typst.app/docs/reference/layout/par/#parameters--leading
  show math.equation: set block(spacing: .65em)
  let esf = es.children.filter(x => x != [ ])
  let bodyOrChildren(e) = if e.body.has("children") { concat(e.body.children) } else { e.body }
  let hideEquation(e) = if e.has("numbering") and e.numbering == none {
    nonumber(hide(e))
  } else [
    $ #hide(bodyOrChildren(e)) $ #{if e.has("label") { e.label }}
  ]
  let hidden = box(concat(
    if numberlast {
      esf.slice(0, esf.len()-1).map(e => nonumber(hide(e))) + (hideEquation(esf.last()),)
    } else {
      esf.map(e => hideEquation(e))
    }))
  let folder(acc, e) = acc + if acc != [] { linebreak() } + e
  let aligned = math.equation(block: true, numbering: none, esf.fold([], folder))

  hidden
  style(s => v(-measure(hidden, s).height, weak: true))
  aligned
}