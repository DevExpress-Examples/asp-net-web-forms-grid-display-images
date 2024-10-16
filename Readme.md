<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128539304/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1967)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Grid View for ASP.NET Web Forms - How to display an image in a grid cell

This example demonstrates how to load an image into a cell based on another cell value.

![](grid-with-images-in-cells.png)

## Implementation Details

The `Image` column declares a [DataItemTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.GridViewDataColumn.DataItemTemplate) that contains the `img` element.

```
<dx:GridViewDataColumn Caption="Image (Template)" >
    <DataItemTemplate>
        <img id="img" runat="server" alt='Eval("Value")' src='<%# GetImageName(Eval("Value")) %>' />
    </DataItemTemplate>
</dx:GridViewDataColumn>
```
An image URL is determined based on the row value in the `Value` column.

```
protected string GetImageName(object dataValue) {
    string val = string.Empty;
    try {
        val = (string)dataValue;
    } catch { }

    switch(val) {
        case "attach":
            return "~/Images/attach32x32.png";
        case "back":
            return "~/Images/back32x32.png";
        default:
            return "~/Images/1x1.gif";
    }
}
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

## More Examples

* [Grid View for ASP.NET Web Forms - How to display an image in a grid's column](https://github.com/DevExpress-Examples/asp-net-web-forms-grid-display-image)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-display-images&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-display-images&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
