cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.944"
  sha256 arm:   "29053a23c1ad13b16b3fb8820bc27264158ee0880d47bac9682d03449e12a9b8",
         intel: "4c8c7429d1410c209715f133a38852f74a08140a75135bde82e1c8c72778e67a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
