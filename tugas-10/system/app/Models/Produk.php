<?php

namespace App\Models;

use App\models\Traits\Attributes\ProdukAttributes;
use App\models\Traits\Relations\ProdukRelations;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;
    protected $table = "produk";
    
    use ProdukRelations, ProdukAttributes;

}
