<?php

namespace App\Policies;

use App\FaqCategory;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class FaqCategoryClaimPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any faq categories.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->permissions()->whereSlug('can_view_faq_category')->exists();
    }

    /**
     * Determine whether the user can view the faq category.
     *
     * @param  \App\User  $user
     * @param  \App\FaqCategory  $faqCategory
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->permissions()->whereSlug('can_view_faq_category')->exists();
    }

    /**
     * Determine whether the user can create faq categories.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->permissions()->whereSlug('can_create_faq_catgory')->exists();
    }

    /**
     * Determine whether the user can update the faq category.
     *
     * @param  \App\User  $user
     * @param  \App\FaqCategory  $faqCategory
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->permissions()->whereSlug('can_edit_faq_category')->exists();
    }

    /**
     * Determine whether the user can delete the faq category.
     *
     * @param  \App\User  $user
     * @param  \App\FaqCategory  $faqCategory
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->permissions()->whereSlug('can_delete_faq_category')->exists();
    }

    /**
     * Determine whether the user can restore the faq category.
     *
     * @param  \App\User  $user
     * @param  \App\FaqCategory  $faqCategory
     * @return mixed
     */
    public function restore(User $user, FaqCategory $faqCategory)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the faq category.
     *
     * @param  \App\User  $user
     * @param  \App\FaqCategory  $faqCategory
     * @return mixed
     */
    public function forceDelete(User $user, FaqCategory $faqCategory)
    {
        //
    }
}
