<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('eventName')
            ->add('eventDate', null, [
                'widget' => 'single_text',
            ])
            ->add('eventDescription')
            ->add('eventImage')
            ->add('eventCapacity')
            ->add('eventEmail')
            ->add('eventPhone')
            ->add('eventAddress')
            ->add('eventUrl')
            ->add('eventType')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
