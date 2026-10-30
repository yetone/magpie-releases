cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2218"
  sha256 arm:   "53a87fd11f41ec46f04cdecb03ba039f9cdc727bb7736943eb632b6c62f69d04",
         intel: "448e437553a7b5d835efffcd8aa0006e68c802778dcc88906fc9838ae9d5dd2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
