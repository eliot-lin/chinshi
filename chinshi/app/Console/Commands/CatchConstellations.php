<?php

namespace App\Console\Commands;

use App\Constellation;
use Carbon\Carbon;
use Illuminate\Console\Command;
use App\Services\ConstellationService;
use Illuminate\Support\Facades\Log;

class CatchConstellations extends Command
{
    /**
     * The index of constellation
     * 
     * @var array
     */
    private $index = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'];

    /**
     * Carbon::today
     *  
     * @var string
     */
    private $today;

    protected $constellationService;

    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'catch:constellations';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(ConstellationService $constellationService)
    {
        parent::__construct();

        $this->today = Carbon::now()->format('Y-m-d');
        $this->constellationService = $constellationService;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $curl_a = curl_init();

        foreach($this->index as $value) {
            $url = 'http://astro.click108.com.tw/daily_' . $value . '.php?iAcDay=' . $this->today . '&iAstro=' . $value;

            curl_setopt($curl_a, CURLOPT_URL, $url); 
            curl_setopt($curl_a, CURLOPT_RETURNTRANSFER, true); 
            $output = curl_exec($curl_a);

            preg_match('/<h3>今日(.*?)解析<\/h3>\\r\\n/', $output, $name);
            preg_match('/<span class="txt_green">(.*?)：<\/span>/', $output, $whole_luck);
            preg_match('/<span class="txt_pink">(.*?)：<\/span>/', $output, $love_luck);
            preg_match('/<span class="txt_blue">(.*?)：<\/span>/', $output, $career_luck);
            preg_match('/<span class="txt_orange">(.*?)：<\/span>/', $output, $wealth_luck);
            preg_match_all("/<\/p><p>(.*?)<\/p>/", $output, $description);

            $this->constellationService->updateOrCreate(
                [
                    'name' => data_get($name, 1, ''), 
                    'date' => $this->today
                ], 
                [
                    'whole_luck' => data_get($whole_luck, 1, ''),
                    'whole_description' => $description[1][0],
                    'love_luck' => data_get($love_luck, 1, ''),
                    'love_description' => $description[1][1],
                    'career_luck' => data_get($career_luck, 1, ''),
                    'career_description' => $description[1][2],
                    'wealth_luck' => data_get($wealth_luck, 1, ''),
                    'wealth_description' => $description[1][3]
                ]
            );
        }
    }
}
