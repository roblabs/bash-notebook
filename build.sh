#! /bin/sh
# strip out all the markdown
#  except,
#  * Headers
#  * {bash} codeblocks
pandoc -t bashNotebook.lua $1 > $1.sh

# run the generated script
sh $1.sh
