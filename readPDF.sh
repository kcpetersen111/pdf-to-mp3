if [[ $# -ne 2 ]]
then
	read -p "What is the name of the PDF file? " fileName
	read -p "What is the name of the output file? " outputName
else
	filename=$1
	outputName=$2
fi

pdftotext -q -raw $fileName $outputName

python3 read.py $outputName
rm $outputName
