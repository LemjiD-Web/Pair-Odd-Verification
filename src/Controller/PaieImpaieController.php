<?php

namespace App\Controller;
use App\Services\PaireImpaireServices;
use App\Entity\PaireImpaire;



use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class PaieImpaieController extends AbstractController
{
    #[Route('/paieimpaie', name: 'app_paie_impaie'  )]
    public function index(PaireImpaireServices $paireImpaireServices,Request $request): Response
    {   

    
        $entree = $request->get('entree');
        $entity = new PaireImpaire();
        $entity = $entity->setEntree($entree);
        $paireImpaire = $paireImpaireServices->paireEntree($entree);

        if ($paireImpaire === true ){
            $message =  "Paire";
        }else {
            $message =  "InPaire";
        }

        return $this->render('paie_impaie/index.html.twig', [
            'controller_name' => 'PaieImpaieController',
            'message' => $message,
            'entree' =>  $entree,
        ]);

    }
}
