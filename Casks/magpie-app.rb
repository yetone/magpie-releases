cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.903"
  sha256 arm:   "856cfa6976540a8246770b8ff7f0c552d621036784738ab9609464d28a359a50",
         intel: "47ce2631fba58d8979c8933562a956556172ad9d24a817b45a99f4712ae3006b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
