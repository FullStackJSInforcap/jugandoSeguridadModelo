CREATE TABLE usuarios(
	id SERIAL,
	nombre_usuario VARCHAR NOT NULL UNIQUE,
	clave VARCHAR NOT NULL,
	cuenta_habilitada BOOLEAN,
	cuenta_vencida BOOLEAN,
	cuenta_bloqueada BOOLEAN,
	credenciales_vencidas BOOLEAN,
	CONSTRAINT pk_usuarios PRIMARY KEY (id)
);

CREATE TABLE roles(
	id SERIAL,
	rol VARCHAR NOT NULL,
	CONSTRAINT pk_roles PRIMARY KEY (id)
);

CREATE TABLE usuarios_roles(
	id SERIAL,
	id_usuario INTEGER NOT NULL,
	id_rol INTEGER NOT NULL,
	CONSTRAINT pk_usuarios_roles PRIMARY KEY (id),
	CONSTRAINT fk_usuarios_roles_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
	CONSTRAINT fk_usuarios_roles_roles FOREIGN KEY (id_rol) REFERENCES roles(id)
);

CREATE TABLE permisos(
	id SERIAL,
	permiso VARCHAR NOT NULL,
	CONSTRAINT pk_permisos PRIMARY KEY (id)
);

CREATE TABLE roles_permisos(
	id SERIAL,
	id_rol INTEGER NOT NULL,
	id_permiso INTEGER NOT NULL,
	CONSTRAINT pk_roles_permisos PRIMARY KEY (id),
	CONSTRAINT fk_roles_permisos_roles FOREIGN KEY (id_rol) REFERENCES roles(id),
	CONSTRAINT fk_roles_permisos_permisos FOREIGN KEY (id_permiso) REFERENCES permisos(id)
);

INSERT INTO usuarios(nombre_usuario, clave, cuenta_habilitada, cuenta_vencida, cuenta_bloqueada, credenciales_vencidas)
VALUES('nombreUsuarioUno', '123456', true, false, false, false);
INSERT INTO usuarios(nombre_usuario, clave, cuenta_habilitada, cuenta_vencida, cuenta_bloqueada, credenciales_vencidas)
VALUES('nombreUsuarioDos', '123456', true, false, false, false);
INSERT INTO usuarios(nombre_usuario, clave, cuenta_habilitada, cuenta_vencida, cuenta_bloqueada, credenciales_vencidas)
VALUES('nombreUsuarioTres', '123456', true, false, false, false);
INSERT INTO usuarios(nombre_usuario, clave, cuenta_habilitada, cuenta_vencida, cuenta_bloqueada, credenciales_vencidas)
VALUES('nombreUsuarioCuatro', '123456', true, false, false, false);
INSERT INTO usuarios(nombre_usuario, clave, cuenta_habilitada, cuenta_vencida, cuenta_bloqueada, credenciales_vencidas)
VALUES('nombreUsuarioCinco', '123456', true, false, false, false);

INSERT INTO roles(rol)
VALUES('ROLE_ADMINISTRADOR');
INSERT INTO roles(rol)
VALUES('ROLE_DESARROLLADOR');
INSERT INTO roles(rol)
VALUES('ROLE_VISITA');
INSERT INTO roles(rol)
VALUES('ROLE_USUARIO');

INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(1, 1);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(2, 1);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(2, 2);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(3, 3);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(4, 4);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(5, 3);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(5, 4);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(5, 2);
INSERT INTO usuarios_roles(id_usuario, id_rol)
VALUES(5, 1);

INSERT INTO permisos(permiso)
VALUES('PERMISO_REFACTORIZAR');
INSERT INTO permisos(permiso)
VALUES('PERMISO_LEER');
INSERT INTO permisos(permiso)
VALUES('PERMISO_ESCRIBIR');
INSERT INTO permisos(permiso)
VALUES('PERMISO_ACTUALIZAR');
INSERT INTO permisos(permiso)
VALUES('PERMISO_ELIMINAR');

INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(1, 2);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(1, 3);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(1, 4);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(1, 5);

INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(2, 1);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(2, 2);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(2, 3);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(2, 4);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(2, 5);

INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(3, 2);

INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(4, 2);
INSERT INTO roles_permisos(id_rol, id_permiso)
VALUES(4, 3);

