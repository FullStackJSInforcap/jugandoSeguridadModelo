const { DataTypes } = require("sequelize");
const sequelize = require("../connection/connection");
const Permiso = require("./permiso");
const RolPermiso = require("./rolPermiso");

const Rol = sequelize.define('Rol', {
    id: {
        primaryKey: true,
        type: DataTypes.INTEGER,
        autoIncrement: true
    },
	rol: {
       type: DataTypes.STRING,
       allowNull: true 
    }
}, {
    tableName: 'roles',
    timestamps: false,
    underscored: true
});

Rol.belongsToMany(Permiso, {
    through: RolPermiso,
    foreignKey: {
        name: 'id_rol'
    }
});
Permiso.belongsToMany(Rol, {
    through: RolPermiso,
    foreignKey: {
        name: 'id_permiso'
    }
});

module.exports = Rol;