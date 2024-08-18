<?php

namespace App\Entity;

use App\Repository\EventsRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EventsRepository::class)]
class Events
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $eventName = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $eventDate = null;

    #[ORM\Column(length: 1000)]
    private ?string $eventDescription = null;

    #[ORM\Column(length: 255)]
    private ?string $eventImage = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: 0)]
    private ?string $eventCapacity = null;

    #[ORM\Column(length: 255)]
    private ?string $eventEmail = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: 0)]
    private ?string $eventPhone = null;

    #[ORM\Column(length: 255)]
    private ?string $eventAddress = null;

    #[ORM\Column(length: 255)]
    private ?string $eventUrl = null;

    #[ORM\Column(length: 255)]
    private ?string $eventType = null;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEventName(): ?string
    {
        return $this->eventName;
    }

    public function setEventName(string $eventName): static
    {
        $this->eventName = $eventName;

        return $this;
    }

    public function getEventDate(): ?\DateTimeInterface
    {
        return $this->eventDate;
    }

    public function setEventDate(\DateTimeInterface $eventDate): static
    {
        $this->eventDate = $eventDate;

        return $this;
    }

    public function getEventDescription(): ?string
    {
        return $this->eventDescription;
    }

    public function setEventDescription(string $eventDescription): static
    {
        $this->eventDescription = $eventDescription;

        return $this;
    }

    public function getEventImage(): ?string
    {
        return $this->eventImage;
    }

    public function setEventImage(string $eventImage): static
    {
        $this->eventImage = $eventImage;

        return $this;
    }

    public function getEventCapacity(): ?string
    {
        return $this->eventCapacity;
    }

    public function setEventCapacity(string $eventCapacity): static
    {
        $this->eventCapacity = $eventCapacity;

        return $this;
    }

    public function getEventEmail(): ?string
    {
        return $this->eventEmail;
    }

    public function setEventEmail(string $eventEmail): static
    {
        $this->eventEmail = $eventEmail;

        return $this;
    }

    public function getEventPhone(): ?string
    {
        return $this->eventPhone;
    }

    public function setEventPhone(string $eventPhone): static
    {
        $this->eventPhone = $eventPhone;

        return $this;
    }

    public function getEventAddress(): ?string
    {
        return $this->eventAddress;
    }

    public function setEventAddress(string $eventAddress): static
    {
        $this->eventAddress = $eventAddress;

        return $this;
    }

    public function getEventUrl(): ?string
    {
        return $this->eventUrl;
    }

    public function setEventUrl(string $eventUrl): static
    {
        $this->eventUrl = $eventUrl;

        return $this;
    }

    public function getEventType(): ?string
    {
        return $this->eventType;
    }

    public function setEventType(string $eventType): static
    {
        $this->eventType = $eventType;

        return $this;
    }
}
