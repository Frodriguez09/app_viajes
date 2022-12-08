<?php

return [
    'admin-user' => [
        'title' => 'Users',

        'actions' => [
            'index' => 'Users',
            'create' => 'New User',
            'edit' => 'Edit :name',
            'edit_profile' => 'Edit Profile',
            'edit_password' => 'Edit Password',
        ],

        'columns' => [
            'id' => 'ID',
            'last_login_at' => 'Last login',
            'activated' => 'Activated',
            'email' => 'Email',
            'first_name' => 'First name',
            'forbidden' => 'Forbidden',
            'language' => 'Language',
            'last_name' => 'Last name',
            'password' => 'Password',
            'password_repeat' => 'Password Confirmation',
                
            //Belongs to many relations
            'roles' => 'Roles',
                
        ],
    ],

    'lugare' => [
        'title' => 'Lugares',

        'actions' => [
            'index' => 'Lugares',
            'create' => 'New Lugare',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'latitud' => 'Latitud',
            'logitud' => 'Logitud',
            'nombre' => 'Nombre',
            
        ],
    ],

    'viaje' => [
        'title' => 'Viajes',

        'actions' => [
            'index' => 'Viajes',
            'create' => 'New Viaje',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'id_lugar' => 'Id lugar',
            'nombre' => 'Nombre',
            'notas' => 'Notas',
            
        ],
    ],

    // Do not delete me :) I'm used for auto-generation
];