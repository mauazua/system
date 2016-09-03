math = Taxonomy.where(name: 'Matematyka').first_or_create!
Field.where(name: 'Algebra liniowa', parent: math.root, taxonomy: math).first_or_create!
Field.where(name: 'Analiza matematyczna', parent: math.root, taxonomy: math).first_or_create!
Field.where(name: 'Matematyka dyskretna', parent: math.root, taxonomy: math).first_or_create!
Field.where(name: 'Statystyka', parent: math.root, taxonomy: math).first_or_create!

programming = Taxonomy.where(name: 'Programowanie').first_or_create!
Field.where(name: 'Programowanie obiektowe', parent: programming.root, taxonomy: programming).first_or_create!
Field.where(name: 'Programowanie funkcyjne', parent: programming.root, taxonomy: programming).first_or_create!
Field.where(name: 'Programowanie komponentowe', parent: programming.root, taxonomy: programming).first_or_create!

databases = Taxonomy.where(name: 'Bazy danych').first_or_create!
Field.where(name: 'Relacyjne bazy danych', parent: databases.root, taxonomy: databases).first_or_create!
Field.where(name: 'Nierelacyjne bazy danych', parent: databases.root, taxonomy: databases).first_or_create!
Taxonomy.where(name: 'Fizyka').first_or_create!

architecture = Taxonomy.where(name: 'Architektura komputerów').first_or_create!
Field.where(name: 'Systemy mobilne', parent: architecture.root, taxonomy: architecture).first_or_create!
Field.where(name: 'Systemy wbudowane', parent: architecture.root, taxonomy: architecture).first_or_create!
Field.where(name: 'Systemy rozproszone', parent: architecture.root, taxonomy: architecture).first_or_create!
Field.where(name: 'Systemy cyfrowe', parent: architecture.root, taxonomy: architecture).first_or_create!
Taxonomy.where(name: 'Sztuczna inteligencja').first_or_create!
