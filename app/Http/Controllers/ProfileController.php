<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Employee;

class ProfileController extends Controller
{

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(int $id =null)
    {
        if ($id) {
            dd($id = Auth::user());
        }
        // dd(Auth::user());

        return User::select([
            'users.name',
            'users.email',
            'employees.number',
            'employees.photo_path',
            'employees.salary',
            'employees.roll',
            'employees.document_path',
            'employees.address',
            'employees.cv_path',
            'employees.department_id',
        ])->where('users.id',$id)->leftJoin('employees','employees.user_id','=','users.id')->first();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,int $id = null)
    {
        if ($id == null) {
            $id = Auth::user()->id;
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'number' => 'required|regex:/(01)[0-9]{9}/unique:users',
            'salary' => 'required|numeric',
            'address' => 'required|string',
            'department_id' => 'required|numeric',
            'password' => 'required|string|min:6',
        ]);

        $user = User::findOrFail($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        $emp = Employee::findOrFail($user->id);
        $emp->name = $request->name;
        $emp->email = $request->email;
        $emp->number = $request->number;
        $emp->salary = $request->salary;
        $emp->roll = $request->roll;
        if ($request->file('cv')) {
            $emp->cv_path = $request->file('cv')->store('user_cv');
        }
        if ($request->file('photo')) {
            $emp->photo_path = $request->file('photo')->store('user_photo');
        }
        $emp->department_id = $request->department_id;

        if (!user->save() || !$emp->save()) {
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
    public function destroy(int $id = null)
    {
        if ($id == null) {
            $id = Auth::user()->id;
        }

        if(
            (!Employee::find($id)->delete()) ||
            (!User::find($id)->delete())
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
