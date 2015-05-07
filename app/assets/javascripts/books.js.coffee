app = angular.module("app", [])
app.controller('BookController', [
  '$scope', 'Book', ($scope, Book)->
    $scope.method = "With AngularJS"
    Book.getAll()
      .success (data) ->
        $scope.books = data
      .error (data) ->
        console.log "FKR"
])

app.factory('Book', [
  '$http', ($http)->
    class Book
      @getAll: ->
        $http.get('/books/index.json')
])
