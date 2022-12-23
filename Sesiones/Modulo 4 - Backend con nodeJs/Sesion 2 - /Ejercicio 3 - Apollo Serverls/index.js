//Destructuring
const {ApolloServer} = require("@apollo/server");
const {startStandaloneServer} = require("@apollo/server/standalone");

const servidor = new ApolloServer();

startStandaloneServer(server, {
    listen: {port: 8080},
}).then(function(){
    console.log("Escuchando puerto 8080")
})