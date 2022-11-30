<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CommonApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request,string $model,int $offset = 0)
    {
        $modelData = DB::table($model);

        if ($request->all() && count($request->all()) > 0) {
            $modelData = $modelData->where($request->all());
        }

        return $request->take($offset)->take(30)->get();

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request,string $model)
    {
        $modelData = DB::table($model);

        if (!($request->all() && count($request->all()) > 0)) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        $modelData = $modelData->create($request->all());
        if (!$modelData) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function count(Request $request,string $model)
    {
        $modelData = DB::table($model);

        if ($request->all() && count($request->all()) > 0) {
            $modelData = $modelData->where($request->all());
        }
        $modelData = $modelData->count();
        return response()->json([
            'count' =>  $modelData 
        ]) ;
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,string $model,int $id)
    {
        $modelData = DB::table($model)->where('id',$id);

        if (!($request->all() && count($request->all()) > 0)) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        $modelData = $modelData->update($request->all());
        if (!$modelData) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,string $model,int $id)
    {
        $modelData = DB::table($model)->where('id',$id)->delete();
        if (!$modelData) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }
}
