cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3766"
  sha256 arm:   "edde0d779656ada1e71c24a38d78f2addd5f7ac7947ded0285c4b134b15db559",
         intel: "da19805523d14a458dd4843358cba83b13faf81dc4deaedb44629eef27f0f820"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
