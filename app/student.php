<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use App\guardian;


class student extends Model {

	protected $fillable = ['name','address','age','roll','created_at'];

	public function guardians(){
		return $this->hasMany('App\guardian');
	}

	public function courses(){
		return $this->hasMany('App\course');
	}

}
