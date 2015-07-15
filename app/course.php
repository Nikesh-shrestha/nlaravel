<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class course extends Model {

	protected $fillable = ['studet_id','course_name','created_at'];

	public function student(){
		return $this->belongsTo('student');
	}

}
