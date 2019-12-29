<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            return redirect('/home');
        }

        if (\Request::getRequestUri() == '/login' && $request->filled('email')) {

            $validate = Validator::make($request->all(),['email' => 'unique:users']);
            /* if email had not been registered, redirect to Route::register */
            if (!$validate->fails()) {
                
                return redirect('register')->with([
                    'errorLog' => 'Your email has not been registered.',
                    'email'    => request('email')
                ]);
            }
        }

        return $next($request);
    }
}
