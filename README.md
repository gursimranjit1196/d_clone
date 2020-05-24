# DClone

Welcome to our new gem! 
In this gem, you are able to Deep Clone your Hash and Array very easily.
If you are using Ruby outside Rails, and want to deep clone your Reference Data Type, then this gem is perfect for you to fullfill your requirements.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'd_clone'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install d_clone

## Usage

require "d_clone"


Lets first try it for Hashes

x = { a: 1, b: { c: 3, d: [ 11, 12, 13 ], e: 12 } }

clone_x = x.d_clone

puts clone_x[:b]            
> {:c=>3, :d=>[11, 12, 13], :e=>12}

puts clone_x[:b][:d]
> [11, 12, 13]

clone_x[:b][:f] = 14

clone_x[:b][:d] << 14

puts clone_x
> {:a=>1, :b=>{:c=>3, :d=>[11, 12, 13, 14], :e=>12, :f=>14}}

puts x
> {:a=>1, :b=>{:c=>3, :d=>[11, 12, 13], :e=>12}} 

The changes done in 'clone_x' don't reflect in 'x' (x remains intact)




Lets now try it for Arrays

y = [1, 2, [ 3, 4, 5, [ 6, 7 ], { a: 11, b: 12 } ]]

clone_y = y.d_clone

puts y[2][3]
> [6, 7]

puts y[2][4]
> {:a=>11, :b=>12}

y[2][3] << 88

y[2][4][:c] = 333

puts y
> [1, 2, [3, 4, 5, [6, 7, 88], {:a=>11, :b=>12, :c=>333}]] 

puts clone_y
> [1, 2, [3, 4, 5, [6, 7], {:a=>11, :b=>12}]]

The changes done in 'y' don't reflect in 'clone_y' (clone_y remains intact)


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gursimranjit1196/d_clone. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/gursimranjit1196/d_clone/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DClone project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/gursimranjit1196/d_clone/blob/master/CODE_OF_CONDUCT.md).
