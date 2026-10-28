cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1963"
  sha256 arm:   "83f1524598826a394266c538da5bba7342c1c4a5c69be4c99888985aff3c431c",
         intel: "bb3622e80adf48f18fcb6a20014d31556fe26fb9233f68f98151eb86df39cf77"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
