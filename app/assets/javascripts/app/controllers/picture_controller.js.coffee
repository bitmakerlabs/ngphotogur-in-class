@photogur.controller("PictureController", ($scope, $routeParams, Picture) ->

    # Picture.get({id: 100})
    # $scope.picture = Picture.get({id: $routeParams.id})
    $scope.picture = Picture.get($routeParams, $.noop, (data) ->
        # There was an error
        $scope.errorMessage = "Could not retrieve the picture."
    )

    $scope.updatePicture = ->
        console.log "Updating the picture"
        Picture.foo($scope.picture)
)