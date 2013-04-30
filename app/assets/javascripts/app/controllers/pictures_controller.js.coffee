@photogur.controller("PicturesController", ($scope, Picture) ->

  $scope.pictures = Picture.query(
    (data) ->
      console.log("Success!!")
    ,
    (data) ->
      alert("Could not retrieve Picture data.")
  )

  $scope.savePicture = ->
    Picture.save($scope.newPicture, 
      (data) ->
        console.log("This works")
      ,(response) ->
        $scope.errors = response.data.errors
    )

)