<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Laravel\Socialite\Facades\Socialite;
use Facebook\Facebook;
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

    public function redirectTo() {
        $role = Auth::user()->role;
        switch ($role) {
            case '1':
                return '/admin/dashboard';
                break;
            case '2':
                return '/user-dashboard';
                break;

            default:
                return '/home';
                break;
        }
    }

    function login_page(){
        if(Auth::check()){
            if(Auth::user()->role == '1'){
                return view('web.login_page');
            }
        }else{
            return view('web.login_page');
        }
    }

    public function login(Request $request)
    {
//        print_r($request->all());die;
        $username = $request->username; //the input field has name='username' in form
        $password = $request->password;

        if(filter_var($username, FILTER_VALIDATE_EMAIL)) {
            //user sent their email
//            echo 'e';
            Auth::attempt(['email' => $username, 'password' => $password]);
        } else {
            echo 'n';
            //they sent their username instead
            Auth::attempt(['username' => $username, 'password' => $password]);
        }
        if ( Auth::check() ) {
            return redirect(url('admin/dashboard'));
        }else{
            return redirect(url('login'));
        }

    }

    public function check_login(Request $request)
    {
//        print_r($request->all());die;
        $username = $request->email; //the input field has name='username' in form
        $password = $request->password;

        if(filter_var($username, FILTER_VALIDATE_EMAIL)) {
            //user sent their email
//            echo 'e';
            Auth::attempt(['email' => $username, 'password' => $password]);
        } else {
//            echo 'n';
//            die;
            //they sent their username instead
            Auth::attempt(['email' => $username, 'password' => $password]);
        }
        if ( Auth::check() ) {
//            echo "yes";
            if(Auth::user()->role == 2){
                return redirect(url('/'));
            }else{
                return redirect(url('/'));
            }

        }else{
//            echo "np";

            return redirect(url('login'));
        }

    }

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
