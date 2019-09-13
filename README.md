# MVVM-Template

My approach in building iOS apps with MVVM-C architecture and RxSwift framework.

<img src="https://miro.medium.com/max/2868/1*lrIeU_YrGry3rDKH1tLnjw.png" width="50%"/>


## Project navigation style:

- **AppDelegate.swift**
- Base/
- Coordinators/
- UI/
  - First/
  - Second/
  - ...
- Networking/
  - Services/
  - Response models/
- Protocols/
- Helpers/
- Resources/
  
---

## Coordination:

<img src="https://i.imgur.com/iB3xokO.png" width="60%"/>

Basic premise is that in most cases app will need:

- Tab bar
- Some kind of introduction before the tab bar (e.g. intro screens, tutorials...)

**MainCoordinator**'s navigation stack should contain these "introductory" VC's.   
After their completion, **MainCoordinator** will switch control over to the **MainTabBarController**.

**MainTabBarController** will start up coordinator for each of it's tabs, which will instantiate their initial VC's.

*Note: Template starts with no intro screens, so **MainCoordinator** immediately switches control to **MainTabBarController** and it's two tabs.*

---

## Networking:

Template includes Authorization data structures and services that corespond to the Node.js template also created by our agency.

---

Created by K7 Tech Agency.
https://k7tech.agency/
