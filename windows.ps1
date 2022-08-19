git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim\site\pack\packer\start\packer.nvim"

rm -r -fo site/.git

# Setup fsharp autocomplete
dotnet tool install --global fsautocomplete
