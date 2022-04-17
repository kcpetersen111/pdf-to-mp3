echo "What is the name of the PDF file?"
read fileName
echo "What is the name of the output file?"
read outputName
pdftotext -q $fileName $outputName

python3 read.py $outputName
rm $outputName