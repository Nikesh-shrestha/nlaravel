@extends('app')

@section('content')

<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Student data
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> Full Name</th>
                                 <th><i class="icon_calendar"></i> Address</th>
                                 <th><i class="icon_mail_alt"></i> Age</th>
                                 <th><i class="icon_pin_alt"></i> Roll</th>
                                 <th><i class="icon_mobile"></i> Courses</th>
                                 <th><i class="icon_mobile"></i> Guardians</th>
                                 <th><i class="icon_cogs"></i> Action</th>
                              </tr>
                              @foreach($student as $s)
                              <tr>
                                 <td>{{ $s->name }}</td>
                                 <td>{{ $s->address }}</td>
                                 <td>{{ $s->age }}</td>
                                 <td>{{ $s->roll }}</td>
                                 <td>
                                 	@foreach($s->courses as $course)
										                {{ $course->course_name }}</br>
									               @endforeach
                                 </td>
                                 <td>
                                 	@foreach($s->guardians as $guardian)
                                 		{{ $guardian->guardian_name }}</br>
                                 	@endforeach
                                 </td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>  
                              @endforeach            
                           </tbody>
                        </table>
                      </section>
                  </div>
              </div>

              <?php echo $student->render(); ?>

@endsection
