cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4956"
  sha256 arm:   "aa2a77e313baaa14eb8d72adea08b9ee81b761c8ea82ec2a7cbaec067341940f",
         intel: "d87277a9f1d7ebe106135b335b54a42f5a59c636d1d2454451fc43c90d02b6bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
