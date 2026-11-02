cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2680"
  sha256 arm:   "ef003094706ec079e8df7f1cbea80842c1c22546f334172ef0b778921b910be6",
         intel: "6ea886e7ce7b6306eea4bcd4957ae4b5883df993aac59a8ef4177e6707c2a2f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
