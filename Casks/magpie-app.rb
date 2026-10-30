cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2255"
  sha256 arm:   "30c8a322c201323752c51d01a32f1039a35b4f6a8abe6cf9a8cfb6400b4c3a56",
         intel: "df1061d51dec7cad9cf2439f20f7db06f099c3f3cef9abd4370dc18b182dde0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
