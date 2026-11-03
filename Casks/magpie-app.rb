cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2880"
  sha256 arm:   "69553606e3808b17a520510965423d2ef64d3c40b7b36261a1474dbcce40fe6a",
         intel: "9d3ece1f75d90d6ebf9139e90e46f897832d17283161da2f3657230bc40725cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
