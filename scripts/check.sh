#!/usr/bin/env bash

doc_file=docs/master.adoc

printf "Words: %13s\n"      $(wc --words $doc_file | cut -f 1 -d ' ')
printf "Characters: %8s\n"  $(wc --chars $doc_file | cut -f 1 -d ' ')
printf "Headings: %10s\n"   $(grep "^=\{1,5\}[[:space:]]" $doc_file | wc --lines)
