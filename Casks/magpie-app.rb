cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4563"
  sha256 arm:   "5ab3786aea0212dc424d77eba79c42480fc173bc2e54e73ef3dbd07cbbe1c896",
         intel: "4ce24d765d28d474be6934374d355a8633fa30cdf2ed4a45d36afcabe5a6b336"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
