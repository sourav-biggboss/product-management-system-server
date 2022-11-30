<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Department;

class DepartmentController extends Controller
{

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request,int $id = null)
    {

        $departments = Department::select('*');
        
        if ($id != null) {
            $departments = $departments->where('id',$id);
        }
        if ($request->offset && $request->limit) {
            $departments = $departments->skip($request->offset)->take($request->limit);
        } else {
            $departments = $departments->skip(0)->take(30);
        }
        return $departments->get();
    }

    
    /**
     * Create the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:255|unique:departments',
            'description' => 'string|max:255',
        ]);

        $department = new Department;
        $department->name = $request->name;
        $department->description = $request->description;
        if (!$department->save()) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,int $id)
    {

        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'string|max:255',
        ]);

        $department = Department::findOrFail($id);
        $department->name = $request->name;
        $department->description = $request->description;
        if (!$department->save()) {
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
    public function destroy(int $id)
    {

        if(
            (!Department::find($id)->delete())
        ){
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }
}
