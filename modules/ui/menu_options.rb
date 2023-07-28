module MenuOptions
  def get_options(type)
    options = {
      main: [
        'List all [Book]s',
        'List all [Person]s',
        'Create a [Person]',
        'Create a [Book]',
        'Create a [Rental]',
        'List all [Rental]s for a given [Person] <id>',
        'Exit'
      ],
      persons: [
        'Create a [Teacher]',
        'Create a [Student]',
        'Return'
      ]
    }

    options[type]
  end

  def get_actions(type)
    actions = {
      main: {
        '1' => :list_all_books,
        '2' => :list_all_persons,
        '3' => :create_a_person,
        '4' => :create_a_book,
        '5' => :create_a_rental,
        '6' => :list_rentals_by_person_id
      },
      persons: {
        '1' => :create_a_teacher,
        '2' => :create_a_student
      }
    }

    actions[type]
  end

  def get_title(type)
    titles = {
      main: 'Start',
      persons: 'Create Person'
    }

    "[ #{titles[type]} - Menu ]"
  end
end
