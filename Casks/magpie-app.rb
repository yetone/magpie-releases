cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1155"
  sha256 arm:   "87000a7add59cbc6075f63602d9b532050c27ebfdb3c847872f36cb9af5794e5",
         intel: "47e2e766dc62a313bf7ee90763ae85351a5cff6867a90b04f5606f5e2547a9de"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
