
import UIKit

final class ContentViewController: UIViewController {
  @IBOutlet private var tableView: UITableView!
  
  private let cellIdentifier = "CardCell"
  private var cards: [Card]?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    NetworkManager().fetchCards { (cards) in
      self.cards = cards
      DispatchQueue.main.async{
        self.tableView.reloadData()
      }
    }
  }
}

extension ContentViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 7
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CardCell else {
      fatalError("Issue dequeuing \(cellIdentifier)")
    }
    cell.configure(with: cards?[indexPath.row] ?? Card(FirstName: "Eric", LastName: "Tweedle"))
    return cell
  }
}

extension ContentViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
