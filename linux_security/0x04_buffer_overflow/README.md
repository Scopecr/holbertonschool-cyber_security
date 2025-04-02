## Buffer Overflow Project

This project contains a Python script, `read_write_heap.py`, designed to manipulate the heap memory of a running process. The script allows you to search for a specific string in the heap and replace it with another string, provided the replacement string is not longer than the original.

### Usage

```bash
./read_write_heap.py pid search_string replace_string
```

- **pid**: The process ID of the target process.
- **search_string**: The string to search for in the heap.
- **replace_string**: The string to replace the search string with.

### Features

- Validates input arguments and ensures the replacement string is not longer than the search string.
- Locates the heap memory section of the specified process.
- Searches for all occurrences of the specified string in the heap.
- Replaces each occurrence with the provided replacement string.

### Requirements

- Python 3.x
- Sufficient permissions to access the memory of the target process (e.g., root privileges).

### Example

```bash
sudo ./read_write_heap.py 1234 "old_string" "new_str"
```

This command replaces all occurrences of `"old_string"` with `"new_str"` in the heap of the process with PID `1234`.

### Notes

- Ensure you have the necessary permissions to access the `/proc/<pid>/mem` file of the target process.
- The script is intended for educational purposes and should be used responsibly.

### Disclaimer

Modifying the memory of a running process can lead to unexpected behavior or crashes. Use this script at your own risk.
