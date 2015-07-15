<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\student;
use App\guardian;
use Input;
class StudentController extends Controller {

	public function index(){
		$data = student::with('courses','guardians')->paginate(3);
		$data->setPath('student');
		return View('student')->with('student', $data);;
	}

	public function register(){
		return view('form');
	}


	public function post(){
		if (Input::hasFile('image'))
		{
		    $file = Input::file('image');
		    $file->move(storage_path() . '/uploads', $file->getClientOriginalName());
		}
		else{
			echo "no file";
		}
	}
}
