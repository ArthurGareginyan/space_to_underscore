# Recursively replace spaces with underscores in file and directory names

A safe solution to recursively replace spaces with underscores in file and directory names starting from the current directory.

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

Give execute permissions:
```
chmod +x space_to_underscore.sh
```

Go to needed directory:
```
cd /home/user/example
```

Run the space_to_underscore.sh which placed in user home directory:
```
~/space_to_underscore.sh
```

## License

This script is licensed under the [GNU General Public License, version 3 (GPLv3)](http://www.gnu.org/licenses/gpl-3.0.html) and is distributed free of charge.

Commercial licensing (e.g. for projects that can’t use an open-source license) is available upon request.


## Author

Arthur Garegnyan

* Email: arthurgareginyan@gmail.com

* GitHub: [https://github.com/ArthurGareginyan/](https://github.com/ArthurGareginyan/)

* Website: [http://www.arthurgareginyan.com](http://www.arthurgareginyan.com)

* Donation: [http://www.arthurgareginyan.com/donate.html](http://www.arthurgareginyan.com/donate.html)
