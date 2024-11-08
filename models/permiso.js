const { DataTypes } = require("sequelize");
const sequelize = require("../connection/connection");

const Permiso = sequelize.define('Permiso', {
    id: {
        primaryKey: true,
        type: DataTypes.INTEGER,
        autoIncrement: true
    },
	permiso: {
       type: DataTypes.STRING,
       allowNull: true 
    }
}, {
    tableName: 'permisos',
    timestamps: false,
    underscored: true
});

module.exports = Permiso;