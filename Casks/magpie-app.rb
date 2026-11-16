cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4314"
  sha256 arm:   "6ded7aa3086745e1e7b0d36fc453918cbbeac6899e9b1367cb3cf68be17627f9",
         intel: "8b01dc06df0314047170494c9f5a873a9d8c97f1dc0b97b4e58496e9c8f7951d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
