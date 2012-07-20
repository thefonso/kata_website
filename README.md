# This is a simple website Kata
We will review how to check for the existence of, pages, images, a form and form elements, that will all exist in this app.

Test will be done TDD style.

#Start

Create a new empty directory on your system and type at prompt:
    
    $ Rails new kata_website -T
(the -T will remove test:unit files from the installation..we will not be using it.)

Then add this to your gemfile

    group :development do
      gem "rspec-rails", ">= 2.10.0"  
    end

And run 'bundle install' at prompt:
    
    $bundle install

Simple client website:

So you've interviewed a client and they've told you this

    I want a company logo
    I want a picture of the company building
    I want text describing how awesome the company is
    I want a simple website  (home, contact us,  about us)
    I want a contact form for my visitors
    The form should have a name, email, and comments field
 
Part1 - Conversion.
 
We will start building this by taking that list of basic "user stories" and converting it using "it" and "should". 
 
Becomes:
 
    it "should display a company logo on each page"
    it "should show a picture of the company building on the front page"
    it "should display text about the company on the front page"
    it "should have three pages, home, about, contact"
    it "should have a name, email and comments field"
 
 
Part2 - Create a pending block
 
We will begin our journey with our first "describe" block.
 
Our first describe block:
 
    describe "simple company website" do
        it "should display a company logo on each page"
        it "should show a picture of the company building on the front page"
        it "should display text about the company on the front page"
        it "should have three pages, home, about, contact"
        it "should have a name,email and comments field"
    end
 
 
Part3 - We can split our "it should do" statements up like so... 
 
Note: the use of "pending"
 
    describe "simple company website" do
        it "should display a company logo on each page" do
         pending "verify an element exist on each page named logo.jpg"
        end

        it "should show a picture of the company building on the front page" do
         pending "verify an element exist on the front page named building.jpg"
        end

        it "should display text about the company on the front page" do
         pending "verify a paragraph with id="about our company" is on front page"
        end

        it "should have three pages home, about, contact" do
         pending "code here verifies presence of pages"
        end

        it "should have a name,email and comments field" do
         pending "code here verifies presence of each field"
        end
    end

Part4 - Replace the Pending code with working code
 
Now we will begin building our app starting with thinking about each test in our app...making a failing test (red)...making it pass (green) and so on until each test passes...after which we will have a self documenting app that will be a LOT more easily maintained over the course of it's lifetime.
 
Let the journey begin...


#Resources:
See the git cheat sheet in this repo.

https://github.com/thefonso/class_website/blob/master/git_cheat_sheet.md

https://github.com/thefonso/class_website/blob/master/git_cheat_sheet_workflow_multi.md

https://github.com/thefonso/class_website/blob/master/git_cheat_sheet_workflow_single.md

Also it's suggested that you keep the RSpec documentation on hand in a browser tab.

http://rubydoc.info/gems/rspec-expectations

http://rubydoc.info/gems/rspec-mocks/#Setting_Responses

http://rubydoc.info/gems/rspec-core/#nested_groups

http://rubydoc.info/gems/rspec-rails/frames



