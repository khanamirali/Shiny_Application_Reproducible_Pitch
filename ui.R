library(highcharter)

shinyUI(navbarPage(
  "Fertility Forecast Dashboards",
  tabPanel("FERTILITY FORECAST",
           fluidPage(
             sidebarLayout(
               sidebarPanel(
                 dateRangeInput(
                   "date_range",
                   label = "Date Range",
                   min = "1960-01-01",
                   max = "2012-12-01",
                   start = "1960-06-06",
                   end = "2012-01-01",
                   format = "yyyy-mm-dd",
                   startview = "decade"
                 ),
                 sliderInput(
                   "forecast_n_months",
                   min = 12,
                   max = 12 * 5,
                   value = 48,
                   step = 12,
                   label = "Forecast n months"
                 )
               ),
               mainPanel(highchartOutput("forecastPlot"))
             )
           )),
  navbarMenu(
    "HELP",
      tabPanel("Instructions",
             fluidPage(
               includeMarkdown("instructions.md")
             ))
  ),
  collapsible = TRUE
))