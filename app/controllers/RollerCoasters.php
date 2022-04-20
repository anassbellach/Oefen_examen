<?php

class RollerCoasters extends Controller {

    public function index()
    {
        //echo('Hoi');exit();
        $this->rollercoasterModel = $this->model('RollerCoaster');

        $rows = "";
        foreach ($this->rollercoasterModel->getRollerCoasters() as $rollercoaster) {
            $rollercoaster = (object)$rollercoaster;

            $rows .= "
            <tr>
                <th>{$rollercoaster->id}</th>
                <th>{$rollercoaster->nameRollerCoaster}</th>
                <th>{$rollercoaster->nameAmusementPark}</th>
                <th>{$rollercoaster->country}</th>
                <th>{$rollercoaster->topspeed}</th>
                <th>{$rollercoaster->height}</th>
            </tr>
            ";
        }

        $this->view('rollercoasters', [
            'title' => 'rollercoasters page',
            'rollercoasterRows' => $rows
        ]);
    }
}

