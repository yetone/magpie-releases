cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4760"
  sha256 arm:   "44e7ea5a910d2e5f6d12971910a927ee5d0d6c65f2af36bca9d3635f335b96fe",
         intel: "9398f2ebc14b154d3c4bd16c899931422ff6e97cf10a9eec7fba26c757e01bfd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
