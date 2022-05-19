<?php

namespace Database\Seeders;

use App\Models\Mahasiswa;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MahasiswaSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        

        $faker = Faker::create('id_ID');
        for ($i=0; $i < 10 ; $i++) { 
            Mahasiswa::create([
                'name' => $faker->name,
                'address' => $faker->streetAddress,
            ]);    
        }
        
    }
}
