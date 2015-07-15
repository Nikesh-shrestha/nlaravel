<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuardiansTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('guardians', function(Blueprint $table)
		{
			$table->increments('id');
			$table->foreign('student_id')
					->references('id')->on('students')
      				->onDelete('cascade')
      				->onUpdate('cascade');
			$table->string('guardian_name');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('guardians');
	}

}
