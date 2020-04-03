

## Issues

### What's inside an issue?

Let's look at an Issue! You should currently be looking at the Sentry.io Issues Stream. Now click on an Issue's title to learn what's inside!

![Sentry Issue](https://github.com/christinerosquist/sentry-katacoda/blob/master/sentry-tutorial/Images/SentryIssue.PNG?raw=true 'Sentry Issue')
 *Example of an Issue.*

You can see some details about the event, as well as the provided *Tags*.

If you continue to scroll down you will see the Stacktrace of the error to the left, and statistics of all the Tags to the right:

![Sentry Stacktrace](https://github.com/christinerosquist/sentry-katacoda/blob/master/sentry-tutorial/Images/SentryStackTrace.PNG?raw=true 'Sentry Stacktrace')
 *Example of a Stacktrace in an Issue.*

The Stacktrace is a good place to start when you are trying to figure out what went wrong.


## Breadcrumbs

So remember how we talked about Tags in the previous chapter? The beauty of tags is providing Sentry with relevant data to help us in tracing errors.  

Just like if someone stole cookies from your cookie jar, there's a useful way of tracing our steps when something has gone wrong - by following the trail of **Breadcrumbs**.


Sentry lets you specify *Breadcrumbs* in your application, that logs structured data to Sentry at specific points (*chosen by you*) in your application. By using Breadcrumbs, you can follow the trail to see how you ended up with an error, just like a Stacktrace!

### Breadcrumb structure

A Breadcrumb typically consists of a **category**, a priority **level**, a **message** and/or **data**(mapped metadata that acts like a payload).

### Adding a Breadcrumb

Let's try it out for ourselves!

Start by adding a username variable to the App.js file, which we will access in our Breadcrumb.  
You can put it right after our Sentry initialization! 

<pre type="file">
  const username = "Alice";
</pre>

Now that we have some data, we can add a Breadcrumb to `sample-app/src/App.js`{{open}}. Put the following on the line below the username variable we just created:

<pre type="file">
  Sentry.addBreadcrumb({
    category: 'UsernameVariable',
    message: 'Hello, ' + username,
    level: Sentry.Severity.Info
  });
</pre>

---

Now rerun the application by running `npm start`{{execute}} in the terminal and click on the *Sample Application* tab.

This will add a Breadcrumb of category **UsernameVariable** containing the given **username** in the **message** to any error event that passes through that part of our application!  

As our application breaks, we will receive a Sentry error event. Remember that it can take a while for the error to get captured. If you locate the corresponding Issue on Sentry.io you can scroll down to the **Breadcrumbs** section (*just underneath the Stacktrace*).  

A new Breadcrumb should have appeared, with category **UsernameVariable** just like we specified, and with a *Hello* **message** containing the specified username!  
Yay!

![Sentry Breadcrumb](https://github.com/christinerosquist/sentry-katacoda/blob/master/sentry-tutorial/Images/SentryBreadcrumbs.PNG?raw=true 'Sentry Breadcrumb')
 *Our example Breadcrumb contains the username `Alice`.*

> *Note:* The Breadcrumbing process can be automated. For more information, see [Automatic Breadcrumbs](https://docs.sentry.io/enriching-error-data/breadcrumbs/?platform=javascript#automatic-breadcrumbs)

Now that you are familiar with breadcrumbs, I hope you are ready for more Sentry goodies?  
Let's continue exploring in the next chapter!
