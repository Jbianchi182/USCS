function converTemp (){
    var temp = document.getElementById("temp").value;
    var resultado = document.getElementById("resultadotemp").value;
    var temptipo = document.getElementById("temperatura").value;

        if (temptipo == "CelFah") {
            var resultado = (temp * 9/5) + 32;
            document.getElementById("resultadotemp").innerHTML = temp + "C é equivalente a " + resultado.toFixed(2) + " F";
        } else if (temptipo == "FahCel") {
            var resultado = (temp - 32) * 5/9;
            document.getElementById("resultadotemp").innerHTML = temp + "F é equivalente a " + resultado.toFixed(2) + " C";
        }
    }

function converMoeda (){
    var valor = document.getElementById("moeda").value;
    var dolar = 5.25;
    var euro = 5.60;
    var libra = 6.50;
    var resultado = document.getElementById("resultadomoeda").value;

    if (isNaN(valor)) {
        document.getElementById("resultadomoeda").innerHTML="Por favor, insira um valor válido.";
    }
    else{
        document.getElementById("resultadomoeda").innerHTML="A quantia " + valor + " em reais é equivalente a: " + "<br>" + "Dolares: " + (valor / dolar).toFixed(2) + "<br>" + "Euros: " + (valor / euro).toFixed(2) + "<br>" + "Libras: " + (valor / libra).toFixed(2);
    }
}

