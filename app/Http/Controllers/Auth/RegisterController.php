<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;

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
    protected $redirectTo = RouteServiceProvider::HOME;

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
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    function send_otp(Request $request){

        $mobileNumber = $request->input('mobile');

        // Generate a random OTP
        $otp = mt_rand(10000, 99999);

        // Store OTP in the session
        Session::put('otp', $otp);

        // Get the user's mobile number from the AJAX request
        $mobileNumber = isset($_GET['mobile']) ? trim($_GET['mobile']) : '';

//        $curl = curl_init();
//
//        curl_setopt_array($curl, array(
//            CURLOPT_URL => 'http://localsmsindia.com/api/sms_api.php?username=globepaints&api_password=cc5gmpqs999&message='.$otp.'%20is%20the%20OTP%20to%20login%20to%20your%20Colour%20Dekho%20account.%20Please%20Enter%20the%20OTP%20to%20verify%20your%20mobile%20number.%20%40Globe%20Paints&destination='.$mobileNumber.'&type=2&sender=GLBPNT&template_id=1407168827967980762',
//            CURLOPT_RETURNTRANSFER => true,
//            CURLOPT_ENCODING => '',
//            CURLOPT_MAXREDIRS => 10,
//            CURLOPT_TIMEOUT => 0,
//            CURLOPT_FOLLOWLOCATION => true,
//            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//            CURLOPT_CUSTOMREQUEST => 'GET',
//        ));
//
//        $response = curl_exec($curl);
//
//        curl_close($curl);

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

    public function register(Request $request)
    {

        $checkUser = User::where('email',$request->register_email)
            ->orWhere('mobile_number',$request->phone_number)
            ->count();
//        print_r($checkUser);die;
        if($checkUser <= 0){

            $user = new User();
            $user->name = $request->input('register_name');
            $user->email = $request->input('register_email');
            $user->mobile_number = $request->input('phone_number');
            $user->role = '2';

            $user->save();

            Auth::loginUsingId($user->id);
            return redirect()->intended('/'); // Redirect to the desired page after successful login

        }else{
            Session::flash('user_exists','User Already Exists. Please Login.');
            return redirect($_SERVER['HTTP_REFERER']);
        }
        die;


    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
//    protected function create(array $data)
//    {
//        return User::create([
//            'name' => $data['name'],
//            'email' => $data['email'],
//            'password' => Hash::make($data['password']),
//        ]);
//    }
}
