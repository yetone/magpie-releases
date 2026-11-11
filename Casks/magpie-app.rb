cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3792"
  sha256 arm:   "a45043d433ac32794dc502571b13cc3f5557de399a1335e8c66f0737ac70bf53",
         intel: "285c304d892d4f5b72affa1f11d4702990cd6cfd3c73e847087f8512a26fdce3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
