<?php

use App\Http\Controllers\Api\ClientController;
use App\Http\Controllers\Api\CongeController;
use App\Http\Controllers\Api\EquipementController;
use App\Http\Controllers\Api\EventController;
use App\Http\Controllers\Api\GradeController;
use App\Http\Controllers\Api\ProjetController;
use App\Http\Controllers\Api\RoleController;
use App\Http\Controllers\Api\SecteurController;
use App\Http\Controllers\Api\ServiceController;
use App\Http\Controllers\Api\SponsorController;
use App\Http\Controllers\Api\TacheController;
use App\Http\Controllers\Api\TimesheetController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\LoginController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Projets
Route::apiResource('projets', ProjetController::class);
Route::get('projets/equipe/{id_projet}', [ProjetController::class, 'equipe']);
Route::get('archiv', [ProjetController::class, 'archiv']);
Route::get('termine', [ProjetController::class, 'termine']);
Route::get('valid', [ProjetController::class, 'valid']);
Route::get('novalid', [ProjetController::class, 'novalid']);
Route::get('all', [ProjetController::class, 'all']);
Route::get('nbreprojets', [ProjetController::class, 'nbreprojets']);
Route::get('projets/actifuser', [ProjetController::class, 'actifuser']);
Route::get('projets/chef/{id_projet}', [ProjetController::class, 'chef']);
Route::get('projets/edit/{id_projet}', [ProjetController::class, 'edit']);
Route::get('projets/tasks/{id_projet}', [ProjetController::class, 'tasks']);
Route::get('projets/cache/{id_projet}', [ProjetController::class, 'cache']);
Route::get('projets/encours/{id_projet}', [ProjetController::class, 'encours']);
Route::get('projets/completes/{id_projet}', [ProjetController::class, 'completes']);
Route::get('projets/progress/{id_projet}', [ProjetController::class, 'progress']);
Route::get('projets/etat/{id_projet}', [ProjetController::class, 'etat']);
Route::patch('projets/archiver/{id_projet}', [ProjetController::class, 'archiver']);
Route::patch('projets/description/{id_projet}', [ProjetController::class, 'description']);
Route::patch('projets/valider/{id_projet}', [ProjetController::class, 'valider']);
Route::patch('projets/refuser/{id_projet}', [ProjetController::class, 'refuser']);
Route::patch('projets/members/{id_projet}', [ProjetController::class, 'members']);
Route::patch('projets/endate/{id_projet}', [ProjetController::class, 'endate']);
Route::patch('projets/editchef/{id_projet}', [ProjetController::class, 'editchef']);
Route::get('projets/getfileproject/{id_projet}', [ProjetController::class, 'getfileproject']);
Route::get('projets/getfilevalidation/{id_projet}', [ProjetController::class, 'getfilevalidation']);
Route::get('personnel', [ProjetController::class, 'personnel']);
Route::post('addfilevalidation', [ProjetController::class, 'addfilevalidation']);
Route::post('addfile', [ProjetController::class, 'addfile']);


//Users
Route::apiResource('users', UserController::class);
Route::get('users/edit/{id}', [UserController::class, 'edit']);
Route::patch('users/actif/{id}', [UserController::class, 'actif']);
Route::patch('users/inactif/{id}', [UserController::class, 'inactif']);
Route::get('nbreusers', [UserController::class, 'nbreusers']);
Route::get('graphusers', [UserController::class, 'graphusers']);
Route::post('updateuser', [UserController::class, 'updateuser']);
Route::post('getTimesheet', [UserController::class, 'getTimesheet']);
Route::get('getCheckbox/{id}', [UserController::class, 'getCheckbox']);
Route::post('getStat', [UserController::class, 'getStat']);


//Services
Route::apiResource('services', ServiceController::class);
Route::get('services/edit/{id_service}', [ServiceController::class, 'edit']);
Route::get('nbrepoles', [ServiceController::class, 'nbrepoles']);

//Sponsors
Route::apiResource('sponsors', SponsorController::class);
Route::get('sponsors/edit/{id_sponsor}', [SponsorController::class, 'edit']);
Route::patch('sponsors/inactif/{id_sponsor}', [SponsorController::class, 'inactif']);

//Clients
Route::apiResource('clients', ClientController::class);

//Secteurs
Route::apiResource('secteurs', SecteurController::class);

// Taches
Route::apiResource('taches', TacheController::class);
Route::get('taches/edit/{id_tache}', [TacheController::class, 'edit']);
Route::get('projets/membres/{id_projet}', [ProjetController::class, 'membres']);
Route::patch('taches/assign/{id_tache}', [TacheController::class, 'assign']);
Route::patch('taches/finish/{id_tache}', [TacheController::class, 'finish']);
Route::patch('taches/return/{id_tache}', [TacheController::class, 'return']);
Route::patch('taches/progress/{id_tache}', [TacheController::class, 'progress']);
Route::patch('taches/mark/{id_tache}', [TacheController::class, 'mark']);
Route::patch('taches/demark/{id_tache}', [TacheController::class, 'demark']);
Route::patch('taches/supprime/{id_tache}', [TacheController::class, 'supprime']);
Route::get('feuille', [TacheController::class, 'feuille']);

//Absences
Route::apiResource('conges', CongeController::class);
Route::patch('conges/supprime/{id_conge}', [CongeController::class, 'supprime']);
Route::get('conges/edit/{id_conge}', [CongeController::class, 'edit']);

// Agenda
Route::apiResource('events', EventController::class);

//Grades
Route::apiResource('grades', GradeController::class);

// Timesheets
Route::apiResource('timesheets', TimesheetController::class);
Route::post('timesheets/maj', [TimesheetController::class, 'maj']);
Route::post('timesheets/soumettre', [TimesheetController::class, 'soumettre']);
Route::post('envoie', [TimesheetController::class, 'envoie']);
Route::get('listdemande', [TimesheetController::class, 'listdemande']);


//Rôles
Route::apiResource('roles', RoleController::class);

//Equipements
Route::apiResource('equipements', EquipementController::class);
Route::get('logiciels', [EquipementController::class, 'logiciels']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware('auth:sanctum')->get('/athenticated', function () {
    return true;
});

Route::post('login', [LoginController::class, 'login']);
Route::post('logout', [LoginController::class, 'logout']);

Route::group(['middleware' => ['auth:sanctum']], function () {

    //

});
