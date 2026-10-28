cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1950"
  sha256 arm:   "311e7c41c922c00015c727aca8ddd8bb8888ec0908da46c5651b8a253db81c6d",
         intel: "ffae488caa809fa907f91f283978676781dda18c69ac089f24c9e685ef7fcba1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
