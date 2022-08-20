:: First argument is filename, second is title, third is author
jupyter nbconvert %1 --to html
IF [%~3]==[] (SET arg3="Vibha Padmanabhan") ELSE (SET arg3=%3)
pandoc -f html+tex_math_dollars+tex_math_single_backslash -V geometry:margin=2cm -V title:%2 -V author:%arg3% -V date:\today -V fontsize:12pt -o %1.pdf %1.html