cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3519"
  sha256 arm:   "10e26beaa1bf89715635f13cfe45dfcb59535a1cc480e62a8191be6b08bb526e",
         intel: "efaa932ec5c65ef924b59edd156b916e62f51fe710860a7c7d6b838215b1b2bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
