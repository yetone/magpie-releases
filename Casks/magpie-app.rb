cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3921"
  sha256 arm:   "a3e9983c033e9fde01c783cf48bfc7d1703122e1c35821892782f3af57c6ec28",
         intel: "7f8db0e9c7156495fa3ac13e80e2a1e71254c5922454aa71847f8f544d37af11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
