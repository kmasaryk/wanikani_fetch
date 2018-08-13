# wanikani_fetch

A simple command line script written in Ruby which will fetch current user
information from WaniKani and print it to stdout.

[What is WaniKani?](https://www.wanikani.com/about)

## Requirements

* WaniKani account
* Gem: rest-client
* Gem: json

Assuming you already have Ruby installed, the required gems can be installed
with the `gem install` command:

`$ gem install rest-client json`

## Configuration

Copy `api_key.rb.sample` to `api_key.rb` and then edit the `API_KEY` var to
include your personal API key. This key is obtained from
[www.wanikani.com/api](https://www.wanikani.com/api)

## Usage

`$ ./wk_fetch`

Example Output

```
$ ./wk_fetch
foobrew
Level: 32
Reviews due: 10
Reviews due next hour: 7
Lessons available: 42
```