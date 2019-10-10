people = [{
            name: 'Johnny Cash',
            document: '555555555',
            date_of_birth: '26/02/1932'.to_date
          },
          {
            name: 'Sid Vicious',
            document: '555555555',
            date_of_birth: '10/05/1957'.to_date
          },
          {
            name: 'Axl Rose',
            document: '555555555',
            date_of_birth: '06/02/1962'.to_date
          },
          {
            name: 'Joey Ramone',
            document: '555555555',
            date_of_birth: '19/05/1951'.to_date
          },
          {
            name: 'Bruce Dickinson',
            document: '555555555',
            date_of_birth: '07/08/1958'.to_date
          },
          {
            name: 'Kurt Cobain',
            document: '555555555',
            date_of_birth: '20/02/1967'.to_date
          },
          {
            name: 'Elvis Presley',
            document: '555555555',
            date_of_birth: '17/08/2008'.to_date
          }]
people.each do |person|
  Person.where(person).first_or_create
end
