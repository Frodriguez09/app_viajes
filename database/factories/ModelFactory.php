<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(Brackets\AdminAuth\Models\AdminUser::class, function (Faker\Generator $faker) {
    return [
        'activated' => true,
        'created_at' => $faker->dateTime,
        'deleted_at' => null,
        'email' => $faker->email,
        'first_name' => $faker->firstName,
        'forbidden' => $faker->boolean(),
        'language' => 'en',
        'last_login_at' => $faker->dateTime,
        'last_name' => $faker->lastName,
        'password' => bcrypt($faker->password),
        'remember_token' => null,
        'updated_at' => $faker->dateTime,
        
    ];
});/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Lugare::class, static function (Faker\Generator $faker) {
    return [
        'created_at' => $faker->dateTime,
        'latitud' => $faker->randomFloat,
        'logitud' => $faker->randomFloat,
        'nombre' => $faker->sentence,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Viaje::class, static function (Faker\Generator $faker) {
    return [
        'created_at' => $faker->dateTime,
        'id_lugar' => $faker->sentence,
        'nombre' => $faker->sentence,
        'notas' => $faker->sentence,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
