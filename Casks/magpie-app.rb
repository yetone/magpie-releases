cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4678"
  sha256 arm:   "aa702bf1453c244711acaacc84f8b1488692ecb6ccc5dbc2d26960db81ecc0fb",
         intel: "16cef05925bd7549cb7aeef5b56dc15a3be8cdcf9de66a58b0c963ce35bf2d88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
