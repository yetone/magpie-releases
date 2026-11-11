cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3700"
  sha256 arm:   "26336cb7b2e07f4f24d5d7d5e447fa51ce77f93608a0673d3cd6aa4a37c26459",
         intel: "591b5c9d24b0428282d5c9c7c3b17cc63b5460f4261ecaeb1835b7fd839e70bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
