cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2211"
  sha256 arm:   "1b6def49c4c77d8ef9d66c926481da3ac80b1660ad35de23dc5b83228bf3d603",
         intel: "b70ad02c2c0310c8ae2cbdbd90ec06fc26f613aa602fe739a8ed229cf3e24739"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
