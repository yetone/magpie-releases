cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4456"
  sha256 arm:   "75a756510709c3777a34f17c760b300d9ef419d226fe70c2e8dc7cd0f4e82db6",
         intel: "ac010414d1fdbb3df929e805873dc5c9f1938a7701aec66f2bcc801cf773e97e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
