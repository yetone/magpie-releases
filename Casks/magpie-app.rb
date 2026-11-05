cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3024"
  sha256 arm:   "3d139da6f5b6b5872ec00e3f8940cd9fd42dd73fcb8c7baadae0ae057496bf21",
         intel: "020e0b3d6b81daf262e572ca0490a0c3eb6db3cfb6f8d7421be63ab71a888980"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
