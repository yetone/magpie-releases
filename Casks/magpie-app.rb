cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4672"
  sha256 arm:   "3d665a4844067a901348e5a989c1ce0d4086f7be384fe7b2064061edb6ee6490",
         intel: "f27134992c95a92a2769082ee46bfdd29f8de54ddd64981d385c4ead9531ac95"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
