const { DataTypes } = require("sequelize");
const sequelize = require("../connection/connection");

const UsuarioRol = sequelize.define('UsuarioRol', {
    id: {
        primaryKey: true,
        type: DataTypes.INTEGER,
        autoIncrement: true
    },
	idUsuario: {
       type: DataTypes.INTEGER,
       allowNull: true 
    },
    idRol: {
        type: DataTypes.INTEGER,
        allowNull: true 
     }
}, {
    tableName: 'usuarios_roles',
    timestamps: false,
    underscored: true
});

module.exports = UsuarioRol;