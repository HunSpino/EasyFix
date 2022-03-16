<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class HibajelentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'hiba' => 'required|string|min:10|max:255',
            'user_id' => 'required|numeric',
            'gepek_id' => 'required|numeric',
            'allapot_id' => 'required|numeric'
        ];
    }
}
