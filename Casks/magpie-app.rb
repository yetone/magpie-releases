cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4620"
  sha256 arm:   "10fbaa802b1283c961456eb5c1826431088d47f8ae6aa4422d6471967a42481c",
         intel: "b9b51077d657ae2de35055eb1dd79ee6e589c289beb6ddab36c86b522fa3c1a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
