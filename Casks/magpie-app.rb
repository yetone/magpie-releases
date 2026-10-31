cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2298"
  sha256 arm:   "c7e90c9cc5a676fb64873fbc722749082f48cf9cb972eee2ca18db541b69cf65",
         intel: "df75e301ff7cad4ae5c4f15a8eec964b153fa38118cdff33ef85971740a13064"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
