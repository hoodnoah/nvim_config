git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.config/nvim/site/pack/packer/start/packer.nvim

rm -rf site/.git

# Install fsharp autocomplete plugin
dotnet tool install --global fsautocomplete
