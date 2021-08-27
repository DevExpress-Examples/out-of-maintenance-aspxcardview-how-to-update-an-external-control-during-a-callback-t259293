<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128530304/15.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T259293)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxCardView - How to update an external control during a callback
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t259293/)**
<!-- run online end -->


By default, the ASPxCardView works during callbacks and there's no way to update an external control (that isn't a child control of the callback owner) on the server side. The following article describes this limitation in detail.<br /><a href="https://www.devexpress.com/Support/Center/Question/Details/K18387">The Concept of Callbacks</a><br />This example covers both the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxCardView_JSPropertiestopic">JSProperties</a> feature of the ASPxCardView that allows passing a value from the server to the client and the client-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientCardView_EndCallbacktopic">EndCallback</a> event, which is raised each time a callback is executed successfully.<br />It is possible to set a JSProperty on the server, get it on the EndCallback, and change the "target" control using its client-side capabilities.<br />This example illustrates how to use the ASPxLabel to identify that the grid was successfully updated. 

<br/>


