cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3872"
  sha256 arm:   "3a9c1f69d27d668f737aadd09582c515c91993b6ea04ec957ed2459afc8bd08b",
         intel: "f9ac0af6bf0619fac0e3cbfde1c670fd4eaea6f17da89fc9a5bd3a07534cda72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
