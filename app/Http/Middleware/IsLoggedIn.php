<?php namespace App\Http\Middleware;

use Closure;
use Session;
use Redirect;

class IsLoggedIn {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
		// return $next($request);
		if(auth::check()){
			return $next($request);
		}
		else{
			return Redirect::to('login');
		}
	}
}
