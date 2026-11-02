cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2662"
  sha256 arm:   "348c99794bd29bb2d4218a07b16c9c3cccfd8dcb0bb4a094a3ff3884470f6e5e",
         intel: "ba100707d50b78115680fb21e924ee81f32bddaac1329f450f8b64dc189e5d83"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
