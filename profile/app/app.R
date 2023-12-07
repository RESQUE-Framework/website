library(shiny)
library(quarto)
library(jsonlite)

ui <- fluidPage(

    titlePanel("RESQUE Profile Builder"),

    sidebarLayout(
      
      sidebarPanel(
        br(),
        HTML("You need to upload the .json file from the <a href='https://nicebread.github.io/RESQUE/web/'>RESQUE web app</a>.<br><br> <b>Privacy note:</b> While the app for entering the data does not store any data (everything is stored only locally on your machine), this Profile Builder needs to store a temporary copy of your json file and your resulting profile on a server of the Ludwig-Maximilians-Universität München. The files are not permanently stored.<br><br>"),
        fileInput("upload", "Upload your RESQUE json file:", buttonLabel = "Upload...", multiple = FALSE, accept = ".json"),
        downloadButton(outputId = "report", label = "Generate and Download Report")
      ),
      
      mainPanel(
        h2("Here is a preview of your data: "),
        tableOutput("jsonhead")  
      )
    )
)


server <- function(input, output) {
  
  data <- reactive({
    req(input$upload)
    
    return(read_json(input$upload$datapath, simplifyVector = TRUE))
  })
  
  
  output$jsonhead <- renderTable({
    data()[-1, ][, c("Title", "Year", "DOI", "P_TopPaper_Select")]
  })
  
  
  output$report <- downloadHandler(
    filename = "RESQUE_report.html",
    content = function(file) {
      quarto::quarto_render("create_profile.qmd", 
         execute_params = list(jsonpath=input$upload$datapath))
      
      file.copy("qmd_output.html", file)
    }
  )
  
}

# Run the application 
shinyApp(ui = ui, server = server)


# quarto::quarto_render("create_profile.qmd")