<?php

namespace App\Policies;

use App\Faq;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class FaqPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any faqs.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->permissions()->whereSlug('can_view_faq')->exists();
    }

    /**
     * Determine whether the user can view the faq.
     *
     * @param  \App\User  $user
     * @param  \App\Faq  $faq
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->permissions()->whereSlug('can_view_faq')->exists();
    }

    /**
     * Determine whether the user can create faqs.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->permissions()->whereSlug('can_create_faq')->exists();
    }

    /**
     * Determine whether the user can update the faq.
     *
     * @param  \App\User  $user
     * @param  \App\Faq  $faq
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->permissions()->whereSlug('can_edit_faq')->exists();
    }

    /**
     * Determine whether the user can delete the faq.
     *
     * @param  \App\User  $user
     * @param  \App\Faq  $faq
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->permissions()->whereSlug('can_delete_faq')->exists();
    }

    /**
     * Determine whether the user can restore the faq.
     *
     * @param  \App\User  $user
     * @param  \App\Faq  $faq
     * @return mixed
     */
    public function restore(User $user, Faq $faq)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the faq.
     *
     * @param  \App\User  $user
     * @param  \App\Faq  $faq
     * @return mixed
     */
    public function forceDelete(User $user, Faq $faq)
    {
        //
    }
}
