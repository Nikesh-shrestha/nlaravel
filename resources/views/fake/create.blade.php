<!-- app/views/fake/create.blade.php -->

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
        <a class="navbar-brand" href="{{ URL::to('fake') }}">Fake data</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href="{{ URL::to('fake') }}">View All Fake data</a></li>
        <li><a href="{{ URL::to('fake/create') }}">Create a Fake data</a>
    </ul>
</nav>

<h1>Create a Nerd</h1>

    <form method="POST" action="{{URL::to('fake')}}">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" id="name" value="{{Input::old('name')}}">
            @if($errors->has('name')) <p class="help-block">{{$errors->first('name')}}</p>@endif
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="email" id="email"  value="{{Input::old('email')}}">
            @if($errors->has('email')) <p class="help-block">{{$errors->first('email')}}</p>@endif
        </div>

        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" name="address" id="address" value="{{Input::old('address')}}">
            @if($errors->has('address')) <p class="help-block">{{$errors->first('address')}}</p>@endif
        </div>

        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" class="form-control" name="phone" id="phone" value="{{Input::old('phone')}}">
            @if($errors->has('phone')) <p class="help-block">{{$errors->first('phone')}}</p>@endif
        </div>

        <div class="form-group">
            <input type="submit" value="submit" name="submit">
        </div>
    </from>

</div>
</body>
</html>