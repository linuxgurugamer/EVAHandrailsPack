#!/bin/bash
v="EVAHandrailsPackContinued.version"
cp $v GameData/NEBULA/EVAHandRailsPack
major=`grep -m 1 MAJOR $v | cut -f2 -d':' | tr -d , | tr -d '[:space:]'`
minor=`grep -m 1 MINOR $v | cut -f2 -d':' | tr -d ,| tr -d '[:space:]'`
patch=`grep -m 1 PATCH $v | cut -f2 -d':' | tr -d ,| tr -d '[:space:]'`
build=`grep -m 1 BUILD $v | cut -f2 -d':' | tr -d ,| tr -d '[:space:]'`
version="${major}.${minor}.${patch}"
if [ "$build" != "0" ]; then
		version="${version}.${build}"
fi

echo $version

releasedir="."
fname="${releasedir}/EVAHandrailsPack-${version}.zip"
zip -9r $fname GameData
