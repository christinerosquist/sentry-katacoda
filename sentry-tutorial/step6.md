# Configure Notifications

In this section we will configure which notifications to receive.

### Default Notifications
Per default, you will receive an e-mail notification for any issue that occurs in you Project.

This can be a bit overwhelming, but if you want to change it you can specify which notifications you want to receive in the [Notification Settings](https://sentry.io/settings/account/notifications/).

---

# BONUS! Integrate Sentry with Slack

Wouldn't it be great if you could get a notification directly in your team's Slack whenever something goes wrong in your application? Well we are living in 2020 and anything is possible, so let's set it up!


## Setting up the Slack Integration
In the left sidebar on Sentry.io, click on **Settings** to go to your organizations Settings page.  
On the Organization Settings page, there will be another sidebar menu. Click on **Integrations** under *General Settings*.

Choose the Slack Integration, and then press the `Add Workspace` button.

You will see a popup *Slack Authorization* window, where you need to allow Sentry access to some parts of your Slack Workspace.  
1. Begin by selecting which Slack Workspace you want to ingegrate with Sentry in the top right **Workspace** dropdown menu. Press **Continue**  
2. Select which channels Sentry should have write access to. You can choose a specific channel or give it global access.

> *Note:* Sentry will only post alerts to the channel or person of your choice, and will not post anything until you configure alerts.


## Configure Alerts

Now that you have allowed Sentry access to your Slack Workspace, it's time to set up an alert notification!

- Press the **Configurations** tab on the Slack Integration page. You will see an overview of connected Slack Integrations.  
- Locate your Slack Workspace and press **Configure**.
- Under *PROJECT CONFIGURATION* you will find your Sentry project. Press the **Add Alert Rule** button.

This is the New Alert page. Let's try setting up a rule!

### Configure Rule Conditions
Under *Configure Rule Conditions* you can select under which conditions Sentry should send a Slack notification. Press the **add condition** dropdown and choose **An event is seen**.

Now we should select what action to perform when these conditions are met. We want to send a Slack notification. Press the **add an action** dropdown under *Perform these actions*, and choose **Send a notification to the {workspace} Slack workspace to {channel} and show tags {tags} in notification**.  

- Select your Slack workspace
- Select a channel to post to
- Specify a Tag for your alert rule.

> *Note:* I recommend creating a #sentry channel in your Slack Workspace you only post Sentry notifications to, so your team members can choose whether or not they want to get notified

> *Note:* Tags can be used to separate alerts using different rules, so that you can customize your workflow to something that suites your team.

### Rate Limit

To avoid getting a new Sentry notification for each and every event that happens (which could be in the millions for a big project), you can set a limit on how often an event should trigger a notification.

### Give your rule a name

In order to know what notification came from which rule, you should specify a name for your alert rule.

### Save your rule

Now that we have specified the details, go ahead and press **Save Rule**.

## Make sure that it works

Now we have a Slack notification alert rule setup!  
Let's try it out to verify that it works as intended!

Press the `Sample Application` tab in the terminal again to trigger yet another error. When the error event shows up in the Issues Stream, it should also send you a notification in the channel you have chosen in your Slack Workspace!


As you can see there are multiple actions available in the notification.
If you know what's wrong you can resolve or ignore the Issue, or you can assign a team or a team member to the Issue right there in Slack!

--- 

Feels good right? Let's continue to the final chapter of this tutorial!
