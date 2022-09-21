<?php

namespace App\Services;
use App\Repository\UserRepository;
use App\Repository\PaireImpaireRepository;
use App\Entity\PaireImpaire;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\EntityManagerInterface;


class PaireImpaireServices
{

    private $entree;
    private $resultat;


    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;    

    }

    public function sumEntree($entree)
    {
		$s=0;
		while ($entree!=0){
		   $s+=$entree%10;
		   $entree=intval($entree/10);
		}
       return $s;

    }

    public function paireEntree($entree) {
		while ($entree!=0){
        $nombre = $this->sumEntree($entree);
		if (($nombre%2 == 0)) {
            $entity = new PaireImpaire();
            $entity->setEntree($entree);   
            $entity->setResultat('Pair');
            $this->entityManager->persist($entity);
            $this->entityManager->flush();
		    return true;
        }
		else {
            $entity = new PaireImpaire();
            $entity->setEntree($entree);   
            $entity->setResultat('InPair');
            $this->entityManager->persist($entity);
            $this->entityManager->flush();
            return false;
        }	     
		}      
	}



}