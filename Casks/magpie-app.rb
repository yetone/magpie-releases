cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4907"
  sha256 arm:   "c712bae630b89c42684252cfe29aea33b650dfde05e86e7d189ad21b21f6fdba",
         intel: "f3a02d6a0e40c51a6e1f5eba59c9531991793eea6c79dbd785da263567303ce7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
