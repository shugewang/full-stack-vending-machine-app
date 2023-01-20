# full-stack-vending-machine-app

** Install PostgesSQL **

brew update
brew install postgresql@14
brew services start postgresql@14

brew services stop postgresql@14
** Setup database **

Go to terminal:

cd {root of project}    

psql postgres
CREATE DATABASE vending;
exit

psql vending
CREATE SCHEMA vending;

\i server/sql/setup.sql