<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf53ab4b383b3c850339f39ef922a4e69
{
    public static $prefixLengthsPsr4 = array (
        'C' => 
        array (
            'Cps\\Smart\\' => 10,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Cps\\Smart\\' => 
        array (
            0 => __DIR__ . '/../..' . '/App',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf53ab4b383b3c850339f39ef922a4e69::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf53ab4b383b3c850339f39ef922a4e69::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf53ab4b383b3c850339f39ef922a4e69::$classMap;

        }, null, ClassLoader::class);
    }
}
