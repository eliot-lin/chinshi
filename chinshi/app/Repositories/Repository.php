<?php

namespace App\Repositories;

use Illuminate\Support\Str;

abstract class Repository
{
    protected $model;

    /**
     * Model base path
     *
     * @var string
     */
    protected $modelBasePath = '\App\\';

    /**
     * Class tail
     *
     * @var string
     */
    protected $tail = 'Repository';

    public function __construct()
    {
        $modelClass  = sprintf("$this->modelBasePath%s", Str::before(class_basename(static::class), $this->tail));
        $this->model = app($modelClass);
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
     * Bulk insert record.
     *
     * @param array $attributes
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function insert($attributes) 
    {
        return $this->model->insert($attributes);
    }

    /**
     * Find a model by its primary key.
     *
     * @param mixed $id
     * @return \Illuminate\Database\Eloquent\Model|null
     *
     */
    public function find($id)
    {
        return $this->model->find($id);
    }

    /**
     * Update the model in the database.
     *
     * @param array $attributes
     * @param mixed $id
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function update($attributes, $id)
    {
        $model = $this->model->find($id);
        $model->update($attributes);

        return $model;
    }

    /**
     * Update the model in the database in bulk.
     *
     * @param array $attributes
     * @param array $ids
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function batchUpdate($attributes, $ids)
    {
        return $this->model->where('id', $ids)->update($attributes);
    }

    /**
     * Delete the model from the database.
     *
     * @param mixed $id
     * @return bool|null
     *
     */
    public function delete($id)
    {
        return $this->find($id)->delete();
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
        return $this->model->updateOrCreate($attributes, $values);
    }

    /* 將 Laravel ORM 轉成 SQL 時，代入參數 */
    public function toSqlWithBinding($result)
    {
        return vsprintf(str_replace('?', '%s', $result->toSql()), collect($result->getBindings())->map(function ($binding) {
            return is_numeric($binding) ? $binding : "'{$binding}'";
        })->toArray());
    }
}
