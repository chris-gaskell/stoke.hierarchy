library(highcharter)
library(tidyverse)

assist.height = 50
cp.height = 50
cons.height = 50
assist.width = 200
cp.width = 200
cons.width = 200

highchart() %>%
  hc_chart(type = 'organization', inverted = TRUE) %>%
  hc_title(text = NULL) %>%
  hc_add_series(
    name = 'Clinical Neuropsychology',
    data = list(
        list(from = 'Top', to = 'Sclerosis'),
       list(from = 'Top', to = 'Neurology'),
       list(from = 'Top', to = 'MAS'),
       list(from = 'Top', to = 'FND'),
       list(from = 'Top', to = 'Neuro Community'),
       list(from = 'Top', to = 'Major Trauma'),

       list(from = 'Sclerosis', to = 'Cons.Neuro.2'),
       list(from = 'Neurology', to = 'Cons.Neuro.2'),
       list(from = 'Neurology', to = 'Cons.Neuro.1'),
       list(from = 'Neuro Community', to = 'Cons.NC'),
       list(from = 'Major Trauma', to = 'Cons.MT'),
       list(from = 'FND', to = 'Cons.FND'),
       list(from = 'MAS', to = 'Cons.FND'),
       list(from = 'Sclerosis', to = 'neurology.8a.3'),

       list(from = 'Cons.Neuro.1', to = 'Stroke'),
       list(from = 'Cons.Neuro.1', to = 'neurology.ap.1'),
       list(from = 'Cons.Neuro.1', to = 'neurology.8a.1'),
       list(from = 'Cons.Neuro.2', to = 'neurology.8a.4'),
       list(from = 'Cons.Neuro.2', to = 'neurology.8a.3'),
       list(from = 'Cons.Neuro.1', to = 'neurology.8a.5'),
       list(from = 'Cons.Neuro.1', to = 'neurology.trainee.1'),
       list(from = 'Cons.Neuro.1', to = 'neurology.8a.2'),
       list(from = 'Stroke', to = 'stroke.8a.1'),
       list(from = 'Cons.NC', to = 'neuro.comm.ap.1'),
       list(from = 'Cons.NC', to = 'neuro.comm.8a.1'),
       list(from = 'Cons.NC', to = 'neuro.comm.8a.2'),
       list(from = 'Cons.MT', to = 'major.trauma.ap.1'),
       list(from = 'Cons.MT', to = 'major.trauma.8a.2'),
       list(from = 'Cons.MT', to = 'major.trauma.8a.1')

    ),
    levels = list(
      list(level = 0, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.5em')), height = 20, width = 20),
      list(level = 1, color = 'silver',  dataLabels = list(color = 'black', style = list(fontSize = '0.5em')), height = 20),
      list(level = 2, color = '#980104', dataLabels = list(color = 'white', style = list(fontSize = '0.5em')), height = 20),
      list(level = 3, color = '#980104', dataLabels = list(color = 'white', style = list(fontSize = '0.5em')), height = 20)#,
    ),
    nodes = list(
      list(id = 'Top',                 title = NULL,                            name = 'Stoke Clinical<br>Neuropsychology',  description = NULL,                                           color = "silver",                           height = cons.height,     width = cons.width,             image = NULL, offset = NULL,       borderColor = 'black'),
      list(id = 'Stroke',              image = NULL,                            name = 'Stroke',                             description = NULL,                                           color = 'silver',     layout = 'hanging',   height = cons.height,     width = cons.width,             image = NULL, offset = '105%',     borderColor = 'black', level = 3, column = 3, dataLabels = list(color = 'black', style = list(fontSize = '1.2em'))),
      list(id = 'Sclerosis',                 title = NULL,                            name = 'MS',         description = NULL,                                           color = 'silver',                           height = cons.height,     width = cons.width,             image = NULL, offset = '-20%',     borderColor = 'black'),
      list(id = 'MAS',                 title = NULL,                            name = 'MAS',         description = NULL,                                           color = 'silver',                           height = cons.height,     width = cons.width,             image = NULL, offset = '00%',     borderColor = 'black'),
      list(id = 'Neurology',           title = NULL,                            name = 'Neurology & Neuro Oncology',         description = NULL,                                           color = 'silver',                           height = cons.height,     width = cons.width,             image = NULL, offset = '-40%',     borderColor = 'black'),
      list(id = 'Neuro Community',     title = NULL,                            name = 'Neuro Community',                    description = NULL,                                           color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,             image = NULL,                      borderColor = 'black'),
      list(id = 'Major Trauma',        title = NULL,                            name = 'Major Trauma',                       description = NULL,                                           color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,             image = NULL,                      borderColor = 'black'),
      list(id = 'FND',                 title = NULL,                            name = 'Functional Neurological Disorder',   description = NULL,                                           color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,             image = NULL, offset = '-30%',      borderColor = 'black'),
      list(id = 'Cons.Neuro.1',        title = 'Consultant Neuropsychologist', name = 'Dr. Gemma Wall',                      description = "Gemma.Wall@combined.nhs.uk",                   color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,      image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '-30%'),
      list(id = 'Cons.Neuro.2',        title = 'Consultant Neuropsychologist', name = 'Dr. Gill Cooke',                      description = "Gill.Cooke@combined.nhs.uk",                   color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,      image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '-30%'),
      list(id = 'Cons.NC',             title = 'Consultant Neuropsychologist', name = 'Dr. Lorraine King',                   description = "LORRAINE.KING@combined.nhs.uk",                color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,      image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Cons.MT',             title = 'Consultant Neuropsychologist', name = 'Dr. Gemma Mercer',                    description = "Gemma.Mercer@uhnm.nhs.uk",                     color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,      image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'Cons.FND',            title = 'Consultant Neuropsychologist', name = 'Dr. Antonia Kirkby',                  description = NULL,                                           color = "silver",     layout = 'hanging',   height = cons.height,     width = cons.width,  offset = '100%',     image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neurology.8a.1',      title = 'Clinical Psychologist',        name = 'Dr. Abi Methley',                     description = "ABIGAIL.METHLEY@combined.nhs.uk",              color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neurology.8a.2',      title = 'Clinical Psychologist',        name = 'Dr. Chris Gaskell',                   description = "Christopher.Gaskell@combined.nhs.uk",          color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", offset = '60%'),
      list(id = 'neurology.8a.3',      title = 'Clinical Psychologist',        name = 'Dr. Callum Furniss',                  description = "Callum.Furniss2@combined.nhs.uk",              color = "silver",                           height = cp.height,       width = cp.width,  offset = '50%',       image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neurology.8a.4',      title = 'Clinical Psychologist',        name = 'Dr. Cara Thompson',                   description = "Cara.Thompson@combined.nhs.uk",                color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neurology.8a.5',      title = 'Clinical Psychologist',        name = 'Dr. Clare Blakeley',                    description = NULL,                                           color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neuro.comm.8a.1',     title = 'Clinical Psychologist',        name = 'Dr. James Reilly',                    description = "JAMES.REILLY@combined.nhs.uk",                 color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neuro.comm.8a.2',     title = 'Clinical Psychologist',        name = 'Dr. Anna Isherwood',                  description = "Anna.Isherwood@combined.nhs.uk",               color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'major.trauma.8a.1',   title = 'Clinical Psychologist',        name = 'Dr. Melissa Sinha',                   description = "Melissa.Sinha@combined.nhs.uk",                color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'major.trauma.8a.2',   title = 'Clinical Psychologist',        name = 'Dr. Aimee Titchen ',                  description = "Aimee.Titchen@combined.nhs.uk",                color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'stroke.8a.1',         title = 'Clinical Psychologist',        name = 'Dr. Jo Talbot',                       description = NULL,                                           color = "silver",                           height = cp.height,       width = cp.width,        image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png", dataLabels = list(color = 'white', style = list(fontSize = '0.8em')), height = 55),
      list(id = 'neurology.ap.1',      title = 'Assistant Psychologist',       name = 'Lucy Crawshaw',                      description = "Grace.Sunerton@combined.nhs.uk",               color = "silver",                           height = assist.height,   width = assist.width,    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neuro.comm.ap.1',     title = 'Assistant Psychologist',       name = 'Emily Bunn',                          description = "Emily.Bunn@combined.nhs.uk",                   color = "silver",                           height = assist.height,   width = assist.width,    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'major.trauma.ap.1',   title = 'Assistant Psychologist',       name = 'Olivia Taylor',                       description = "olivia.taylor@uhnm.nhs.uk",                    color = "silver",                           height = assist.height,   width = assist.width,    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
      list(id = 'neurology.trainee.1', title = 'Trainee Psychologist',         name = 'Vacant',                     description = "Jessica.Haselhurst@combined.nhs.uk",           color = "silver",                           height = assist.height,   width = assist.width,    image = "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")#,

    ),
    colorByPoint = TRUE,
    color = '#007ad0',
    dataLabels = list(color = 'white'),
    borderColor = 'white',
    nodeWidth = 50
  ) %>%
  hc_tooltip(outside = TRUE)

