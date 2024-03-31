<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App;
use App\Models\Film;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Film_Genre;
use App\Models\Episode;
use App\Models\Country;
use File;
class CreateSiteMap extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:create';

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
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // create new sitemap object
        $sitemap = App::make("sitemap");

        // add items to the sitemap (url, date, priority, freq)
        $sitemap->add(\URL::to('/'), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');

        
        // get category 
        $category = Category::all();
        foreach ($category as $cate)
        {
            $sitemap->add(route('xemdanhmuc', $cate->slug), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');
        }
        // get genre 
        $genre = Genre::all();
        foreach ($genre as $gen)
        {
            $sitemap->add(route('xemtheloai', $gen->slug), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');
        }
         // get country 
        $country = Country::all();
        foreach ($country as $countr)
        {
            $sitemap->add(route('xemquocgia', $countr->slug), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');
        }
         // get film 
        $film = Film::all();
        foreach ($film as $fil)
        {
            $sitemap->add(route('phim', $fil->slug), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');
        }
        // get episode 
        $episode = Episode::with('film')->orderBy('id','desc')->get();
        foreach ($episode as $epi)
        {
            $sitemap->add(route('episode', [$epi->film->slug,'tap-'.$epi->episode]), Carbon::now('Asia/Ho_Chi_Minh'), 1, 'daily');
        }


        // generate your sitemap (format, filename)
        $sitemap->store('xml', 'sitemap');
        File::copy(public_path('sitemap.xml'),base_path('sitemap.xml'));
    }
}
