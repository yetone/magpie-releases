cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4830"
  sha256 arm:   "0577a2df4ba073a247234e3b6a5755f7e48de2941b25dc0bb9d717c25c54c2c1",
         intel: "6e0e8ced4a731209410047277c94065ab8a0593e1f203b621d4bdbbe90617618"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
