cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2358"
  sha256 arm:   "5aa326f1d800f3dd27483edfc68edd395bdcfbb9acfc9fc121853d70d86d2471",
         intel: "2796a6025cb4afda8806311c5947c9d7fc70348112c02dd57d071d83ca1c5060"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
