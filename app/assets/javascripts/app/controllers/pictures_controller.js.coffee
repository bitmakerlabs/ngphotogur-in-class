@photogur.controller("PicturesController", ($scope, Picture) ->

  
  $scope.pictures = Picture.query(
    (data) ->
      console.log("Success!!")
    ,
    (data) ->
      alert("Could not retrieve Picture data.")
  )

  $scope.savePicture = ->
    console.log "The picture is ", $scope.newPicture

)