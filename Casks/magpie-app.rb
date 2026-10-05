cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.987"
  sha256 arm:   "e388f117f23b0b10d2aec6751069ce41718225934cc2d107c30031cf3455650e",
         intel: "f7d9e6838a8cd22c37031122e172cf99c2f417f6da39d96ff6b7ed46047af0fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
