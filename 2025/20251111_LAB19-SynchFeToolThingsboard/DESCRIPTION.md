
# Definitions
* ARSOS Sites: Sites defined in ARSOS Platform
* Server attributes: string attributes defined in ARSOS
    There are two server attributes:
    - mail escalation
    - mail escalation internal

# Feature definition
The objetive of the tool is develop a process that synchronize the information in SQL Server from table CIRCULATIONS to two server attributes in thingsboard

The source of truth is the SQL Server database
- At startup the application load the SQL Server information and load into server attributes
- The application keeps in memory the value from attributes and the values from the database and where there is a change in one side synch the change in the other side