cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4137"
  sha256 arm:   "2afb4061703d0da756fe236743872db67cec13a5d06bea28ae83c3fe526690ec",
         intel: "845399479040f55d91283c36c89922233b5a8608f745c3309ade38a54a59f36d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
