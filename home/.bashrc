# pretty-printed JSON curl
alias jcurl='bash -c "curl \$* | python -m json.tool" -- '

shopt -s expand_aliases
