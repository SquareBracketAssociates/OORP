
# $Id: Makefile 17108 2008-03-16 11:02:18Z oscar $

# export TEXINPUTS:=.:local
export TEXINPUTS:=./local//:../local//:

C = DetailedModel DupPatterns FirstContext Initial Introduction MigrationStrategies Preface Redistribute SettingDirection TestingCluster Thumbnails Transform

PDFLATEX = pdflatex -file-line-error
BOOK=OORP

# --------------------------------------------------------------------------------
all : book

# NB: be sure to use texlive and to set the TEXINPUTS variable accordingly
# See README.txt

book : clean
	time ${PDFLATEX} ${BOOK}
	time ${PDFLATEX} ${BOOK} | tee warnings.txt
	# Filter out blank lines and bogus warnings
	perl -pi \
		-e '$$/ = "";' \
		-e 's/[\n\r]+/\n/g;' \
		-e 's/LaTeX Warning: Label `\w*:defaultlabel'\'' multiply defined.[\n\r]*//g;' \
		-e 's/Package wrapfig Warning: wrapfigure used inside a conflicting environment[\n\r]*//g;' \
		warnings.txt

# We need a makefile rule to generate the index as well ...
index :
	makeindex ${BOOK}

complete : book index
	time ${PDFLATEX} ${BOOK}

full : complete
	# open ${BOOK}.pdf
	open ${BOOK}.tex

# --------------------------------------------------------------------------------
# MAINTENANCE

# Adapt this rule to find anything (such as duplicate labels)
find :
	find . -name \*.tex | \
	xargs egrep '\\atsign'

# Search for any figure files with non-unique names
duplicates :
	ls figures */figures | sort | uniq -d

# look for bad usages of see index (with ! in second arg)
badsee :
	find . -name \*.tex | \
	xargs egrep '\\seeindex\{.*}{.*!.*}'

badindex :
	find . -name \*.tex | \
	xargs egrep '\\index\{.*}{'

# Check for duplicate labels
checkLabels :
	find . -name \*.tex | \
	xargs perl -p -e 's/\%.*//;' | \
	fgrep '\label' | \
	perl -p -e 's/.*\\label{([^}]*)}.*/$$1/;' | \
	sort | uniq -d

munge :
	find . -name \*.tex | \
	xargs perl -pi \
	-e 's/{Chapter summary}/{Chapter Summary}/g;'

keys :
	find . -name \*.tex -or -name \*.txt | \
	xargs svn propset svn:keywords "Date Author Id Log"

# Fix the mime types of all pdf files
ps :
	find . -name \*.pdf | \
	xargs svn ps svn:mime-type application/octet-stream

# --------------------------------------------------------------------------------
clean :
	-rm -f *.aux *.log *.out *.glo *.toc *.ilg *.blg *.idx
	-rm -f */*.aux */*.log */*.out
	-rm -f .DS_Store */.DS_Store
	for arg in $C; do rm -f $${arg}.pdf; done

bare : clean
	-rm -f ${BOOK}.pdf */*.pdf

# --------------------------------------------------------------------------------
