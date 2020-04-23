In this step we will tell you how to start using Sentry.io on a sample React application, by installing the Sentry SDK. 

# Explore the sample React-application

A sample-application should be available in the editor now (it can take a while to generate all the files so if they have not showed up yet - be patient. You should see a folder named "src". If the files do not show up, run `git clone https://github.com/christinerosquist/sample-app.git`{{execute}} in order to clone the sample application. You can browse through the different files in the editor, and if you are interested to learn more about the sample-app you can look in the README-file. To test the application, follow the steps below:

1. Go to the root of the application by running `cd sample-app`{{execute}} 

2. Run `npm install`{{execute}} in order to install the required dependencies.

3. Test that the application is working by writing `npm start`{{execute}} in order to start a local server.
You can open the program if you click on the tab *Sample Application* beside the terminal. 

The application is now ready! Press `ctrl+C` to stop the server, so that you can use the terminal. 

# Get started with Sentry

Since you now have an application - the next step is to integrate Sentry with it! 

You need to sign up for an account at https://sentry.io/signup/ in order to use the platform. Once you have signed up, you can create a new Sentry project. When you sign up, you can choose KTH as your organization (or something else appropriate). The e-mail you use will by default be used for all the Sentry-notifications. 

Once you have signed up, you can select platform for the project. In this tutorial we will use React.js, so please choose React as the platform you will use. Press *Create Project* after selecting the platform. After you have created your project, you can scroll up to the top of the page and press to *skip the onboarding* provided by Sentry (because you will use this tutorial instead!). You can leave the Sentry-page now, since *your first Sentry-project is created*, and you can continue exploring this tutorial! 

![Sentry Platform](https://imgur.com/MQ18uY3.png "Sentry Platform")


# Add Sentry package as a dependency

You will now need to add the Sentry package as a dependency, which is done by executing the command stated below, in the terminal. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. 

Install the Sentry package: `npm install @sentry/browser`{{execute}}

When the installation is complete, you can continue to the next step of the tutorial!
