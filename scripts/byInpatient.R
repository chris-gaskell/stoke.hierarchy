library(highcharter)
library(tidyverse)

height = 120
width = 350
width.2 = 250

CN = "Consultant Neuropsychologist"
AP = "Assistant Psychologist"
TP = "Trainee Psychologist"
CP = "Clinial Psychologist"

highchart() %>%
  hc_chart(type = 'organization', inverted = TRUE) %>%
  hc_title(text = NULL) %>%
  hc_add_series(
    name = 'Inpatient Neuropsychology Services',
    data = list(

      list(from = 'Top',  to =  'Gemma M'),

      list(from = 'Gemma M', to = 'Major Trauma'),
      list(from = 'Gemma M', to = 'ARTU'),
      list(from = 'Gemma M', to = 'Stroke'),

      list(from = 'Stroke', to = 'Jo Talbot'),
      list(from = 'Stroke', to = 'Assistant'),

      list(from = 'Major Trauma', to = 'Melissa'),
      list(from = 'Melissa', to = 'Olivia'),
      list(from = 'Melissa', to = 'Laura'),

      list(from = 'ARTU', to = 'Aimee'),
      list(from = 'ARTU', to = 'Amy')#,


    ),
    levels = list(
      list(level = 0, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 1, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 2, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 3, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20)#,
    ),
    nodes = list(
     list(id = 'Top',               title = '<br>',     name = 'Stoke Inpatient Neuropsychology Services',     description = NULL,        layout = 'hanging',                    color = "silver",     width = width,     borderColor = 'black'),

      list(id = 'Stroke',            title = NULL,     name = 'Inpatient Stroke',           description = NULL,                                                 color = 'silver',     layout = 'hanging',    height = height,   width = width,         image = NULL,     offset = '20%',     borderColor = 'black'),
      list(id = 'Long Covid',        title = NULL,     name = 'Long Covid',                 description = NULL,                                                 color = "silver",     layout = 'hanging',    height = height,   width = width,         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Major Trauma',      title = NULL,     name = 'Major Trauma',               description = NULL,                                                 color = "silver",     layout = 'hanging',    height = height,   width = width,         image = NULL,     offset = '-20%',     borderColor = 'black'),
      list(id = 'ARTU',              title = NULL,     name = 'ARTU',                       description = NULL,                                                 color = "silver",     layout = 'hanging',    height = height,   width = width,         image = NULL,     offset = '00%',     borderColor = 'black'),

      list(id = 'Gemma M',    title = CN,    name = 'Dr. Gemma Mercer',                    description = "Gemma.Mercer@<br>uhnm.nhs.uk<br>0.8WTE",              color = "lightblue",                        height = height,   width = width,   borderColor = 'black',    image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/gemma_m.png?raw=true", offset = '50%'),
      list(id = 'Jo Talbot',  title = CP,    name = 'Dr. Jo Talbot',                       description = "Jo.Talbot@<br>combined.nhs.uk<br>1.0WTE",             color = "orange",                           height = height,   width = width,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Assistant',  title = AP,    name = 'Vacant',                              description = "Vacant@<br>combined.nhs.uk<br>1.0WTE",                color = "orange",                           height = height,   width = width,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Laura',      title = AP,    name = 'Laura Das',                           description = "laura.das@<br>combined.nhs.uk<br>0.4WTE",             color = "lightblue",                        height = height,   width = width,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",  offset = '-313%'),
      list(id = 'Melissa',    title = CP,    name = 'Dr. Melissa Sinha',                   description = "Melissa.Sinha@<br>combined.nhs.uk<br>1.0WTE",         color = "lightblue",                        height = height,   width = width,   borderColor = 'black',    image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/melissa.png?raw=true",  layout = "normal"),
      list(id = 'Aimee',      title = CP,    name = 'Dr. Aimee Titchen ',                  description = "Aimee.Titchen@<br>combined.nhs.uk<br>1.0WTE",         color = "orange",                           height = height,   width = width,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Olivia',     title = AP,    name = 'Olivia Taylor',                       description = "olivia.taylor@<br>uhnm.nhs.uk<br>1.0WTE",             color = "lightblue",                        height = height,   width = width,   borderColor = 'black',    image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/olivia.png?raw=true",  offset = '-125%'),
      list(id = 'Amy',        title = AP,    name = 'Amy Coop',                            description = "amy.coop@<br>combined.nhs.uk<br>1.0WTE",              color = "orange",                           height = height,   width = width,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")#,

    ),
    colorByPoint = TRUE,
    color = '#007ad0',
    dataLabels = list(color = 'black'),
    borderColor = 'white',
    nodeWidth = 50
  ) %>%
  hc_tooltip(outside = TRUE) %>%
  hc_caption(
    text = "
    <b><span style='color: lightblue'>Blue</span> - UHNM SLA.<br>
    <b><span style='color: orange'>Orange</span> - MPFT SLA.<br>
    </b>", style = list(fontSize = '2.0em')
  )

