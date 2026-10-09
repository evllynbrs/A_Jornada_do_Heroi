programa
{
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> u

  const inteiro LARGURA = 800
  const inteiro ALTURA = 500

  funcao inicio()
  {
    cadeia nome
    cadeia cabelo
    cadeia olhos
    cadeia pele
    cadeia roupa

    inteiro escolhaa
    inteiro escolha2
    inteiro escolha3
    inteiro escolhaCabelo
    inteiro escolhaOlhos
    inteiro escolhaPele
    inteiro escolhaRoupa
    inteiro sorte
    inteiro vida
    inteiro ouro
    inteiro espada
    inteiro pocao
    logico jogoAtivo

    nome = "Heroi"
    cabelo = "Castanho"
    olhos = "Castanho"
    pele = "Parda"
    roupa = "Azul"

    escolhaa = 0
    escolha2 = 0
    escolha3 = 0
    escolhaCabelo = 0
    escolhaOlhos = 0
    escolhaPele = 0
    escolhaRoupa = 0
    sorte = 0
    vida = 100
    ouro = 0
    espada = 0
    pocao = 2
    jogoAtivo = verdadeiro

    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(LARGURA, ALTURA)
    graficos.definir_titulo_janela("A Jornada do Heroi")

    escreva("Digite seu nome: ")
    leia(nome)

    // ==========================================
    // CRIACAO DO PERSONAGEM
    // ==========================================

    escreva("\n========================================")
    escreva("\n        CRIACAO DO SEU PERSONAGEM")
    escreva("\n========================================")

    escreva("\n\nEscolha o cabelo:")
    escreva("\n1 - Loiro")
    escreva("\n2 - Preto")
    escreva("\n3 - Castanho")
    escreva("\nEscolha: ")
    leia(escolhaCabelo)

    se (escolhaCabelo == 1)
    {
      cabelo = "Loiro"
    }
    senao se (escolhaCabelo == 2)
    {
      cabelo = "Preto"
    }
    senao
    {
      cabelo = "Castanho"
    }

    escreva("\nEscolha a cor dos olhos:")
    escreva("\n1 - Azul")
    escreva("\n2 - Preto")
    escreva("\n3 - Verde")
    escreva("\n4 - Castanho")
    escreva("\nEscolha: ")
    leia(escolhaOlhos)

    se (escolhaOlhos == 1)
    {
      olhos = "Azul"
    }
    senao se (escolhaOlhos == 2)
    {
      olhos = "Preto"
    }
    senao se (escolhaOlhos == 3)
    {
      olhos = "Verde"
    }
    senao
    {
      olhos = "Castanho"
    }

    escreva("\nEscolha a cor da pele:")
    escreva("\n1 - Branca")
    escreva("\n2 - Parda")
    escreva("\n3 - Preta")
    escreva("\nEscolha: ")
    leia(escolhaPele)

    se (escolhaPele == 1)
    {
      pele = "Branca"
    }
    senao se (escolhaPele == 2)
    {
      pele = "Parda"
    }
    senao
    {
      pele = "Preta"
    }

    escreva("\nEscolha a roupa:")
    escreva("\n1 - Azul")
    escreva("\n2 - Vermelha")
    escreva("\n3 - Verde")
    escreva("\n4 - Preta")
    escreva("\n5 - Branca")
    escreva("\nEscolha: ")
    leia(escolhaRoupa)

    se (escolhaRoupa == 1)
    {
      roupa = "Azul"
    }
    senao se (escolhaRoupa == 2)
    {
      roupa = "Vermelha"
    }
    senao se (escolhaRoupa == 3)
    {
      roupa = "Verde"
    }
    senao se (escolhaRoupa == 4)
    {
      roupa = "Preta"
    }
    senao
    {
      roupa = "Branca"
    }

    desenhar_personagem(nome, cabelo, olhos, pele, roupa)

    escreva("\n\nSeu personagem foi criado!")
    escreva("\nNome: ")
    escreva(nome)
    escreva("\nCabelo: ")
    escreva(cabelo)
    escreva("\nOlhos: ")
    escreva(olhos)
    escreva("\nPele: ")
    escreva(pele)
    escreva("\nRoupa: ")
    escreva(roupa)

    escreva("\n\nPressione ENTER para continuar.")
    cadeia continuar
    leia(continuar)

    // ==========================================
    // INICIO DA JORNADA
    // ==========================================

    enquanto (jogoAtivo)
    {
      desenhar_inicio(nome, cabelo, olhos, pele, roupa)

      escreva("\n1 - Entrar na Caverna das Tochas")
      escreva("\n2 - Seguir pelo Tunel Sombrio")
      escreva("\n3 - Explorar a Floresta Misteriosa")
      escreva("\n4 - Ir ate a Vila")
      escreva("\nEscolha: ")
      leia(escolhaa)

      // ==========================================
      // CAVERNA
      // ==========================================

      se (escolhaa == 1)
      {
        desenhar_caverna(nome, cabelo, olhos, pele, roupa)

        escreva("\n1 - Enfrentar o Guardiao")
        escreva("\n2 - Tentar conversar com o Guardiao")
        escreva("\n3 - Procurar outro caminho")
        escreva("\nEscolha: ")
        leia(escolha2)

        se (escolha2 == 1)
        {
          sorte = u.sorteia(1, 6)

          desenhar_guardiao(nome, cabelo, olhos, pele, roupa, sorte)

          escreva("\nVoce rolou o dado e tirou: ")
          escreva(sorte)

          se (sorte >= 3)
          {
            espada = 1
            ouro = ouro + 100

            escreva("\n\nO Guardiao foi derrotado!")
            escreva("\nVoce ganhou uma ESPADA MAGICA!")
            escreva("\nVoce encontrou 100 moedas de ouro!")
            escreva("\nA jornada continua...")

            desenhar_vitoria_guardiao(nome, cabelo, olhos, pele, roupa)
          }
          senao
          {
            vida = vida - 40

            escreva("\n\nO Guardiao atacou voce!")
            escreva("\nVoce perdeu 40 HP.")
            escreva("\nVida: ")
            escreva(vida)

            desenhar_derrota_guardiao(nome, cabelo, olhos, pele, roupa, vida)

            se (vida <= 0)
            {
              desenhar_morte(nome, cabelo, olhos, pele, roupa)
              jogoAtivo = falso
            }
          }
        }
        senao se (escolha2 == 2)
        {
          desenhar_conversa(nome, cabelo, olhos, pele, roupa)

          escreva("\n1 - Aceitar a missao do Guardiao")
          escreva("\n2 - Recusar e procurar outra passagem")
          escreva("\nEscolha: ")
          leia(escolha3)

          se (escolha3 == 1)
          {
            ouro = ouro + 150
            espada = 1

            escreva("\nO Guardiao ficou impressionado com sua coragem!")
            escreva("\nEle entregou uma ESPADA MAGICA e 150 moedas!")
            escreva("\nA jornada continua...")

            desenhar_recompensa(nome, cabelo, olhos, pele, roupa)
          }
          senao
          {
            desenhar_saida_caverna(nome, cabelo, olhos, pele, roupa)
            escreva("\nVoce deixou a caverna em seguranca. VOCE VENCEU!")
            jogoAtivo = falso
          }
        }
        senao
        {
          desenhar_saida_caverna(nome, cabelo, olhos, pele, roupa)
          escreva("\nVoce encontrou uma passagem secreta! VOCE VENCEU!")
          jogoAtivo = falso
        }
      }

      // ==========================================
      // TUNEL
      // ==========================================

      senao se (escolhaa == 2)
      {
        vida = vida - 20

        desenhar_tunel(nome, cabelo, olhos, pele, roupa, vida)

        se (vida <= 0)
        {
          desenhar_morte(nome, cabelo, olhos, pele, roupa)
          jogoAtivo = falso
        }
        senao
        {
          escreva("\n1 - Abrir o bau antigo")
          escreva("\n2 - Entrar na sala secreta")
          escreva("\n3 - Procurar uma saida")
          escreva("\nEscolha: ")
          leia(escolha2)

          se (escolha2 == 1)
          {
            sorte = u.sorteia(1, 6)

            desenhar_bau(sorte)

            se (sorte >= 3)
            {
              ouro = ouro + 200

              escreva("\nO bau foi aberto!")
              escreva("\nVoce encontrou 200 moedas de ouro!")

              desenhar_tesouro(nome, cabelo, olhos, pele, roupa)
            }
            senao
            {
              vida = vida - 20

              escreva("\nUma armadilha foi ativada!")
              escreva("\nVoce perdeu 20 HP.")
              escreva("\nVida: ")
              escreva(vida)

              desenhar_armadilha(nome, cabelo, olhos, pele, roupa, vida)

              se (vida <= 0)
              {
                desenhar_morte(nome, cabelo, olhos, pele, roupa)
                jogoAtivo = falso
              }
            }
          }
          senao se (escolha2 == 2)
          {
            desenhar_sala_secreta(nome, cabelo, olhos, pele, roupa)

            escreva("\n1 - Pegar o cristal azul")
            escreva("\n2 - Pegar o cristal vermelho")
            escreva("\nEscolha: ")
            leia(escolha3)

            se (escolha3 == 1)
            {
              vida = vida + 30

              escreva("\nO cristal curou voce!")
              escreva("\nVida: ")
              escreva(vida)

              desenhar_cristal_azul(nome, cabelo, olhos, pele, roupa, vida)
            }
            senao
            {
              ouro = ouro + 300

              escreva("\nO cristal vermelho se transformou em ouro!")
              escreva("\nVoce ganhou 300 moedas!")

              desenhar_cristal_vermelho(nome, cabelo, olhos, pele, roupa)
            }
          }
          senao
          {
            desenhar_saida(nome, cabelo, olhos, pele, roupa, vida)
            escreva("\nVoce encontrou uma saida do tunel. VOCE VENCEU!")
            jogoAtivo = falso
          }
        }
      }

      // ==========================================
      // FLORESTA
      // ==========================================

      senao se (escolhaa == 3)
      {
        desenhar_floresta(nome, cabelo, olhos, pele, roupa)

        escreva("\n1 - Seguir as pegadas")
        escreva("\n2 - Investigar a arvore gigante")
        escreva("\n3 - Acender uma fogueira")
        escreva("\nEscolha: ")
        leia(escolha2)

        se (escolha2 == 1)
        {
          sorte = u.sorteia(1, 6)

          desenhar_lobo(sorte)

          se (sorte >= 4)
          {
            ouro = ouro + 120

            escreva("\nVoce encontrou um viajante perdido!")
            escreva("\nEle deu 120 moedas para voce.")

            desenhar_viajante(nome, cabelo, olhos, pele, roupa)
          }
          senao
          {
            vida = vida - 30

            escreva("\nUm lobo atacou voce!")
            escreva("\nVida: ")
            escreva(vida)

            desenhar_lobo_ataque(nome, cabelo, olhos, pele, roupa, vida)

            se (vida <= 0)
            {
              desenhar_morte(nome, cabelo, olhos, pele, roupa)
              jogoAtivo = falso
            }
          }
        }
        senao se (escolha2 == 2)
        {
          desenhar_arvore_gigante(nome, cabelo, olhos, pele, roupa)

          escreva("\n1 - Entrar na arvore")
          escreva("\n2 - Procurar frutos")
          escreva("\nEscolha: ")
          leia(escolha3)

          se (escolha3 == 1)
          {
            espada = 1

            escreva("\nDentro da arvore existe uma espada antiga!")
            escreva("\nVoce conseguiu a ESPADA DOS ANCESTRAIS!")

            desenhar_espada_ancestral(nome, cabelo, olhos, pele, roupa)
          }
          senao
          {
            vida = vida + 20

            escreva("\nVoce encontrou frutos magicos!")
            escreva("\nVida recuperada: 20 HP")

            desenhar_frutos(nome, cabelo, olhos, pele, roupa, vida)
          }
        }
        senao
        {
          desenhar_fogueira(nome, cabelo, olhos, pele, roupa)

          sorte = u.sorteia(1, 6)

          se (sorte >= 4)
          {
            vida = vida + 25

            escreva("\nUma fada apareceu e curou voce!")
            escreva("\nVida: ")
            escreva(vida)
          }
          senao
          {
            escreva("\nNada aconteceu durante a noite.")
          }
        }
      }

      // ==========================================
      // VILA
      // ==========================================

      senao se (escolhaa == 4)
      {
        desenhar_vila(nome, cabelo, olhos, pele, roupa)

        escreva("\n1 - Comprar pocao")
        escreva("\n2 - Visitar o ferreiro")
        escreva("\n3 - Procurar uma missao")
        escreva("\nEscolha: ")
        leia(escolha2)

        se (escolha2 == 1)
        {
          pocao = pocao + 2
          ouro = ouro - 50

          desenhar_loja(nome, cabelo, olhos, pele, roupa, pocao, ouro)

          escreva("\nVoce comprou 2 pocoes!")
        }
        senao se (escolha2 == 2)
        {
          espada = 1
          ouro = ouro - 100

          desenhar_ferreiro(nome, cabelo, olhos, pele, roupa)

          escreva("\nO ferreiro melhorou sua espada!")
        }
        senao
        {
          ouro = ouro + 250

          desenhar_missao(nome, cabelo, olhos, pele, roupa)

          escreva("\nMissao concluida!")
          escreva("\nVoce recebeu 250 moedas!")
        }
      }
      senao
      {
        desenhar_fim()

        escreva("\nOpcao invalida! Escolha novamente.")
      }

      escreva("\n\nPressione ENTER para continuar.")

      cadeia continuarFinal
      leia(continuarFinal)

      u.aguarde(1000)
    }
  }

  funcao vazio desenhar_personagem(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    inteiro corPele
    inteiro corCabelo
    inteiro corOlhos
    inteiro corRoupa

    se (pele == "Branca")
    {
      corPele = graficos.criar_cor(255, 220, 190)
    }
    senao se (pele == "Parda")
    {
      corPele = graficos.criar_cor(190, 130, 90)
    }
    senao
    {
      corPele = graficos.criar_cor(100, 60, 40)
    }

    se (cabelo == "Loiro")
    {
      corCabelo = graficos.criar_cor(240, 210, 80)
    }
    senao se (cabelo == "Preto")
    {
      corCabelo = graficos.criar_cor(20, 20, 20)
    }
    senao
    {
      corCabelo = graficos.criar_cor(100, 60, 30)
    }

    se (olhos == "Azul")
    {
      corOlhos = graficos.criar_cor(50, 120, 220)
    }
    senao se (olhos == "Verde")
    {
      corOlhos = graficos.criar_cor(50, 180, 80)
    }
    senao
    {
      corOlhos = graficos.criar_cor(30, 20, 15)
    }

    se (roupa == "Azul")
    {
      corRoupa = graficos.criar_cor(40, 80, 200)
    }
    senao se (roupa == "Vermelha")
    {
      corRoupa = graficos.criar_cor(200, 40, 40)
    }
    senao se (roupa == "Verde")
    {
      corRoupa = graficos.criar_cor(40, 160, 60)
    }
    senao se (roupa == "Preta")
    {
      corRoupa = graficos.criar_cor(30, 30, 30)
    }
    senao
    {
      corRoupa = graficos.criar_cor(240, 240, 240)
    }

    // Fundo da Tela
    graficos.definir_cor(graficos.criar_cor(80, 140, 200))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    // Pernas (Cor da pele)
    graficos.definir_cor(corPele)
    graficos.desenhar_retangulo(360, 330, 25, 90, falso, verdadeiro)
    graficos.desenhar_retangulo(415, 330, 25, 90, falso, verdadeiro)

    // Tronco / Corpo (Cor da roupa escolhida)
    graficos.definir_cor(corRoupa)
    graficos.desenhar_retangulo(350, 210, 100, 130, falso, verdadeiro)

    // Bracos (Cor da pele)
    graficos.definir_cor(corPele)
    graficos.desenhar_retangulo(320, 210, 25, 100, falso, verdadeiro)
    graficos.desenhar_retangulo(455, 210, 25, 100, falso, verdadeiro)

    // Pescoço
    graficos.desenhar_retangulo(385, 195, 30, 20, falso, verdadeiro)

    // Cabeca
    graficos.definir_cor(corPele)
    graficos.desenhar_elipse(350, 100, 100, 110, verdadeiro)

    // Cabelo
    graficos.definir_cor(corCabelo)
    graficos.desenhar_elipse(345, 85, 110, 55, verdadeiro)

    // Olhos
    graficos.definir_cor(corOlhos)
    graficos.desenhar_elipse(370, 135, 18, 18, verdadeiro)
    graficos.desenhar_elipse(412, 135, 18, 18, verdadeiro)

    // Textos
    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 40, "SEU PERSONAGEM")
    graficos.desenhar_texto(350, 445, nome)

    graficos.renderizar()
  }

  funcao vazio desenhar_personagem_mini(cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    inteiro corPele
    inteiro corCabelo
    inteiro corOlhos
    inteiro corRoupa

    se (pele == "Branca")
    {
      corPele = graficos.criar_cor(255, 220, 190)
    }
    senao se (pele == "Parda")
    {
      corPele = graficos.criar_cor(190, 130, 90)
    }
    senao
    {
      corPele = graficos.criar_cor(100, 60, 40)
    }

    se (cabelo == "Loiro")
    {
      corCabelo = graficos.criar_cor(240, 210, 80)
    }
    senao se (cabelo == "Preto")
    {
      corCabelo = graficos.criar_cor(20, 20, 20)
    }
    senao
    {
      corCabelo = graficos.criar_cor(100, 60, 30)
    }

    se (olhos == "Azul")
    {
      corOlhos = graficos.criar_cor(50, 120, 220)
    }
    senao se (olhos == "Verde")
    {
      corOlhos = graficos.criar_cor(50, 180, 80)
    }
    senao
    {
      corOlhos = graficos.criar_cor(30, 20, 15)
    }

    se (roupa == "Azul")
    {
      corRoupa = graficos.criar_cor(40, 80, 200)
    }
    senao se (roupa == "Vermelha")
    {
      corRoupa = graficos.criar_cor(200, 40, 40)
    }
    senao se (roupa == "Verde")
    {
      corRoupa = graficos.criar_cor(40, 160, 60)
    }
    senao se (roupa == "Preta")
    {
      corRoupa = graficos.criar_cor(30, 30, 30)
    }
    senao
    {
      corRoupa = graficos.criar_cor(240, 240, 240)
    }

    // Pernas (Mini)
    graficos.definir_cor(corPele)
    graficos.desenhar_retangulo(115, 300, 12, 50, falso, verdadeiro)
    graficos.desenhar_retangulo(133, 300, 12, 50, falso, verdadeiro)

    // Tronco / Roupa (Mini)
    graficos.definir_cor(corRoupa)
    graficos.desenhar_retangulo(110, 235, 40, 70, falso, verdadeiro)

    // Bracos (Mini)
    graficos.definir_cor(corPele)
    graficos.desenhar_retangulo(96, 235, 11, 50, falso, verdadeiro)
    graficos.desenhar_retangulo(153, 235, 11, 50, falso, verdadeiro)

    // Pescoço (Mini)
    graficos.desenhar_retangulo(124, 227, 12, 10, falso, verdadeiro)

    // Cabeca (Mini)
    graficos.definir_cor(corPele)
    graficos.desenhar_elipse(105, 170, 50, 60, verdadeiro)

    // Cabelo (Mini)
    graficos.definir_cor(corCabelo)
    graficos.desenhar_elipse(102, 160, 56, 30, verdadeiro)

    // Olhos (Mini)
    graficos.definir_cor(corOlhos)
    graficos.desenhar_elipse(115, 190, 10, 10, verdadeiro)
    graficos.desenhar_elipse(135, 190, 10, 10, verdadeiro)
  }

  funcao vazio desenhar_inicio(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(30, 60, 100))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(270, 70, "A JORNADA DO HEROI")
    graficos.desenhar_texto(290, 110, "Bem-vindo, " + nome + "!")

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.criar_cor(180, 130, 70))
    graficos.desenhar_retangulo(250, 300, 300, 100, falso, verdadeiro)

    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_texto(300, 340, "Sua aventura comeca agora!")

    graficos.renderizar()
  }

  funcao vazio desenhar_caverna(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(25, 25, 35))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(80, 80, 90))
    graficos.desenhar_elipse(50, 50, 250, 180, verdadeiro)
    graficos.desenhar_elipse(500, 40, 300, 200, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 180, 40))
    graficos.desenhar_elipse(150, 250, 50, 80, verdadeiro)
    graficos.desenhar_elipse(600, 250, 50, 80, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "CAVERNA DAS TOCHAS")
    graficos.desenhar_texto(270, 430, nome + " entrou na caverna.")

    graficos.renderizar()
  }

  funcao vazio desenhar_guardiao(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro sorte)
  {
    graficos.definir_cor(graficos.criar_cor(50, 30, 30))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(130, 130, 140))
    graficos.desenhar_elipse(500, 130, 150, 180, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 160, 120))
    graficos.desenhar_elipse(520, 100, 110, 110, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(30, 30, 30))
    graficos.desenhar_elipse(545, 135, 20, 20, verdadeiro)
    graficos.desenhar_elipse(585, 135, 20, 20, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "O GUARDIAO")
    graficos.desenhar_texto(300, 90, "Dado: " + sorte)

    graficos.renderizar()
  }

  funcao vazio desenhar_vitoria_guardiao(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(30, 100, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 160, 100))
    graficos.desenhar_elipse(520, 150, 100, 100, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 200, 210))
    graficos.desenhar_retangulo(600, 170, 20, 180, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(280, 60, "VITORIA!")
    graficos.desenhar_texto(230, 420, nome + " derrotou o Guardiao!")

    graficos.renderizar()
  }

  funcao vazio desenhar_derrota_guardiao(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(100, 20, 20))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 160, 120))
    graficos.desenhar_elipse(500, 150, 100, 100, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(280, 60, "O GUARDIAO ATACOU!")
    graficos.desenhar_texto(250, 420, "Vida restante: " + vida)

    graficos.renderizar()
  }

  funcao vazio desenhar_conversa(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(40, 70, 100))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 160, 120))
    graficos.desenhar_elipse(520, 120, 110, 110, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "CONVERSA COM O GUARDIAO")
    graficos.desenhar_texto(250, 400, "O Guardiao quer conversar.")

    graficos.renderizar()
  }

  funcao vazio desenhar_recompensa(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(40, 100, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 200, 40))
    graficos.desenhar_elipse(520, 170, 100, 100, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(190, 190, 200))
    graficos.desenhar_retangulo(610, 180, 20, 180, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 60, "RECOMPENSA!")
    graficos.desenhar_texto(220, 420, nome + " recebeu uma recompensa!")

    graficos.renderizar()
  }

  funcao vazio desenhar_saida_caverna(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(80, 130, 70))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(40, 40, 40))
    graficos.desenhar_elipse(500, 120, 200, 280, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(280, 50, "SAIDA DA CAVERNA")
    graficos.desenhar_texto(270, 430, nome + " encontrou a saida!")

    graficos.renderizar()
  }

  funcao vazio desenhar_tunel(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(20, 20, 25))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(60, 60, 70))
    graficos.desenhar_elipse(350, 70, 300, 350, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(330, 50, "TUNEL SOMBRIO")
    graficos.desenhar_texto(280, 430, "Vida: " + vida)

    graficos.renderizar()
  }

  funcao vazio desenhar_bau(inteiro sorte)
  {
    graficos.definir_cor(graficos.criar_cor(40, 30, 20))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(150, 90, 30))
    graficos.desenhar_retangulo(330, 200, 180, 130, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(220, 180, 40))
    graficos.desenhar_retangulo(400, 180, 40, 40, falso, verdadeiro)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(350, 100, "BAU ANTIGO")
    graficos.desenhar_texto(350, 400, "Dado: " + sorte)

    graficos.renderizar()
  }

  funcao vazio desenhar_tesouro(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(90, 70, 20))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(230, 190, 40))
    graficos.desenhar_retangulo(500, 180, 150, 120, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 60, "TESOURO ENCONTRADO!")
    graficos.desenhar_texto(250, 420, nome + " encontrou ouro!")

    graficos.renderizar()
  }

  funcao vazio desenhar_armadilha(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(90, 30, 30))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(100, 100, 110))
    graficos.desenhar_retangulo(450, 300, 180, 30, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 60, "ARMADILHA!")
    graficos.desenhar_texto(270, 420, "Vida restante: " + vida)

    graficos.renderizar()
  }

  funcao vazio desenhar_sala_secreta(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(40, 20, 70))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(100, 70, 120))
    graficos.desenhar_retangulo(250, 100, 300, 300, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "SALA SECRETA")
    graficos.desenhar_texto(260, 430, "Dois cristais brilham diante de voce.")

    graficos.renderizar()
  }

  funcao vazio desenhar_cristal_azul(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(30, 70, 130))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(50, 180, 255))
    graficos.desenhar_elipse(520, 150, 120, 180, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 60, "CRISTAL AZUL")
    graficos.desenhar_texto(260, 420, "Vida: " + vida + " HP")

    graficos.renderizar()
  }

  funcao vazio desenhar_cristal_vermelho(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(130, 30, 30))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 50, 50))
    graficos.desenhar_elipse(520, 150, 120, 180, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(280, 60, "CRISTAL VERMELHO")
    graficos.desenhar_texto(230, 420, "Voce ganhou ouro!")

    graficos.renderizar()
  }

  funcao vazio desenhar_saida(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(70, 130, 80))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(40, 40, 40))
    graficos.desenhar_elipse(500, 100, 220, 300, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 50, "SAIDA!")
    graficos.desenhar_texto(250, 420, nome + " encontrou a saida!")

    graficos.renderizar()
  }

  funcao vazio desenhar_floresta(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(40, 120, 60))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(30, 90, 40))
    graficos.desenhar_retangulo(0, 300, 800, 200, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(90, 50, 20))
    graficos.desenhar_retangulo(200, 100, 60, 300, falso, verdadeiro)
    graficos.desenhar_retangulo(600, 120, 60, 280, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(20, 130, 40))
    graficos.desenhar_elipse(100, 40, 250, 150, verdadeiro)
    graficos.desenhar_elipse(500, 60, 250, 150, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "FLORESTA MISTERIOSA")
    graficos.desenhar_texto(260, 430, nome + " entrou na floresta.")

    graficos.renderizar()
  }

  funcao vazio desenhar_lobo(inteiro sorte)
  {
    graficos.definir_cor(graficos.criar_cor(30, 60, 35))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(100, 100, 110))
    graficos.desenhar_elipse(450, 150, 180, 130, verdadeiro)

    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_elipse(480, 140, 20, 20, verdadeiro)
    graficos.desenhar_elipse(530, 140, 20, 20, verdadeiro)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(50, 50, "UM LOBO APARECEU!")
    graficos.desenhar_texto(50, 90, "Sorte: " + sorte)

    graficos.renderizar()
  }

  funcao vazio desenhar_viajante(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(60, 100, 60))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(80, 50, 30))
    graficos.desenhar_retangulo(500, 230, 100, 180, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(230, 180, 130))
    graficos.desenhar_elipse(500, 150, 100, 100, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(40, 50, "VIAJANTE PERDIDO")
    graficos.desenhar_texto(40, 100, nome + " encontrou um viajante.")

    graficos.renderizar()
  }

  funcao vazio desenhar_lobo_ataque(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(70, 20, 30))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(110, 110, 120))
    graficos.desenhar_elipse(500, 150, 200, 160, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(40, 50, "ATAQUE DO LOBO!")
    graficos.desenhar_texto(40, 100, nome + " perdeu 30 HP.")
    graficos.desenhar_texto(40, 140, "Vida: " + vida)

    graficos.renderizar()
  }

  funcao vazio desenhar_arvore_gigante(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(30, 90, 45))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(90, 50, 20))
    graficos.desenhar_retangulo(300, 130, 180, 320, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(20, 130, 40))
    graficos.desenhar_elipse(170, 30, 300, 180, verdadeiro)
    graficos.desenhar_elipse(450, 30, 300, 180, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(260, 50, "ARVORE ANCESTRAL")
    graficos.desenhar_texto(220, 430, nome + " encontrou uma arvore gigante.")

    graficos.renderizar()
  }

  funcao vazio desenhar_espada_ancestral(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(25, 25, 55))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(210, 210, 220))
    graficos.desenhar_retangulo(500, 100, 35, 250, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 210, 20))
    graficos.desenhar_retangulo(450, 330, 140, 35, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(270, 50, "ESPADA DOS ANCESTRAIS")
    graficos.desenhar_texto(280, 420, nome + " conseguiu a espada!")

    graficos.renderizar()
  }

  funcao vazio desenhar_frutos(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro vida)
  {
    graficos.definir_cor(graficos.criar_cor(40, 110, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(220, 40, 40))
    graficos.desenhar_elipse(500, 180, 100, 100, verdadeiro)
    graficos.desenhar_elipse(620, 180, 100, 100, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(300, 50, "FRUTOS MAGICOS")
    graficos.desenhar_texto(260, 420, "Vida: " + vida + " HP")

    graficos.renderizar()
  }

  funcao vazio desenhar_fogueira(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(20, 30, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 120, 20))
    graficos.desenhar_elipse(450, 250, 100, 120, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(255, 200, 40))
    graficos.desenhar_elipse(470, 270, 60, 80, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 50, "FOGUEIRA")
    graficos.desenhar_texto(250, 430, nome + " descansou na fogueira.")

    graficos.renderizar()
  }

  funcao vazio desenhar_vila(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(70, 120, 180))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(160, 90, 40))
    graficos.desenhar_retangulo(300, 200, 180, 150, falso, verdadeiro)
    graficos.desenhar_retangulo(540, 220, 160, 130, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(350, 50, "VILA")
    graficos.desenhar_texto(270, 430, nome + " chegou ate a vila.")

    graficos.renderizar()
  }

  funcao vazio desenhar_loja(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa, inteiro pocao, inteiro ouro)
  {
    graficos.definir_cor(graficos.criar_cor(90, 60, 40))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(220, 50, 50))
    graficos.desenhar_elipse(500, 200, 80, 110, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 50, "LOJA DE POCOES")
    graficos.desenhar_texto(250, 400, "Pocoes: " + pocao)
    graficos.desenhar_texto(250, 430, "Ouro: " + ouro)

    graficos.renderizar()
  }

  funcao vazio desenhar_ferreiro(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(60, 50, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(120, 120, 130))
    graficos.desenhar_retangulo(500, 240, 140, 80, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(330, 50, "FERREIRO")
    graficos.desenhar_texto(240, 420, "A espada do heroi foi melhorada!")

    graficos.renderizar()
  }

  funcao vazio desenhar_missao(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(40, 80, 50))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(240, 220, 140))
    graficos.desenhar_retangulo(480, 150, 160, 200, falso, verdadeiro)

    desenhar_personagem_mini(cabelo, olhos, pele, roupa)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(310, 50, "QUADRO DE MISSOES")
    graficos.desenhar_texto(250, 420, nome + " completou a missao!")

    graficos.renderizar()
  }

  funcao vazio desenhar_morte(cadeia nome, cadeia cabelo, cadeia olhos, cadeia pele, cadeia roupa)
  {
    graficos.definir_cor(graficos.criar_cor(0, 0, 0))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.criar_cor(200, 30, 30))
    graficos.desenhar_texto(330, 200, "GAME OVER")

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(280, 260, nome + " foi derrotado...")

    graficos.renderizar()
  }

  funcao vazio desenhar_fim()
  {
    graficos.definir_cor(graficos.criar_cor(20, 20, 20))
    graficos.desenhar_retangulo(0, 0, 800, 500, falso, verdadeiro)

    graficos.definir_cor(graficos.COR_BRANCO)
    graficos.desenhar_texto(320, 230, "OPCAO INVALIDA!")

    graficos.renderizar()
  }
}