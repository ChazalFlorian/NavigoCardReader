CREATE DATABASE Navigo;

CREATE TABLE Navigo.Users(
  LastName TEXT,
  Firstname TINYTEXT
);

CREATE TABLE Navigo.Cards(
  ID TINYTEXT
);

/*
  Don't forget to chmod 777 your .lst files, and add FILE permission (Unix based OS)
  change the following line in my.cnf from MySQL folder then remove it right after datas has been imported

    under [mysql]
      local-infile=1
    under [mysqld]
      secure-file-priv=""

  WARNING ONLY IF UBUNTU
    add your files directory in /etc/apparmor.d/usr.sbin.mysqld then restart service apparmor
  */

LOAD DATA INFILE 'your_file_path_here/users.lst' INTO TABLE Navigo.Users
  FIELDS TERMINATED BY ' '
  LINES TERMINATED BY '\n';

LOAD DATA INFILE 'your_file_path_here/cards.lst' INTO TABLE Navigo.Cards
  LINES TERMINATED BY '\n';