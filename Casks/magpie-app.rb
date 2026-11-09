cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3431"
  sha256 arm:   "09a0b12e25a7339b30670ae26dce11c83530d2cae818986ceb632fa2dc92062d",
         intel: "5f7fe60591522e22eee6e00e51adb10a905a02b18ae1726e03abdc894362a353"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
