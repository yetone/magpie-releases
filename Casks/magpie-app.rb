cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2759"
  sha256 arm:   "3c66d79e9b4a976dc3153757d4bc3fa89bd09b530903ac1f860510bd19d0c604",
         intel: "ab3adb518aec19594b6ebe09e66d670e479f0905e943f8694fb0a9eeb1d04506"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
