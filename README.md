# Bootstrap Error Renderer for Rails

Easiest way to render fields with errors with Bootstrap 5 compatible way.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add rails_bootstrap_error_renderer

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install rails_bootstrap_error_renderer

## Usage

Add to your application.rb file:

    config.action_view.field_error_proc = ->(html, instance) { BootstrapErrorRenderer.render html, instance }

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_bootstrap_error_renderer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rails_bootstrap_error_renderer/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsBootstrapErrorRenderer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_bootstrap_error_renderer/blob/main/CODE_OF_CONDUCT.md).
