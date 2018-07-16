function revs {
    if ! [[ -n $2 ]]; then
         xdg-open "https://www.ncbi.nlm.nih.gov/pubmed/?term=\"$1\"%5BTI%5D+AND+review%5BPT%5D+AND+English%5BLA%5D"
    elif ! [[ -n $3 ]]; then
         xdg-open "https://www.ncbi.nlm.nih.gov/pubmed/?term=(\"$1\"%5BTI%5D+AND+\"$2\"[TI])+AND+review%5BPT%5D+AND+English%5BLA%5D"
    elif ! [[ -n $4 ]]; then
         xdg-open "https://www.ncbi.nlm.nih.gov/pubmed/?term=(\"$1\"%5BTI%5D+AND+\"$2\"[TI]+AND+\"$3\"[TI])+AND+review%5BPT%5D+AND+English%5BLA%5D"
    fi
}
