library(shiny)
sideBarPanelLocal <- function(replace ,message, ...){
  localMessage <- "Please set the numbers "
  if(message !=""){
    localMessage <- message
  }
  if(replace){
    div(...)
  }
  else{
    sidebarPanel(
      div(class="sideBarTitles margin-bottom-10", localMessage),
      ...
    )
  }
} 

mainPanelLocal <- function(replace , ...){
  if(replace){
    div(...)
  }
  else{
    mainPanel(class="mainPanel", ...)
  }
  
}

cssHead <- function(replace,...){
  if(replace){
    tags$head(
      ...
    )
  }
  else{
    tags$head(
       tags$link(rel = "stylesheet", type = "text/css", href = "https://rawgit.com/NahlaEssam/rCode/master/CSS/font-awesome.min.css"),
       tags$link(rel = "stylesheet", type = "text/css", href = "https://rawgit.com/NahlaEssam/rCode/master/CSS/math.css"),
      ...
    )
  }
}

header <- function(replace , leftSection , rightSection , ... ){
  if(replace){
    div(... )
  }
  else{
    div(class="row",
        div(class="col-sm-9", leftSection),
        div(class="col-sm-3", rightSection)
    )
  }
}

body <- function(replace , ...){
  if(replace){
    div(...)
  }
  else{
    div(class="flexbox sidebarLayout",
        sidebarLayout(
         ...
        )
    )
  }
  
  
}

page <- function(...){
  shinyUI(
    fluidPage(...)
  )
}

modalTitle <-  function(replace , titleMessage , ...){
  if(replace){
    tagList(
     ...
    )
  }
  else{
    title = 'Video Tutorial';
    if(titleMessage!= ""){
      title = titleMessage
    }
   
    tagList(
      span(title),
      modalButton("")
    )
  }
  
}
modalContent <- function(replace, content , stepsTitle , steps, ...){
  if(replace){
   div( ...)  
  }
  else{
  
    title <- "STEPS"
    if(stepsTitle != ""){
      title <- stepsTitle
    }
    localSteps <- array()
    if(steps != ""){
      localSteps <- steps
    }
    else{
      steps <- c("Please Enter the requested values to apply the reflection" ,"Triangle consists of 3 points (A,B,C) Please Enter Coordinates below " ,"Point A (x1,y1)   Point B (x2,y2)   Point C (x3,y3)" )
    }
    
    div(class="modalContent",
        div(class="video-Content margin-bottom-20",
            
            lapply(1:(length(content)), function(i) {
              if(i %% 3 == 0){
                tags$video(src = content[i-2], type = content[i-1], controls = content[i])
              }
            })
        ),
        div(class="steps",
            h4(title),
            
            tags$ol(class="stepsList",
                    
                    
                    lapply(1:(length(steps)), function(i) {
                      
                      tags$li(steps[i])
                      
                    })
            )
        )
    )
  }
  
  
}
modalDialogLocal <- function(header , body , rEasyClose, easyClose , rFooter , footer ){
   localeasyClose <- TRUE
   localfooter <- NULL
   if(rEasyClose){
     localeasyClose <- easyClose
   }
   
   if(rFooter){
     localfooter <- footer
   }
   
   modalDialog(
     title = header,
     body,
     easyClose = localeasyClose,
     footer = localfooter
   )
}
