<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
        'addToCart',
        'updateCart',
        'checkCoupon',
        'apply-coupon',
        'calculate-tax',
        'return-product',
        'send-otp',
        'verify-otp',
        'payment/success',
        'update/request',
        'addToCartProduct'
    ];
}
