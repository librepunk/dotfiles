 #!/bin/sh
filter='ERROR:|localhost|luakit:|Page not found|[Ss]earch'
case $BROWSER in
  luakit)   sqldb=~/.local/share/luakit/history.db
            query="select datetime(last_visit,'unixepoch'), title, uri from history order by last_visit DESC;"
            uri=$(echo "$query" \
                | sqlite3 $sqldb \
                | egrep -v "$filter" \
                | sed 's/[|]/  ::  /g' \
                | $(dlist) -p 'Web History:' \
                | sed -r 's/.* :: .* :: (.*)/\1/')
            ;;
  vimb|*)   histfile=~/.config/vimb/history
            uri=$(tac $histfile $histfile.vimb \
                | egrep -v "$filter" \
                | sed "s/\t/  ::  /g" \
                | $(dlist) -p 'Web History:' \
                | sed -r 's/(.*) :: .*/\1/')
            ;;
