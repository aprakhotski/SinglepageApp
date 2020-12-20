<?php


namespace App\Controller\Main;

use App\Entity\Track;
use http\Env\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends BaseController
{
    /**
     * @Route("/", name="home")
     * @return Response
     */
    public function index()
    {
        $tracks = $this->getDoctrine()->getRepository(Track::class)->findAll();

        $forRender = parent::renderDefault();
        $forRender['tracks'] = $tracks;
        return $this->render('main/index.html.twig', $forRender);
    }
}