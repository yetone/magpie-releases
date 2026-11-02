cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2763"
  sha256 arm:   "184e13c1563bad7ccb534904d62bbb261bb3f822130119e4fe279e4435f30cd5",
         intel: "a4263548b28eefcc369a58aac53cebf0fd6adaf7a511547a4796f218da6d4fe7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
