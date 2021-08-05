//
//  ViewController.swift
//  TableView
//
//  Created by IwasakIYuta on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   var administrativeDivisions = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    //sectionは指定しないでセルの数を都道府県分表示した
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return administrativeDivisions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = administrativeDivisions[indexPath.item]
        
        return cell
    }
}
