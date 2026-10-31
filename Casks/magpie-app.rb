cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2436"
  sha256 arm:   "b297ba049fa92255d8b4afcb2115b9485dbb1f635704315cfc14fcc5f2bbfd48",
         intel: "4ad0b60b37e4b5149e2475562a903f248637a47d11787fe129ce6a5f8f0fa5b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
