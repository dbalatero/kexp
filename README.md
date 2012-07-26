About
-----

Pulls down basic play stats for KEXP 90.3/kexp.org via crawling/scraping.

Setup
-----

Clone this git repo, make sure you have Ruby + bundler installed (gem install bundler), then run

  bundle install

Usage
-----

1. Run bundle exec ./crawler.rb to seed the local cache up to date.
2. To get artist stats, run ./artist.rb artist name.

Example
-------

    bundle exec ./artist.rb "Father John Misty"

Returns

    dbalatero@yoda ~/oss/kexp  % ./artist.rb "Father John Misty"    

    Total plays: 17
    Dates:
    ----------------------
    2012-07-14 13:19:00 -0700
    2012-07-15 05:46:38 -0700
    2012-07-16 05:41:21 -0700
    2012-07-16 08:39:51 -0700
    2012-07-17 06:51:26 -0700
    2012-07-18 04:17:43 -0700
    2012-07-18 10:28:43 -0700
    2012-07-18 20:44:51 -0700
    2012-07-19 06:37:11 -0700
    2012-07-20 03:18:54 -0700
    2012-07-20 08:16:46 -0700
    2012-07-23 09:45:45 -0700
    2012-07-24 02:10:55 -0700
    2012-07-24 11:09:03 -0700
    2012-07-24 22:47:13 -0700
    2012-07-25 18:08:24 -0700
    2012-07-26 04:01:14 -0700

TODO
----

* The start date is hard coded, wahhhh.
