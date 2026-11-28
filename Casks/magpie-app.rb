cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4995"
  sha256 arm:   "69233613b9599b93f4835b32968fb46aed2cc06ad2205769e634fae441bd951d",
         intel: "d2bfc0aa251292ce810275b4cefb8fea39b0c142daf1b2e57bab8bd374a6ef35"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
