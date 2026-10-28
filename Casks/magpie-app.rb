cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1939"
  sha256 arm:   "2857ab12f9fc342ef341dd5e77431c9805bf9374c7ea85bd2e07d9e6e9169ca7",
         intel: "c7fea4d01a24d8a98c2527dbcb6db8c91fadbb8aa69b5f4cc5b396d6a59ff1ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
