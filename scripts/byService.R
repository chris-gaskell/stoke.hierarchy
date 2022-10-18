library(highcharter)
library(tidyverse)

height = 120
width = 170
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
      list(from = 'Top', to = 'FND'),
      #list(from = 'Top', to = 'MAS'),
      #list(from = 'Top', to = 'Sclerosis'),
      list(from = 'Top', to = 'Neurology'),
      list(from = 'Top', to = 'Neuro Community'),
      list(from = 'Top', to = 'Long Covid'),
      list(from = 'Top', to = 'Major Trauma'),
      list(from = 'Top', to = 'ARTU'),
      list(from = 'Top', to = 'Stroke'),

      list(from = 'FND',              to =  'Anty'),
      #list(from = 'MAS',              to =  'Anty.2'),
      #list(from = 'Sclerosis',        to =  'Gill'),
      list(from = 'Neurology',        to =  'Gill.2'),
      #list(from = 'Stroke',           to =  'Gemma W'),
      #list(from = 'Neurology',        to =  'Gemma W.2'),
      list(from = 'Long Covid',       to =  'Lorraine'),
      list(from = 'Neuro Community',  to =  'Lorraine.2'),
      list(from = 'ARTU',             to =  'Gemma M'),
      list(from = 'Major Trauma',     to =  'Gemma M.2'),
      list(from = 'Stroke',     to =  'Gemma M.3'),

      list(from = 'Gill.2', to = 'Gemma W.2'),
      list(from = 'Gill.2', to = 'Clare'),
      list(from = 'Gill.2', to = 'Cara'),
      list(from = 'Gill.2', to = 'Callum'),
      list(from = 'Gill.2', to = 'Abi'),
      list(from = 'Gill.2', to = 'Chris'),
      list(from = 'Gill.2', to = 'Lucy'),
      list(from = 'Gill.2', to = 'Etain'),


      list(from = 'Lorraine', to = 'Anna'),
      list(from = 'Lorraine', to = 'Laura'),
      list(from = 'Lorraine.2', to = 'Anna.2'),
      list(from = 'Lorraine.2', to = 'James'),
      list(from = 'Lorraine.2', to = 'Emily'),

