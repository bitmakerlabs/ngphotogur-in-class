@photogur.controller("PicturesController", ($scope) ->
  # $scope.name = "homer"


  # console.log "Pictures controller is live!"
  # console.log $scope
  # window.testdebug = $scope
  # $scope.$watch('name', ->
  #   console.log "Name changed to #{$scope.name}"
  # )
  
  # $scope.isHomer = ->
  #   return $scope.name.toLowerCase() == 'homer'

  $scope.pictures = [
    {
      title : "The old church on the coast of White sea",
      artist: "Sergey Ershov",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
    },
    {
      title : "Sea Power",
      artist: "Stephen Scullion",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
    },
    {
      title : "Into the Poppies",
      artist: "John Wilhelm",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
    }
  ]    
)