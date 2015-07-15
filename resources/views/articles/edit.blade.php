<!-- <!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">


    <title>Sign Up/Login Box</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>


    <div id="userbox">
        <form name="article" action="{{ URL::to('articles/update')}}" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <input type="hidden" name="_method" value="PUT">
            <label for="author">Author:</label>
            <p><input type="text" name="author" id="author" value="{{$article->author}}"></p>
            @if($errors->has('author'))<p>{{$errors->first('author')}}</p> @endif

            <label for="title">title:</label>
            <p><input type="text" name="title" id="title" value="{{$article->title}}"></p>
             @if($errors->has('title'))<p>{{$errors->first('title')}}</p> @endif

            <label for="tags">tags:</label>
            <p><input type="text" name="tags" id="tags" value="{{$article->tags}}"></p>
             @if($errors->has('tags'))<p>{{$errors->first('tags')}}</p> @endif

            <label for="article">Article:</label>
            <p><textarea name="article" id="article">{{$article->body}}</textarea></p>
             @if($errors->has('article'))<p>{{$errors->first('article')}}</p> @endif

            <input type="submit" name="submit" value="submit">
        </form>
    </div>
</div>


    
    
    
  </body>
</html>
 -->

 @extends('layout.main')
 @section('content')
<section id="main-content">
  <section class="wrapper">   
 <div class="row">
     <div class="col-lg-12">
         <section class="panel">
             <header class="panel-heading">
                 Basic Forms
             </header>
             <div class="panel-body">
                 <form role="form" method="POST" action = " {{url::to('article/update')}} " >
                  <input type="hidden" name="_token" value="{{ csrf_token() }}">
                  <input type="hidden" name="_method" value="PUT">
                     <div class="form-group">
                         <label for="title">Title</label>
                         <input type="email" class="form-control" id="title" placeholder="Enter title" value="{{$article->title}}">
                     </div>
                     <div class="form-group">
                         <label for="author">Author</label>
                         <input type="text" class="form-control" id="author" placeholder="author" value=" {{ $article->author }} ">
                     </div>
                     <div class="form-group">
                         <div class="col-sm-12">
                           <label for="article">Article</label>
                            <textarea class="form-control ckeditor" name="editor1" rows="6" id="article"> {{ $article->body }}  </textarea>
                         </div>
                     </div>

                     <div class="panel-body">
                         <input name="tagsinput" id="tagsinput" class="tagsinput" value="" />
                     </div>

                     <button type="submit" class="btn btn-primary">Submit</button>
                 </form>

             </div>
         </section>
     </div>
  </div>
</section>
</section>

 @stop