list(from = 'Gemma M.3', to = 'Jo Talbot'),
list(from = 'Gemma M.2', to = 'Melissa'),
list(from = 'Gemma M.2', to = 'Olivia'),
list(from = 'Gemma M', to = 'Aimee'),
list(from = 'Gemma M', to = 'Amy'),
list(from = 'Gemma M', to = 'Laura.2')



    ),
    levels = list(
      list(level = 0, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 1, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 2, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20),
      list(level = 3, color = '#980104', dataLabels = list(color = 'black', style = list(fontSize = '0.9em')), height = 20)#,
    ),
    nodes = list(
      list(id = 'Top',               title = '<br>',     name = 'Stoke Clinical Neuropsychology',     description = NULL,                      color = "silver",     width = width,     borderColor = 'black'),

      #list(id = 'Top',               title = NULL,     name = 'Stoke Clinical Neuropsychology',     description = NULL,                            color = "silver",                         height = height,     width = width,     borderColor = 'black'),
      list(id = 'FND',               title = NULL,     name = 'Functional Neurological Disorder',   description = NULL,                            color = "silver",     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'MAS',               title = NULL,     name = 'Memory Assessment Servive',          description = NULL,                            color = 'silver',     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Sclerosis',         title = NULL,     name = 'Sclerosis',                          description = NULL,                            color = 'silver',     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Neurology',         title = NULL,     name = 'Neurology & Neuro Oncology',         description = NULL,                            color = 'silver',     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Stroke',            title = NULL,     name = 'Stroke',                             description = NULL,                            color = 'silver',     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Neuro Community',   title = NULL,     name = 'Neuro Community',                    description = NULL,                            color = "silver",     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Long Covid',        title = NULL,     name = 'Long Covid',                         description = NULL,                            color = "silver",     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'Major Trauma',      title = NULL,     name = 'Major Trauma',                       description = NULL,                            color = "silver",     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),
      list(id = 'ARTU',              title = NULL,     name = 'ARTU',                               description = NULL,                            color = "silver",     layout = 'hanging',         image = NULL,     offset = '00%',     borderColor = 'black'),

      list(id = 'Anty',       title = CN,    name = 'Dr. Antonia Kirkby',                  description = "0.4WTE",                                              color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      #list(id = 'Anty.2',     title = CN,    name = 'Dr. Antonia Kirkby',                  description = "0.4WTE",                                              color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gill',       title = CN,    name = 'Dr. Gill Cooke',                      description = "Gill.Cooke@<br>combined.nhs.uk<br>0.5WTE",            color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gill.2',     title = CN,    name = 'Dr. Gill Cooke',                      description = "Gill.Cooke@<br>combined.nhs.uk<br>0.5WTE",            color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gemma W.2',  title = CN,    name = 'Dr. Gemma Wall',                      description = "Gemma.Wall@<br>combined.nhs.uk<br>0.4WTE",            color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '100%'),
      list(id = 'Lorraine',   title = CN,    name = 'Dr. Lorraine King',                   description = "LORRAINE.KING@<br>combined.nhs.uk<br>0.6WTE",         color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Lorraine.2', title = CN,    name = 'Dr. Lorraine King',                   description = "LORRAINE.KING@<br>combined.nhs.uk<br>0.6WTE",         color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gemma M',    title = CN,    name = 'Dr. Gemma Mercer',                    description = "Gemma.Mercer@<br>uhnm.nhs.uk<br>0.8WTE",              color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gemma M.2',  title = CN,    name = 'Dr. Gemma Mercer',                    description = "Gemma.Mercer@<br>uhnm.nhs.uk<br>0.8WTE",              color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '50%'),
      list(id = 'Gemma M.3',  title = CN,    name = 'Dr. Gemma Mercer',                    description = "Gemma.Mercer@<br>uhnm.nhs.uk<br>0.8WTE",              color = "silver",     layout = 'hanging',   height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '100%'),


      list(id = 'Cara',       title = CP,    name = 'Dr. Cara Thompson',                   description = "Cara.Thompson@<br>combined.nhs.uk<br>0.7WTE",         color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Callum',     title = CP,    name = 'Dr. Callum Furniss',                  description = "Callum.Furniss2<br>@combined.nhs.uk<br>1.0WTE",       color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),


      list(id = 'Abi',        title = CP,    name = 'Dr. Abi Methley',                     description = "ABIGAIL.METHLEY@<br>combined.nhs.uk<br>0.6WTE",       color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Chris',      title = CP,    name = 'Dr. Chris Gaskell',                   description = "Christopher.Gaskell@<br>combined.nhs.uk<br>0.9WTE",   color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Clare',      title = CP,    name = 'Dr. Clare Blakeley',                  description = "CLAIRE.BLAKELEY@<br>combined.nhs.uk<br>0.8WTE",           color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Lucy',       title = AP,    name = 'Lucy Crawshaw',                       description = "Lucy.Crawshaw@<br>combined.nhs.uk<br>1.0WTE",             color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Etain',     title = AP,    name = 'Etain Devenney',                              description = "Etain.Devenney<br>@combined.nhs.uk<br>1.0WTE",                                              color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Trainee',    title = TP,    name = 'Vacant',                              description = NULL,                                                  color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),

      list(id = 'Anna',       title = CP,    name = 'Dr. Anna Isherwood',                  description = "Anna.Isherwood@<br>combined.nhs.uk<br>0.6WTE",        color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Anna.2',     title = CP,    name = 'Dr. Anna Isherwood',                  description = "Anna.Isherwood@<br>combined.nhs.uk<br>0.6WTE",        color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'James',      title = CP,    name = 'Dr. James Reilly',                    description = "JAMES.REILLY@<br>combined.nhs.uk<br>1.0WTE",          color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Emily',      title = AP,    name = 'Emily Bunn',                          description = "Emily.Bunn@<br>combined.nhs.uk<br>1.0WTE",            color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Laura',      title = AP,    name = 'Laura Das',                           description = "laura.das@combined.nhs.uk<br>0.5WTE",                 color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",  offset = '-100%'),

      list(id = 'Jo Talbot',  title = CP,    name = 'Dr. Jo Talbot',                       description = "Jo.Talbot@combined.nhs.uk<br>1.0WTE",                 color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Laura.2',    title = AP,    name = 'Laura Das',                           description = "laura.das@combined.nhs.uk<br>0.4WTE",                 color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",  offset = '-100%'),
      list(id = 'Melissa',    title = CP,    name = 'Dr. Melissa Sinha',                   description = "Melissa.Sinha@<br>combined.nhs.uk<br>1.0WTE",         color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Aimee',      title = CP,    name = 'Dr. Aimee Titchen ',                  description = "Aimee.Titchen@<br>combined.nhs.uk<br>1.0WTE",         color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Olivia',     title = AP,    name = 'Olivia Taylor',                       description = "olivia.taylor@<br>uhnm.nhs.uk<br>1.0WTE",             color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Amy',        title = AP,    name = 'Amy Coop',                            description = "amy.coop@combined.nhs.uk<br>1.0WTE",                  color = "silver",                           height = height,   width = width.2,   borderColor = 'black',    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")#,



    ),
    colorByPoint = TRUE,
    color = '#007ad0',
    dataLabels = list(color = 'white'),
    borderColor = 'white',
    nodeWidth = 50
  ) %>%
  hc_tooltip(outside = TRUE)

