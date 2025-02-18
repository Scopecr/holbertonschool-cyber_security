# Cryptography Basics - SHA-1, SHA-256, MD5, and Password Cracking

## Description
This repository contains a collection of cryptography-related tasks designed to help understand fundamental cryptographic concepts and their practical implementation. The tasks focus on hashing, encryption, and password cracking using various tools.

## Task List

### **0. SHA-1 Hashing**
- **Objective:** Hash a given password using the SHA-1 algorithm.
- **Output:** `0_hash.txt`

### **1. SHA-256 Hashing**
- **Objective:** Hash a given password using the SHA-256 algorithm.
- **Output:** `1_hash.txt`

### **2. MD5 Hashing**
- **Objective:** Hash a given password using the MD5 algorithm.
- **Output:** `2_hash.txt`

### **3. Secure Password Hash**
- **Objective:** Encrypt passwords with OpenSSL using a random 16-character salt and SHA-512.
- **Output:** `3_hash.txt`

### **4. Wordlist Mode (John the Ripper)**
- **Objective:** Crack passwords using John the Ripper in Wordlist Mode.
- **Input:** `hash.txt`
- **Output:** `4-password.txt`

### **5. Windows Authentication Cracking**
- **Objective:** Crack NTLM hashes using John the Ripper.
- **Input:** `hash.txt`
- **Output:** `5-password.txt`

### **6. John Cracking!**
- **Objective:** Crack passwords using John the Ripper on `crack.txt`.
- **Input:** `crack.txt`
- **Output:** `6-password.txt`

### **7. Hashcat Straight Attack!**
- **Objective:** Crack passwords using Hashcat.
- **Input:** `hash.txt`
- **Output:** `7-password.txt`

### **8. Hashcat Combination!**
- **Objective:** Combine two wordlists using Hashcat.
- **Input:** `wordlist1.txt`, `wordlist2.txt`
- **Output:** Combined wordlist.

### **9. Hashcat Combination Attack**
- **Objective:** Crack passwords using Hashcat with the combined wordlist.
- **Input:** `hash.txt`
- **Output:** `9-password.txt`

## Repository Structure
```
cybersecurity_basics/
└── 0x03_cryptography_basics/
    ├── 0-sha1.sh
    ├── 1-sha256.sh
    ├── 2-md5.sh
    ├── 3-password_hash.sh
    ├── 4-wordlist_john.sh
    ├── 5-windows_john.sh
    ├── 6-crack_john.sh
    ├── 7-crack_hashcat.sh
    ├── 8-combination_hashcat.sh
    ├── 9-attack_hashcat.sh
    ├── README.md
```

## Additional Tasks
More cryptographic tasks will be added soon.