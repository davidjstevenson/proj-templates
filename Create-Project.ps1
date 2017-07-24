Param(
[parameter(Mandatory=$true)][alias("l")]$ProjectLanguage,
[parameter(Mandatory=$true)][alias("n")]$ProjectName
)

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

git archive --format=zip --prefix=$ProjectName/ proj/$ProjectLanguage -o __tmp__.zip
if ($LASTEXITCODE -ne 0)
{
    Write-Host git failed, possible language are:
    foreach ($a in git branch --list proj/*)
    {
        Write-Host   - $a.Substring(7)
    }
    Break
}

Unzip $pwd\__tmp__.zip $pwd\
Remove-Item -Path __tmp__.zip
