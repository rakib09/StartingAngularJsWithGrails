<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>

	</head>
	<body>
	<div ng-app="todoApp" style="padding-left: 30px;">
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
		<asset:javascript src="todos.js"/>
		<h2>Todo</h2>
		<div ng-controller="TodoListController as todoList">
			<span>{{todoList.remaining()}} of {{todoList.todos.length}} remaining</span>
			[ <a href="" ng-click="todoList.archive()">archive</a> ]
			<ul class="unstyled">
				<li ng-repeat="todo in todoList.todos">
					<label class="checkbox">
						<input type="checkbox" ng-model="todo.done">
						<span class="done-{{todo.done}}">{{todo.text}}</span>
					</label>
				</li>
			</ul>
			<form ng-submit="todoList.addTodo()">
				<input type="text" ng-model="todoList.todoText"  size="30"
					   placeholder="add new todo here">
				<input class="btn-primary" type="submit" value="add">
			</form>
		</div>
	</div>
	</body>
</html>
