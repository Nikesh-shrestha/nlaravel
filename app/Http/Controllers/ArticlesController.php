<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\article;
use View;
use Input;
use Redirect,Session;
use App\Http\Requests\CreateArticles;
use App\Http\Requests\EditArticle;
use App\Http\Controllers\Authorz;

class ArticlesController extends Controller {

	 function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$articles = Article::all();
		return View::make('articles.index')->with('articles',$articles);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('articles.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(CreateArticles $request)
	{
		// print_r(input::all());
		//$article = input::all();
		$article = new Article;
		$article->author = input::get('author');
		$article->title = input::get('title');
		$article->tags = input::get('tags');
		$article->body = input::get('article');
		$article->created_at = date("y-m-d h:i:s");
		$article->save();
		return Redirect::to('articles');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$article = article::find($id);
		return View::make('articles.show')->with('article',$article);
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{	
		echo session::get('is_logged_in');
		$article = article::find($id);
		return View::make('articles.edit')->with('article',$article);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(EditArticle $request,$id)
	{
		$article = new Article;
		$article->author = input::get('author');
		$article->title = input::get('title');
		$article->tags = input::get('tags');
		$article->body = input::get('article');
		$article->created_at = date("y-m-d h:i:s");
		$article->save();
		return Redirect::to('articles');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
