<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <script>
            var app = angular.module('authorApp', []);
            app.controller('authorController', function($scope, $http) {
                $http.get("http://193.191.187.14:10688/IP-Rest/author")
                .then(function (response) {$scope.authors = response.data;});
            });
	</script>   
        <title>Get all the data</title>
    </head>
    <body onload="loadBooks(); loadAuthors()">
        <h1>Hello</h1>
        <p>this is actually just a very short and easy page to see if my json works. Below you can see if it does. (You know, when there's actual stuff to see)</p>
        <div ng-app="authorApp">
            <div ng-controller="authorController">
                <ul ng-repeat="author in authors">
                    <li>{{author.name}} ; {{author.lastName}}</li>
                </ul>
            </div>
        </div>        
    </body>
</html>