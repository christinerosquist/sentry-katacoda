
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

![Sentry Issues Stream](https://github.com/christinerosquist/sentry-katacoda/blob/master/sentry-tutorial/Images/SentryIssues.PNG?raw=true '')
 *Example of a Stream of Issues that each contain multiple events.*

---

### Assigning Issues

Issues have benefits other than Event Grouping. You can *assign* team members to specific Issues, giving them the responsibility to verify that the problem is solved (or come up with a solution).

> *Note:* Assigning Issues to team members can be automated using the [Issue Owners](https://docs.sentry.io/workflow/issue-owners/) workflow!  


### Resolving Issues

When you have inspected an Issue and tried to solve the underlying problem, you might feel like you are done with the Issue. Sentry allows you to **resolve** the Issue, which removes it from the Issues Stream. 

> *Note:* Receiving error events with the *same fingerprint* as your Issue will toggle it back to **Unresolved**!

If you already know what the Issue is you can go ahead and **Ignore** it by using the Ignore button.  
You can also *snooze* an Issue by specifying how long it should be ignored. The duration can either be **temporal** (Ignore for 30 minutes) or **quantitative** (Ignore the next 10 events).

---

### Sorting Issues

Issues can be sorted by:

- Priority (Levels from high to low: *fatal, error, warning, info, debug* or *sample*)
- Frequency
- First Seen
- Last Seen


### Filtering Issues

Issues can be filtered in multiple relevant ways, such as:

- Status (*resolved*, *unresolved*, *ignored*, *assigned*, etc)
- Assignee
- Bookmarks
- Time seen
- **Tags**


> *Note:* By pressing the Lever icon in the far right of the Issues Stream Search Bar you can access a more advanced search builder.

> *Note:* You can share your filter queries with your project collaborators using the share button or by copying the URL that is created upon filtering.

#### Tags?

Now you might say:  
*- Hey, what are **Tags?***  
Well I'm glad you asked! 
You can [Tag](https://docs.sentry.io/enriching-error-data/context/?platform=javascript#tagging-events) your error events with key-value pairs that is relevant to that specific event.  
These key-values will be forwarded to Sentry and are available in the error event, so that you can for example filter Issues based on tags. Cool!

Let's check out a similar concept on the next page!
