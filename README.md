# My initial attempt at an nvim setup

### Attempted to keep it as minimal as possible

Been trying out nvim for a week or so as an experiment and at this point losing my config would be upsetting. So I'm putting it here.

#### Installation
- Clone the repo
- Run the install script
- Add a nerd font to system
- Run .nvim in the terminal
- For PopOS `sudo apt-get install ripgrep` is needed for the telescope ui extension to work. `"nvim-telescope/telescope-ui-select.nvim"` 

- Theres also some linters and formatters that need to be installed through the :Mason command these are
    - eslint_d
    - pint (this requires composer)
    - prettier
    - stylua

#### Issues
- Tried on both PopOS and MacOS, if composer is not installed the Phpactor plugin will not work but there's Intelephense so setup that for now.
- Spell check needs to be disabled in the options.lua file on PopOS otherwise theres red line issues on imports.
- Who knows how to setup a start screen on this thing.
- Annoying tab called [No Name] that opens up when nvim is started.

#### Lots of help taken from the following sources:
- [Jess Archers Laracasts series on nvim](https://laracasts.com/series/neovim-as-a-php-ide)
- [Typecraft's nvim setup vidoes](https://www.youtube.com/watch?v=zHTeCSVAFNY&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)
