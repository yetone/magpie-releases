cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4099"
  sha256 arm:   "defb8e38b184bf190d8be16b8709964c72160f0ed707a41e5c230ff22b396b02",
         intel: "1eeee3f0bea01d1463a7ef8232b1dfe03767bebcf1f7087a93bda94bdd98507c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
