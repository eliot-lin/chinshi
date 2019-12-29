<?php

namespace App\Repositories;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

abstract class Repository
{
    protected $model;

    public function __construct()
    {
        $extendedClassArray = explode('\\', get_class($this));
        $modelUrl = "\App\\" . Str::before(end($extendedClassArray), 'Repository');
        
        $this->model = new $modelUrl;
    }

    public function newInstance($attributes = [])
    {
        return $this->model->newInstance($attributes);
    }

    /**
     * Create record.
     *
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function create($attributes)
    {
        return $this->model->create($attributes);
    }

    /**
     * Update the model in the database.
     *
     * @param  array  $attributes
     * @param  mixed  $id
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function update($attributes, $id)
    {
        $model = $this->model->find($id);
        $model->update($attributes);
        return $model;
    }

    /**
     * Delete the model from the database.
     *
     * @param  mixed  $id
     * @return bool|null
     *
     */
    public function delete($id)
    {
        return $this->model->find($id)->delete();
    }

    /**
     * If record exist update this record else create it.
     *
     * @param array $attributes This is the attributes using which you want to check in database if the record is present
     * @param array $values This is the new attribute values that you want to create or update
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function updateOrCreate(array $attributes, array $values = [])
    {
        // $instance = $this->model->firstOrNew($attributes);

        // $instance->fill($values);

        // $instance->save();

        // return $instance;

        return $this->model->updateOrCreate($attributes, $values);
    }
}
