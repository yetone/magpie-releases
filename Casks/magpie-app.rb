cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3281"
  sha256 arm:   "54dfaab47d92c5e2f3ed34354eb350dbc4c84370e19c261bdf39e068049d2555",
         intel: "90fcb2b4e8652b669ebc9c199dae206a11f5bbc47803504bd7a3a90ac8ab9910"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
