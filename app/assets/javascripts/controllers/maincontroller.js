(function(){

  angular
    .module('hs_project')
    .controller('MainController', MainControllerFunc);


  function MainControllerFunc(){

    var self = this;

    self.test = "Testing 1 2 3"; 
  }

})();