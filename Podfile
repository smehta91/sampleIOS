require_relative '../node_modules/@react-native-community/cli-platform-ios/native_modules'
require_relative '../node_modules/react-native/scripts/react_native_pods'

platform :ios, '10.0'

target 'FoodTracker' do
  config = use_native_modules!
  use_react_native!(:path => config["reactNativePath"])

  target 'FoodTrackerTests' do
    inherit! :complete
    # Pods for testing
  end

  # Enables Flipper.
  #
  # Note that if you have use_frameworks! enabled, Flipper will not work and
  # you should disable these next few lines.
  use_flipper!
  post_install do |installer|
    flipper_post_install(installer)
  end
end
