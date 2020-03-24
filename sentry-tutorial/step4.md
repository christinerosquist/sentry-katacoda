# Getting to know the Issues interface

Now that we have successfully triggered our first error-event we would like to learn exactly what kind of monitoring features Sentry provides us. In this step we will explain how to use the Issues interface in depth.

>*Note:* Make sure you have navigated to the `Issues` page on Sentry.io before continuing! (*Click **Issues** in the left-side menu*)

## The Issues Stream

The **Issues Stream** is where the errors of your application are aggregated into *Issues*.

### Event Grouping

Each error event is provided with a **fingerprint**, which is a combination of event details (*error message*, *stack trace* etc).  
Error events with the same fingerprint will be be **grouped together** to form an **Issue**. These are the Issues that are visible in the *Issues Stream*. (Notice that a *ReferenceError* **Issue** appears in the list due to the error-event we triggered in the previous step.)

This is actually one of the *main advantages* of Sentry:  
**Avoid the clutter of having multiple identical errors in your error logs!**

>*Note:* The *fingerprints* are highly customizable. You can make your own rules for [Event Grouping](https://docs.sentry.io/data-management/event-grouping/)!

Want to see what *Event Grouping* looks like? Why won't you try it out yourself?

1. Press the `Sample Application` tab in the Katacoda terminal repeatedly to simulate triggering multiple client errors of the same type as before (*you can go ahead and close each newly opened tab after the error is shown*).

2. Go back to Sentry.io and verify that the number of *Events* belonging to the *Issue* has now increased.

![Sentry Issues Stream](Images/SentryIssues.PNG '')

### Sorting and Filtering Issues

Issues can be sorted by:

- Priority (From high to low: *fatal, error, warning, info, debug* or *sample*)
- Frequency
- First Seen
- Last Seen
