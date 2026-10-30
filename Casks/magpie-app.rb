cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2146"
  sha256 arm:   "09c5eede1bafd0cf7a762f8028e786c7bea9c4350eb69f2a8ba698718bb4535c",
         intel: "91d3ed6e59dcf514319345f30109114b265854263938f10c6c60a78cdf6caccc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
