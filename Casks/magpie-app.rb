cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3213"
  sha256 arm:   "5ef917eb0141d54fcf4ecfb913e7aaecf92e6d222297dba40b713c568129ae39",
         intel: "ca8171b58cd6614e2d599c29678ecc40f2cda6ec8b193324d2a3ed9ece560bcf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
