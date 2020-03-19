After you completed the previous steps, which includes setting up a project in Sentry, you'll be given a value that is called DSN (Data Source Name). It looks a lot like a standard URL, but it’s actually just a representation of the configuration required by the Sentry SDKs. It consists of a few pieces, including the protocol, public key, the server address, and the project identifier.

You need to inform the Sentry Node SDK about your DSN. How you do it is shown in the code-snippet below. You need to go to your account at 
https://sentry.io/ to se what to replace `KEY` and `PROJECT` with. 
    
TODO: Visa bilder på hur det ser ut på hemsidan. 

You will need to add this code to the App.js file. You can to this via the terminal by using Vim.

First, write `clear`{{execute}} in order to clear the terminal-window. 

1. `cd src`{{execute}}
2. `vim App.js`{{execute}}

Write `:e`in order to edit the file. Then insert this code block under the import-statements, but replace `KEY` and `PROJECT` to what is shown at Sentry.io. 

<pre class="file">
{
  const Sentry = require('@sentry/node');
  Sentry.init({ dsn: 'https://KEY@sentry.io/PROJECT' }); 
 }
</pre>`

Then press the esc-button and write `:wq` to save the file and exit. If you now write `cat App.js` you can see the changes made to the file.


