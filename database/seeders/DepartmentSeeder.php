<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 100; $i++) { 
            DB::table('departments')->insert([
                'name' => 'Department - '.Str::random(10),
                'description' => 'Dummy Description'.Str::random(10).'',
            ]);
        }
    }
}
