# prints the most recent version of wordpress

#FIXME this needs to accept args for the number of wordpress releases to print out
#FIXME need to add -nobeta as an option instead of being hard coded

lynx -dump -nolist http://wordpress.org/news/category/releases/ | awk 'BEGIN{n=0} /WordPress [0-9]/ && !/[bB]eta/{if (n<1) print $5; n++}'
