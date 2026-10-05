cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1057"
  sha256 arm:   "d4679a21baec703013aba7ec6053f4e8ffd06f83bec7f5f4781c5909897ca970",
         intel: "6828c35147c9223910c955ddecb67e211d9c37dd4cea2a7dbf3b5533344ede53"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
