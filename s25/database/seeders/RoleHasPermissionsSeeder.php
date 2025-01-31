<?php
  
namespace Database\Seeders;
  
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleHasPermissionsSeeder extends Seeder
{
    public function run(): void
    {
        // Ambil role 'Admin' yang sudah ada
        $role = Role::where('name', 'Admin')->first();

        // Ambil semua permission yang sudah ada
        $permissions = Permission::pluck('id','id')->all();

        // Sinkronkan permissions dengan role 'Admin'
        $role->syncPermissions($permissions);
    }
}