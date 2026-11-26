cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4898"
  sha256 arm:   "fc11c4ba952e58fca90f9589bed97ba4dbae67cba13bb55edf61adb0f7664c4a",
         intel: "36f07baab90ba165f9925682306439f8138fbb9250dec85f8a4a1f02851c953c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
