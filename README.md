[![Code Climate](https://codeclimate.com/github/chris-teague/browzy.png)](https://codeclimate.com/github/chris-teague/browzy)

Browzy
======

Note: Readme Driven Development going on here!


Craft scenarios within your application for viewing across multiple browsers 
within your local network. Build these using factories etc, for repeatable 
interactive testing.


Usage Example
=============

I have a windows computer with IE7, a linux box with Firefox, a Mac with Safari 
& an Android Tablet with Chrome. I want to view my site's homepage on each of 
these devices.

Each PC / Device installs the browzy-display application which allows them to 
report which browsers they have available for testing.

Now setup /browzy/homepage.rb to look like this:

    require 'browzy'

    scenario 'Homepage is useable across different browsers' do
      distribute '/'
    end


Now simply run the following:

    $ browzy homepage.rb
    
or simply

    $ browzy


Browzy will negotiate with discovered devices on the local network and issue
them all to display the homepage within their browsers.


Now whilst this may seem rather un-impressive, the real power is in browzy's
capacity to automate any tomfoolery and cut straight to the chase. For example:

    require 'browzy'

    scenario 'View a logged in users profile' do
      user = User.new(email: 'chris@test.com', password: 'letmein')
      visit '/user/sign_in'

      # psuedo code, most likely capybara implementation though?
      page.username = 'chris@test.com'
      page.password = 'letmein'
      page.submit 

      user.friends << User.new(email: 'test@test.com', password: '1234')


      step '1' do
        distribute '/user/profile'
      end
    end


This will create a user, log them in, load up their profile page then display it
on any connected device for testing.

