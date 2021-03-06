# TicketsNow

TicketsNow API for soap web-services to pull data from ticketsnow.com

## Installation

Add this line to your application's Gemfile:

    gem 'tickets_now'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tickets_now

## Usage

### Initialize
    tn = TicketsNow::API.new

To list all available api methods

    tn.operations

To list all the arguments needed for a specific action

    tn.search_events_body
     => {:SecurityToken=>"string", :EventName=>"string", :EventCategoryID=>"string", :EventTypeID=>"string", :VenueID=>"string", :MarketAreaID=>"string", :PostalCode=>"string", :StartDate=>"string", :NumberOfDays=>"string"}

To pull data

    args = {:SecurityToken=>"string", :EventName=>"string", :EventCategoryID=>"string", :EventTypeID=>"string", :VenueID=>"string", :MarketAreaID=>"string", :PostalCode=>"string", :StartDate=>"string", :NumberOfDays=>"string"}
    tn.search_events(args)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
