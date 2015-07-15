<!DOCTYPE html>
<html>
<head>
    <title>Look! I'm CRUDding</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
    <div class="navbar-header">
        <a class="navbar-brand" href="{{ URL::to('fake') }}">Nerd Alert</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href="{{ URL::to('fake') }}">View All Nerds</a></li>
        <li><a href="{{ URL::to('fake/create') }}">Create a Nerd</a>
    </ul>
</nav>

<h1>Showing {{ $fake->name }}</h1>

    <div class="jumbotron text-center">
        <h2>{{ $fake->name }}</h2>
        <p>
            <strong>Email:</strong> {{ $fake->email }}<br>
            <strong>Level:</strong> {{ $fake->phone }}
        </p>
    </div>

</div>
</body>
</html>



