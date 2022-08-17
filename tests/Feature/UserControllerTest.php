<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UserControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_itListsUsers()
    {
        $response = $this->get('/api/users');

        $response->assertOk();
        $this->assertCount(15,$response->json('data'));
        $this->assertNotNull($response->json('data')[0]['password']);
    }

    /**
     * @test
     */

    public function test_itCreateUser()
    {
        $response = $this->post('/api/users', [
            "name" => 'Gims',
            "prenom" => 'Soprano',
        ]);

        $users = User::all();
        $user = user::first();

        $response->assertOk();
//        $this->assertEquals(1, $users->count());
//        $this->assertEquals('Gims', $user->name);
    }
}
