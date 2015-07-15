<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\fake;
use View;
use Input;
use Redirect;
use HTML;
use Validator,Session;

class FakeController extends Controller {

	//  function __construct()
	// {
	// 	$this->middleware('IsLoggedIn');
	// }

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{

		$fakes = fake::all();
		return View::make('fake.index')->with('fakes',$fakes);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('fake.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$rules=array(
			'name'=>'required',
			'email'=>'required|email',
			'phone'=>'required|numeric',
			'address'=>'required'
			);
		$validator = Validator::make(Input::all(), $rules);
		if($validator->fails()){
			$messages = $validator->messages();
			 return Redirect::to('fake/create')
                ->withErrors($validator)
                ->withInput(Input::all());
		}
		else{
			$fake=array(
				'name'=>input::get('name'),
				'email'=>Input::get('email'),
				'address'=>input::get('address'),
				'phone'=>input::get('phone'),
				'created_by'=>date("y-m-d h:i:s")
				);
			Fake::create($fake);
			Session::flash('message', 'Successfully created fake data');
            return Redirect::to('fake');
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$fake = Fake::find($id);
		return View::make('fake.show')->with('fake',$fake);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$fake = Fake::find($id);
		return View::make('fake.edit')->with('fake',$fake);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$rules=array(
			'name'=>'required',
			'email'=>'required|email',
			'address'=>'required',
			'phone'=>'required|numeric'
			);
		$validator = Validator::make(input::all(),$rules);
		if($validator->fails()){
			$messages = $validator->messages();
			return Redirect::to('fake/'.$id.'/edit')
			->withErrors($validator)

			->with(Input::except('_token'));
		}
		else{
			$fake = Fake::find($id);
			$fake->name = Input::get('name');
			$fake->email = Input::get('email');
			$fake->phone = Input::get('phone');
			$fake->address = Input::get('address');
			$fake->save();
			Session::flash('message','Fake data successfully update');
			return Redirect::to('fake');
		}
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$fake = Fake::find($id);
		$fake->delete();
		Session::flash('message', 'Successfully deleted fake data');
		return Redirect::to('fake');
	}

	public static function test(){
		
	}

}
