using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace SeparateGridsOnTabPages {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void gridSubCategories_FocusedRowChanged(object sender, EventArgs e) {
            int row = gridSubCategories.FocusedRowIndex;
            object key = gridSubCategories.GetRowValues(row, gridSubCategories.KeyFieldName);
            Session["CurrentSubcategoryID"] = key;
        }

        protected void ASPxButton1_Click(object sender, EventArgs e) {
            // go to the next tab
            ASPxPageControl1.ActiveTabIndex = 1;
        }

    }
}
