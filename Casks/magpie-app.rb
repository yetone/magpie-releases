cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4514"
  sha256 arm:   "550e6ac25667c473039df89280e4d6b72c85be3532e6478b2bd72fc5dbd87b44",
         intel: "ff635f7e95ca95338a7b559c3106a938899419b1e886f72269bc6f16a7347a05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
