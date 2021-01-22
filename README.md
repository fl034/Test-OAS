# Showing error in Swift5 Generator

This project showcases a weird error where callback closure is not called.
- This happens with the default library selected (URLSession). With Alamofire, everything is fine.
- In the 5.0.0 stable version, the error is not happening
- Snapshot Commit: 90ed1290fafe08306283f9acb74650e5b8d19302 from 2020-01-22
- Tested with Xcode 12.3 (12C33) on macOS Catalina 10.15.7 (19H15)
- Try switching the generator from snapshot to stable pod in `Podfile` to see the change.

## Debugging
- The issue seems to be in `URLSessionImplementations.swift` in line 137. `self` seems to be deallocated immediately, because it’s weak. 
- When I remove `[weak self]` it works again. But this isn’t the root of the problem, since the stable version also has `[weak self]` 