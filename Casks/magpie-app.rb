cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2742"
  sha256 arm:   "fcd849493905e9d0a0c8d7e1850aaaa1128cdf7b9b774de88fc4cccdcd5e36a8",
         intel: "b961db13279c40a1dd946cd274879b68a7f7c6168613efc70311e6cd6b32a233"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
