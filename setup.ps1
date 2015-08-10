cd $env:USERPROFILE
mkdir "Documents\WindowsPowerShell"
rm -recurse -force "vimfiles"
rm ".ctags"
rm ".gitignore_global"
rm ".gitconfig"
rm ".agignore"
rm ".dotfiles\Microsoft.PowerShell_profile.ps1"

git clone "https://github.com/robertmeta/vimfiles.git" ".dotfiles\vimfiles"

cmd /c mklink "%USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" "%USERPROFILE%\.dotfiles\Microsoft.PowerShell_profile.ps1"
cmd /c mklink "%USERPROFILE%\.ctags" "%USERPROFILE%\.dotfiles\.ctags"
cmd /c mklink "%USERPROFILE%\.gitignore_global" "%USERPROFILE%\.dotfiles\.gitignore_global"
cmd /c mklink "%USERPROFILE%\.gitconfig" "%USERPROFILE%\.dotfiles\.gitconfig"
cmd /c mklink "%USERPROFILE%\.agignore" "%USERPROFILE%\.dotfiles\.agignore"
cmd /c mklink /D "%USERPROFILE%\vimfiles" "%USERPROFILE%\.dotfiles\vimfiles"

gc ".gitconfig" | %{$_ -replace "cache --timeout=64800","wincred"} | sc ".gitconfig"