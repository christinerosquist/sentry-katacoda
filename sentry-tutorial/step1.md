In this step we will tell you how to start using Sentry.io on a sample React application, by installing the Sentry SDK. 

# Create a sample React-application

You will start by creating a sample React-App that you will modify in order to use Sentry.io on it. Follow the steps below to create the sample application. 

1. Create the application by running the following command in the terminal. It can take a while to generate the application, but when it is done you can see the application-files in the editor. `npm init react-app sample-app`{{execute}}

2. Go to the root of the application by running `cd sample-app`{{execute}} 

3. Test that the application is working by writing `npm start`{{execute}}
You can open the program if you click on the tab *Sample Application* beside the terminal. 

The application is now ready!


# Add Sentry package as a dependency

Since you now have an application - the next step is to integrate Sentry with it! 

You need to sign up for an account at https://sentry.io/signup/ in order to use the platform. Once you have signed up, you can create a new Sentry project. The e-mail you use will by default be used for all the Sentry-notifications. Choose React.js as the platform you will use for the project. 

![alt_text](https://imgur.com/MQ18uY3.png "Sentry Platform")

You will then need to add the Sentry package as a dependency, which is done by executing the commands stated below. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. 

1. Navigate to the application-folder (if you aren't standing there already): `cd sample-app`{{execute}} 

2. Install the Sentry package: `npm install @sentry/browser`{{execute}}

When the installation is complete, you can continue to the next step of the tutorial!
