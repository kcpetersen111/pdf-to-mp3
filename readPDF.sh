if [[ $# -ne 2 ]] 
#if the number of arguments is 2, don't prompt the user for the file names
then
	read -p "What is the name of the PDF file? " fileName
	read -p "What is the name of the output file? " outputName
else
	fileName=${1}
	outputName=${2}
fi

pdftotext -q -raw ${fileName} ${outputName}

python3 read.py ${outputName}
rm -f ${outputName}
