cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4190"
  sha256 arm:   "41a960a6b966d53bc85952199f63b5e96511a9ee308ece82da28329295cfdc41",
         intel: "9033af17fc2d8ae3e21c79b93cd59a2ad01a721b1f3697142edc27fe508e73a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
