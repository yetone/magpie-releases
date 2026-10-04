cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.921"
  sha256 arm:   "8b7a8f6d2136cb143afda1a088e228847a81e26f5340f1eb7088d86b2fc9ed74",
         intel: "b64cfed5e4dd922b80bc8066c52566476bbb1d1746314c0daba7d0d0878ad654"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
