<?php

namespace App\Http\Controllers;

use Illuminate\Support\Carbon;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $header;
    protected $body;
    protected $description;
    protected $apiStartTime;
    protected $apiEndTime;

    public function __construct()
    {
        $this->apiStartTime = microtime(true);
    }

    private function setHeader()
    {
        $startTimeExplode = explode('.', $this->apiStartTime);
        $endTimeExplode   = explode('.', $this->apiEndTime);

        $this->header = [
            'url'            => url()->current(),
            'api_start_time' => date('Y-m-d H:i:s', $startTimeExplode[0]) . $startTimeExplode[1],
            'api_end_time'   => date('Y-m-d H:i:s', $endTimeExplode[0]) . $endTimeExplode[1],
            'api_cost_time'  => number_format($this->apiEndTime - $this->apiStartTime, 3),
        ];

        return;
    }

    public function apiOutput()
    {
        $this->apiEndTime = microtime(true);

        $this->setHeader();

        return response()->json([
            'header' => $this->header,
            'body'   => $this->body,
            'description' => $this->description
        ]);
    }

    public function setBody($variable, $param, $description)
    {
        $this->body[$variable] = $param;
        $this->description[$variable] = $description;

        return;
    }
}
