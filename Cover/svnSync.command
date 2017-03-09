#! /bin/sh
D=`dirname "$0"`
cd "$D"
# svnCommit --- do svn commit, show the log, and open the working file
#
# Just copy this to any SVN directory.  Double-click to update.
# Use the "sf" alias (ALIASES.txt) to set the working file.
#

svn update
svn commit

if test -e .workingfile
then
  svn log "`cat .workingfile`" > log.txt
  # open log.txt
  open "`cat .workingfile`"
else
  svn log > log.txt
  # open log.txt
fi
