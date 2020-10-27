<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\URL;

use Illuminate\Support\Str;

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
        // $this->redirectTo = URL::previous();
        $this->middleware('guest')->except('logout');

    }
     public function showLoginForm()
        {
            if(!session()->has('url.intended'))
            {
                session(['url.intended' => url()->previous()]);
            }
            // session(['link' => url()->previous()]);
            
        return view('auth.login');    
        }

     

    
     protected function authenticated(Request $request, $user)
    {
        // app('router')->getRoutes()->match(app(
        //     'request')->create(URL::prev))
        $base=URL::to('/magazine');
         $ses_link=session('url.intended');

        $result = Str::startsWith($ses_link, $base);
        if($result){
           return redirect($ses_link);
        }else{
            if($user->hasRole('guest')){
                return redirect('/announce');
            }else{
                return redirect('/staticalDashboard');
            }
        }
         

        
        //  dd($ses_link);
        //  if($base == $ses_link){
        //     if($user->hasRole('guest')){
        //         return redirect('/announce');
        //     }else{
        //         return redirect('/staticalDashboard');
        //     }
        // }else{
        //     return redirect($ses_link);
            
        // }
    }



}
