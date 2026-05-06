<?php

namespace App\Annotations;

use OpenApi\Annotations as OA;



/**
 * @OA\Info(
 *     title="EthicAdvisor API",
 *     version="1.0.0",
 *     description="API Documentation"
 * )
 *
 * @OA\SecurityScheme(
    securityScheme="sanctum",
    type="http",
    scheme="bearer",
    bearerFormat="JWT"
)
    
 * @OA\Server(
 *     url="http://127.0.0.1:8000",
 *     description="Local Server"
 * )
 */
class OpenApi
{
}