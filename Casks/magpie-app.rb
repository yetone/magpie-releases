cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4266"
  sha256 arm:   "e51a012456095e7c531fb769fa220c4f85ede16b005b2dd1e7b2310d4e4c6645",
         intel: "9cc73a7a539fbc32b458c2942876c8fea52124e7609942f6504817bc340cd8f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
