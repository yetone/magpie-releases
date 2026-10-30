cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2162"
  sha256 arm:   "0efedcee0ab10c4cce64000d675558266872bc5d46c6a35aaa4083c5c41dd4f0",
         intel: "fcfb3387d41acafdb059422af1f0db862b46c5e304e314c1bd33354026980482"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
