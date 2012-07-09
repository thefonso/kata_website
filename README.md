# This is a simple website Kata
 It shows how to make simple form create links to other pages and
 It also shows how to write basic test with RSpec, TDD style.



 Part1 - User stories.
 We will start by taking a list of basic "user stories"
 
 Simple website:
 
    it should display a company logo on each page
    it should show a picture of the company building on the front page
    it "should display text about the company on the front page"
    it "should have three pages, home, about, contact"
    it "should have a name, email and comments field"
 
 
 Part2 - Create a pending block
 We will begin our journey with our first "describe" block.
 
 Our first describe block:
 
    describe "simple company website" do
        it should display a company logo on each page
        it should show a picture of the company building on the front page
        it "should display text about the company on the front page"
        it "should have three pages, home, about, contact"
        it "should have a name,email and comments field"
    end
 
 
 Part3 - We can split our "it should do" statements up like so... 
 
    describe "simple company website" do
        it "should display a company logo on each page" do
         "verify an element exist on each page named logo.jpg"
        end

        it "should show a picture of the company building on the front page" do
         "verify an element exist on the front page named building.jpg"
        end

        it "should display text about the company on the front page" do
         "verify a paragraph with id="description of company" text is on front page"
        end

        it "should have three pages home, about, contact" do
         "code here verifies presence of pages"
        end

        it "should have a name,email and comments field" do
         "code here verifies presence of each field"
        end
    end

 Part4 - Replace the Pending code with working code
 
Now we will begin building our app starting with thinking about each test in our app...making a failing test (red)...making it pass (green) and so on until each test passes...after which we will have a self documenting app that will be a LOT more easily maintained over the course of it's lifetime.
 
Let the journey begin...



