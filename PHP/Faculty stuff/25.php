<DOCTYPE html>
    <html>
        <body>
            <h1>Programação com funções em PHP</h1>
            <h2>Contextualização</h2>
            <ul>
                <li>Considere um array unidimensional, que contém o nome de um aluno, além das duas notas de provas;</li>
                <li>Vamos implementar uma função que calcule a média das duas notas;</li>
                <li>Depois, o programa deve exibir o nome do aluno e a sua média.</li>
                <li>A título de exemplo, seja o array:</li>
                    <pre><code>João 8.8 9.4</code></pre>
                <li>A função calcula a média de 8.8 e 9.4;</li>
                <li>Finalmente, o programa deve exibir a seguinte saída:</li>
                    <pre><code>João tem média igual a 9.1</code></pre>
                <li>Como fazer o programa?</li>
            </ul>
            <p>Observe o código fonte desse arquivo para ver o passo a passo.</p>

            <?php //Implementação da função que calcula a média
            function calc_media($n1,$n2) {
                return ($n1 + $n2) / 2;
            }

            $aluno=array("João",8.8,9.4); //Definição do array que contém os dados do aluno

            $media=calc_media($aluno[1],$aluno[2]); //Chamada da função que calcula a média
            
            echo $aluno[0]." tem média igual a ".$media; //Imprimindo os dados na tela
            ?>

            <h2>Conclusão</h2>
            <ul>
                <li>Funções permitem modularizar o código, tornando-o mais organizado e fácil de manter;</li>
                <li>Reutilização de código evita redundância e facilita a manutenção e atualização;</li>
                <li>PHP oferece um vasto conjunto de funções internas para diversas tarefas;</li>
                <li>Funções definidas pelo usuário podem ser criadas para atender necessidades específicas, complementando as funções internas;</li>
                <li>Importante diferenciar a implementação da função e sua utilização;</li>
        </body>
    </html>