cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4268"
  sha256 arm:   "d378082b1cf2a79faf021d013f3ad70dd4ead5cb852a552e5a3581df7c224114",
         intel: "465ce280ae2fff79dfabb66b4916254c3c2b9948e37412e1fa431555f51f68d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
