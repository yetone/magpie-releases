cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4698"
  sha256 arm:   "852540b83a864da0f6844da14c0abf19b823442d45f98ca8ee338ec92702c85e",
         intel: "f8bf3b5ff638550fee8226b388868751b980a4aeb399fd10e32e1de322bb37cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
