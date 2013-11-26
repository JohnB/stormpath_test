stormpath_test
==============

Test out the stormpath service

# Notes while testing its web UI and ruby gem
- I may have logged in only once before, and don't remember the signup process, so when confronted with a dialog that asks for "tenant name" I'm really flummoxed.
- https://api.stormpath.com/forgotTenant helps me out..
- When I see the "tenant name" I'm pretty sure I've never seen it before. Its a Heroku-style mashup like "blue-swan" or "melting-sunshine"
- Now my password doesn't work...
- Wacky! the "forgot login?" page requires my tenant name an my email. I really don't like this perpetual know-3-things authentication process. If someone has control of my email address, then they can find out the rest of the info with the same queries I'm doing. I really don't see a point to requiring the tenant name at login.
- In the process of resetting my password, I realized how I had previously mistyped it (twice) and set it to the same value. And now, again, it asks me to log in. With the tenant name that I nearly forgot.
- Argh! I had mistyped the tenant name and now have to re-enter my long password. Finally I'm in!
- I'm at the Getting Started page. 
- I generate an API key with no overview of how it is supposed to work: Are these keys related to openauth? is one of them a shared secret? Can either of them be made public in a javascript file?
- Moving on to the docs, I select the ruby docs and am greeted with http://docs.stormpath.com/#RubyDocs - where there is nothing, above the fold at least, with the word "ruby". WTF? I see "Get Started with Stormpath / Quickly setup your application with our Quickstart Guides" and a dropdown list that offers "Ruby Quickstart" that takes me to a ruby-focused tutorial at http://docs.stormpath.com/ruby/quickstart/
- It reads like it is not a password-protected document. So why did I have to go thru the password and tenant hassle? And I don't see the word "tenant" until I search for it, and see it mentions "tenant data". Uh... am I a tenant in an apartment building? Who are my neighbors? Will I have to see my neighbors much? I doubt I'll like them. They probably play music too loud and look at me funny in the hallway. I'd much prefer a house in a neighborhood, with some strong fences, to being a tenant.
- It reminds me to store my api key in a secure location. Why? Don't I need it for my app to talk to the server?
- I'm told to "gem install" the app with the --pre flag, but nothing about using it with bundler and adding it to my Gemfile
- BTW: the whole of the Gemfile looks like this:

```
source 'http://rubygems.org'

gem "stormpath-sdk"  #, "pre"
```

- I finally stumble upon http://docs.stormpath.com/ruby/product-guide/ which finally tells me what the hell Stormpath *does*. Or.. maybe not...

- Back at https://github.com/stormpath/stormpath-sdk-ruby I follow along in IRB (changing from ruby 2.x syntax to ruby 1.9 syntax since I don't have 2.0 installed yet):

```
require 'stormpath-sdk'
client = Stormpath::Client.new( :api_key_file_location => File.join(ENV['HOME'], '.stormpath', 'apiKey.properties') )
NoMethodError: undefined method `new' for Stormpath::Client:Module
```

- WTF? Their API documentation does not work?!? I try it in https://github.com/JohnB/stormpath_test/blob/master/storm_test.rb ...

# ToDo
- Email Claire
- Upgrade to ruby 2.0 and see if it works better

 

