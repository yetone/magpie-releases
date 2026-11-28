cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5048"
  sha256 arm:   "bab3b052e4fc947cf3fec70efa3490974b5baebd232a21db5562dc98f9a6eada",
         intel: "f7a4488eea6929af69a2397b0237789fe693ecf813f523eaa43bc753ad2299ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
