<!doctype html>
<html ng-app>
  <head>
    <title>SpringMVC_AngularJS_Example</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
    <script>
      function Hello($scope, $http) {
        $scope.getUserDetails = function()
        {
           $http.get('http://localhost:8000/SpringMVC_AngularJS_Example/userdetails').
           success(function(data) {
           $scope.user = data;
        });
      }
    }
    </script>
   </head>
   <body>
     <div ng-controller="Hello">
       <h2>SpringMVC_AngularJS_Example!!</h2>
       <button ng-click="getUserDetails()">Get User Details</button>
       <p>Name : {{user.name}}</p>
       <p>Department : {{user.department}}</p>
     </div>
   </body>
</html>