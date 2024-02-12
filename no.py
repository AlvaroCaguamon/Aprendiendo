def insert():
    
    my_word=input("ingrese la palabara para jugar: ")
    return my_word

def display_game(word, guessed_letters):
    display=""
    for letter in word:
        if letter in guessed_letters:
            display += letter + " "
        else:
            display += "_ "
    return display  

j1=input("Ingresa tu Nombre \n ")
j2=input("Ingresa tu Nombre: \n")
print(j2 + " Estas listo Para Perder?")
secret_word= insert()
guessed_letters = []
lives = 6

while True:
    print(display_game(secret_word, guessed_letters))
    letter=input("Ingrese una letra :")

    if letter in guessed_letters:
        print("Esa ya la habías puesto Padrino")
        continue
    guessed_letters.append(letter)

    if letter not in secret_word:
        lives -= 1 
        print("Esa no esta padrino te quedan: "+str(lives)+" Vidas")

        if lives==0:
            print(f"Te deje que ibas a perder jaja la palabra era: {secret_word} entonces  {j1}  gana")
            break
    else:
        if all(letter in guessed_letters for letter in secret_word):
            print("Felicidades "+j2+" Ganaste")
            break