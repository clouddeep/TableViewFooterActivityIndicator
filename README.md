# TableViewFooterActivityIndicator
Spinner at footer view of table view.

You can use **SCTSpinnerFooterView** to easily create a simple footer spinner when loading.

## How to use

Declare a property:

Put the SCTSpinnerFooterView.h and .m in you project.

    @property (strong, nonatomic) SCTSpinnerFooterView *footerView;

You can do following code in viewDidLoad or viewWillDisappear:

    self.footerView = [SCTSpinnerFooterView createFooterSpinner];
    self.tableView.tableFooterView = self.footerView;

Then you can call methods for start/stop animating:

    - (void)startFooterSpinnerAnimating;
    - (void)stopFooterSpinnerAnimating;

You can get the animating state of UIActivityIndicatorView:

    - (BOOL)isAnimating;

## Note
- Customized UIActivityIndicatorView and footer view's frame.
- Simple use! Just call **createFooterSpinner** method to use the simple and plan UI interface.

