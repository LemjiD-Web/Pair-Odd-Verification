<?php

namespace App\Entity;

use App\Repository\PaireImpaireRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PaireImpaireRepository::class)]
class PaireImpaire
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;
   
    #[ORM\Column]
    private int $entree;

	public function getEntree() :int {
		return $this->entree;
	}

    public function setEntree(?int $entree): self
    {
        $this->entree = (int) $entree;  
        return $this;
    }

    #[ORM\Column(type: 'string', length: 255)]
    private $resultat;

	public function getResultat() :string {
		return this->resultat;
	}

	public function setResultat(string $resultat) : self{
		$this->resultat = $resultat;
        return $this;
	}

    public function getId(): ?int
    {
        return $this->id;
    }
}