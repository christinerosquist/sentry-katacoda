Sentry will now be configured on your application, so in this step we will guide you on how to test the error-monitoring. 

## Trigger an error-event on Sentry.io ##

You can trigger your first event from your development environment by raising an exception somewhere within your application. An example of this would be rendering a button that calls an undefined function when clicked on. 

You will need to modify **App.js** in order to add the button. Click here to edit the file: `src/App.js`{{open}}

Add this code like shown in the picture below: `<button onClick={methodDoesNotExist}>Break the world</button>` 

![App](https://imgur.com/Abqkz0L.png)

You can now try to run the application again, with `npm start`{{execute}}

This will *not* work, since there will be compilation errors (you try to access a not-existing function). 

Click on the tab *Sample Application* and notice that the program won't start. 

If you now go to *Issues* under your Profile at Sentry.io, you should see an error-message on the page. 

**This means that Sentry.io is configured correctly on the application! Continue to start exploring more of Sentry.**
