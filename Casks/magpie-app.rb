cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3987"
  sha256 arm:   "d21bd74a856504088d542b71d38dcc9256ac362e83509b4db5c9f4a4c32b2e96",
         intel: "787874d2be8082173e2a88bd56ebebdaacfa0bc8c1c541a27343af03dbdb80fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
