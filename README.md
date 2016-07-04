# Pandoc Template for Elsevier Journals

This is a LaTex template for [Pandoc](http://pandoc.org/) markdown to generate `pdf` and `tex` files
using the [elsarticle](https://www.ctan.org/pkg/elsarticle?lang=en) LaTex article class for
submission to Elsevier journals.

Use the Makefile provided along with the template to generate `pdf` or `tex` files (using `make pdf`
or `make tex`. `make clean` removes all generated files).

Various options for the template can be specified using a [YAML metadata
block](http://pandoc.org/README.html#extension-yaml_metadata_block). These options are listed below:

- `els-options`: Options to be passed to the `elsarticle` class. See the `elsarticle`
  [documentation](http://mirrors.ctan.org/macros/latex/contrib/elsarticle/doc/elsdoc.pdf) for
  details.

- `title`: Title of the paper.

- `author`: Author(s) of the paper. There are two ways to specify the authors - 

    * Each author can have `name`, `email` and `address`.

    * Authors belonging to the same group/department can have a `group` name instead of address.

- `author-group`: If authors of the same group have a `group` mentioned in the `author` option, then
  this option has to be spcified. The `author-group` has `group` name and `address` sub-options.

- `abstract`: Abstract of the paper.

- `keywords`: Keywords for the paper.

- `bibliography`: Bibliography file (same behaviour as in the default Pandoc LaTeX template).

- `biblio-style`: Bibliography style option for `natbib` or `biblatex` packages. 

- `csl`: [Citation Style Language](http://citationstyles.org/) for `pandoc-citeproc` filter.

A sample markdown file called `paper1.md` has been provided as an example for how to use the options.

This template does not cover all the features of the `elsarticle` class. More features can be added
upon request.
