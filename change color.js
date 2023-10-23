function test_couleur(){
    let c = prompt("Donner une couleur")
    if(c == "rouge" || c == "ROUGE"){
        document.top = "red";
    }
    else if (c == "bleu" || c == "BLEU"){
        document.top = "blue";

    }
    else if (c == "rose" || c == "ROSE"){
        document.top.style = "pink";
    }
    else if (c == "vert" || c == "VERT"){
        document.top.style = "green";
    }
    else if (c == "noir" || c == "Noir"){
        document.top.style = "black";
    }
    else if (c == "jaune" || c == "JAUNE"){
        document.top.style = "yellow";
    }            
    else{
        document.write("Couleur non comprise")
    }
}