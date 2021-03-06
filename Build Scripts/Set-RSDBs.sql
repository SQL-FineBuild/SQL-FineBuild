--  Copyright FineBuild Team © 2011 - 2017.  Distributed under Ms-Pl License

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'$(strRSDBName)')
  BEGIN;
  CREATE DATABASE [$(strRSDBName)] COLLATE Latin1_General_CI_AS_KS_WS;
  ALTER  DATABASE [$(strRSDBName)] MODIFY FILE (NAME = N'$(strRSDBName)',     SIZE = 200 MB, FILEGROWTH = 200 MB, MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strRSDBName)] MODIFY FILE (NAME = N'$(strRSDBName)_log', SIZE = 50 MB,  FILEGROWTH = 50 MB,  MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strRSDBName)] SET RECOVERY SIMPLE;
  END;

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'$(strRSDBName)TempDB')
  BEGIN;
  CREATE DATABASE [$(strRSDBName)TempDB] COLLATE Latin1_General_CI_AS_KS_WS;
  ALTER  DATABASE [$(strRSDBName)TempDB] MODIFY FILE (NAME = N'$(strRSDBName)TempDB',     SIZE = 100 MB, FILEGROWTH = 100 MB, MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strRSDBName)TempDB] MODIFY FILE (NAME = N'$(strRSDBName)TempDB_log', SIZE = 50 MB,  FILEGROWTH = 50 MB,  MAXSIZE = UNLIMITED);
  ALTER  DATABASE [$(strRSDBName)TempDB] SET RECOVERY SIMPLE;
  END


