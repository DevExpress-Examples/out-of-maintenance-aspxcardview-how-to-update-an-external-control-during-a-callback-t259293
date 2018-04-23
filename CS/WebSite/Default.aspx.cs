using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        ASPxCardView1.JSProperties["cpIsUpdated"] = "";
    }
    protected void ASPxCardView1_CardUpdated(object sender, DevExpress.Web.Data.ASPxDataUpdatedEventArgs e)
    {
        if (e.Exception == null)
        {
            ((ASPxCardView)sender).JSProperties["cpIsUpdated"] = e.Keys[0];
        }

    }
}
