# PlanIt-Assessment-Maven

**Description**- Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). 
It consists of below components
  Robot Framework- Version 4.0
  Selenium Library- Version 4.0
  Maven Plugin -Version 1.8.0
  
This project is buit using Robot Framework using Selenium Java Library and Maven Plugin. Please note this is not Jython Robot Framework Implementation.

**Pre Requisites**
- Maven should be Installed
- Chrome/Safari Browser should be latest, Chrome 89 above, Safari 14 above

**Steps to be Performed**
- Clone the Project to Local using Git Hub URL
- Using cmd or Terminal, Navigate to root Directory of the Project
- Run the command- mvn clean
- Once the Build is successful, just navigate to src/test/resources/Driver
- Open the Chromedriver- this is just to make sure Chrome Driver is not corrupted. If you are able to open it with message- Starting ChromeDriver then it is not corrupted. If it throws the error message then please download the latest Chrome Driver and place it in above path
- Navigate back to Root folder of the Project, run the command- mvn robotframework:run and Test Cases will start running in Chrome
- Once the Test is completed, please check the reports in target folder
- If this test needs to be executed in Safari then please navigate to src/test/resources, edit - CommonVariable.robot, change the value for ${Browser} from Chrome to Safari( with tab space in between)
- Navigate back to root folder and run the command- mvn robotframework:run
- Robot Command file can be used if Robot is installed in Local Repo

Happy Testing...!!!!

Please reach out to me on tusharkr18@gmail.com for any issues.
