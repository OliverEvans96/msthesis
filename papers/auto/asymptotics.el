(TeX-add-style-hook
 "asymptotics"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("parskip" "parfill") ("natbib" "numbers") ("epstopdf" "outdir=./eps2pdf/")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "amsmath"
    "amssymb"
    "mathtools"
    "etoolbox"
    "booktabs"
    "parskip"
    "natbib"
    "float"
    "geometry"
    "multicol"
    "caption"
    "url"
    "epstopdf")
   (TeX-add-symbols
    '("iter" 1)
    '("pd" 2)
    '("abs" 1)
    '("ip" 1)
    '("unorm" 1)
    '("norm" 1)
    "mgin"
    "erf"
    "sign"
    "NN"
    "RR"
    "CC"
    "BB"
    "DD"
    "QQ"
    "conj"
    "qed"
    "xmin"
    "xmax"
    "ymin"
    "ymax"
    "zmin"
    "zmax"
    "eqnum"
    "Lasym"
    "Lasymp")
   (LaTeX-add-labels
    "eqn:rte1d"
    "fig:spatial_grid"
    "fig:angular_grid")
   (LaTeX-add-environments
    "mcfig"))
 :latex)

