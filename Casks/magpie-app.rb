cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1952"
  sha256 arm:   "a054f7db0e5fedb83a96b990a0db60fc9cbaff78ec9968f331cd6346fd2be148",
         intel: "a45edae0488a81430d8c6d1b76672fb235f0a80e6e2d6a23b704a7129edbc0a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
