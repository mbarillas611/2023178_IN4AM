drop database exam_3b_in4am;

create database exam_3b_in4am;

use exam_3b_in4am;

create table Usuario (
	id_usurio int not null unique,
    nombre_completo varchar(70) not null unique ,
    nombre_usuario varchar (70) not null unique ,
    email varchar(70) not null,
    clave varchar(70) not null,
    rol varchar(70) not null default 'USUARIO',
    primary key (id_usurio)
);
-- ============================== Crear ================
delimiter $$
	create procedure sp_crear_usuario(in id_usurio_p int,
										in nombre_completo_p varchar(70),
				
						in nombre_usuario_p varchar (70),
										in email_p varchar(70),
										in clave_p varchar(70),
										in rol_p varchar(70))
	begin
		insert into Usuario(id_usurio, nombre_completo, nombre_usuario, email, clave, rol)
			values(id_usurio_p, nombre_completo_p, nombre_usuario_p, email_p, clave_p, rol_p);
    end$$
delimiter ;


-- ======================== Leer ==========================
delimiter $$
create procedure sp_leer_Usuario()

begin
	select * from Usuario;
end$$

delimiter ;


-- ========================= Validar login =======================
delimiter $$
	create procedure sp_login_Usuario(in nombre_usuario_p varchar(70), in clave_p varchar(70))
    
    begin
		select * from Usuario
        where nombre_usuario = nombre_usuario_p and clave<_p;
    end$$

delimiter ;




