const { DataTypes } = require("sequelize");
const sequelize = require("../connection/connection");

const RolPermiso = sequelize.define('RolPermiso', {
    id: {
        primaryKey: true,
        type: DataTypes.INTEGER,
        autoIncrement: true
    },
	idRol: {
       type: DataTypes.INTEGER,
       allowNull: true 
    },
    idPermiso: {
        type: DataTypes.INTEGER,
        allowNull: true 
     }
}, {
    tableName: 'roles_permisos',
    timestamps: false,
    underscored: true
});

module.exports = RolPermiso;