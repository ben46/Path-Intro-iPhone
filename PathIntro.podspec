Pod::Spec.new do |s|
	s.name 	= 'PathIntro'
	s.version = '1.1'
	s.requires_arc = true
	s.author = {
		'park0ur' => 'park0ur@gmail.com'
	}
	s.ios.deployment_target = '5.0'
	s.summary = 'Path-Intro-iPhone'
	s.ios.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/../../PathIntro/**' }
	s.homepage = 'http://github.com/ben46/Path-Intro-iPhone'
	s.source = {
		:git => 'https://github.com/ben46/Path-Intro-iPhone.git',
	}
	s.source_files = 'PathIntro/IntroControll/*.{h,m}'
end
