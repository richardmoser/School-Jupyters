Getting Your Foot in the Door and Staying There: Leveraging SQLmap to Penetrate Insecure Systems
Richard Moser
Incoming B.S., Interdisciplinary Computing
University of Kansas, Lawrence KS


Abstract
SQLmap is a powerful tool for penetration testing of web applications with SQL databases. It allows application developers and system administrators to test their systems for vulnerabilities and to fix them before a malicious user can exploit them. This paper demonstrates the use of SQLmap to access a database with weak security and crack the passwords of the users stored within. The demonstration shows how quickly and efficiently SQLmap can be used to exploit a system with known vulnerabilities.

1	Introduction
SQLmap is an open-source tool developed to find and exploit SQL injection vulner-abilities in web-based applications. It is capable of rapidly testing a large number of common vulnerabilities in SQL databases of many different configurations, often without any special setup or customization. If it detects vulnerabilities, it is then capable of attempting to exploit them to gain access to the information in the data-base. Often the target information is a username and password which would allow the malicious user to log in with a legitimate account. If hashed passwords are found, SQLmap is capable of using dictionary attacks with either a built-in default dictionary, a user supplied dictionary, or even a series of dictionary files.
Because of the one-stop-shop nature of SQLmap, it is a popular tool for testing web applications for SQL injection vulnerabilities. For the same reason, it is also frequently used by malicious users to take advantage of these vulnerabilities. It is important to note that using this or any other penetration testing technique on a sys-tem without the explicit permission of the owner(s)of all hardware involved is un-ethical and illegal in most jurisdictions.
The goal of this paper is to describe the utility and use of SQLmap in the context of penetration testing. It will begin by describing the motivation behind the use of SQLmap and the types of vulnerabilities it is capable of detecting. Then it will demonstrate its use by finding and exploiting vulnerabilities in a web app to access and then crack passwords. The paper will conclude with a discussion of the implications of the demonstration and the importance of using tools like SQLmap to test for vulnerabilities in web applications.

Figure showing vulnerability testing -> exploitation -> data access -> password cracking.

2	Motivation
SQL injection is the process of inserting malicious SQL code into a web form in-tended to interact with a database. If the input is not sanitized, i.e. treated as text and not code to be run, the server will execute the code, potentially allowing the attacker to access and modify the contents of the database. Verifying that a system is not vulnerable to such attacks can be difficult as a request to the server is inherently going to include some form of SQL code to handle the query.
SQLmap aims to automate much of the process of testing for vulnerabilities in systems interacting with SQL databases. It is preconfigured with a large number of known vulnerabilities and can be run from the command line. This helps to reduce the amount of time and effort which a penetration tester must spend familiarizing themselves with every single possible vulnerability. It also allows the focus to shift away from the process of testing for common vulnerabilities and towards the process of fixing the vulnerabilities and investigating more niche vulnerabilities.

3	Demonstration
3.1	Environment
The example environment used in this paper was two virtual machines running on a single physical machine. Kali Linux was used on the penetration testing machine and OWASP Broken Web Applications was used on the machine which was targeted. The two machines were connected to the same host-only network and the IP address of the target machine was known. No other network connectivity was enabled on the virtual machines.
The example environment used in this paper was two virtual machines running on a single physical machine. Kali Linux was used on the penetration testing machine and OWASP Broken Web Applications was used on the machine which was targeted. The two machines were connected to the same host-only network and the IP address of the target machine was known. OWASP Broken Web Applications is a collection of different web applications which are installed with versions known to be vulnera-ble to various attacks. OWASP Mutillidae II is the application which was tested in this demonstration. Mutillidae II is built to be vulnerable to more than 40 known vulnerabilities including SQL injection which makes it an ideal target for testing.

Kali Linux is a Debian-based Linux distribution which includes many tools for pene-tration testing including SQLmap. One additional tool was used for this demonstra-tion, Burpe Suite. Burpe Suite is itself a collection of web application security test-ing tools, including a proxy server which can be used as a man-in-the-middle, moni-toring, modifying, and sending requests between two machines. Intercepted requests can be fed into SQLmap for analysis and exploitation.
3.2	Process

Once the virtual machines were set up and connected to the network, the IP address of the target computer was determined via the ifconfig command. In this case, it was 192.168.131.3. Next, from the Kali machine, Burpe Suite was started and a new pro-ject was created. The Burpe Suite proxy was turned on with intercept enabled. The suite's built-in browser was used to navigate to the Mutillidae II login page on the target machine (Figure 1). A random username and password were entered as the point was to intercept the request and analyze it, not to actually log in. Nothing oc-curred in the browser when "Login" was clicked because the request was intercepted by Burpe Suite and not passed on to the target machine. In Burpe Suite, the inter-cepted request was shown on screen (Figure 2). The text of this message was saved to a text file to be fed into SQLmap.


Figure 1: Kali machine Mutillidae II login screen

Figure 2: Burpe Suite interception of HTTP POST Request with dummy credentials
SQLmap was run from the command line using `sqlmap -r request.txt -p username`. The -r flag specifies the file to read the request from and the -p flag specifies the parameter to test for SQL injection. Here, the parameter tested was the username. SQLmap then began testing for vulnerabilities and found that the database type was MySQ. After finding that the database was vulnerable to SQL injection, SQLmap began to dump the database contents to the screen. One table in the data-base "webgoat_coins", was named "customerlogins" and contained usernames and hashed passwords. By using the `--passwords` flag, SQLmap was prompted to at-tempt to crack the passwords.

3.3	Results
Using the default dictionary and no other special parameters, SQLmap cracked the plaintext values of the first 10 passwords in the table in roughly 20 seconds (Fig-ure 3). SQLmap was also able to read the credit card data related to these accounts stored in a separate table. Even in the case that it was encrypted, using these login credentials would allow a malicious attacker to access each user’s financial information. Several usernames appeared to be administrative user accounts such as “webmaster” which would likely allow an attacker to upload malicious code, potentially recording and transmitting further sensitive information.

Figure 3: SQLmap terminal output showing cracked passwords. The username appears by the star, e.g. bricks, bwapp, citizens, while the clear-text password is listed below.
4	Conclusions
SQLmap is a powerful tool for penetration testing of web applications with SQL databases. It can rapidly deploy many different types of attacks and is capable of finding and exploiting vulnerabilities in a wide variety of configurations with a rela-tively low amount of effort. It is important that system administrators and develop-ers utilize tools like SQLmap to check for vulnerabilities in their own systems be-fore a malicious user checks for them. The demonstration in this paper shows how no more than an intercepted request and SQLmap can gain access to a weakly se-cured database's contents and crack passwords within a few minutes in the hands of a first time user. This  is a powerful tool which can be used for both good or for mali-cious purposes.

It is important to note that using this 

References
1.	Sqlmapproject. (n.d.). Home. GitHub. https://github.com/sqlmapproject/sqlmap/wiki
2.	OWASP Mutillidae II | OWASP Foundation. (n.d.). https://owasp.org/www-project-mutillidae-ii/
