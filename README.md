# Budget App

> The Budget app is a mobile web application where you can manage your expenses: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.
## Live Demo

[Live Demo Link](https://lucas-budget-app.herokuapp.com/)

## Presentation Video

[Video Link](https://www.loom.com/share/e121718e079b4b11a8d660c5b5720a9a)

## Built With

- Ruby
- Ruby on Rails
- SQL Postgres

## Getting Started

To get a local copy up and running follow these simple example steps.

- Click on the top right green "code" button.
- On the dropdown menu, choose "download with zip" button.
- After download, extract the zip file and you have the project on your machine.
- Make sure that your PostgreSQL server is running and you have the ability to establish connection with the database.
- Create a new file called `local_env.yml` in the folder `config/` and paste the following code in it:
  > `PG_USERNAME: "YourPostgresUsername"`<br> `PG_PASSWORD: "YourPostgresPassword"` <br> `GMAIL_USERNAME: "YourGmailSenderUsername"`<br> `GMAIL_PASS: "YourGmailSenderPassword"`<br>
- Execute `rails db:create` to create the database.
- Run `rails s` to run the application.
## Tests

- If you want to run some unit tests, all you need to do is:
- On your terminal execute:
  > `gem install rspec`
- Run the `rspec` command in this case over the path of `spec/`, the resulting command will look like this:
  > `rspec spec/`
- If you want to run the tests over the entire project, you can execute the following command:
  > `rspec`
## Author

👤 **Khusiima Luke Masaba**

- GitHub: [@Lucas-Masaba](https://github.com/Lucas-Masaba)
- Twitter: [@MasabaLuke](https://twitter.com/MasabaLuke)
- LinkedIn: [Khusiima Luke Masaba](https://linkedin.com/in/khusiima-luke-masaba)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Inspired by [Gregoire Vella](https://www.behance.net/gregoirevella) from Behance

## 📝 License

This project is [MIT](./MIT.md) licensed.