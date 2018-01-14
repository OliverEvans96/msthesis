(TeX-add-style-hook
 "intro"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("parskip" "parfill") ("natbib" "numbers") ("epstopdf" "outdir=./")))
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
    "eqnum")
   (LaTeX-add-environments
    "mcfig"))
 :latex)

