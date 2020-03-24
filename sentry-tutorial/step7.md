# What's next?

---

Provide Sentry with state data to the error event (context, breadcrumbs etc) to improve tracability of the error (what was done prior to the error, like waypoints on the way to the error).

---

When your application grows you might get too many errors to handle. In order to cut down on costs you can choose which transactions to send to Sentry by Sampling Transactions.

---

Setup **Releases** so that you can trace *which commit* was active during the error. You could use `git rev-parse HEAD`  as a release name (*it should be unique*). This would specify which commit was setup when the error happened.

---

Setup Issue owners so that you can trace WHO is responsible for following up on a certain type of error.

---

Setting up Search Queries so that you can visualize your error data using the Discover tool. (not available in the free version)

---


Tracing the path between different parts of your app can help understanding which path an event has taken in your stack. Example: Connect a front end call to the back end using an ID on the request so that both parts of your application share an error ID that can be used for identifying the request.