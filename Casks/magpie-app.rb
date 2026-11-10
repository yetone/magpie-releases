cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3541"
  sha256 arm:   "2144a429391d068ffc2e106f20e8fa569a6a44a90a62effecae695e3711ad0d8",
         intel: "e1ac3a8213f1ce33c4525166e2d003055a551181b24f945ffce06212f38229c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
