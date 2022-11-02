//
//  RestrauntData.swift
//  tenth_jsontitlerestraunt
//
//  Created by greenthings on 2022/11/02.
//

import Foundation


// Data() ?
//메모리 안의 바이트가 저장될 수 있는 `바이트 버퍼`
//`바이트 버퍼`: 운영체제의 커널이 관리하는 시스템 메모리를 직접 사용할 수 있기 때문에 데이터의 저장, 로드가 가능
//swift는 URLSession으로 dataTask를 만들어, 네트워크 호출을 하면 응답으로 Data형을 받는데, 이는 저장, 로드, 변환이 쉽기 때문에 Data로 받는 것
//자주 사용되는 것은 json데이터를 struct형으로 변경하거나, 반대로 struct형에서 json으로 변경할 때 먼저 `Data`형으로 변경한 다음 원하는 데이터형으로 변경하여 사용

var restrauntData: [Restraunt] = loadJson("data.json")

func loadJson<T: Decodable>(_ filename: String) -> T{
    
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("\(filename) not found")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Could not loa \(filename) : \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Unable to parse \(filename) : \(error)")
    }
}
