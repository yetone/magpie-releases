cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4197"
  sha256 arm:   "fbae3878defaa99c57bd78d49775b9a103f989a95030ab4000c4414abc037b36",
         intel: "1ba74c633af79b8ce32ae3c87cb3bb8060f120eb96321e790c1ae944f052e257"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
