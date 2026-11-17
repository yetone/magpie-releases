cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4342"
  sha256 arm:   "2cd692574e75a7bfeb6a7a4310684f462073a70f969779a729056eb2f4ffadf6",
         intel: "1644a3c55895a59d2149007b02011b7f921604356959e5e35dc35f077a360e2a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
