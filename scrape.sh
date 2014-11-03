#!/usr/bin/env bash
set -e

states=(
alabama
alaska
arizona
arkansas
california
colorado
connecticut
delaware
florida
georgia
hawaii
idaho
illinois
indiana
iowa
kansas
kentucky
louisiana
maine
maryland
massachusetts
michigan
minnesota
mississippi
missouri
montana
nebraska
nevada
new-hampshire
new-jersey
new-mexico
new-york
north-carolina
north-dakota
ohio
oklahoma
oregon
pennsylvania
rhode-island
south-carolina
south-dakota
tennessee
texas
utah
vermont
virginia
washington
west-virginia
wisconsin
wyoming
)

mkdir -p flags
cd flags

for state in "${states[@]}"; do
  echo "scraping $state..."
  curl -sSL "http://unitedwebrand.us/_assets/states/wallpaper/$state-2560x1440.png" -o "$state.png"
done

cd - > /dev/null
