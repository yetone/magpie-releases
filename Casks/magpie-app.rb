cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2666"
  sha256 arm:   "9f1aaaf3563bc3b2f677e7d7698e8a9526c48f8add1a529e514885d4e9c9658e",
         intel: "8540b874515bc6e6d715e52a9688f2f51b6f939d64c6257eaa46df778dfef76c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
