cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1053"
  sha256 arm:   "cc9efce7368997f9cf09d9523cf64a047e1c78b8f46002b42fb5127873f4651c",
         intel: "0c6abdb782f2c15c6fdf4a89cc390dfe391d95d667c548798defae87f07d7d11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
