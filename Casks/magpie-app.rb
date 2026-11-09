cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3362"
  sha256 arm:   "c2db655afcc523f5a093a156a839eb291b638be69c7b81d87e504e2d2bfe9006",
         intel: "21751d8bf030bbadb074ccae41ebbc462bfa23a60b0b226bec4c1d3f983811b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
