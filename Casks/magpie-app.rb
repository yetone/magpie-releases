cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4828"
  sha256 arm:   "b662f821d128088715a55ccf028926e577cd658a3cc35c9e6e9b8fca7eb365f1",
         intel: "9296bed3df2fc642da3bf63fe29db6b7c1457f1c1cdf1c67d799e0bd082211bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
