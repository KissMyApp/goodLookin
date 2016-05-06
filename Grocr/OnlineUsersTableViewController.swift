

import UIKit

class OnlineUsersTableViewController: UITableViewController {

  // MARK: Constants
  let UserCell = "UserCell"
  
  // MARK: Properties
  var currentUsers: [String] = [String]()
  
  // MARK: UIViewController Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    currentUsers.append("hungry@person.food")
  }

  // MARK: UITableView Delegate methods
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return currentUsers.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(UserCell)! as UITableViewCell
    let onlineUserEmail = currentUsers[indexPath.row]
    cell.textLabel?.text = onlineUserEmail
    return cell
  }

  
}
