$pdf_previewer = "start evince";
$pdf_pdf_update_method = 0;
$dvi_mode = 0;
$pdf_mode = 1;
$preview_continuous_mode = 1;
#$pdflatex = "xelatex %O %S";
$pdflatex=q/xelatex -synctex=1 %O %S/
