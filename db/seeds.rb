# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  states = State.create([{name: 'Paraná'}, {name: 'Santa Catarina'}, {name: 'Rio Grande do Sul'}])

  cities = City.create([
      {name: 'Curitiba', description: 'Capital do Paraná.', url_image: '', state_id: 1},
      {name: 'Foz do Iguaçu', description: 'Principal base para visitar as famosas Cataratas do Iguaçu, uma das maiores cachoeiras do mundo.', url_image: '', state_id: 1},
      {name: 'Guarapuava', description: 'É o maior município em área territorial do estado.', url_image: '', state_id: 1},
  
      {name: 'Florianópolis', description: 'Capital de Santa Catarina', url_image: '', state_id: 2},
      {name: 'Blumenau', description: 'Possui uma agenda cultural focada nas festas baseadas no cotidiano e hábitos dos imigrantes europeus, destacando-se a colonização alemã, com a Oktoberfest, a segunda maior festa de cerveja do mundo, que, todos os anos em outubro, acontece durante 17 dias.', url_image: '', state_id: 2},
      {name: 'Joinville', description: 'Maior cidade do estado.', url_image: '', state_id: 2},
  
      {name: 'Porto Alegre', description: 'Capital do Rio Grande do Sul', url_image: '', state_id: 3},
      {name: 'Pelotas', description: 'Um dado climático interessante foi a ocorrência de uma precipitação de neve, no dia 8 de julho de 1994.', url_image: '', state_id: 3},
      {name: 'Novo Hamburgo', description: 'É natural, é histórica, é gentil com os seus cidadãos, qualquer que seja a sua cultura, identidade ou religião.', url_image: '', state_id: 3}
  ])