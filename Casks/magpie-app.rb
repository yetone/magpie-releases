cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2108"
  sha256 arm:   "8b6119f8e642a596a433864ed8f6c4d8043b88f063d684b08cec2dabbee7abd3",
         intel: "7efe8571c505872667e47a8b9976d8cb39cf46dd9f5a3d0001d022a064c16762"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
