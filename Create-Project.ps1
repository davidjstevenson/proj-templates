Param(
[parameter(Mandatory=$true)][alias("l")][string]$ProjectLanguage,
[parameter(Mandatory=$true)][alias("p")][string]$ProjectPath,
[alias("c")][switch]$ChangeLocation = $false
)

git clone --depth 1 --branch proj/$ProjectLanguage https://github.com/davidjstevenson/proj-templates-content.git $ProjectPath
Remove-Item -Force -Recurse $ProjectPath/.git
$PreviousDir = Get-Location
Set-Location $ProjectPath
git init
git add *
git commit -m 'initial commit, boiler plate project template'

if (-Not ($ChangeLocation))
{
    Set-Location $PreviousDir
}
