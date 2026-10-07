cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1101"
  sha256 arm:   "8deadfef09cffad2bebfc19fea398fcd4b68c38874eb86eec8b438099e309c2b",
         intel: "488415c3dd129f7d0b5c8cac89a789493b87840c8b4e0f768bb7fe07585c46e3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
