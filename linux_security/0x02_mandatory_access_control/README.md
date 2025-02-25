# SELinux (Security-Enhanced Linux)

SELinux is a security architecture integrated into the Linux kernel that provides a mechanism for supporting access control security policies. It is a set of kernel modifications and user-space tools that enhance the security of a Linux system.

## Key Features

- **Mandatory Access Control (MAC):** SELinux enforces security policies that confine user programs and system services to the minimum amount of privilege they require to do their jobs.
- **Fine-Grained Access Control:** SELinux policies can define detailed access controls for files, directories, ports, and other resources.
- **Role-Based Access Control (RBAC):** SELinux supports roles that can be assigned to users, allowing for more flexible and manageable security policies.

## Basic Concepts

- **Policies:** SELinux policies define the rules for how processes and users can interact with each other and with system resources.
- **Types:** SELinux uses type enforcement to control access. Each object (file, process, etc.) is labeled with a type, and policies define how types can interact.
- **Contexts:** Every process and object in SELinux has a context, which includes a user, role, type, and optionally a level.

## Common Commands

- `sestatus`: Check the status of SELinux.
- `getenforce`: Get the current mode of SELinux (Enforcing, Permissive, Disabled).
- `setenforce`: Change the mode of SELinux (0 for Permissive, 1 for Enforcing).
- `semanage`: Manage SELinux policy components.
- `restorecon`: Restore the default SELinux context for files.

## Modes

- **Enforcing:** SELinux policy is enforced, and access denials are logged.
- **Permissive:** SELinux policy is not enforced, but access denials are logged.
- **Disabled:** SELinux is turned off.

## Configuration

SELinux configuration is typically managed through the `/etc/selinux/config` file. This file allows you to set the default mode and policy.
