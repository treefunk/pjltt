<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\MailConf;
use Carbon\Carbon;

use Mail;
use App\Mail\NewUserWelcome;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
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
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {

        $datenow = new Carbon;
        $before = $datenow->subYears(19)->format('Y-m-d');

        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'lname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'birth_date' => "required|date|before:{$before}",
            'contact_no' => "required",
            'address' => "required"
        ],[
            'birth_date.before' => "You must be age 19 or above!"
        ]);
    }


    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        //$data['c'] = new Carbon(new Carbon\DateTimeZone('Asia/Hong_kong'));
        //$data['']

        $id = User::create([
            'name' => $data['name'],
            'lname' => $data['lname'],
            'email' => $data['email'],
            'position' => 0, 
            'email_conf' => 0,
            'password' => Hash::make($data['password']),
            'contact_no' => $data['contact_no'],
            'address' => $data['address'],
            'birth_date' => $data['birth_date']
        ]);

        $code = $this->generateRandomString();
        
        $mail = new MailConf;
        $mail->user_id = $id->id;
        $mail->code = $code;
        $mail->save();
        Mail::to($data['email'])->send(new NewUserWelcome($code));
        return $id;
    }

    public function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
        }

}
