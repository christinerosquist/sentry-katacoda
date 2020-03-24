# What's next?

There's so many cool things you can do with Sentry.io!  
We can't cover them all in this tutorial, but feel free to explore these features on your own!

---

### Distributed Tracing

Tracing the path between different parts of your app can help in understanding which path an event has taken in your stack.  

>*Example:* Connect a Front-end call to the Back-end using an **id** on the request so that both parts of your application share an error ID that can be used for identifying the request.

Read more about it in the docs for [Distributed Tracing](https://docs.sentry.io/performance/distributed-tracing)!

### Sampling Transactions

When your application grows you might get too many error events to handle. In order to cut down on costs you can choose which transactions to send to Sentry by [Sampling Transactions](https://docs.sentry.io/performance/distributed-tracing/#sampling-transactions).

---

### Releases

We recommend that you set up [Releases](https://docs.sentry.io/workflow/releases/) so that you can trace *which commit* was active during the error. This makes it a lot easier to figure out what release broke your code.


