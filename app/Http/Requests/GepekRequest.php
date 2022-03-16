<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GepekRequest extends FormRequest
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
            'epulet' => 'required|string|',
            'emelet' => 'required|numeric|min:0|max:3',
            'terem' => 'required|numeric|min:1|max:23',
            'gep' => 'required|numeric|min:1|max:50'
        ];
    }
}
