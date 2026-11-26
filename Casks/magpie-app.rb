cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4896"
  sha256 arm:   "48e32cda3cc46d36e45e39ab3e6c3de1191ee17f65535c5f6abbcb7732bd69c3",
         intel: "1ee1e2c710e796c14b1cb7ff109c1714beb2c154c43d472fae9b9a9d78f408d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
