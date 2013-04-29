@photogur = angular.module('photogur', [])

@photogur.config(($routeProvider, $locationProvider) ->
    # Enable HTML5 history support. For browsers that support HTML5 history this means
    # You can use a url like this
    #    http://localhost:3000/pictures/new
    # Instead of this
    #    http://localhost:3000/#/pictures/new
    # 
    # Here's a detailed explanation of how HTML5 history works: 
    # http://diveintohtml5.info/history.html
    $locationProvider.html5Mode(true)

    $routeProvider
    .when("/",             {template: "pictures/index", controller: "PicturesController"})
    .when("/pictures",     {template: "pictures/index", controller: "PicturesController"})
    .when("/pictures/:id", {template: "pictures/show", controller: "PictureController"})
    .when("/pictures/:id/edit", {template: "pictures/edit", controller: "PictureController"})
    .when("/pictures/new", {template: "pictures/index", controller: "PicturesController"})
    .otherwise({template: "Page not found by Angular."})
    
)