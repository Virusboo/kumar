//
//  MapView.swift
//  kumar
//
//  Created by zhaobo1 on 2021/11/12.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    // UIViewRepresentable协议要求实现以下两个方法
    // 创建MKMapView
    func makeUIView(context: Context) ->  MKMapView {
        return MKMapView(frame: .zero)
    }
    // 配置视图响应状态变化
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
