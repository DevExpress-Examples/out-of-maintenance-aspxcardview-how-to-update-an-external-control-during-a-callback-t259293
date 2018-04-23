# ASPxCardView - How to update an external control during a callback


By default, the ASPxCardView works during callbacks and there's no way to update an external control (that isn't a child control of the callback owner) on the server side. The following article describes this limitation in detail.<br /><a href="https://www.devexpress.com/Support/Center/Question/Details/K18387">The Concept of Callbacks</a><br />This example covers both the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxCardView_JSPropertiestopic">JSProperties</a> feature of the ASPxCardView that allows passing a value from the server to the client and the client-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientCardView_EndCallbacktopic">EndCallback</a> event, which is raised each time a callback is executed successfully.<br />It is possible to set a JSProperty on the server, get it on the EndCallback, and change the "target" control using its client-side capabilities.<br />This example illustrates how to use the ASPxLabel to identify that the grid was successfully updated. 

<br/>


