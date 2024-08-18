<?php

namespace App\Repository;

use App\Entity\Events;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Events>
 */
class EventsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Events::class);
    }

    /**
     * @return string[] Returns an array of unique event types
     */
    public function findUniqueEventTypes(): array
    {
        $qb = $this->createQueryBuilder('e')
            ->select('DISTINCT e.eventType'); // Get unique event types

        return array_column($qb->getQuery()->getScalarResult(), 'eventType');
    }
}
