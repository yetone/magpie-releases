cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2644"
  sha256 arm:   "3c1f90eae8e5b236decb34f7763c5251a5924f76e7cf739eddcaea55a236c0dd",
         intel: "d22ed3d495902b953ca9bf228444b1f923033d05fc3bc57bed3d1bfa5330820e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
