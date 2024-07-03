<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactModel;


class ContactController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**

     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $perPage = $request->has('perPage') ? $request->perPage : 8;
        $data = ContactModel::orderBy('created_at')->paginate($perPage);

        return view('backend.modules.contacts.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**

     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
{
    $message = "";
    $type_alert = 'success';

    $data = ContactModel::find($id);

    if (!$data) {

        $message = "Bản ghi không tồn tại.";
        $type_alert = 'danger';
    } else {
                if ($data->delete()) {
            $message = "Xóa thành công bản ghi";
        } else {
            $message = "Có lỗi hệ thống!";
            $type_alert = 'warning';
        }
    }

    return redirect()->route('contact.index')
        ->with('message', $message)
        ->with('type_alert', $type_alert);
}

}
