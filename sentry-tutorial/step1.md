You have now gotten access to a terminal that contains a folder named *sample-app*, which is a basic Node.js application. 
In this step we will tell you what you need to change in the different files of the application, in order to use *Sentry.io* on it.

# Familiarize yourself with the application
In the terminal, you will have access to an already existing application based on React and Node.js (sample-app). 

Write `cd sample-app` in the terminal, in order to navigate to the folder containing the different application files. 
If you write `ls` you can list the different folders.

*Firstly* we need to add the Sentry package as a dependency. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. This tutorial is made when using Node.js. If you are standing in the sample-app-directory write the following to install the Sentry package as a dependency: 
`npm install @sentry/node@5.14.1`. 
