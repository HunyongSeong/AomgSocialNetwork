//
//  ModelData.swift
//  LandMarkProject
//
//  Created by David Goggins on 2023/05/20.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

// load(_:)앱의 기본 번들에서 지정된 이름으로 JSON 데이터를 가져오는 메서드를 만든다.
// Decodable로드 방법은 프로토콜의 한 구성 요소인 프로토콜에 대한 반환 유형의 준수에 의존합니다 Codable.
// 쉽게 말해서 제이슨 데이터를 사용하기 위해서 만든 모델인것 같다.

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
