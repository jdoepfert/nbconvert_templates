((*- extends 'article.tplx' -*))


% suppress title
((* block maketitle *))((* endblock maketitle *))

% turn of section numbering
((* block commands *))
\setcounter{secnumdepth}{0} % Turns off numbering for sections
((( super() )))
((* endblock commands *))

% set font size of code block results
((* block stream *))
    \begin{Verbatim}[commandchars=\\\{\},fontsize=\footnotesize]
((( output.text | wrap_text(86) | escape_latex | ansi2latex )))
    \end{Verbatim}
((* endblock stream *))


% change document class
((* block docclass *))
\documentclass[parskip=half]{scrreprt}
((* endblock docclass *))