# mina-mercurial

#### [Mina][1] tasks for handle with [Mercurial][1].

This gem provide mina task:

    mina mercurial:clone    # clone remote repository to build path
    
## Installation

Add this line to your application's Gemfile:

    gem 'mina-mercurial', :require => false
    
And then execute:

    $ bundle
    
Or install it yourself as:

    $ gem install mina-mercurial
    
## Usage

Add this to your `config/deploy.rb` file:

    require 'mina/mercurial'
    
Add *optional* parameters in your `config/deploy.rb`:

* `branch` - repository branch
* `revison` - repository revision (using instead `branch`)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[1]: https://github.com/mina-deploy/mina
[2]: http://mercurial.selenic.com/