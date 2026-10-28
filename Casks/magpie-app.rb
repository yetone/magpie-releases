cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1889"
  sha256 arm:   "8b8d44760e978f9d8fd2807815c068846202afeae370079dc010541bfc234a59",
         intel: "56187afd000fe328dc46dab205c743868c9b41ab7d03ee3f273bca09370543de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
