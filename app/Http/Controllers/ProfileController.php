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
        if ($id == null) {
            $id = Auth::user()->id;
        }
        
        // echo $id;
        return User::select([
            'users.id',
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
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request,int $id = null)
    {
        
        // echo $id;
        $users =  User::select([
            'users.id',
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
            'departments.name as department_name',
        ])->leftJoin('employees','employees.user_id','=','users.id')->leftJoin('departments','departments.id','=','employees.department_id');

        if ($id != null) {
            $users = $users->where('users.id',$id);
        }
        
        $filter = json_decode($request->input('filter'));

        if (isset($filter->search) && $filter->search != null && $filter->search != '') {
            $users = $users->where('users.name','like','%'.$filter->search.'%');
        }

        if (isset($filter->department_id) && $filter->department_id != null && $filter->department_id != '') {
            $users = $users->where('employees.department_id',$filter->department_id);
        }

        if (isset($filter->fromDate) && $filter->toDate && $filter->fromDate != null && $filter->fromDate != '' && $filter->toDate != null && $filter->toDate != '') {
            $users = $users->whereBetween('users.created_at',[$filter->fromDate,$filter->toDate]);
        }

        if (isset($filter->withTrash) && $filter->withTrash != null && $filter->withTrash != '') {
            $users = $users->withTrash();
        }
        if (isset($filter->orderBy) && $filter->orderBy == 'asc') {
            $users = $users->orderBy('users.id',$filter->orderBy);
        } else {
            $users = $users->orderBy('users.id','desc');
        }
        if ($request->offset && $request->limit) {
            $users = $users->skip($request->offset)->take($request->limit);
        } else {
            $users = $users->skip(0)->take(30);
        }

        return $users->get();
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
        // return $request->all();
        if ($id == null) {
            $id = Auth::user()->id;
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'number' => 'required|numeric',
            'salary' => 'required|numeric',
            'address' => 'required|string',
            'department_id' => 'required|numeric',
            'password' => 'required|string|min:6',
        ]);

        $user = User::findOrFail($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        $emp = Employee::where('user_id',$user->id)->first();
        $emp->name = $request->name;
        $emp->email = $request->email;
        $emp->number = $request->number;
        $emp->salary = $request->salary;
        $emp->roll = $request->roll;
        $emp->address = $request->address;
        if ($request->file('cv')) {
            $emp->cv_path = $request->file('cv')->store('user_cv');
        }

        if ($request->file('photo')) {
            $emp->photo_path = $request->file('photo')->store('user_photo');
        }
        $emp->department_id = $request->department_id;
        if (!$user->save() || !$emp->save()) {
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
            (!Employee::where('user_id',$id)->delete()) ||
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
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
            'number' => 'required|numeric|unique:employees',
            'salary' => 'required|numeric',
            'address' => 'required|string',
            'department_id' => 'required|numeric'
        ]);

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        $user->save();

        $emp = new Employee;
        $emp->user_id = $user->id;
        $emp->name = $request->name;
        $emp->email = $request->email;
        $emp->number = $request->number;
        $emp->salary = $request->salary;
        $emp->roll = $request->roll;
        $emp->address = $request->address;
        if ($request->file('cv')) {
            $emp->cv_path = $request->file('cv')->store('user_cv');
        }

        if ($request->file('photo')) {
            $emp->photo_path = $request->file('photo')->store('user_photo');
        }
        $emp->department_id = $request->department_id;
        if (!$emp->save()) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }

    /**
     * It fetches a user with the given id and joins the department table to the user table.
     * 
     * @param int id The id of the user you want to fetch
     * 
     * @return App/Models/User
     */
    public function fetchUserWithDepartment(int $id)
    {
        return response()->json(User::where('users.id'.$id)->leftJoin('employees','employees.user_id','=','users.id')->leftJoin('departments','departments.id','=','employees.department_id')->select([
            'users.*',
            'departments.name as department_name',
            'departments.description as department_description'
        ])->first());
    }
}
