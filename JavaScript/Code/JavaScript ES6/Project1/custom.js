console.log("test")
function consumoAPI(){

    const url = "https://api.themoviedb.org/3/movie/popular?api_key=a588a8cad12be802cc63c02ddc80bd9f&language=en-US&page=1";
    console.log(url);
    let peliculas = fetch(url);
    console.log(peliculas);
    
    fetch(url).then(respuesta => {
        console.log(respuesta)
        return respuesta.json();
    }).then(resultado => {
        console.log(resultado);
    })
}
consumoAPI()