<?php

namespace App\Repository;

use App\Entity\Track;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Track|null find($id, $lockMode = null, $lockVersion = null)
 * @method Track|null findOneBy(array $criteria, array $orderBy = null)
 * @method Track[]    findAll()
 * @method Track[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TrackRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Track::class);
    }

    public function findPages( $page = 1, $limit = 10 ){
        $qry = $this->createQueryBuilder('p');
        $qry->setMaxResults($limit);
        $qry->setFirstResult( ( $limit * $page ) - $limit );//10*2=20 - 10 = 0
        return $qry->getQuery()->getResult();
    }

    public function countPage(){
        $qry = $this->createQueryBuilder('p')->select('count(p.id)');
        $result = $qry->getQuery()->getOneOrNullResult();//[ 1 => 3]
        return $result ? array_shift($result) : 0;
    }

    public function findUniqueYear()
    {
        return $this
            ->createQueryBuilder('t')
            ->select('DISTINCT t.year')
            ->orderBy('t.year', 'ASC')
            ->getQuery()
            ->getResult()
        ;

    }

    public function findUniqueGenre()
    {
        return $this
            ->createQueryBuilder('t')
            ->select('DISTINCT t.genre')
            ->orderBy('t.genre', 'ASC')
            ->getQuery()
            ->getResult()
        ;

    }

    public function findUniqueSinger()
    {
        return $this
            ->createQueryBuilder('t')
            ->select('DISTINCT t.singer')
            ->orderBy('t.singer', 'ASC')
            ->getQuery()
            ->getResult()
        ;

    }

    // /**
    //  * @return Track[] Returns an array of Track objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Track
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
