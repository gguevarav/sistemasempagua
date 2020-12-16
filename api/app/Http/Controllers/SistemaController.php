<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Http\Request;

use App\Models\Sistema;

class SistemaController extends BaseController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index()
    {
     
        $sistemas = Sistema::all();

        $json = array(
            'status' => 200,
            'total' => count($sistemas),
            'detalle' => $sistemas
        );

        return response()->json($json);
    }
}
