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
use Illuminate\Support\Facades\Session;
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


    function send_otp(Request $request){

        $mobileNumber = $request->input('mobile');


        // Generate a random OTP
        $otp = mt_rand(10000, 99999);

        // Store OTP in the session
        Session::put('otp', $otp);

        // Get the user's mobile number from the AJAX request
        $mobileNumber = isset($_GET['mobile']) ? trim($_GET['mobile']) : '';

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://localsmsindia.com/api/sms_api.php?username=globepaints&api_password=cc5gmpqs999&message='.$otp.'%20is%20the%20OTP%20to%20login%20to%20your%20Colour%20Dekho%20account.%20Please%20Enter%20the%20OTP%20to%20verify%20your%20mobile%20number.%20%40Globe%20Paints&destination='.$mobileNumber.'&type=2&sender=GLBPNT&template_id=1407168827967980762',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        // Check if the API call was successful


        // Replace with your OTP sending logic using a service like SMS gateway
        // For demonstration purposes, we'll just return the OTP
        return response()->json(['success' => true, 'otp' => $otp]);

    }

    function verify_otp(Request $request){
        if(Session::has('otp') == $request->enteredOTP){
            return response()->json(['success' => true]);
        }else{
            return response()->json(['success' => false]);
        }
    }

    public function check_login(Request $request)
    {
//        print_r($request->all());die;
        $getUser = User::where('mobile_number',$request->phone_number)->first();
        if(!empty($getUser)){
            Auth::loginUsingId($getUser->id);
        }

        if ( Auth::check() ) {
//            echo "yes"; die;
            if(Auth::user()->role == 2){
                return redirect(url('/'));
            }else{
                return redirect(url('/'));
            }

        }else{
//            echo "np";
//die;
            return redirect(url('login'));
        }

    }

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
