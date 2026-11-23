cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4699"
  sha256 arm:   "ca706404f727309c56fa7a6024768a0115904ec8d4cf38b1d6bd1b095ceaff1a",
         intel: "eb75c75789bfdc1898d09800aafd015d3832d4243cefec170a38140d122833db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
