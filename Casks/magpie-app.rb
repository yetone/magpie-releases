cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4411"
  sha256 arm:   "27e9c3e54ff234c68c1e19282ccab5217a9d18b9760c390c8ac45954f271d707",
         intel: "cbf21bd9e67415889896fce4e8abde39a1642b0437f655f8125a9e5711b7d0aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
