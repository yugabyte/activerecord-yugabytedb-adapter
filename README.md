# ActiveRecord YugabyteDB Adapter

This is an adapter for YugabyteDB for ActiveRecord. The adapter uses YugabyteDB's Ruby smart driver underneath. The adapter code is derived from the [PostgreSQL adapter v7.1.3.4 for ActiveRecord in the Rails repository](https://github.com/rails/rails/tree/v7.1.3.4/activerecord/lib/active_record/connection_adapters).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add activerecord-yugabytedb-adapter

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install activerecord-yugabytedb-adapter

## Usage

Include the gem in your `Gemfile`
```ruby
    gem 'rails', '7.1.3.4'
    gem 'activerecord-yugabytedb-adapter', '7.1.3.4'
```

Check this [simple example](https://github.com/YugabyteDB-Samples/orm-examples/tree/ruby-smart-driver/ruby/ror) for usage of this adapter.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yugabyte/activerecord-yugabytedb-adapter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/yugabyte/activerecord-yugabytedb-adapter/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in this project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yugabyte/activerecord-yugabytedb-adapter/blob/master/CODE_OF_CONDUCT.md).
