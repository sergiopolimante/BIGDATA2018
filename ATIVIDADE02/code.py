# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

from pyspark import SparkContext
sc =SparkContext()

ListaPalavras = ['gato', 'elefante', 'rato', 'rato', 'gato']
palavrasRDD = sc.parallelize(ListaPalavras, 4)
print(type(palavrasRDD))

# EXERCICIO
def Plural(palavra):
    """Adds an 's' to `palavra`.

    Args:
        palavra (str): A string.

    Returns:
        str: A string with 's' added to it.
    """
    return palavra + 's'

print(Plural('gato'))

help(Plural)

assert Plural('rato')=='ratos', 'resultado incorreto!'
print ('OK')

# EXERCICIO
pluralRDD = palavrasRDD.map(Plural)
print (pluralRDD.collect())

assert pluralRDD.collect()==['gatos','elefantes','ratos','ratos','gatos'], 'valores incorretos!'
print ('OK')

# EXERCICIO
pluralLambdaRDD = palavrasRDD.map(lambda s: s + 's')
print (pluralLambdaRDD.collect())

assert pluralLambdaRDD.collect()==['gatos','elefantes','ratos','ratos','gatos'], 'valores incorretos!'
print ('OK')


# EXERCICIO
pluralTamanho = (pluralRDD
                 .map(len)
                 .collect()
                 )
print (pluralTamanho)

assert pluralTamanho==[5,9,5,5,5], 'valores incorretos'
print ("OK")

# EXERCICIO
palavraPar = palavrasRDD.map(lambda s: (s,1))
print (palavraPar.collect())

assert palavraPar.collect() == [('gato',1),('elefante',1),('rato',1),('rato',1),('gato',1)], 'valores incorretos!'
print ("OK")

### parte 2
# EXERCICIO
palavrasGrupo = palavraPar.groupByKey()
for chave, valor in palavrasGrupo.collect():
    valores = list(valor)
    print('{chave}: {valores}')
    
assert sorted(palavrasGrupo.mapValues(lambda x: list(x)).collect()) == [('elefante', [1]), ('gato',[1, 1]), ('rato',[1, 1])], 'Valores incorretos!'
print ("OK")    

# EXERCICIO
contagemGroup = palavrasGrupo.map(lambda x: (x[0], sum(x[1])))
print (contagemGroup.collect())

# EXERCICIO
from operator import add  # add == +

contagem = palavraPar.reduceByKey(add)
print( contagem.collect())

assert sorted(contagem.collect())==[('elefante',1), ('gato',2), ('rato',2)], 'valores incorretos!'
print ("OK")

# EXERCICIO
contagemFinal = (palavrasRDD
                 .map(lambda w: (w,1))
                 .reduceByKey(add)                 
                 )
print (contagemFinal.collect())

assert sorted(contagemFinal.collect())==[('elefante',1), ('gato',2), ('rato',2)], 'valores incorretos!'
print ("OK")


palavrasUnicas = (contagemFinal
                  .count()
                 )
print (palavrasUnicas)

# EXERCICIO
def contaPalavras(chavesRDD):
    """Creates a pair RDD with word counts from an RDD of words.

    Args:
        chavesRDD (RDD of str): An RDD consisting of words.

    Returns:
        RDD of (str, int): An RDD consisting of (word, count) tuples.
    """
    return (chavesRDD
            .map(lambda w: (w,1))
            .reduceByKey(add)
           )

print (contaPalavras(palavrasRDD).collect())

