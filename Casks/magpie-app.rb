cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1875"
  sha256 arm:   "aa1c4738b581a22e4873b0a29be601f1f7fb392d5d97e043715f3197c0f5d944",
         intel: "48309e826ba6aefe0e976a8dfb11ab673f07d14bdf996d38d85efbe5b8ee65eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
