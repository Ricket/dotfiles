* Clone the repo into ~/.dotfiles `git clone git@github.com:Ricket/dotfiles.git ~/.dotfiles`
* Change into ~/.dotfiles `cd ~/.dotfiles`
* Init and pull the submodules (vim bundles) `git submodule init && git submodule update`
* Go into the command-t vim bundle `cd vim/bundle/command-t/ruby/command-t`
* Configure and make it `ruby extconf.rb && make`
  * Might need the `ruby-devel` package first (`sudo yum install ruby rubygems ruby-devel`)
