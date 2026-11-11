cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3707"
  sha256 arm:   "9d07d2315d04aff8544bd52be85bf46efd13e1f2535c6f3e359385b06e2c7cd3",
         intel: "8cae2c78de8a771a87281da51291d6468a024d192ec57e8a896d941a3f83276a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
