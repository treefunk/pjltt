<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use URL;
use App\LoginReport;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->redirectTo = URL::previous();
        $this->middleware('guest')->except('logout');
    }


    protected function authenticated($request, $user)
    {
        if($user->position === 1) {
            return redirect()->intended('/admin');
        }
        LoginReport::Create([
            'user_id' => auth()->user()->id,
            'action' => 'Signed In',
        ]);

        return redirect()->intended('/');
    }



}
