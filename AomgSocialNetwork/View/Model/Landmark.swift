//
//  Landmark.swift
//  LandMarkProject
//
//  Created by David Goggins on 2023/05/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    // 데이터에서 이미지 이름을 읽는 속성과 자산 카탈로그에서 이미지를 로드하는 계산된 속성을 추가합니다 .imageNameimage
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    // JSON 데이터 구조의 스토리지를 반영하는 coordinates중첩 유형을 사용하여 구조에 속성을 추가합니다 .Coordinates
    // 이 속성은 다음 단계에서 공용 계산 속성을 만드는 데만 사용하므로 전용으로 표시합니다.
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

