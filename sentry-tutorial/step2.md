After you completed the previous step, which includes setting up a project in Sentry, you can go to the Sentry dashboard at https://sentry.io/. Since you will need to switch a lot between Katacoda and Sentry now, we suggest that you prepare a nice environment for that. For example, open Sentry in a new window rather than a tab, that you can have beside the Katacoda-tutorial. 

Start by clicking on *Projects* in the left panel. 

![Left Panel](https://imgur.com/y76yvA8.png "Left Panel")

Then click on the *#[Your Organizations Name]*. 

![Profile](https://imgur.com/ggrT5V6.png "Profile")

Go to Projects -> Click on your new project 

![Projects](https://imgur.com/Ee6JVii.png "Projects")

Scroll down the page and click on Client Keys (DSN).

![SentryDSN](https://imgur.com/oopNWpj.png "Sentry DSN")

DSN is a value that stands for Data Source Name. It looks a lot like a standard URL, but it’s actually just a representation of the configuration required by the Sentry SDKs. It consists of a few pieces, including the protocol, public key, the server address, and the project identifier. You can see your DSN value on the page Client Keys. Below is an example of how it should look. The text that is marked in yellow represents the `KEY` and the `PROJECT` value that you will need, but you should use the ones that are shown at your own Profile. 

![SentryDSN](https://imgur.com/kAC7kwd.png "Sentry DSN")

You should init the Sentry browser SDK as soon as possible during your application load up, before initializing React. Therefore, you will need to modify the **App.js** file, which can be done via the editor. Go to `sample-app/src/App.js`{{open}}. 

You then need to add this code block under the other import-statements, but replace `KEY` and `PROJECT` to what is shown at you profile on Sentry.io. The picture below illustrates where to put the code and how it will look. 

<pre class="file">
  import * as Sentry from '@sentry/browser';
  Sentry.init({ dsn: 'https://KEY@sentry.io/PROJECT' }); 
</pre>

![Code](https://imgur.com/DIDe1RD.png "Code example")

After you have added the code, you can continue. 
