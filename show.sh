#! /usr/bin/env bash

TMP_DIR=$(mktemp -d)

# HEADER
cat <<EOF >> "$TMP_DIR/source.tex"
\documentclass{standalone}
\usepackage{tikz}
\begin{document}
    \begin{tikzpicture}[]
EOF

# BODY
cat $1 >> "$TMP_DIR/source.tex" 

# FOOTER
cat <<EOF >> "$TMP_DIR/source.tex" 
    \end{tikzpicture}
\end{document}
EOF

# COMPILATION
latexmk -pdf -aux-directory=$TMP_DIR -output-directory=$TMP_DIR "$TMP_DIR/source.tex"

# DISPLAY
zathura "$TMP_DIR/source.pdf"

