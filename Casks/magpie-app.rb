cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3940"
  sha256 arm:   "b06c3dacd7227692692690e4941db616e891112c74d53587938a3abe7c6b9f70",
         intel: "e4b774f7421b9d1a37c3a6a5d4daec95ad65b7a82f6c48c45c0104d320f3790c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
