<?php


namespace App\Controller\Main;

use App\Entity\Track;

use Doctrine\ORM\Mapping\OrderBy;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends BaseController
{
    /**
     * @Route("/", name="home")
     * @return Response
     */
    public function index()
    {
        $currentPage = 1;
        $limit = 10;
        $offset = ($limit*$currentPage)-$limit;
        
         
        $tracks = $this->getDoctrine()->getRepository(Track::class)->findAll();
        $years = $this->getDoctrine()->getRepository(Track::class)->findUniqueYear();
        $genres = $this->getDoctrine()->getRepository(Track::class)->findUniqueGenre();
        $singers = $this->getDoctrine()->getRepository(Track::class)->findUniqueSinger();

        $forRender = parent::renderDefault();
        $forRender['tracks'] = $tracks;
        $forRender['years'] = $years;
        $forRender['genres'] = $genres;
        $forRender['singers'] = $singers;
        $forRender['currentPage'] = $currentPage;
        
        return $this->render('main/index.html.twig', $forRender);
    }

    public function listAction( Request $request ){
        $pageRepo = $this->getDoctrine()->getRepository('PageBundle:Page');
        $pager = $request->query->get('page') ? $request->query->get('page') : 1;
        $limit = 2;
        $pages = $pageRepo->findPages($pager, $limit);
        $pager = [
            'pager' => $pager,
            'total' => $pageRepo->countPage(),
            'limit' => $limit
        ];

        return $this->render('PageBundle:Page:list.html.twig',[
            'pages' => $pages,
            'navigator' => $pager
        ]);
    }
}