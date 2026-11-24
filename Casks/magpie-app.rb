cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4770"
  sha256 arm:   "0a350115b73c9d6bc1d2cee0811764cdac49da8c61aec10c533c0306893a54de",
         intel: "0c5ec817b8f6fd0c2d039fbb3d2494fb26aab565ded6db02f271ec88812398bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
