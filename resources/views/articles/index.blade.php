@extends('layout.main')
@section('content')

    <!-- @foreach($articles as $article)

    <p><h2><a href="{{URL::to('articles/'.$article->id)}}">{{$article->title}}</a> </h2></p>
    <p>{{$article->author}}|{{$article->tags}}|{{$article->created_at}}</p>
    <p>{{$article->body}}</p>
    <hr>
    @endforeach -->

      <section id="main-content">
          <section class="wrapper">
    <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Articles
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> Author</th>
                                 <th><i class="icon_calendar"></i> Title</th>
                                 <th><i class="icon_mail_alt"></i> Tags</th>
                                 <th><i class="icon_cogs"></i> Action</th>
                              </tr>
                              @foreach($articles as $article)
                              <tr>
                                 <td>{{$article->author}}</td>
                                 <td>{{$article->title}}</td>
                                 <td>{{$article->tags}}</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href=" {{ URL::to('articles/'.$article->id) }} " title="View"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="{{ URL::to('articles/'.$article->id.'/edit') }}" title="edit"><i class="icon_check_alt2"></i></a>
                                      <form method="POST" action="{{URL::to('articles/'.$article->id)}}">
                                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="submit" name="delete" value="delete">
                                      </form>
                                     <!--  <a class="btn btn-danger" href="{{ URL::to('articles/delete') }}" title="delete"><i class="icon_close_alt2"></i></a> -->
                                  </div>
                                  </td>
                              </tr> 
                              @endforeach                          
                           </tbody>
                        </table>
                      </section>
                  </div>
              </div>
            </section>
            </section>

@stop

    
