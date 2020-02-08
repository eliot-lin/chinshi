<?php

namespace App\Http\Controllers;

use App\Post;
use App\Services\PostService;
use Illuminate\Contracts\Logging\Log;
use Illuminate\Http\Request;

class PostController extends Controller
{
    protected $postService;

    public function __construct(PostService $postService)
    {
        parent::__construct();

        $this->postService = $postService;
    }

    public function index()
    {
        return csrf_token();
    }

    public function create()
    {
        return 1;
    }
    
    public function store(Request $request)
    {
        try {
            $data = $this->postService->create($request);

            $this->setBody('data', $data, '建立資料');

            return $this->apiOutput();
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }

    public function show($id)
    {
        dd(4);
    }

    public function edit($id)
    {
        dd(5);
    }

    public function update(Request $request, $id)
    {
        dd($request, $id);
    }

    public function destroy($id)
    {
        dd(7);
    }
}
