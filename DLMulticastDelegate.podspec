Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.name             = 'DLMulticastDelegate'
s.version          = '0.1.1'
s.summary          = 'Multicast Delegate'
s.homepage         = 'https://github.com/Periphery992/DLMulticastDelegate.git'

# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.license          = { :type => 'MIT', :file => 'LICENSE' }

# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.author           = { 'Periphery992' => 'chencode992@163.com' }

# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.source           = { :git => 'https://github.com/Periphery992/DLMulticastDelegate.git', :tag => "#{s.version}" }

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.platform     = :ios
s.ios.deployment_target = '8.0'

# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.source_files = 'Classes/**/*'

# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
s.requires_arc = true

end
