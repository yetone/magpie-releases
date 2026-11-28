cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5006"
  sha256 arm:   "264465bf93aa49714b330244e70db623980209fcb3f259db0bd64fe734278bc5",
         intel: "791e0bfcfc67041ee73309865663204aaa144b5e2c392395fa69fef7f26e22a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
