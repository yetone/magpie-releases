cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5010"
  sha256 arm:   "0ed08773a4846f62384583a3b3646c4f62ba13a6c08769258a7b86a8a7cd23a6",
         intel: "8f05e63b4135283287ab74855ead717112f8c6a06cbd2af53944c7fe83f57d92"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
