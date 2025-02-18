#!/bin/bash

#############################
# Author: Molly Brothers
# Github: mollybrothers
# Date: 01/12/2021
#############################

#converts all bedgraph files in a directory into tdf files viewable by IGV
#Assumes that all begdraph files are in the same folder and all end with ".bedgraph"

#Change directory to that provided as argument

cd "$1"
genome="$2"

#Iterates through all bedgraph files in folder
for file in *.bedgraph
do
        output=${file%.bedgraph}.tdf
        bash /global/groups/fc_nanosir/IGVTools_2.4.19/igvtools toTDF "$file" "$output" "$genome"
done
