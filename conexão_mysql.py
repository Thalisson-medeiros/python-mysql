import mysql.connector

print('{:^70}'.format('Cadastro de Produtos'))

while True:

    conexão = mysql.connector.connect(host='localhost',database='loja',user='root',password='')

    cursor = conexão.cursor()

    print('-'*70)
    print('[1]Para Cadastrar Produtos') 
    print('[2]Para Ler Informações')
    print('[3]Para Modificar produtos') 
    print('[4]Para Deletar produtos')
    print('[5]Sair')
    print('-'*70)

    resp = input('Opção: ')

    if resp == '1':
        nome = input('Informe o Nome do Produto: ')
        preco = float(input('Informe o Valor do Produto: '))

        comando = f'INSERT INTO produtos (nome, preço) VALUES ("{nome}", {preco})'
        cursor.execute(comando)
        conexão.commit()
        print('-'*70)
        print('{:^70}'.format('Produto Cadastrado Com Sucesso!'))
        print('-'*70)

    elif resp == '2':

        try:

            comando = 'SELECT * FROM produtos'
            cursor.execute(comando)
            resultado = cursor.fetchall()

            print('-'*70)
            print('{: <20}{: <30}{}'.format('Nº', 'Nome', 'Valor'))
            print('-'*70)
            
            for c in range(len(resultado)):

                print('{: <20}{: <30}{}'.format(resultado[c][0], resultado[c][1], resultado[c][2]))

            print('-'*70)
            
        except:
            print('Sem registros!')

    elif resp == '3':
        
        print('[1]Modificar Nome')
        print('[2]Modificar Valor')
        opc = input('Opção: ')

        if opc == '1':

            antigo_nome = input('Qual o Antigo nome? ')
            novo_nome = input('Qual o Novo Nome? ')

            comando =  f'UPDATE produtos SET nome = "{novo_nome}" WHERE nome = "{antigo_nome}"'
            cursor.execute(comando)
            conexão.commit()

        elif opc == '2':

            nome = input('Qual o Nome do Produto? ')
            novo_valor = input('Qual o Novo Valor? ')

            comando =  f'UPDATE produtos SET preço = "{novo_valor}" WHERE nome = "{nome}"'
            cursor.execute(comando)
            conexão.commit()

    elif resp == '4':

            nome = input('Qual o Nome do Produto? ')

            comando =  f'DELETE FROM produtos WHERE nome = "{nome}"'
            cursor.execute(comando)
            conexão.commit()

    else:
        if resp == '5':
            break

    cursor.close()
    conexão.close()

    p = input('Deseja continuar?[S/N]: ')
    if p == 'n':
        break