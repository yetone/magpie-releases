cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3622"
  sha256 arm:   "17362ea263c1b6f0c8dbe0b588a320fea7b42120051c80f524ecc42169d20cc1",
         intel: "482667b2641f670366afe20434334e86018b4a1a1ba92a119cbdd91e0870605a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
