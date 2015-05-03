//
//  Customer.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 3/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import Foundation

struct Customer {
     //el gusto se genera con una función aleatoria de 11 valores dividida entre 10 (para que salga entre 0 y 1). Despues lo que haré será comprobar en qué valor de acidez está su gusto y compararlo con el de la limonada del día.
    //***Como ampliación, se puede ver que el valor absoluto de la diferencia entre los dos gustos no sea mayor a por ejemplo 0.2. Siendo así, podría hacerse que el cliente compre igualmente. Es solo una posibilidad ***
    
    var tasteRange = 1
    var tasteRangeString = "acid"
}