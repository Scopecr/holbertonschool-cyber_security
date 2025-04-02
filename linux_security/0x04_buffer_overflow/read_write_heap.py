#!/usr/bin/python3
"""
Script to find and replace a string in the heap of a running process
Usage: read_write_heap.py pid search_string replace_string
"""
import sys
import os


def print_usage_and_exit():
    """Print usage information and exit with status code 1"""
    print("Usage: {} pid search_string replace_string".format(sys.argv[0]))
    sys.exit(1)


def main():
    """Main function to find and replace string in process heap"""
    # Check arguments
    if len(sys.argv) != 4:
        print_usage_and_exit()

    # Get arguments
    try:
        pid = int(sys.argv[1])
    except ValueError:
        print("Error: PID must be a number")
        print_usage_and_exit()

    search_string = sys.argv[2]
    replace_string = sys.argv[3]

    # Check string lengths
    if len(replace_string) > len(search_string):
        print("Error: Replace string cannot be longer than search string")
        sys.exit(1)

    # Check if process exists
    if not os.path.exists("/proc/{}".format(pid)):
        print("Error: Process with PID {} not found".format(pid))
        sys.exit(1)

    # Get memory maps
    maps_file = "/proc/{}/maps".format(pid)
    try:
        with open(maps_file, "r") as maps:
            for line in maps:
                if "[heap]" in line:
                    # Found heap section
                    heap_info = line.split()
                    addr_range = heap_info[0].split("-")
                    heap_start = int(addr_range[0], 16)
                    heap_end = int(addr_range[1], 16)
                    print(f"Found heap at {hex(heap_start)}-{hex(heap_end)}")
                    break
            else:
                print("Error: Could not find heap in process memory maps")
                sys.exit(1)
    except IOError as e:
        print(f"Error accessing {maps_file}: {e}")
        sys.exit(1)

    # Open memory for reading
    mem_file = "/proc/{}/mem".format(pid)
    try:
        with open(mem_file, "rb+") as mem:
            # Seek to start of heap
            mem.seek(heap_start)
            
            # Read heap content
            heap_size = heap_end - heap_start
            heap_content = mem.read(heap_size)
            
            # Search for string
            search_bytes = search_string.encode('ASCII')
            replace_bytes = replace_string.encode('ASCII')
            
            # Pad the replacement with null bytes if shorter
            if len(replace_bytes) < len(search_bytes):
                replace_bytes += b'\x00' * (len(search_bytes) - len(replace_bytes))
            
            # Find all occurrences
            position = heap_content.find(search_bytes)
            if position == -1:
                print(f"Error: String '{search_string}' not found in heap")
                sys.exit(1)
                
            found_count = 0
            positions = []
            
            # Find all occurrences
            while position != -1:
                found_count += 1
                absolute_position = heap_start + position
                positions.append(absolute_position)
                
                # Find next occurrence
                position = heap_content.find(search_bytes, position + 1)
            
            print(f"Found '{search_string}' {found_count} times in heap")
            
            # Replace each occurrence
            for position in positions:
                mem.seek(position)
                mem.write(replace_bytes)
                print(f"Replaced occurrence at position {hex(position)}")
                
            print(f"Successfully replaced '{search_string}' with '{replace_string}'")
                
    except IOError as e:
        print(f"Error accessing {mem_file}: {e}")
        print("Make sure you have permissions to access process memory")
        sys.exit(1)


if __name__ == "__main__":
    main()
