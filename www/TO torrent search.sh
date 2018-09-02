#!/usr/bin/env bash
# author ms
# tinkerstudio.fr
# 2012-10-16
# TODO : make a list of torrent sites and loop through the list
clear

QUERY="$*"
if $1 ; then
    # 'printf' replaces 'echo' --> it does NOT insert a newline
	printf "keywords? >"
	read QUERY
fi

#BROWSER="Stainless"
BROWSER="Safari"

echo "searching torrents for" "'$QUERY'"

#2018
open -a $BROWSER "https://www2.torrents9.cc/search_torrent/$QUERY.html"
# 2017
open -a $BROWSER "https://zooqle.com/search?q=$QUERY"
open -a $BROWSER "http://www.zetorrents.com/torrents/find/title:$QUERY"
# 2015

# 2014
#open -a $BROWSER "http://demonoid.pw/files/?category=0&subcategory=All&quality=All&seeded=0&external=2&query=$QUERY&uid=0&sort="
open -a $BROWSER "http://rutracker.org/forum/index.php"
open -a $BROWSER "http://www.torrents.me/search/web/$QUERY"
open -a $BROWSER "https://rarbg.to/torrents.php?search=$QUERY"
#open -a $BROWSER "https://arenabg.ch/"
open -a $BROWSER "https://www.limetorrents.cc/search/all/$QUERY/"
# DEAD LINKS
#open -a $#BROWSER "https://kat.cr/usearch/$QUERY/"
#open -a $BROWSER "http://1337x.to/search/$QUERY/1/"
#open -a $BROWSER "http://www.cpasbien.cm/recherche/$QUERY.html"
#open -a $BROWSER "http://bitsnoop.com/search/all/$QUERY/c/d/1/"
#open -a $BROWSER "http://yify-torrents.com/browse-movie/$QUERY/All/All/0/latest"
#open -a $BROWSER "http://mininova.org/search/$QUERY"
#open -a $BROWSER "http://www.btstorrent.cc/results.php?q=$QUERY"
#open -a $BROWSER "http://torrentz.com/search?q=$QUERY"
#open -a $BROWSER "http://t411.me/torrents/search/?search=$QUERY&cat=&submit=Recherche"
#open -a $BROWSER "https://kickass.so/usearch/$QUERY/"
#open -a $BROWSER "http://fenopy.se/?keyword=$QUERY"
#open -a $BROWSER "https://thepiratebay.se/search/$QUERY"
#open -a $BROWSER "http://btjunkie.org/search?q=$QUERY" # option -g pour ouvrir l'application en background
#open -a $BROWSER "http://isohunt.com/torrents/?ihq=$QUERY&iho1=d"
#open -a $BROWSER "http://pirateproxy.net/search/$QUERY/"
#open -a $BROWSER "http://www.torrentreactor.net/search.php?words=$QUERY"
#open -a $BROWSER "http://www.seedpeer.me/search.php?search=$QUERY"
#open -a $BROWSER "http://www.torlock.com/all/torrents/$QUERY.html?sort=seeds"
#open -a $BROWSER "http://www.mybittorrent.com/?keywords="$QUERY\""
#open -a $BROWSER "http://torrindex.com/0/0/search/all/$QUERY"
#
exit
