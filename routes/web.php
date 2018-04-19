<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Support\Facades\Mail;
use App\Mail\emailverification;
use App\LoginReport;
Route::get('/', function () {
    return view('welcome');
});


Route::get('/offerpage', 'UserController@offerPage');
Route::get('/logout', function () {
            LoginReport::Create([
            'user_id' => auth()->user()->id,
            'action' => 'Signed Out',
        ]);

    Auth::logout();
    return redirect('/');
})->name('logout');


Auth::routes();
Route::get('/contact', 'UserController@contact');
Route::get('/about', 'UserController@aboutpage');
Route::get('/faq', 'UserController@faqpage');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/booknow/{id}', 'UserController@booknowPage');
Route::get('/bookrequests', 'UserController@bookRequests')->name('book')->middleware('auth');
Route::post('/submitproof', 'UserController@submitProof')->name('submitproof');
Route::get('/downloadReceipt/{receiptId}', 'UserController@downloadReceipt');
Route::post('/contact', 'UserController@submitcontact');
Route::post('/booktour', 'UserController@booktour');


Route::get('/printpdf/{id}', 'UserController@pdf')->middleware('auth');
Route::get('/viewbooking/{id}', 'UserController@viewBooking')->middleware('auth');
// ADMIN PAGE
Route::post('/confirm', 'UserController@confirm')->middleware('auth');
Route::post('/approve', 'UserController@approve')->middleware('auth');
Route::post('/reject', 'UserController@reject')->middleware('auth');

Route::get('/email', 'UserController@email')->middleware('admin');
Route::get('/admin', 'UserController@adminHome')->middleware('admin')->name('booklist');
Route::get('/adminstatus/{id}', 'UserController@adminbookstatus')->middleware('admin');
Route::get('/adminbook', 'UserController@adminHome')->middleware('admin');
Route::get('/inquiries', 'UserController@getInquiries')->middleware('admin');
Route::get('/loginreports', 'UserController@getLoginReports')->middleware('admin');

