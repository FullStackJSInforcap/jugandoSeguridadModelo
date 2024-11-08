const { Sequelize } = require("sequelize");

const sequelize = new Sequelize({
    database: 'control_usuarios',
    username: 'postgres',
    password: 'root',
    port: 5432,
    host: 'localhost',
    dialect: 'postgres',
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
});

module.exports = sequelize;