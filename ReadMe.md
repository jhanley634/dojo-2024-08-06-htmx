

This repo supports a [talk](https://www.meetup.com/hackerdojo/events)
given Tuesday, August 6th at the [Hacker Dojo](https://www.hackerdojo.com).
Start out by following these setup instructions.

# setup

Either tell your IDE to clone the repo to a convenient local folder,
or follow these instructions at a bash prompt.

1. `cd` where you wish and then clone in the usual way: `$ git clone https://github.com/jhanley634/dojo-2024-08-06-htmx`
2. `cd` into the repo: `$ cd dojo-2024-08-06-htmx`
3. Use venv + pip to create a new virtual environment: `$ make install`
4. Run the flask CRUD server: `$ make run`

If needed it will contact a Gutenberg webserver
to pre-populate a list of books.
Feel free to click Delete on some titles, and watch what happens.
If you `$ rm src/htmx/htmx.db`, the server will recreate that
sqlite database at its next startup.
