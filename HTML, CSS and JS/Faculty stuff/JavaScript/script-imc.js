const imc = (peso, altura) => peso / (altura * altura);

const situacao = (valor_imc) => {
    if (valor_imc < 18.5) return "Abaixo do peso";
    else if (valor_imc < 24.9) return "Peso normal";
    else if (valor_imc < 29.9) return "Acima do peso";
    else if (valor_imc < 34.9) return "Obesidade";
    else if (valor_imc < 39.9) return "Obesidade severa";
    else return "Obesidade mórbida";
}