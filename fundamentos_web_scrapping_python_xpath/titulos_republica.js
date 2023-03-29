
// ? Extraer los links de noticias de la pagina: https://www.larepublica.co/


// primera forma de traer todos los titulos de la pagina: 

$x("//h2//a").map(a => console.log(a.textContent))  // devuelve el texto en raw

$x("//h2//a/@href").map(a => console.log(a.textContent))  // todo: @href, hace referencia a los links dentro de las etiquetas "a"

$x("//h2[@class='headline']/a/@href").map(x => x.value)  // Devuelve solo los links de los videos principales de la pagina




// ? Extraer los Titulos (solo texto) de las noticias: 

$x("//h2//a/text()").map(a => console.log(a.wholeText))  // .wholeText, devuelve todo el texto, incluyendo espacios en blanco, saltos de linea, etc... 