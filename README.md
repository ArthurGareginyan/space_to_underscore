# Recursively replace spaces with underscores (or vice versa) in file and directory names

A safe solution to recursively replace spaces with underscores (or vice versa) in file and directory names starting from the current directory.


## Example

```
tree
.
|-- a dir
|   `-- file with spaces.txt
`-- b dir
    |-- another file with spaces.txt
    `-- yet another file with spaces.pdf
```

becomes:
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

1. Give execute permissions:
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


## License

This script is open-sourced software licensed under the [MIT](LICENSE.md) and is distributed free of charge.

Commercial licensing (e.g. for projects that can’t use an open-source license) is available upon request.


## Author

Arthur Garegnyan

* Email: arthurgareginyan@gmail.com

* GitHub: [https://github.com/ArthurGareginyan/](https://github.com/ArthurGareginyan/)

* Website: [http://www.arthurgareginyan.com](http://www.arthurgareginyan.com)

* Donation: [http://www.arthurgareginyan.com/donate.html](http://www.arthurgareginyan.com/donate.html)
