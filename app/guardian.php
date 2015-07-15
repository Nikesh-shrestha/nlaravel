<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class guardian extends Model {

	protected $fillable = ['guardian_name','student_id','created_at'];

	public function student(){
		return $this->belongsTo('App\student');
	}

}
