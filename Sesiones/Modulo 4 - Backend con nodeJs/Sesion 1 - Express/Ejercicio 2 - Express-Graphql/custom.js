//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment
const impExpress = require("express");
const { graphqlHTTP } = require("express-graphql");
const { buildSchema } = require("graphql");
const instExpress = impExpress();

//Crear schema
const schemaProducts = buildSchema(`
    #Tipos de datos: 

    type Product{
        id : ID
        name : String
        price : Float
    }

    type Query{
        getAll: [Product]
        getById(id: ID): Product
        getByName(name: String): [Product]
    }
`);

const products = [
    {id: '1001', name: 'Xbox', price: 5000},
    {id: '1002', name: 'Nintendo', price: 8000},
    {id: '1003', name: 'PS5', price: 15000},
    {id: '1004', name: 'iPhone', price: 24000},
    {id: '1005', name: 'Generico', price: 0}
]

const resolvers = {
    getAll(){
        return products;
    },
    getById(param){
        console.log(param.id);
        /*for(const elemento of products){
            if(id === elemento.id){
                return elemento;
            }
        }*/
        return products.find((x) => x.id.toString() === param.id.toString());
    },
    getByName({name}){
        console.log(name);
        return products.filter((elemento) => elemento.name.toLocaleLowerCase().includes(name.toLocaleLowerCase()));
    }
}

instExpress.use("/graphqlCustom", graphqlHTTP({
    schema: schemaProducts,
    rootValue: resolvers,
    graphiql: true,//Se abre un framework ya hecho para consultar con graphql
    //Si la variable se llamara igual 'schema' solo se pondria schema,
}));

//Asignar y escuchar puerto
instExpress.listen(8080, function(){
    console.log("Escuchando puerto 8080");
});

/*
{
  alias1:getById(id: "1002"){
    name
  },
  alias2:getById(id: "1005"){
    name
  }
}

*/



/*
//Destructuring - Extraer ciertas propiedades de un objeto
const persona = {nombre: 'Jaaziel', direccion: 'Morelos', edad: '15'};

const nombrePersona = persona.nombre;
const direccPersona = persona.direccion;

//Destructuring
const {nombre, direccion} = persona;
*/