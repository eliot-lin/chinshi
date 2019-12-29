<?php

namespace App\Services;

use Illuminate\Http\Request;
use App\Repositories\ConstellationRepository;

class ConstellationService
{
    protected $constellationRepository;

    public function __construct(ConstellationRepository $constellationRepository)
    {
        $this->constellationRepository = $constellationRepository;
    }

    public function updateOrCreate(array $attribute, array $values)
    {
        return $this->constellationRepository->updateOrCreate($attribute, $values);
    }
}
