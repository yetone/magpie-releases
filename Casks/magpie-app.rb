cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4755"
  sha256 arm:   "ba8b1010ccc42ec9d68713705e8e8e244d1b882bb591f3557b328a7918684c89",
         intel: "a8b1194bb1d6e6635a51dc040ebb8d322d102a76efb286f66724f6de18263563"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
