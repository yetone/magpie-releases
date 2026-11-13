cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3974"
  sha256 arm:   "7bc1c51aee6487961b537b0f74eb8623d57e263116c4d116fd12e74df4abbcfa",
         intel: "1bb87174c40282077a26220a428ab860989fb57fab69ce9c1f340895d4730075"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
