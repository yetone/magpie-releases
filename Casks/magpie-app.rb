cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3226"
  sha256 arm:   "52ac31f0b34747ad04986ccf13f7c5f12e08ebef277b0958e60ded7222b96910",
         intel: "18494467e0da63224e5253e85ff92f9d0606725dd005b65ec257a6104782c37f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
