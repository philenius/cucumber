# Ruby, Cucumber and Selenium on Windows

## Ruby
1. Download on http://rubyinstaller.org/downloads the installer for ruby.
   Please take Ruby 1.9.3 (reason: There are problems in newer versions with gherkin.)
   Direct link: http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p551.exe

2. Install Ruby to `C:\Ruby`. Make sure that there are no whitespaces within path name!
   In the installation setup make sure to check the checkbox:
   > Add Ruby executables to your PATH
   
   
3. Perform a reboot, logging in and off might also suffice.

4. Confirm the correct installation by calling:
   > ruby -v

5. Open the windows command line (cmd.exe) an enter:
   > gem install selenium-webdriver
   
   If an error because of the ssl certificates occurs, type in the following two lines and try afterwards again:
   > gem sources -r https://rubygems.org/
   
   > gem sources -a http://rubygems.org/

## Ruby Development Kit
1. Download the Development Kit on http://rubyinstaller.org/downloads. Attention, you must take the version which fits your ruby version.
Direct link:  http://dl.bintray.com/oneclick/rubyinstaller/DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe  


2. Execute the downloaded .exe file and select as extract path `C:\Ruby\DevKit`.


3. Open cmd and change the directory (use the command `cd` for changing the directory) to `C:\Ruby\DevKit`.

4. Type in:
   > ruby dk.rb init
 
   > ruby dk.rb install 

5. Confirm the correct installation by calling:

   > gem install json --platform=ruby
   
   If this fails, try:
   > gem install json --platform=ruby --verbose

## Cucumber
1. You need to install two further ruby gems (cucumber and rspec). So type in:
   > gem install cucumber rspec
   
   
2. Confirm the correct installation by calling:
   > cucumber --version
    
## Enable colored console
1. Download the version `1.53` of ANSICON on https://github.com/adoxa/ansicon/downloads. Newer versions might work as well. If you want to be on the safe side take this version. Otherwise you might get problems as cucumber will stop working with newer releases of ANSICON.


2. Extract the downloaded folder (you can store it anywhere you want).


3. Open `cmd` and `cd` into the extracted folder. Then `cd` either into the folder `x86` or into `x64` depending on your OS.

4. Execute the command:
   > ansicon.exe -i

Source for this tutorial:
http://www.agileforall.com/2011/08/getting-started-with-ruby-cucumber-and-capybara-on-windows/

# Ruby, Cucumber and Selenium on Linux
1. Open a terminal and execute:
   > sudo apt-get install ruby1.9.1-dev
   
   If you’re getting the error that the package has no installation candidate and isn’t available (happens on Ubuntu 15.10), then you should try:
   > sudo apt-get install ruby ruby-all-dev


2. Confirm the successfull installation by calling:
   > ruby –v

3. Install the selenium gem:
   > sudo gem install selenium-webdriver
   
   If an error because of the ssl certificates occurs, type in the following two lines and try afterwards again:
   > gem sources -r https://rubygems.org/
   
   > gem sources -a http://rubygems.org/
   
   On Debian you might get an error saying `sh: 1: make: not found`. In this case try:
   > sudo apt-get install build-essential zlib1g-dev libssl-dev libreadline5-dev

4. Install the rspec gem:
   > sudo gem install rspec


5. Install cucumber:
   > sudo apt-get install cucumber

6. Confirm the correct installation by calling:
   > cucumber --version


Source for this tutorial:
https://www.youtube.com/watch?v=Yn4xfvGaau8