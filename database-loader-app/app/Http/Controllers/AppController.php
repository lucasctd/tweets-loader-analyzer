<?php

namespace App\Http\Controllers;

use App\Models\Place;
use Illuminate\Http\Request;
use App\Jobs\LoadDataJob;
use App\Events\LoadDataStatusEvent;
use Illuminate\Support\Facades\Log;
use GuzzleHttp\Client;

class AppController extends Controller
{

    /**
     * @Get("/")
     */
    public function index(){
        return view('loader');
    }

    /**
     * @Post("/load-data")
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function loadData(Request $request){
        if($request->has('hashtag') && $request->has('amount')){
            LoadDataJob::dispatch($request->hashtag, $request->amount);
            return response()->json(['message' => 'Your request is being processed.'], 200);
        }else{
            return response()->json(['error' => 'At least one parameter is missing, please, provide both of them (hashtag and amount'], 401);
        }
	}
}
