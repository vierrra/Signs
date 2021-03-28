//
//  SignsDao.swift
//  Signos
//
//  Created by Renato Vieira on 3/20/21.
//

import UIKit

class SignsDao {
    
    func returnAllSigns() -> [Sign] {
        let aries       = Sign(sign: "Áries", meaning: "Significado do seu signo")
        let touro       = Sign(sign: "Touro", meaning: "Significado do seu signo")
        let gemeos      = Sign(sign: "Gemeos", meaning: "Significado do seu signo")
        let cancer      = Sign(sign: "Câncer", meaning: "Significado do seu signo")
        let leao        = Sign(sign: "Leão", meaning: "Significado do seu signo")
        let virgem      = Sign(sign: "Virgem", meaning: "Significado do seu signo")
        let libra       = Sign(sign: "Libra", meaning: "Significado do seu signo")
        let escorpiao   = Sign(sign: "Escorpião", meaning: "Significado do seu signo")
        let sagitario   = Sign(sign: "Sagitário", meaning: "Significado do seu signo")
        let capricornio = Sign(sign: "Capricórnio", meaning: "Alguma coisa")
        let aquario     = Sign(sign: "Aquário", meaning: "Significado do seu signo")
        let peixes      = Sign(sign: "Peixes ", meaning: "Significado do seu signo")
        
        let listSigno: [Sign] = [aries, touro, gemeos, cancer, leao, virgem, libra, escorpiao, sagitario, capricornio, aquario, peixes]
        
        return listSigno
    }
}
