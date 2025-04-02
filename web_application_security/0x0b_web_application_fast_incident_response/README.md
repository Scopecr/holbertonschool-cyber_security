# DoS Attack IP Identifier

A Bash script that analyzes log files to identify potential Denial of Service (DoS) attack sources by finding the IP address with the most requests.

## Description

This script extracts IP addresses from a specified log file, counts the occurrences of each unique IP address, and identifies the IP with the highest number of requests. This can help system administrators quickly identify potential DoS attack sources.

## Features

- Extracts all IP addresses from the log file
- Counts occurrences of each unique IP address
- Identifies and displays the IP with the highest request count
- Provides a simple risk assessment based on the number of requests

## Requirements

- Kali Linux
- Standard Unix tools: grep, sort, uniq, awk

## Usage

```
./dos_detector.sh <log_file>
```

Example:
```
./dos_detector.sh /var/log/apache2/access.log
```

## Output

The script outputs:
- The IP address with the most requests
- The total number of requests from that IP
- A risk assessment based on the request count

## License

Free to use for educational purposes.