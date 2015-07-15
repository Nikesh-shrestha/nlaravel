<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Session;
use Illuminate\Http\Request;

class DashboardController extends Controller {

	public function __construct()
	{
		$this->middleware('auth');
	}

	public function index(){
		return View('dashboard');
	}

}
