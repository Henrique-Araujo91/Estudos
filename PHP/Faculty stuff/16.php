<!DOCTYPE html>
<html>
    <body>
        <h1>Estruturas de decisão e repetição</h1>
        <h2>Contextualização</h2>
        <ul>
            <li>Considere uma turma com dez alunos;</li>
            <li>As notas de uma detemrinada prova já foram lançadas;</li>
            <li>Para simplificar, vamos considerar que estas notas estejam em um array;</li>
            <li>O sistema deve calcular a média da turma e, depois, exibir uma mensagem de acordo com o resultado da média;</li>
            <li>A aplicação do servidor que realiza estas ações é desenvolvida em PHP.</li>
        </ul>

        <?php
        $notas=[6.6, 8.4, 9.2, 7.9, 8.3, 7.7, 6.4, 8.6];
        $soma = 0; // Inicializando a variável $soma
        
        foreach ($notas as $i) {
            $soma += $i;
        }
        $media = $soma / count($notas);

        if ($media < 6.0) {
            echo "Média da turma = " . $media .". Estudem mais!";
        } elseif ($media == 6.0) {
            echo "Média da turma = " . $media .". Medíocre.";
        } elseif ($media > 6.0 && $media < 10.0) {
            echo "Média da turma = " . $media .". Acima da média!";
        } else {
            echo "Média da turma = " . $media .". Fraude óbvia, as autoridades foram notificadas!";
        }
        ?>
        <h2>Conclusão</h2>
        <ul>
            <li>Como pode ser observado, utilizando estruturas de repetição e condicionais, é possível reduzir linhas de código que seriam repetitivas sem o uso desses recursos.</li>
            <li>Aumenta a eficiência do desenvolvimento.</li>
            <li>Facilita a manutenção e atualização do código.</li>
            <li>Minimiza a possibilidade de erros ao automatizar tarefas repetitivas.</li>
            <li>Facilita a implementação de lógicas complexas, baseadas em condições específicas.</li>
        </ul>
    </body>
</html>