<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tokobuku;

class TokobukuController extends Controller
{
    public function index()
    {
        return response()->json(Tokobuku::all());
    }

    public function show($id)
    {
        $tokobuku = Tokobuku::find($id);
        if (!$tokobuku) return response()->json(['message' => 'Data tidak ditemukan'], 404);
        return response()->json($tokobuku);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_tokobuku' => 'required',
            'alamat' => 'required',
            'no_telepon' => 'required',
            'jenis' => 'required',
            'latitude' => 'required',
            'longitude' => 'required'
            
        ]);

        $tokobuku = Tokobuku::create($request->all());
        return response()->json($tokobuku, 201);
    }

    public function update(Request $request, $id)
    {
        $tokobuku = Tokobuku::find($id);
        if (!$tokobuku) return response()->json(['message' => 'Data tidak ditemukan'], 404);

        $tokobuku->update($request->all());
        return response()->json($tokobuku);
    }

    public function destroy($id)
    {
        $tokobuku = Tokobuku::find($id);
        if (!$tokobuku) return response()->json(['message' => 'Data tidak ditemukan'], 404);

        $tokobuku->delete();
        return response()->json(['message' => 'Data berhasil dihapus']);
    }
}
