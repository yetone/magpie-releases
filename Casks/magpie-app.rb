cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3563"
  sha256 arm:   "d27cd3ba0a60287c2f7062a4c4d8517eaa795fce822872d65b4947d282f39e7e",
         intel: "98507ea2493cd5ed326742f916f7cc04f8e3df02ec2f6bc3b970fa515b455e68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
