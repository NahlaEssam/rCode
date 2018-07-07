library(shiny)
sideBarPanelLocal <- function(replace , ...){
  if(replace){
    div(...)
  }
  else{
    sidebarPanel(
      div(class="sideBarTitles margin-bottom-10","Please set the numbers "),
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

showLocalModal <- function(){
  
}
