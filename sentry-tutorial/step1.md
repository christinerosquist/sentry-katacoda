In this step we will tell you how to start using Sentry.io on a sample React application, by installing the Sentry SDK. 

# Explore the sample React-application

A sample-application should be available in the editor now (it can take a while to generate all the files so if they have not showed up yet - be patient. You should see a folder named "Src"). You can browse through the different folders and files in the editor. To test the application, follow the steps below:

1. Go to the root of the application by running `cd sample-app`{{execute}} 

3. Test that the application is working by writing `npm start`{{execute}}
You can open the program if you click on the tab *Sample Application* beside the terminal. 

The application is now ready! Press `ctrl+C` to stop the server. 


# Add Sentry package as a dependency

Since you now have an application - the next step is to integrate Sentry with it! 

You need to sign up for an account at https://sentry.io/signup/ in order to use the platform. Once you have signed up, you can create a new Sentry project. The e-mail you use will by default be used for all the Sentry-notifications. Choose React.js as the platform you will use for the project. 

![alt_text](https://imgur.com/MQ18uY3.png "Sentry Platform")

You will then need to add the Sentry package as a dependency, which is done by executing the commands stated below. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. 

1. Navigate to the application-folder (if you aren't standing there already): `cd sample-app`{{execute}} 

2. Install the Sentry package: `npm install @sentry/browser`{{execute}}

When the installation is complete, you can continue to the next step of the tutorial!
