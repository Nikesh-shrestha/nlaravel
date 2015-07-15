<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">


    <title>Sign Up/Login Box</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>



    <div id="userbox">
        <form name="article" action="{{ URL::to('articles') }}" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <label for="author">Author:</label>
            <p><input type="text" name="author" id="author"></p>  
            @if($errors->has('author')) <p class="help-block">{{$errors->first('author')}}</p>@endif
            <label for="title">title:</label>
            <p><input type="text" name="title" id="title"></p>
            @if($errors->has('title')) <p class="help-block">{{$errors->first('title')}}</p>@endif
            <label for="tags">tags:</label>
            <p><input type="text" name="tags" id="tags"></p>
            @if($errors->has('tags')) <p class="help-block">{{$errors->first('tags')}}</p>@endif
            <label for="article">Article:</label>
            <p><textarea name="article" id="article" ></textarea></p>
            @if($errors->has('article')) <p class="help-block">{{$errors->first('article')}}</p>@endif
            <input type="submit" name="submit" value="submit">
        </form>
    </div>
</div>


    
    
    
  </body>
</html>
