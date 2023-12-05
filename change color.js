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