<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">


    <title></title>
    
    
      
  </head>

  <body>


    <p><h2><a href="{{URL::to('articles/'.$article->id)}}">{{$article->title}}</a> </h2></p>
    <p>{{$article->author}}|{{$article->tags}}|{{$article->created_at}}</p>
    <p>{{$article->body}}</p>
    <hr>

    
    
  </body>
</html>
