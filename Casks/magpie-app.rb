cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2625"
  sha256 arm:   "abd9fe7d6b9402c38d43dd824218d88c58caf29a705365e0a1d76d21005c7db4",
         intel: "0ed12f530938550874d34aac87eb949518cbb805df661d8ff3e3ced24e7e1c65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
