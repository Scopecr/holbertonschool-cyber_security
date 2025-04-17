### Learning Objectives

By the end of this project, you should be able to explain:

- What is SSRF?
- How Does SSRF Work?
- What is an SSRF Attack and How Does it Work?
- What are the types of SSRF Attacks?
- What is the impact of SSRF attacks?
- What Are the Risks of SSRF?
- What Are Some Common SSRF Attack Scenarios?
- How to Protect Against SSRF Attacks?
- How to prevent SSRF attacks?

### Requirements

#### General

- Allowed editors: `vi`, `vim`, `emacs`.
- All scripts will be tested on Kali Linux.
- All scripts should be exactly one line long (`$ wc -l file` should print `1`).
- All files should end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- Focus on the target Cyber - WebSec 0x08.

**Note:** All applications are port-forwarded. Pay attention to ports when redirecting.

### Tasks

#### 0. Unlocking security, one exploit at a time!

**Objective:** Test and secure the internal admin dashboard by identifying and exploiting SSRF vulnerabilities.

- **Target Application:** ShopAdmin
- **Initial Endpoint:** `http://web0x08.hbtn/`
- **Vulnerability:** SSRF in the `check reduction` functionality (`articleApi` parameter).
- **Port:** 3000

**Instructions:**
1. Log into ShopAdmin.
2. Explore the `check reduction` functionality by clicking on an article.
3. Use tools like Burp Suite to uncover SSRF vulnerabilities.

**Repo:**
- `GitHub repository: holbertonschool-cyber_security`
- `Directory: web_application_security/0x08_ssrf`
- `File: 0-flag.txt`

#### 1. Is our security a fortress or a sieve? Let's SSRF and find out!

**Objective:** Assess the effectiveness of implemented security measures against SSRF attacks.

- **Target Application:** ShopAdmin
- **Initial Endpoint:** `http://web0x08.hbtn/app2/`
- **Vulnerability:** SSRF in the `check reduction` functionality (`articleApi` parameter).
- **Port:** 3001

**Instructions:**
1. Log into ShopAdmin.
2. Bypass the filter using the decimal representation of `localhost`.

**Repo:**
- `GitHub repository: holbertonschool-cyber_security`
- `Directory: web_application_security/0x08_ssrf`
- `File: 1-flag.txt`

#### 2. Exploit SSRF to breach our security!

**Objective:** Test the system for SSRF vulnerabilities to gain access to the internal admin dashboard.

- **Target Application:** ShopAdmin
- **Initial Endpoint:** `http://web0x08.hbtn/app3/`
- **Vulnerability:** SSRF in the `check reduction` functionality (`articleApi` parameter).
- **Port:** 3002

**Instructions:**
1. Log into ShopAdmin.
2. Exploit the `articleApi` parameter to access the internal admin dashboard.

**Repo:**
- `GitHub repository: holbertonschool-cyber_security`
- `Directory: web_application_security/0x08_ssrf`
- `File: 2-flag.txt`

#### 3. New security layers in town! Let's break 'em in and see if they hold up!

**Objective:** Test the new security measures by attempting to exploit SSRF vulnerabilities.

- **Target Application:** ShopAdmin
- **Initial Endpoint:** `http://web0x08.hbtn/app4-1/`
- **Vulnerability:** SSRF in the `check reduction` functionality (`articleApi` parameter).
- **Port:** 8080

**Instructions:**
1. Log into ShopAdmin.
2. Explore the new feature for navigating products and attempt to exploit redirection.
3. Pay attention to backend API calls and ports.

**Repo:**
- `GitHub repository: holbertonschool-cyber_security`
- `Directory: web_application_security/0x08_ssrf`
- `File: 3-flag.txt`