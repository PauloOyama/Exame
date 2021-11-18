

# Crie uma função chamada unzip que receba um array de 2 dimensões de inteiros e retorne a versão "desempacotada" do array com todos os inteiros ordenados em ordem crescente.

Exemplo:
Dado [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], a sua função deve retornar [1, 2, 3, 4, 5, 6, 7, 8, 9].



```dart
List<int> descompacta(List<List<int>> listas){
   List<int> result = [];
  
    listas.forEach((listValues) => listValues.forEach((value) => result.add(value)));
  
    return result;
}

List<int> ordena(List<int> lista){
  List<int> result = [];
  
  while(lista.isNotEmpty){
      int menorValor = lista.fold(lista[0], (prev, elem) => elem < prev ? elem : prev);
      lista.remove(menorValor);
      result.add(menorValor);
  }
  return result;
}

List<int> descompactaEOrd(List<List<int>> listas){
  List<int> result  = descompacta(listas);
  return ordena(result);
  }

void main(){
  List<List<int>> listas = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]];

  List<int> resultado = descompactaEOrd(listas);
  print(resultado);
  
}
```

![image](https://user-images.githubusercontent.com/57512581/142489411-6c629519-d7b9-42de-bacd-b37aa763e429.png)
