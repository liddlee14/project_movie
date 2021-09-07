 create table reserv(
  reserv_id int primary key auto_increment,
  client_id int 
 ,movie varchar(50)
 ,theater varchar(20)
 ,area varchar(20)
 ,date varchar(20)
 ,time varchar(20)
 ,seat varchar(100)
,constraint fk_client foreign key (client_id)
references client(client_id)
 ) default character set utf8;