cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3831"
  sha256 arm:   "769537ea48165789f47a80b4f8c2a5cf332dc3c8889a4d0945f194e4b0761fab",
         intel: "aaa8f3a51390a57bc0ab6f2517eaad8e71907d3c89f30ec2ac754526ace67844"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
