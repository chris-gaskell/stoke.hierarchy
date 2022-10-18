library(highcharter)
library(tidyverse)
library(magick)

height = 120
width = 400
width.2 = 250

CN = "Consultant Neuropsychologist"
AP = "Assistant Psychologist"
TP = "Trainee Psychologist"
CP = "Clinial Psychologist"

import_all_imgs <-
  function(path, pattern = ".jpg") {
    path_list <- list.files(path = path, pattern = pattern, full.names = T)
    all_images <- lapply(path_list, image_read)
    name_list <- list.files(path = path, pattern = pattern)
    name_list <- name_list %>% str_remove(".jpg")
    names(all_images) <- name_list

    return(all_images)
  }

images <- import_all_imgs(path = "images/no.bg", pattern = "png")

highchart() %>%
  hc_chart(type = 'organization', inverted = TRUE) %>%
  hc_title(text = NULL) %>%
  hc_add_series(
    name = 'Inpatient Neuropsychology Services',
    data = list(

      list(from = 'Top',  to =  'Lorraine'),
      list(from = 'Lorraine', to = 'James'),
      list(from = 'Lorraine', to = 'Anna'),
      list(from = 'James', to = 'Emily'),
      list(from = 'Anna', to = 'Laura')#,

    ),
    levels = list(
      list(level = 0, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '1em')), height = 20),
      list(level = 1, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '1em')), height = 20),
      list(level = 2, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '1em')), height = 20),
      list(level = 3, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '1em')), height = 20)#,
    ),
    nodes = list(
      list(id = 'Top',               title = '<br>',     name = 'Stoke Neuro Community & Long Covid Services',     description = NULL,        layout = 'hanging',                    color = "silver",     width = width,     borderColor = 'black'),

      list(id = 'Lorraine',   title = CN,    name = 'Dr. Lorraine King',    description = "LORRAINE.KING@<br>combined.nhs.uk<br>0.6WTE",         color = "lightblue",    height = height,   width = width,   borderColor = 'black',    image =  "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/no.bg/anna.png?raw=true"),
      list(id = 'Anna',       title = CP,    name = 'Dr. Anna Isherwood',   description = "Anna.Isherwood@<br>combined.nhs.uk<br>0.6WTE",        color = "lightblue",    height = height,   width = width,   borderColor = 'black',    image =  "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/no.bg/anna.png?raw=true"),
      list(id = 'James',      title = CP,    name = 'Dr. James Reilly',     description = "JAMES.REILLY@<br>combined.nhs.uk<br>1.0WTE",          color = "lightblue",    height = height,   width = width,   borderColor = 'black',    image =  "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/no.bg/anna.png?raw=true"),
      list(id = 'Emily',      title = AP,    name = 'Emily Bunn',           description = "Emily.Bunn@<br>combined.nhs.uk<br>1.0WTE",            color = "lightblue",    height = height,   width = width,   borderColor = 'black',    image =  "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/no.bg/anna.png?raw=true"),
      list(id = 'Laura',      title = AP,    name = 'Laura Das',            description = "laura.das@<br>combined.nhs.uk<br>0.5WTE",             color = "lightblue",    height = height,   width = width,   borderColor = 'black',    image = images$anna.png)#,



    ),
    colorByPoint = TRUE,
    color = '#007ad0',
    dataLabels = list(color = 'white'),
    borderColor = 'white',
    nodeWidth = 50
  ) %>%
  hc_tooltip(outside = TRUE) %>%
  hc_caption(
    text = "
    <b><span style='color: lightblue'>All posts funded through NSC funding </span> - UHNM SLA.
    </b>", style = list(fontSize = '2.0em')
  )


