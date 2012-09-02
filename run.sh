# Input document
CNXML_FILE="example.cnxml"

# Output files
HTML_FILE="output.html"
PDF_FILE="output.pdf"


# Dependencies:
# Binaries and other projects
CNXMLUTILS=../rhaptos.cnxmlutils
OER_EPUBCSS=../oer.epubcss
CSS_FILE=./ccap-physics.css
PHANTOMJS_BIN=~/Downloads/phantomjs-1.6.0/bin/phantomjs
PRINCE_BIN=~/prince/bin/prince



# Find the current directory
ROOT_DIR=`dirname "$0"`
ROOT_DIR=`cd "$ROOT"; pwd`

OUTPUT_XHTML="_output.xhtml"
OUTPUT_CSS="_output.css"

cat ${ROOT_DIR}/inject-before.html > ${HTML_FILE}
xsltproc ${CNXMLUTILS}/rhaptos/cnxmlutils/xsl/cnxml-to-html5.xsl ${CNXML_FILE} >> ${HTML_FILE}
echo "</html>" >> ${HTML_FILE}

${PHANTOMJS_BIN} ${OER_EPUBCSS}/phantom-harness.coffee /dev/null ${ROOT_DIR}/${HTML_FILE} ${OUTPUT_XHTML} ${OUTPUT_CSS} autogenerateClasses=false

${PRINCE_BIN} -o ${PDF_FILE} --style ${CSS_FILE} ${OUTPUT_XHTML}