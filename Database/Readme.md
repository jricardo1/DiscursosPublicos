#Database Setup

## Database Information
create SQL Database named 'publicTalks'
create SQL user named: 'talksDev'@'localhost';
grant ALL on *.* to ‘talksDev’@‘localhost’;

##Installing MySQL C connector 6.1.6
sudo apt-get install libmysqlclient-dev

##Installing mysql-utilities
sudo apt-get install mysql-utilities
