<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Faker\Factory as Faker;
use App\fake;
use App\student;
use App\guardian;
use App\course;
class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		 $this->call('CourseTableSeeder');
		  // $this->call('GuardianTableSeeder');
	}
}

	class ArticlesTableSeeder extends seeder{
		public function run(){
			$data=array(
				array(
					'title'=>'first title for the first article',
					'author'=>'nikesh shrestha',
					'tags'=>'tag1,tag2,tag3',
					'body'=>'body body body',
					'created_at'=>date("y-m-d h:i:s")
				),
				array(
					'title'=>'second title for the second article',
					'author'=>'rikesh shrestha',
					'tags'=>'tag4,tag2,tag3',
					'body'=>'body body body',
					'created_at'=>date("y-m-d h:i:s")
				),
				array(
					'title'=>'third title for the third article',
					'author'=>'reenu shrestha',
					'tags'=>'tag5,tag6,tag3',
					'body'=>'body body body',
					'created_at'=>date("y-m-d h:i:s")
				),
				);
			DB::table('articles')->insert($data);
		}
	}

	class FakeTableSeeder extends seeder{
		public function run(){
			$faker = Faker::create();
        	foreach(range(1, 50) as $index){
        		Fake::create(array(
        			'name' => $faker->userName(),
	                'address' => $faker->address(),
	                'phone'=>$faker->phoneNumber(),
	                'email'=>$faker->email(),
	                'created_at'=>$faker->dateTimeBetween('now', '+14 days')
        			));
        		// $fake=array(
        		// 	'name' => $faker->userName(),
	         //        'address' => $faker->address(),
	         //        'phone'=>$faker->phoneNumber(),
	         //        'email'=>$faker->email(),
	         //        'created_at'=>$faker->dateTimeBetween('now', '+14 days')
        		// 	);
        		// DB::table('fake')->insert($fake);
        	}
		}
	}

	class StudentTableSeeder extends seeder{
		public function run(){
			$faker = faker::create();
			foreach(range(1,10) as $index){
				student::create(array(
					'name'=> $faker->Name(),
					'address'=> $faker->address(),
					'roll'=> $faker->numberBetween($min = 1, $max = 200),
					'age'=> $faker->numberBetween($min = 10, $max = 20),
					'created_at'=>$faker->dateTimeBetween('now', '+14 days')
					));
			}
		}
	}

	Class GuardianTableSeeder extends seeder{
		public function run(){
			$faker = faker::create();
			$students = student::all()->lists('id');
			foreach(range(1,30) as $index){
				guardian::create(array(
					'student_id'=> $faker->randomElement($students),
					'guardian_name'=>$faker->Name(),
					'created_at'=>$faker->dateTimeBetween('now', '+14 days')
					));
			}

		}
	}


	Class CourseTableSeeder extends seeder{
		public function run(){
			$faker = faker::create();
					$students = student::all()->lists('id');
					$course = ['physics','math','english','data structure','A.I'];
					foreach(range(1,30) as $index){
						course::create(array(
							'student_id'=> $faker->randomElement($students),
							'course_name'=>$faker->randomElement($course),
							'created_at'=>$faker->dateTimeBetween('now', '+14 days')
							));
					}
		}
	}

