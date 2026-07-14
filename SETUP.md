# Environment Setup

## Requirements

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Database

Restore the AdventureWorks2025 database from:

AdventureWorks2025.bak

Verify installation:

```sql
USE AdventureWorks2025;

SELECT TOP 10 *
FROM Person.Person;
```