# Tracking::Api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tracking-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tracking-api

## Usage

```
class ContactController < ApplicationController
  def index
    render 'contact/index'
  end

  def find
    tracking_service = TrackingApi::TrackingService.new host_name
    @contacts = tracking_service.contacts
    render 'contact/list'
  end

  def activities
    tracking_service = TrackingApi::TrackingService.new host_name
    @activities = tracking_service.activities params[:cid]
    render 'contact/activities'
  end

  private

  def host_name
    original_url = request.original_url
    fullpath = request.fullpath
    fullpath = '' if (fullpath == '/')
    original_url.remove fullpath
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luiz-simples/tracking-server-gem
