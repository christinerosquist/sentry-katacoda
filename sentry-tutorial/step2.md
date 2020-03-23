After you completed the previous step, which includes setting up a project in Sentry, you can go to your profile at https://sentry.io/. Start by clicking on **Projects** and choose the one that you just created. Scroll down the page and click on Client Keys (DSN).

![alt_text](https://imgur.com/WwgGmvX.png "Sentry DSN")

DSN is a value that stands for Data Source Name. It looks a lot like a standard URL, but it’s actually just a representation of the configuration required by the Sentry SDKs. It consists of a few pieces, including the protocol, public key, the server address, and the project identifier. You can see your DNS value on the page Client Keys. Below is an example of how it should look. The text that is marked in yellow represents the `KEY` and the `PROJECT` value that you will need, but you should use the ones that are shown at your own Profile. 

![alt_text](https://imgur.com/kAC7kwd.png "Sentry DSN")

You should init the Sentry browser SDK as soon as possible during your application load up, before initializing React. Therefore, you will need to modify the **App.js** file, which can be done vie the terminal by using [vim](https://www.vim.org/). 

First, write `clear`{{execute}} in order to clear the terminal-window. Then follow these steps: 

1. `cd src`{{execute}}
2. `vim App.js`{{execute}}

Write `:e` + enter in order to edit the file. Then add this code block under the import-statements, but replace `KEY` and `PROJECT` to what is shown at you profile on Sentry.io. 

<pre class="file">

  import * as Sentry from '@sentry/browser';
  Sentry.init({ dsn: 'https://KEY@sentry.io/PROJECT' }); 
 
</pre>

Then press the esc-button and write `:wq` to save the file and exit. If you now write `cat App.js` you can see the changes made to the file.

If you now run `npm start`{{execute}}, the application will run. Press the tab *Sample Application* beside the Terminal to open the program. 

If you have finished the steps above, you can continue. 

