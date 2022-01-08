let mensaje:string="Hola mundo!";
console.log(mensaje);

class persona{
    private nombre:string;
    private apellido:string;
    private anoNac:number;
  
    constructor(nombre:string, apellido:string, anoNac:number){
      this.nombre = nombre;
      this.apellido = apellido;
      this.anoNac = anoNac;
    }
  
    // retorna el nombre completo
    public completo():string{
      return this.nombre + " " + this.apellido;
    }
  
    //setter and getter for Nombre
    set Nombre(nombre:string){
      this.nombre = nombre;
    }
  
    get Nombre():string{
      return this.nombre;
    }
  
    //setter and getter for Apellido
    set Apellido(apellido:string){
      this.apellido = apellido;
    }

    get Apellido():string{
      return this.apellido;
    }
    
    //setter and getter para el año de nacimiento
    set AnoNac(anoNac:number){
       this.anoNac = anoNac;
     }
    
    get AnoNac():number{
      return this.anoNac;
     }
    
    public edad(anoActual:number):number{
      return anoActual - this.anoNac;
    }
}

let mariana = new persona("Mariana", "Olmedo", 1974);
console.log(mariana.completo());

mariana.Nombre = "Mariana Beatriz";
console.log(mariana.completo());

mariana.AnoNac = 1974;
console.log(mariana.completo() + " nació en " + mariana.AnoNac + " y tuvo " + mariana.edad(2005) + " en el año 2005.");

