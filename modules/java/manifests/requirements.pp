# http://docs.puppetlabs.com/references/latest/type.html

class java::requirements (
    $version  = "1.8",
    $vendor   = "oracle",
) {
    
    case $java::requirements::version {
        "1.6":   { }
        "1.7":   { }
        "1.8":   { }
        default: { fail("only Java Versions 1.6, 1.7 and 1.8 are supported") }
    }
    
    case $java::requirements::vendor {
        "openjdk": { }
        "oracle":  { }
        default:   { fail("only the following vendors are supported: openjdk, oracle") }
    }
    
    case $::osfamily {
        
        "RedHat":    { fail("not yet implemented") }
        "Debian":    {}
        "Suse":      { fail("not yet implemented") }
        "Solaris":   { fail("not yet implemented") }
        "Gentoo":    { fail("not yet implemented") }
        "Archlinux": { fail("not yet implemented") }
        "Mandrake":  { fail("not yet implemented") }
        default:     { fail("Unsupported osfamily") }
        
    }
    
}
