defineClass('UIViewController', {
    viewDidLoad: function() {
        self.ORIGviewDidLoad();
        console.log(self);
    }
})
