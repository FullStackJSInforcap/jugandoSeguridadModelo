const Permiso = require("./models/permiso");
const Rol = require("./models/rol");
const Usuario = require("./models/usuario");

Usuario.findOne({
    where: {
        id: 2
    },
    /* include: {
        model: Rol,
        include: Permiso
    } */
}).then(async (usuario) => {
    const usuarioRecibido = usuario.toJSON();
    const roles = await usuario.getRols();
    console.log(usuarioRecibido);
    console.log(roles.map(rol => rol.toJSON()));
    roles.forEach(async rol => {
        const permisos = await rol.getPermisos();
        console.log(permisos.map(permiso => permiso.toJSON()));
    });
}).catch((error) => {
    console.log(error);
});