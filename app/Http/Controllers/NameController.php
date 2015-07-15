<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Http\Requests\NameRequest;
use App\name;
use Input;
use Redirect;

class NameController extends Controller {

	public function index(){
		return View('form');
	}

	public function post(NameRequest $request){
		$name = new Name;
		$name->name = input::get('name');
		$name->email = input::get('email');
		$name->image = input::file('image')->getClientOriginalName();
		$name->created_at = date("y-m-d h:i:s");
		$name->save();
		return Redirect::to('name');

		if (Input::hasFile('image'))
		{
		    $file = Input::file('image');
		    $file->move(storage_path() . '/uploads', $file->getClientOriginalName());
		}
		else{
			return Redirect::to('name');
		}

	}

}
