var mensaje = "Hola mundo!";
console.log(mensaje);
var persona = /** @class */ (function () {
    function persona(nombre, apellido) {
        this.nombre = nombre;
        this.apellido = apellido;
    }
    // retorna el nombre completo
    persona.prototype.completo = function () {
        return this.nombre + " " + this.apellido;
    };
    Object.defineProperty(persona.prototype, "Nombre", {
        get: function () {
            return this.nombre;
        },
        //setter and getter for Nombre
        set: function (nombre) {
            this.nombre = nombre;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(persona.prototype, "Apellido", {
        get: function () {
            return this.apellido;
        },
        //setter and getter for Apellido
        set: function (apellido) {
            this.apellido = apellido;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(persona.prototype, "AnoNac", {
        get: function () {
            return this.anoNac;
        },
        //setter and getter para el año de nacimiento
        set: function (anoNac) {
            this.anoNac = anoNac;
        },
        enumerable: false,
        configurable: true
    });
    persona.prototype.edad = function (anoActual) {
        return anoActual - this.anoNac;
    };
    return persona;
}());
var mariana = new persona("Mariana", "Olmedo");
console.log(mariana.completo());
mariana.Nombre = "Mariana Beatriz";
console.log(mariana.completo());
mariana.AnoNac = 1974;
console.log(mariana.completo() + " nació en " + mariana.AnoNac + " y tuvo " + mariana.edad(2005) + " en el año 2005.");
