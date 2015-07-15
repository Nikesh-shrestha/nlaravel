<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class fake extends Model {

	protected $table = 'fake';

	protected $fillable = array('name', 'address','phone','email','created_at','updated_at');

}
