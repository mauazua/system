math = Field.where(name: 'Matematyka').first_or_create!
Field.where(name: 'Algebra liniowa', parent: math).first_or_create!
Field.where(name: 'Analiza matematyczna', parent: math).first_or_create!
Field.where(name: 'Matematyka dyskretna', parent: math).first_or_create!
Field.where(name: 'Statystyka', parent: math).first_or_create!

programming = Field.where(name: 'Programowanie').first_or_create!
Field.where(name: 'Programowanie obiektowe', parent: programming).first_or_create!
Field.where(name: 'Programowanie funkcyjne', parent: programming).first_or_create!
Field.where(name: 'Programowanie komponentowe', parent: programming).first_or_create!

databases = Field.where(name: 'Bazy danych').first_or_create!
Field.where(name: 'Relacyjne bazy danych', parent: databases).first_or_create!
Field.where(name: 'Nierelacyjne bazy danych', parent: databases).first_or_create!
Field.where(name: 'Fizyka').first_or_create!

architecture = Field.where(name: 'Architektura komputerów')
Field.where(name: 'Systemy mobilne', parent: architecture).first_or_create!
Field.where(name: 'Systemy wbudowane', parent: architecture).first_or_create!
Field.where(name: 'Systemy rozproszone', parent: architecture).first_or_create!
Field.where(name: 'Systemy cyfrowe', parent: architecture).first_or_create!
Field.where(name: 'Sztuczna inteligencja').first_or_create!
