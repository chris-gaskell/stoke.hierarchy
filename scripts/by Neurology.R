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
    name = 'Clinical Neuropsychology',
    data = list(



      list(from = 'Top', to = 'Anty'),
      list(from = 'Top', to = 'Anty'),
      list(from = 'Top', to = 'Gill'),
      list(from = 'Top', to = 'Gemma W'),
      #
      # list(from = 'Anty', to = 'FND'),
      # list(from = 'Anty', to = 'MAS'),
      # list(from = 'Gemma W', to = 'Neurology'),
      # list(from = 'Gill', to = 'Neurology'),
      # list(from = 'Gill', to = 'Sclerosis')#,


      # list(from = 'MAS', to = 'Anty'),
      # list(from = 'FND', to = 'Anty'),
      # list(from = 'Neurology', to = 'Gill'),
      # list(from = 'Sclerosis', to = 'Gill'),
      # list(from = 'Neurology', to = 'Gemma W')#,
      #
      # list(from = 'Top', to = 'FND'),
      # list(from = 'Top', to = 'MAS'),
      # list(from = 'Top', to = 'Neurology'),
      # list(from = 'Top', to = 'Sclerosis'),



      # list(from = 'FND',              to =  'Anty'),
      # list(from = 'MAS',              to =  'Anty.2'),
      # list(from = 'Sclerosis',        to =  'Gill'),
      # list(from = 'Neurology',        to =  'Gill.2'),
      # #list(from = 'Stroke',           to =  'Gemma W'),
      # list(from = 'Neurology',        to =  'Gemma W.2'),
      # list(from = 'Long Covid',       to =  'Lorraine'),
      # list(from = 'Neuro Community',  to =  'Lorraine.2'),
      # list(from = 'ARTU',             to =  'Gemma M'),
      # list(from = 'Major Trauma',     to =  'Gemma M.2'),
      # list(from = 'Stroke',     to =  'Gemma M.3'),


list(from = 'Gemma W', to = 'Abi'),
list(from = 'Gemma W', to = 'Chris'),
list(from = 'Gemma W', to = 'Etaine'),
#list(from = 'Gemma W', to = 'Trainee'),

list(from = 'Gill', to = 'Lucy'),
list(from = 'Gill', to = 'Clare'),
list(from = 'Gill', to = 'Cara'),
list(from = 'Gill', to = 'Callum')#,

    ),
    levels = list(
      list(level = 0, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '1.0em')), height = 20, width = 20),
      list(level = 1, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '1.0em')), height = 20),
      list(level = 2, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '1.0em')), height = 20),
      list(level = 3, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '1.0em')), height = 20)#,
    ),
    nodes = list(
      list(id = 'Top',               title = '<br>',     name = 'Stoke Neurology and Neuro-Onclology',     description = NULL,                       color = "silver",     width = width,     borderColor = 'black'),
      list(id = 'FND',               title = NULL,     name = 'Functional Neurological Disorder',    description = NULL,                                                  color = "silver",    height = height,     width = width,     layout = 'hanging',         image = NULL,     offset = '-50%',     borderColor = 'black'),
      list(id = 'MAS',               title = NULL,     name = 'Memory Assessment Servive',           description = NULL,                                                  color = 'silver',    height = height,     width = width,     layout = 'hanging',         image = NULL,     offset = '-50%',     borderColor = 'black'),
      list(id = 'Sclerosis',         title = NULL,     name = 'Multiple Sclerosis',                  description = NULL,                                                  color = 'silver',    height = height,     width = width,     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Neurology',         title = NULL,     name = 'Neurology & Neuro Oncology',          description = NULL,                                                  color = 'silver',    height = height,     width = width,     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),

      list(id = 'Anty',       title = CN,    name = 'Dr. Antonia Kirkby',                            description = "0.4WTE",                                              color = "lightgreen",    height = height,   width = width,                        borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '0%'),
      list(id = 'Gill',       title = CN,    name = 'Dr. Gill Cooke',                                description = "Gill.Cooke@<br>combined.nhs.uk<br>0.5WTE",            color = "lightgreen",    height = height,   width = width,   layout = 'hanging',  borderColor = 'black',    image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/gill.png?raw=true", offset = '0%'),
      list(id = 'Gemma W',    title = CN,    name = 'Dr. Gemma Wall',                                description = "Gemma.Wall@<br>combined.nhs.uk<br>0.4WTE",            color = "lightgreen",    height = height,   width = width,   layout = 'hanging',  borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '0%'),
      list(id = 'Cara',       title = CP,    name = 'Dr. Cara Thompson',     level = 2,              description = "Cara.Thompson@<br>combined.nhs.uk<br>0.7WTE",         color = "lightblue",    height = height,   width = width,                        borderColor = 'black',     image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/cara.png?raw=true", offset = '-80%'),
      list(id = 'Callum',     title = CP,    name = 'Dr. Callum Furniss',    level = 2,              description = "Callum.Furniss2<br>@combined.nhs.uk<br>1.0WTE",       color = "red",    height = height,   width = width,                        borderColor = 'black',           image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '-100%'),
      list(id = 'Clare',      title = CP,    name = 'Dr. Clare Blakeley',    level = 2,              description = "CLAIRE.BLAKELEY@<br>combined.nhs.uk<br>0.8WTE",       color = "lightblue",    height = height,   width = width,                        borderColor = 'black',     image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/clare.png?raw=true", offset = '-40%'),
      list(id = 'Lucy',       title = AP,    name = 'Lucy Crawshaw',         level = 2,              description = "Lucy.Crawshaw@<br>combined.nhs.uk<br>1.0WTE",         color = "lightgreen",    height = height,   width = width,                        borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '-20%'),
      list(id = 'Abi',        title = CP,    name = 'Dr. Abi Methley',       level = 3,              description = "ABIGAIL.METHLEY@<br>combined.nhs.uk<br>0.6WTE",       color = "red",    height = height,   width = width,                        borderColor = 'black',           image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Chris',      title = CP,    name = 'Dr. Chris Gaskell',     level = 3,              description = "Christopher.Gaskell@<br>combined.nhs.uk<br>0.9WTE",   color = "red",    height = height,   width = width,                        borderColor = 'black',           image = "https://github.com/chris-gaskell/stoke.hierarchy/blob/main/images/wt.bg/chris.png?raw=true"),
      list(id = 'Etaine',     title = AP,    name = 'Etaine',                level = 3,              description = "1.0WTE",                                              color = "lightgreen",    height = height,   width = width,                        borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")#,
     # list(id = 'Trainee',    title = TP,    name = 'Vacant',                level = 3,              description = NULL,                                                  color = "silver",    height = height,   width = width,                        borderColor = 'black',        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")#,

    ),
    colorByPoint = TRUE,
    color = '#007ad0',
    dataLabels = list(color = 'white'),
    borderColor = 'white',
    nodeWidth = 50
  ) %>%
  hc_tooltip(outside = TRUE)  %>%
  hc_caption(
    text = "
    <b><span style='color: lightgreen'>Green</span> - UHNM SLA – neuro-oncology and neurology.<br>
    <b><span style='color: red'>Red</span> - UHNM Neuro-oncology SLA and Neurology Block.<br>
    <b><span style='color: lightblue'>Lightblue</span> -  UHNM Neurology SLA.<br>
    </b>", style = list(fontSize = '2.0em')
  )

