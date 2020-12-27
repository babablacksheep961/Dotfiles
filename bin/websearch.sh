#!/usr/bin/bash
declare -A URLS

URLS=(
  ["google"]="https://www.google.com/search?q="
  ["duckduckgo"]="https://www.duckduckgo.com/?q="
  ["github"]="https://github.com/search?q="
  ["stackoverflow"]="http://stackoverflow.com/search?q="
  ["searchcode"]="https://searchcode.com/?q="
  ["youtube"]="https://www.youtube.com/results?search_query="
  ["vimawesome"]="http://vimawesome.com/?q="
  ["unsplash"]="https://unsplash.com/search/photos/"
  ["reddit"]="https://reddit.com/r/"
)

# List for rofi
gen_list() {
    for i in "${!URLS[@]}"
    do
      echo "$i"
    done
}

main() {
  platform=$( (gen_list) | rofi -dmenu -matching fuzzy -only-match -location 0 -p "Which to use ? " )

  query=$(rofi  -dmenu -p "$platform > " )
  if [[ -n "$query" ]]; then
    url=${URLS[$platform]}$query
    xdg-open "$url"
  fi
}

main

exit 0
