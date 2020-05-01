# Recursively replace spaces with underscores (or vice versa) in file and directory names

A safe solution to recursively replace spaces with underscores (or vice versa) in file and directory names starting from the current directory.


## Example

Before:
```
tree
.
|-- a dir
|   `-- file with spaces.txt
`-- b dir
    |-- another file with spaces.txt
    `-- yet another file with spaces.pdf
```

After:
```
tree
.
|-- a_dir
|   `-- file_with_spaces.txt
`-- b_dir
    |-- another_file_with_spaces.txt
    `-- yet_another_file_with_spaces.pdf
```


## Usage

> **Note!** To recursively replace underscores with spaces instead of spaces with underscores, follow the same steps, but using the `underscore_to_space.sh` file instead of `space_to_underscore.sh`.

1. Before you run the script, you must set the script executable permission:
```
chmod +x space_to_underscore.sh
```

2. Go to needed directory:
```
cd /home/user/example
```

3. Run the `space_to_underscore.sh` which placed in user home directory:
```
~/space_to_underscore.sh
```


## Contributing

Welcome and thanks! I appreciate you taking the initiative to contribute to this project.

Contributing isn’t limited to just code. I encourage you to contribute in the way that best fits your abilities, by writing tutorials, making translation to your native language, giving a demo at your local meetup, helping other users with their support questions, or revising  the documentation for this project.

Please take a moment to read the guidelines in the [CONTRIBUTING.md](CONTRIBUTING.md). Following them helps to communicate that you respect the time of the other contributors to the project. In turn, they’ll do their best to reciprocate that respect when working with you, across timezones and around the world.


## Security Vulnerabilities

If you discover a security vulnerability within this script, please send an email to me. All security vulnerabilities will be promptly addressed.


## License

This script is open-sourced software licensed under the [MIT](LICENSE.md) and is distributed free of charge.

Commercial licensing (e.g. for projects that can’t use an open-source license) is available upon request.


## Author

Arthur Garegnyan

* Email: arthurgareginyan@gmail.com

* GitHub: [https://github.com/ArthurGareginyan/](https://github.com/ArthurGareginyan/)

* Website: [http://www.arthurgareginyan.com](http://www.arthurgareginyan.com)

* Donation: [http://www.arthurgareginyan.com/donate.html](http://www.arthurgareginyan.com/donate.html)
