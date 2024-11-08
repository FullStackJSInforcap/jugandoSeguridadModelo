const { DataTypes } = require("sequelize");
const sequelize = require("../connection/connection");
const Rol = require("./rol");
const UsuarioRol = require("./usuarioRol");

const Usuario = sequelize.define('Usuario', {
    id: {
        primaryKey: true,
        type: DataTypes.INTEGER,
        autoIncrement: true
    },
    nombreUsuario: {
        type: DataTypes.INTEGER,
        unique: true,
        allowNull: false
    },
	clave: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
	cuentaHabilitada: {
        type: DataTypes.BOOLEAN
    },
	cuentaVencida: {
        type: DataTypes.BOOLEAN
    },
	cuentaBloqueada: {
        type: DataTypes.BOOLEAN
    },
	credencialesVencidas: {
        type: DataTypes.BOOLEAN
    }
}, {
    tableName: 'usuarios',
    timestamps: false,
    underscored: true
});

Usuario.belongsToMany(Rol, {
    through: UsuarioRol,
    foreignKey: {
        name: 'id_usuario'
    }
});
Rol.belongsToMany(Usuario, {
    through: UsuarioRol,
    foreignKey: {
        name: 'id_rol'
    }
});

module.exports = Usuario;