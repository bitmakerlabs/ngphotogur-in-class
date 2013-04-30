@photogur.controller("PicturesController", ($scope, Picture) ->
  # $scope.name = "homer"

  # console.log "Pictures controller is live!"
  # console.log $scope
  # window.testdebug = $scope
  # $scope.$watch('name', ->
  #   console.log "Name changed to #{$scope.name}"
  # )
  
  # $scope.isHomer = ->
  #   return $scope.name.toLowerCase() == 'homer'

  $scope.pictures = Picture.query()

)