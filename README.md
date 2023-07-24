<a name="readme-top"></a>

<div align="center">

  <img src="https://www.svgrepo.com/download/765/library.svg" alt="logo" width="100" height="auto" />
  <br/>

### Libray Manager
is a simple App created with Ruby using OOP (Object Oriented Programming) which enables you to record what books are in the library and who borrows them. The app allows you to:\
1️⃣ Add new students or teachers.\
2️⃣ Add new books.\
3️⃣ Save records of who borrowed a given book and when.

</div>

<div align="center"><hr width="250px"/></div>

# 📗 Table of Contents

- [📙 About the project](#about-project)
  - [How to do the App](#📈-UML-diagram)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Run](#run)
  - [Usage](#usage)
- [👥 Author](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<div align="center"><hr width="250px"/></div>

# 📙 Library Manager <a name="about-project"></a>

**Library Manager** is a simple App created with [Ruby Programming Language](https://www.ruby-lang.org/en/) using [OOP (Object Oriented Programming)](https://en.wikipedia.org/wiki/Object-oriented_programming) which enables you to record what books are in the library and who borrows them. The app allows you to:
   1. Add new students or teachers.
   2. Add new books.
   3. Save records of who borrowed a given book and when.


  - ### How to do the App <a name="how-to"></a>
    We will start by building the most essential pieces of the app(system). To do that, we will practice [Object Oriented Programming(OOP)](https://en.wikipedia.org/wiki/Object-oriented_programming). To build the app or system we will need to create the entities presented in the following **Class diagram**.

    - #### 📈 UML Class Diagram
      The image below is a [UML(Unified Modeling Language) class diagram](https://en.wikipedia.org/wiki/Class_diagram#Visibility), it can give you an overall idea of what we are going to build.

      <img src="assets/uml-diagram.png">

    - #### 🖥️ Simple UI (User Interface)
      Once you have the core part prepared, we will create a simple UI layer which will be a console app interacting with the user. The final result will be similar to the one presented in the demo below.

      <img src="assets/ruby-school-library-example.gif">

## 🛠 Built With <a name="built-with"></a>

- ### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li>
      <a href="https://www.ruby-lang.org/en/">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
      Ruby
      </a>
    </li>
  </ul>

<!-- Features -->

- ### Key Features <a name="key-features"></a>
  We'll be building the "Ruby School Library" app according to the following list of projects that will guide you through the steps described above. The details about each of these projects will be added on every feature implementation.

  <details> <!-- #start-first-project-description-->
    <summary>

    #### Project 1️⃣🔹Add <kbd>Person</kbd>, <kbd>Student</kbd>, and <kbd>Teacher</kbd> classes.
    </summary>

    Create in a separate file each of the below classes:

    #### ✳️ Class <kbd>Person</kbd> with the following:
    - Instance vars: `@id`, `@name`, and `@age`.
    - Constructor with `name`, `age`, and `parent_permission` as parameter. `name` and `parent_permission` are optional and have default values of `"Unknown"` and `true`.
    - Getters for `@id`, `@name`, and `@age`.
    - Setters for `@name` and `@age`.
    - Private method `of_age?` that returns `true` if `@age` is greater or equal to 18 and `false` otherwise.
    - Public method `can_use_services?` that returns `true` if person is of age 18 or if they have permission from parents.

    #### ✳️ Class <kbd>Student</kbd> with the following:
    - Inherits from <kbd>Person</kbd>.
    - Constructor extends parent's constructor by adding `@classroom` and a parameter for it.
    - Method `play_hooky` that returns `¯\(ツ)/¯`.

    #### ✳️ Class <kbd>Teacher</kbd> with the following:
    - Inherits from <kbd>Person</kbd>.
    - Constructor extends parent's constructor by adding `@specialization` and a parameter for it.
    - Override `can_use_services?` so it always returns `true`.
  </details> <!-- #end-first-project-description-->

  <details>
    <summary>
    
    #### 🧑‍💻 to be implemented Features
    </summary>

    #### Project 2️⃣🔹Use the <kbd>**Decorator**</kbd> design pattern.
    #### Project 3️⃣🔹Set up <kbd>Associations</kbd>.
    #### Project 4️⃣🔹Add basic UI.
    #### Project 5️⃣🔹 Refactoring the code.
    #### Project 6️⃣🔹Preserve data.
    #### Project 7️⃣🔹Unit Tests.
  </details>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](<replace-with-your-deployment-URL>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy of this project up and running, follow these steps.

- ### Prerequisites

   - In order to run this project locally you need `git` installed. Please got to [Getting Started - Installing Git guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and follow the steps described for your system to install `git`.
   - Also you must have `Ruby` installed, you can go to the [Installing Ruby](https://www.ruby-lang.org/en/documentation/installation/) documentation and follow the steps for your computer OS.


- ### Setup
    Clone this repository to your desired folder:
    ```sh
    cd my-folder
    git clone git@github.com:luigirazum/library-manager.git
    ```
- ### Usage
    In the folder where you cloned the project, go into the project folder
    ```sh
    cd library-manager
    ```
- ### Run
    In the `library-manager` folder, use the following code to run the app
    ```rb
    ruby main.rb
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

👨‍💻 **Luis Zubia**

<ul>
  <li>
      <a href="https://github.com/luigirazum">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      Github: <b>@luigirazum</b>
      </a>
    </li>
    <li>
      <a href="https://twitter.com/LuigiRazum">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg" alt="twitter logo" />
      Twitter: <b>@LuigiRazum</b>
      </a>
    </li>
    <li>
      <a href="https://linkedin.com/in/luiszubia">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      LinkedIn: <b>Luis Zubia</b>
      </a>
    </li>
</ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

<details>
  <summary>

  #### ➕ Sorting and Ordering.
  </summary>

  - ❇️ Implement sorting and ordering options for the library data, such as sorting books by title, author, or publication date.
  - ❇️ Make it easier for users to navigate and browse the library's collection.
</details>

<details>
  <summary>

  #### ➕ Reporting Capabilities.
  </summary>

  - ❇️ Develop features that allow users to generate reports or summaries of the library's data, such as a list of borrowed books, overdue books, or books by genre.
  - ❇️ Facilitate better management and analysis of the library's collection and borrowing patterns.
</details>

<details>
  <summary>

  #### ➕ Export and Import Functionality.
  </summary>

  - ❇️ Add the ability to export library data to a file or import data from an external source.
  - ❇️ Allow users to create backups of the library records or import data from other libraries or systems.
</details>
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, typos, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, your support giving a ⭐ will be highly appreciated.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I would like to thank [Yukihiro “Matz” Matsumoto](http://www.rubyist.net/~matz/) for creating the [Ruby Programming Language](https://www.ruby-lang.org/en/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional)

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->
<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
