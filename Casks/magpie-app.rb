cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3201"
  sha256 arm:   "d88a74437f8ab223180ef9a5b0f4bca6ffa569dc890a403540ce451b108e794a",
         intel: "440b5ef4a0173f860b1164280745b9eaec566b9c2c92dd16f83429ad7e711923"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
