#$silent = 1;
$dvi_mode = 0;
$pdf_mode = 1;
$preview_continuous_mode = 1;
#
# Choose xelatex as the default builder of pdfs, don't stop for errors, use synctex
$pdflatex = 'xelatex -synctex=1 --shell-escape %O %S';

# .bbl files assumed to be regeneratable, safe as long as the .bib file is available
$bibtex_use = 2;

# User biber instead of bibtex
$biber = 'biber --debug %O %S';
# Default pdf viewer
#$pdf_previewer = 'mupdf %O %S';
$pdf_previewer = 'zathura';
## Extra file extensions to clean when latexmk -c or latexmk -C is used
$clean_ext = '%R.run.xml %R.synctex.gz';
## How to make the PDF viewer update its display when the PDF file changes.  See the man page for a description of each method.
$pdf_update_method = 1;

## When PDF update method 2 is used, the number of the Unix signal to send
$pdf_update_signal = 'SIGHUP';

##   If zero, check for a previously running previewer on the same file and update it.  If nonzero, always start a new previewer.
$new_viewer_always = 0;
