# README

# Content Scraper
A simple html scraper built in ruby on rails. Creates a short summary of an html page by using nokogiri to parse the DOM elements found by throwing out a get request to any URL and return all text contained in header tags.

## endpoints
### /urls -- Get (index action)
* displays all of the previously scraped URLs and a short summary
  of their contents.

### /urls -- Post (create action)
* takes an input url, scans the HTML found on the page
  and collects all text found within h1, h2, and h3
  tags.

## libraries used
* [Nokogiri](http://www.nokogiri.org/) for parsing raw HTML
