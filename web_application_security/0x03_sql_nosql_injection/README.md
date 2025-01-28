# SQL and NoSQL Injections

## Introduction

SQL and NoSQL injections are types of security vulnerabilities that allow attackers to interfere with the queries an application makes to its database. These vulnerabilities can lead to unauthorized access to sensitive data, data corruption, or even complete system compromise.

## SQL Injection

### What is SQL Injection?

SQL Injection is a code injection technique that exploits a vulnerability in an application's software by manipulating SQL queries. It occurs when an attacker is able to insert or manipulate SQL queries through user input fields.

### How SQL Injection Works

1. **User Input**: The attacker provides malicious SQL input through a form field or URL parameter.
2. **Query Execution**: The application constructs a SQL query using the input without proper validation or sanitization.
3. **Database Compromise**: The malicious query is executed by the database, potentially exposing or altering data.

### Example
