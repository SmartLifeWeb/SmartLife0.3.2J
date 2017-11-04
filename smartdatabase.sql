drop database if exists smartdatabase;
create database smartdatabase;
use smartdatabase;

#Tabla de avatares
create table avatares(idAvatar int auto_increment primary key not null,Nombre nvarchar(30),Avatar nvarchar(100));

#Tabla de roles 
create table roles(idROl int auto_increment primary key not null ,Rol nvarchar(20));

#Tabla del usuario
create table usuario(idUsuario nvarchar(30) primary key not null,idAvatar int(11), foreign key(idAvatar) references avatares(idAvatar),
idROl int(11), foreign key(idROl) references roles(idROl), Nombre nvarchar(40), A_paterno nvarchar(20), A_Materno nvarchar(20),
Telefono bigint(11), email nvarchar(70), contraseña nvarchar(100), likes int(10));

#Tabla Archivos (Las tareas que sube el usuario)
create table archivos(idArchivo int auto_increment primary key not null, idUsuario nvarchar(30), foreign key(idUsuario) references usuario(idUsuario),
Documento nvarchar(50),HoraFecha datetime default current_timestamp);

#Tabla de tipos de actividades 
create table tipoactividad(idTipoAct int auto_increment primary key not null,Actividad nvarchar(25));

#Tabla de actividades del usuario
create table actividad(idActividad int auto_increment primary key not null, idTipoAct int, idUsuario nvarchar(30),NombreAct nvarchar(35),
FechaIni datetime,FechaFin datetime,Descripción nvarchar(40),Prioridad int(2), foreign key(idTipoAct) references tipoactividad(idTipoAct),
foreign key(idUsuario) references usuario(idUsuario));

#Tabla de preguntas para el foro
create table preguntas(idPregunta int auto_increment primary key not null, idUsuario nvarchar(30), Descripción nvarchar(200),
foreign key(idUsuario) references usuario(idUsuario));

#Tabla de comentarios de la pregunta en el foro
create table comentarios(idComentario int auto_increment primary key not null, idUsuario nvarchar(30), idPregunta int,Descripción nvarchar(800),
HoraFecha timestamp default current_timestamp,Likes int(9), foreign key(idUsuario) references usuario(idUsuario), foreign key(idPregunta) references preguntas(idPregunta)) ;

#Tabla del foro
create table foro(idForo int auto_increment primary key not null, idPregunta int, HoraFecha timestamp default current_timestamp, foreign key(idPregunta) references preguntas(idPregunta));

#Tabla de categoría de entretenimiento
create table catentreten(idCat int auto_increment primary key not null, Categoría nvarchar(10));

#Tabla de géneros (Música-Cine)
create table géneros(idGénero int auto_increment primary key not null, Género nvarchar(15));

#Tabla de Artistas/Bandas

create table artistasbandas(idArtistaB int auto_increment primary key not null,Artista nvarchar(30));

#Tabla de Entretenimiento 
create table entretenimiento(idEntreten int auto_increment primary key not null,idCat int,idGénero int,idArtistaB int,Título nvarchar(25),
foreign key(idCat)references catentreten(idCat),foreign key(idGénero) references géneros(idGénero), foreign key(idArtistaB) references artistasbandas(idArtistaB));

#Tabla relEntretenimiento, Usuario
create table RelUserEntreten(idRel int auto_increment primary key not null, idUsuario nvarchar(30), idEntreten int,
foreign key(idUsuario) references usuario(idUsuario), foreign key(idEntreten) references entretenimiento(idEntreten));

#Tabla para los chats 
create table chat(idChat int auto_increment primary key not null, idUsuario1 nvarchar(30), idUsuario2 nvarchar(100),
foreign key(idUsuario1) references usuario(idUsuario), foreign key(idUsuario2) references usuario(idUsuario),NombreChat nvarchar(15));

#Tabla para los mensajes 
create table mensajes(idMensaje int auto_increment primary key not null, idChat int, Emisor nvarchar(30),Receptor nvarchar(30),Contenido nvarchar(1000),
HoraFecha timestamp default current_timestamp, foreign key(Emisor) references usuario(idUsuario), foreign key(Receptor) references usuario(idUsuario));

insert into avatares values(default,'Avat','nel');
insert into roles values(default,'Profesionista');
insert into roles values(default,'Estudiante');
insert into usuario values('Ño',1,1,'Pepe','pat','mat',5540497477,'gmail','cont',null);


insert into catentreten values(default,'música');

insert into catentreten values(default,'cine');

insert into géneros values(default,'Terror');

insert into géneros values(default,'Rock');

insert into artistasbandas values(default,'Pheny Whise el Payas');

insert into artistasbandas values(default,'Sputnik');

insert into entretenimiento values(default,1,2,2,'Cien Inviernos');
insert into entretenimiento values(default,2,1,1,'It');

select * from entretenimiento;

insert into RelUserEntreten values(default,'Ño',2);
select*from RelUserEntreten;
select * from usuario;

select idUsuario,Género,Título,Artista from ((RelUserEntreten inner join entretenimiento on RelUserEntreten.idEntreten = entretenimiento.idEntreten) 
inner join géneros on entretenimiento.idGénero = géneros.idGénero) inner join artistasbandas on entretenimiento.idArtistaB = artistasbandas.idArtistaB where idUsuario='Ño'; create table preguntas(idPregunta int auto_increment primary key not null, idUsuario nvarchar(30), Descripción nvarchar(200), foreign key(idUsuario) references usuario(idUsuario))
