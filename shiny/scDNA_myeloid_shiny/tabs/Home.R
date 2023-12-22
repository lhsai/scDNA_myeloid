# UI-elements for Home tab
tabPanel(title = "Home", icon = icon("home"),
         tagList(
           tags$head(
             includeScript("tools/google-analytics.js"),
             tags$script(type="text/javascript", src = "busy.js"),
             tags$link(rel="shortcut icon", href="./aml-lgo-sidebar.jpg"),
             tags$script(type="text/javascript", "var switchTo5x=true"),
             tags$script(type="text/javascript", src="http://w.sharethis.com/button/buttons.js"),
             tags$script(type="text/javascript",'stLight.options({publisher: "675b3562-a081-470a-9fc4-3dd6a712209d", doNotHash: true, doNotCopy: true, hashAddressBar: false})')
           )
         ),
         div(id = "home",
             div(class="pull-right",
                 span(class='st_twitter', displayText='Tweet'),
                 span(class='st_linkedin', displayText='LinkedIn'),
                 span(class='st_facebook', displayText='Facebook'),
                 span(class='st_email', displayText='Email')
             ),
             br(),
             img(src = "aml-logo-sidebar.jpg", width = 900)
         )
)

