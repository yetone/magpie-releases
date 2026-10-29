cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1997"
  sha256 arm:   "8530a8b6bf16a8d208ccf57bad9734dc3067ebbd6f38e193e9640f9cfcd4c8f1",
         intel: "c61713e4eb427ae78e982cd91117c33c028298ac21b7f971b056e772a8de5707"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
