$destFile = "C:\Final save location\Filename.txt"
$tempFile = ".\urlhausdns.txt"
$outputFile = ".\urlhaus.txt"

$Pattern = '^(?<IP>\d{1,3}(\.\d{1,3}){3})\s+(?<Host>.+)$'

rm $tempFile
rm $outputFile

curl "https://urlhaus.abuse.ch/downloads/hostfile" -o $tempFile

$reader = new-object System.IO.StreamReader($tempFile)

while(($line = $reader.ReadLine()) -ne $null)
  {
    If ($line -match $Pattern)
    {
    Add-Content $outputFile $Matches.Host
    }
  }
$reader.Close()
$reader.Dispose()

cp $outputFile $destFile