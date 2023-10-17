function calcul_moyenne(){
    var n1= prompt("donner la premiere note:");
    var n2= prompt("donner la deuxieme note:");
    var n3= prompt("donner la troisieme note:");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme:" +somme+ "<Hr>");
    var moyenne=somme/3;

    document.write ("Voici la moyenne" +moyenne+ "<br>");

    if (moyenne<10)
    document.write("vous êtes redoublant");
    else if (moyenne<14)
    document.write("Admis passable");
    else if (moyenne<16)
    document.write("Admis Mention Bien");
    else
    document.write("Admis mention Très Bien")


}
function test_age(){
    let âge= prompt("Quel âge avez vous ?");

    if (âge<18){
        document.write("<font size='8em' color='grey' > "+"Vous êtes Mineur"+"</font>");

        document.bgColor= "red";
    }
    
    else{
        document.write("<font size='8em' color='pink' > "+"Vous êtes Mageur"+"</font>")

        document.bgColor= "green";
    }
    
}

function simple_affichage(){
    let name= prompt("Donner votre Prénom");

    let familyName = prompt("Donner votre Nom")

    document.write('<div style="margin:auto; width:50%; border:6px solid blue; ">' );


    document.write("Bonjour " + name + "   "  +familyName)
    document.write('</div>');
}

function test_couleur(){
    let c = prompt("Donner une couleur")
    if(c == "rouge" || c == "ROUGE"){
        document.body.style.background = "red";
    }
    else if (c == "bleu" || c == "BLEU"){
        document.body.style.background = "blue";

    }
    else if (c == "rose" || c == "ROSE"){
        document.body.style.background = "pink";
    }
    else if (c == "vert" || c == "VERT"){
        document.body.style.background = "green";
    }
    else if (c == "noir" || c == "Noir"){
        document.body.style.background = "black";
    }
    else if (c == "jaune" || c == "JAUNE"){
        document.body.style.background = "yellow";
    }            
    else{
        document.write("Couleur non comprise")
    }
}


