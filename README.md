# Ruby, Cucumber and Selenium
This repository provides an example for ATDD (acceptance test driven development) with Cucumber, using Ruby and Selenium WebDriver. Moreover, it contains instructions for the installation of all required software on Windows `and` Linux.

# Some important notes
* This cucumber project is about a simple parking price calculator. The list of prices is stored in [parkingPrices.pdf](https://github.com/philenius/cucumber/blob/master/parkingPrices.pdf).

* The demo page for the parking price calculator is contained in the folder [website](https://github.com/philenius/cucumber/tree/master/website).

* You need to change the line 8 in the file [parking.rb](https://github.com/philenius/cucumber/blob/master/lib/parking.rb) before you can execute this cucumber test. The string variable in this line contains the path to `parking.html`.
Simply replace the string in this line by the path on your OS. To find out the path you need to open the website [parking.html](https://github.com/philenius/cucumber/blob/master/website/parking.html) in your browser and copy the displayed URL at the top of the browser.

* The folder [files](https://github.com/philenius/cucumber/tree/master/files) includes all necessary files for the installation of Ruby, Cucumber, ANSICON and Selenium WebDriver on Windows. The file [cucumberInstallation.pdf](https://github.com/philenius/cucumber/blob/master/cucumberInstallation.pdf) contains the tutorial for the complete installation on Windows `AND` Linux.

* For more information, go to [blog.licua.de](http://blog.licua.de/?p=389) where the architecture of a cucumber project and many more things are explained.