Package { ensure => latest, }

package { [ "git", "ruby", "ruby-dev", "rubygems1.8", ]:
} ->
package { [ "rake", "puppetlabs_spec_helper", "puppet", ]:
    provider => gem,
} ->
class { "java":
    vendor => "oracle",
}
