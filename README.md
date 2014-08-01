# Rufus::Scheduler::CronLine::Occurrences

This gem provides Rufus::Scheduler::CronLine#occurrences method which
returns potential trigger time within the [ time0, time1 ] span.
(time0 exclusive, time1 inclusive)

## Note

I tried to use Rufus::Scheduler#occurrences but it depends on machine time.
It returns nothing on past time.
This gem is machine-time independent.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rufus-scheduler-cronline-occurrences'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rufus-scheduler-cronline-occurrences

## Usage

```
Rufus::Scheduler.parse('*/2 * * * * *').occurrences(Time.parse('2014-07-31 00:00:00 +0900'), Time.parse('2014-07-31 00:00:10 +0900'))
=> [2014-07-31 00:00:02 +0900,
 2014-07-31 00:00:04 +0900,
 2014-07-31 00:00:06 +0900,
 2014-07-31 00:00:08 +0900,
 2014-07-31 00:00:10 +0900]
```

## Contributing

1. Fork it ( https://github.com/knagano/rufus-scheduler-cronline-occurrences/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
