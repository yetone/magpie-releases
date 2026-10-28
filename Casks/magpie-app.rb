cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1847"
  sha256 arm:   "07fb597a31cdc02a803465127bd43f178c57bb7fe09a100adec74bc324ac3308",
         intel: "4e27b3e2279c19d2162980f28be647a945563426ad1057e87f5f48abc885eda1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
