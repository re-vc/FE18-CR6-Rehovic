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
            ->add('name', null, array('attr' => ['class' => 'form-control']))
            ->add('date', null, array('attr' => ['class' => 'd-flex gap-3 form-control']))
            ->add('description', null, array('attr' => ['class' => 'form-control']))
            ->add('image', null, array('attr' => ['class' => 'form-control'])) 
            ->add('capacity', null, array('attr' => ['class' => 'form-control']))
            ->add('contact_email', null, array('attr' => ['class' => 'form-control']))
            ->add('contact_phone', null, array('attr' => ['class' => 'form-control']))
            ->add('location', null, array('attr' => ['class' => 'form-control']))
            ->add('url', null, array('attr' => ['class' => 'form-control']))
            ->add('type', null, array('attr' => ['class' => 'form-control']))
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
